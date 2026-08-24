Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui11FocusWindowEP11ImGuiWindowi:bb.a

.lr.ph.i.i172:                                    ; preds = %bb.az, %bb.ba
  %.079.i.i173 = phi ptr [ %i.he, %bb.ba ], [ %.048, %bb.az ] ; 2 uses
  %i.hc = icmp eq ptr %.079.i.i173, %i.gz
  br i1 %i.hc, label %select.unfold.i179, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i172
  %i.hd = getelementptr inbounds nuw i8, ptr %.079.i.i173, i64 952
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !848 ; 2 uses
  %.not.i.i174 = icmp eq ptr %i.he, null
  br i1 %.not.i.i174, label %.loopexit.i175, label %.lr.ph.i.i172, !llvm.loop !849

.loopexit.i175:                                   ; preds = %bb.ba, %.lr.ph.i169
  %indvars.iv.next60.i176 = add nuw nsw i64 %indvars.iv59.i170, 1 ; 2 uses
  %exitcond.not.i177 = icmp eq i64 %indvars.iv.next60.i176, %wide.trip.count63.i166
  br i1 %exitcond.not.i177, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178, label %.lr.ph.i169, !llvm.loop !890

select.unfold.i179:                               ; preds = %bb.az, %.lr.ph.i.i172, %bb.ay
  %indvars.iv.next.i180 = add nuw nsw i64 %indvars.iv.i167, 1 ; 2 uses
  %exitcond64.not.i181 = icmp eq i64 %indvars.iv.next.i180, %wide.trip.count63.i166
  br i1 %exitcond64.not.i181, label %.split.thread, label %bb.ay, !llvm.loop !891

_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178: ; preds = %.loopexit.i175
  %i.hf = trunc nuw nsw i64 %indvars.iv.i167 to i32
  br label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162

_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162: ; preds = %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178, %bb.ax
  %.128.i163 = phi i32 [ 0, %bb.ax ], [ %i.hf, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.loopexit.i178 ] ; 2 uses
  %i.hg = icmp slt i32 %.128.i163, %i.go
  br i1 %i.hg, label %bb.bb, label %.split.thread

bb.bb:                                            ; preds = %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gm, i64 10404
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !221
  %i.hj = and i32 %i.hi, 8
  %.not36.i164 = icmp eq i32 %i.hj, 0
  br i1 %.not36.i164, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hk = getelementptr inbounds nuw i8, ptr %.048, i64 8
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !299
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.164, ptr noundef %i.hl), !inline_history !892
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  tail call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %.128.i163, i1 noundef zeroext false), !inline_history !892
  br label %.split.thread

.split.thread:                                    ; preds = %select.unfold.i179, %bb.bd, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i162, %.split, %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit
  %.in = getelementptr inbounds nuw i8, ptr %.048, i64 960
  %i.hm = load ptr, ptr %.in, align 8, !tbaa !847
  br label %.thread

.thread:                                          ; preds = %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit, %.split49.critedge, %bb.aw, %.split.thread
  %.not608893 = phi i1 [ false, %.split.thread ], [ true, %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit ], [ true, %.split49.critedge ], [ true, %bb.aw ]
  %i.hn = phi ptr [ %i.hm, %.split.thread ], [ null, %_ZN5ImGui21ClosePopupsOverWindowEP11ImGuiWindowb.exit ], [ null, %.split49.critedge ], [ null, %bb.aw ] ; 9 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.hp = load i32, ptr %i.ho, align 4, !tbaa !819
  %.not61 = icmp eq i32 %i.hp, 0
  br i1 %.not61, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !570 ; 2 uses
  %.not62 = icmp eq ptr %i.hr, null
  br i1 %.not62, label %bb.bi, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 960
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !847
  %.not63 = icmp eq ptr %i.ht, %i.hn
  br i1 %.not63, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hu = getelementptr inbounds nuw i8, ptr %i.a, i64 5444
  %i.hv = load i8, ptr %i.hu, align 4, !tbaa !833, !range !64, !noundef !204
  %i.hw = trunc nuw i8 %i.hv to i1
  br i1 %i.hw, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bg, %bb.bh, %bb.bf, %bb.be, %.thread
  br i1 %.not608893, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hx = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hn, i64 226 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hx, i64 5232
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 5240
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !561 ; 8 uses
  %i.ic = load i32, ptr %i.hz, align 8, !tbaa !563 ; 2 uses
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr [8 x i8], ptr %i.ib, i64 %i.id
  %i.if = getelementptr i8, ptr %i.ie, i64 -8
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !705
  %i.ih = icmp eq ptr %i.ig, %i.hn
  br i1 %i.ih, label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ii = load i16, ptr %i.hy, align 2, !tbaa !899 ; 2 uses
  %i.ij = sext i16 %i.ii to i32
  %i.ik = add nsw i32 %i.ic, -1                   ; 4 uses
  %i.il = icmp sgt i32 %i.ik, %i.ij
  br i1 %i.il, label %.lr.ph.preheader.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.bk
  %.pre.i72 = sext i32 %i.ik to i64
  br label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.bk
  %i.im = sext i16 %i.ii to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.ik to i64      ; 5 uses
  %i.in = sub nsw i64 %wide.trip.count.i, %i.im
  %xtraiter = and i64 %i.in, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i74.prol.loopexit, label %.lr.ph.i74.prol

.lr.ph.i74.prol:                                  ; preds = %.lr.ph.preheader.i
  %indvars.iv.next.i76.prol = add nsw i64 %i.im, 1 ; 2 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76.prol
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !705 ; 2 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %i.im
  store ptr %i.ip, ptr %i.iq, align 8, !tbaa !705
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 226 ; 2 uses
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !899
  %i.it = add i16 %i.is, -1
  store i16 %i.it, ptr %i.ir, align 2, !tbaa !899
  br label %.lr.ph.i74.prol.loopexit

.lr.ph.i74.prol.loopexit:                         ; preds = %.lr.ph.i74.prol, %.lr.ph.preheader.i
  %indvars.iv.i75.unr = phi i64 [ %i.im, %.lr.ph.preheader.i ], [ %indvars.iv.next.i76.prol, %.lr.ph.i74.prol ]
  %i.iu = add nsw i64 %wide.trip.count.i, -1
  %i.iv = icmp eq i64 %i.iu, %i.im
  br i1 %i.iv, label %._crit_edge.i, label %.lr.ph.i74

._crit_edge.i:                                    ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74, %.._crit_edge_crit_edge.i
  %.pre-phi.i73 = phi i64 [ %.pre.i72, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %.lr.ph.i74 ], [ %wide.trip.count.i, %.lr.ph.i74.prol.loopexit ]
  %i.iw = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %.pre-phi.i73
  store ptr %i.hn, ptr %i.iw, align 8, !tbaa !705
  %i.ix = trunc i32 %i.ik to i16
  store i16 %i.ix, ptr %i.hy, align 2, !tbaa !899
  br label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit

.lr.ph.i74:                                       ; preds = %.lr.ph.i74.prol.loopexit, %.lr.ph.i74
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i76.1, %.lr.ph.i74 ], [ %indvars.iv.i75.unr, %.lr.ph.i74.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i76 = add nsw i64 %indvars.iv.i75, 1 ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !705 ; 2 uses
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.i75
  store ptr %i.iz, ptr %i.ja, align 8, !tbaa !705
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 226 ; 2 uses
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !899
  %i.jd = add i16 %i.jc, -1
  store i16 %i.jd, ptr %i.jb, align 2, !tbaa !899
  %indvars.iv.next.i76.1 = add nsw i64 %indvars.iv.i75, 2 ; 3 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76.1
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !705 ; 2 uses
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv.next.i76
  store ptr %i.jf, ptr %i.jg, align 8, !tbaa !705
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jf, i64 226 ; 2 uses
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !899
  %i.jj = add i16 %i.ji, -1
  store i16 %i.jj, ptr %i.jh, align 2, !tbaa !899
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i76.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i74, !llvm.loop !900

_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit: ; preds = %bb.bj, %._crit_edge.i
  %i.jk = getelementptr inbounds nuw i8, ptr %.048, i64 20
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !722
  %i.jm = getelementptr inbounds nuw i8, ptr %i.hn, i64 20
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !722
  %i.jo = or i32 %i.jn, %i.jl
  %i.jp = and i32 %i.jo, 8192
  %i.jq = icmp eq i32 %i.jp, 0
  br i1 %i.jq, label %bb.bl, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.bl:                                            ; preds = %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  %i.jr = getelementptr inbounds nuw i8, ptr %i.hx, i64 5216 ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.hx, i64 5224 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !561 ; 3 uses
  %i.ju = load i32, ptr %i.jr, align 8, !tbaa !563 ; 4 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr [8 x i8], ptr %i.jt, i64 %i.jv
  %i.jx = getelementptr i8, ptr %i.jw, i64 -8
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !705 ; 2 uses
  %i.jz = icmp eq ptr %i.jy, %i.hn
  br i1 %i.jz, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jy, i64 960
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !847
  %i.kc = icmp ne ptr %i.kb, %i.hn
  %i.kd = icmp sgt i32 %i.ju, 1
  %or.cond.i = and i1 %i.kd, %i.kc
  br i1 %or.cond.i, label %.lr.ph.preheader.i78, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

.lr.ph.preheader.i78:                             ; preds = %bb.bm
  %i.ke = add nsw i32 %i.ju, -2
  %2 = zext nneg i32 %i.ke to i64
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.bo, %.lr.ph.preheader.i78
  %indvars.iv.i80 = phi i64 [ %2, %.lr.ph.preheader.i78 ], [ %indvars.iv.next.i81, %bb.bo ] ; 5 uses
  %i.kf = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv.i80
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !705
  %i.kh = icmp eq ptr %i.kg, %i.hn
  br i1 %i.kh, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i79
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %indvars.iv.i80 ; 2 uses
  %3 = trunc nuw nsw i64 %indvars.iv.i80 to i32
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.kk = xor i32 %3, -1
  %i.kl = add i32 %i.ju, %i.kk
  %i.km = sext i32 %i.kl to i64
  %i.kn = shl nsw i64 %i.km, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ki, ptr nonnull align 8 %i.kj, i64 %i.kn, i1 false)
  %i.ko = load i32, ptr %i.jr, align 8, !tbaa !901
  %i.kp = load ptr, ptr %i.js, align 8, !tbaa !561
  %i.kq = sext i32 %i.ko to i64
  %i.kr = getelementptr [8 x i8], ptr %i.kp, i64 %i.kq
  %i.ks = getelementptr i8, ptr %i.kr, i64 -8
  store ptr %i.hn, ptr %i.ks, align 8, !tbaa !705
  br label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.bo:                                            ; preds = %.lr.ph.i79
  %indvars.iv.next.i81 = add nsw i64 %indvars.iv.i80, -1
  %i.kt = icmp sgt i64 %indvars.iv.i80, 0
  br i1 %i.kt, label %.lr.ph.i79, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, !llvm.loop !902

_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit: ; preds = %select.unfold.i, %bb.bo, %bb.ai, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i, %_ZN5ImGui20GetTopMostPopupModalEv.exit, %bb.bn, %bb.bm, %bb.bl, %bb.bi, %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui31SetActiveIdUsingAllKeyboardKeysEv() local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7768
  store i32 15, ptr %i.b, align 8, !tbaa !649
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 7772
  store i8 1, ptr %i.c, align 4, !tbaa !650
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8385
  store i8 0, ptr %i.d, align 1, !tbaa !388
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8384
  store i8 0, ptr %i.e, align 8, !tbaa !655
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8322
  %i.g = load i8, ptr %i.f, align 2, !tbaa !881, !range !64, !noundef !204
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8321
  store i8 %i.g, ptr %i.h, align 1, !tbaa !882
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui31UpdateMouseMovingWindowNewFrameEv() local_unnamed_addr #12 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5344 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !571  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.e = load i32, ptr %i.d, align 4, !tbaa !819  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 %i.e, ptr %i.f, align 8, !tbaa !824
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.h = load i32, ptr %i.g, align 4, !tbaa !845
  %i.i = icmp eq i32 %i.h, %i.e
  br i1 %i.i, label %bb.c, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5493
  store i8 1, ptr %i.j, align 1, !tbaa !903
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.b, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !847  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.n = load i8, ptr %i.m, align 8, !tbaa !215, !range !64, !noundef !204
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.i

bb.d:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.q = load <2 x float>, ptr %i.p, align 8, !tbaa !8 ; 3 uses
  %i.r = extractelement <2 x float> %i.q, i64 0
  %i.s = fcmp oge float %i.r, -2.560000e+05
  %i.t = extractelement <2 x float> %i.q, i64 1
  %i.u = fcmp oge float %i.t, -2.560000e+05
  %i.v = select i1 %i.s, i1 %i.u, i1 false
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.l, i64 239 ; 2 uses
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 1 ; 2 uses
  %i.w = and i32 %.pre.i, 256
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5456
  %i.z = and i32 %.pre.i, -3585
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 244
  %.sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.l, i64 248
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 40 ; 2 uses
  %i.ac = load <2 x float>, ptr %i.y, align 8, !tbaa !8
  %i.ad = fsub <2 x float> %i.q, %i.ac
  store i32 %i.z, ptr %.phi.trans.insert.i, align 1
  store i32 2139095039, ptr %i.aa, align 4
  store i32 2139095039, ptr %.sroa_idx36.i, align 4
  %i.ae = load <2 x float>, ptr %i.ab, align 8
  %i.af = fptosi <2 x float> %i.ad to <2 x i32>
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>   ; 2 uses
  store <2 x float> %i.ag, ptr %i.ab, align 8
  %i.ah = fsub <2 x float> %i.ag, %i.ae           ; 5 uses
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aj = extractelement <2 x float> %i.ah, i64 0
  %i.ak = fcmp oeq float %i.aj, 0.000000e+00
  %i.al = extractelement <2 x float> %i.ah, i64 1
  %i.am = fcmp oeq float %i.al, 0.000000e+00
  %or.cond.i = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond.i, label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, label %bb.f

bb.f:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !722
  %i.ap = and i32 %i.ao, 256
  %.not.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i.i, label %bb.g, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 10068 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !676
  %i.as = fcmp ugt float %i.ar, 0.000000e+00
  br i1 %i.as, label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %i.au = load float, ptr %i.at, align 4, !tbaa !904
  store float %i.au, ptr %i.aq, align 4, !tbaa !676
  br label %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i

_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 280 ; 2 uses
  %i.aw = load <2 x float>, ptr %i.av, align 8, !tbaa !8
  %i.ax = fadd <2 x float> %i.ah, %i.aw
  store <2 x float> %i.ax, ptr %i.av, align 8, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 312 ; 2 uses
  %i.az = load <2 x float>, ptr %i.ay, align 8, !tbaa !8
  %i.ba = fadd <2 x float> %i.ah, %i.az
  store <2 x float> %i.ba, ptr %i.ay, align 8, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 296 ; 2 uses
  %i.bc = load <4 x float>, ptr %i.bb, align 8, !tbaa !8
  %i.bd = fadd <4 x float> %i.ai, %i.bc
  store <4 x float> %i.bd, ptr %i.bb, align 8, !tbaa !8
  br label %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit

_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit: ; preds = %bb.e, %._crit_edge.i, %_ZN5ImGui20MarkIniSettingsDirtyEP11ImGuiWindow.exit.i
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !571
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %i.be, i32 noundef 0)
  br label %bb.o

bb.i:                                             ; preds = %bb.d, %_ZN5ImGui11KeepAliveIDEj.exit
  store ptr null, ptr %i.b, align 8, !tbaa !571
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %bb.o

bb.j:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !570 ; 2 uses
  %.not15 = icmp eq ptr %i.bg, null
  br i1 %.not15, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 140
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !790 ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !819
  %i.bl = icmp eq i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 %i.bi, ptr %i.bm, align 8, !tbaa !824
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !845
  %i.bp = icmp eq i32 %i.bo, %i.bi
  br i1 %i.bp, label %bb.m, label %_ZN5ImGui11KeepAliveIDEj.exit16

bb.m:                                             ; preds = %bb.l
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 5493
  store i8 1, ptr %i.bq, align 1, !tbaa !903
  br label %_ZN5ImGui11KeepAliveIDEj.exit16

_ZN5ImGui11KeepAliveIDEj.exit16:                  ; preds = %bb.l, %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !215, !range !64, !noundef !204
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit16
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui12SetWindowPosEP11ImGuiWindowRK6ImVec2i.exit, %bb.i, %bb.j, %bb.k, %bb.n, %_ZN5ImGui11KeepAliveIDEj.exit16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.c = load i32, ptr %i.b, align 4, !tbaa !819
  %i.d = icmp eq i32 %i.c, %0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 %0, ptr %i.e, align 8, !tbaa !824
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.g = load i32, ptr %i.f, align 4, !tbaa !845
end_hunk_0
begin_hunk_1_@_ZN5ImGui17BeginErrorTooltipEv:bb.a
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !248

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !205
  %i.r = xor i32 %i.q, %i.l
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ -1, %bb.d ], [ %i.r, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.k, %bb.d ], [ %i.c, %bb.e ] ; 2 uses
  %i.s = load i8, ptr %.3.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.f
  %i.t = xor i32 %.334.i.i, -1                    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 5280
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 5288
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !259  ; 3 uses
  %i.x = load i32, ptr %i.u, align 8, !tbaa !258  ; 2 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.y, 4
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.y, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.w, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.aa = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.aa ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !255
  %i.ad = icmp ult i32 %i.ac, %i.t                ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.neg.i.i.i.i = xor i64 %i.aa, -1
  %i.af = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.ad, ptr %i.ae, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ad, i64 %i.af, i64 %i.aa ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !257

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.loopexit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.w, %_Z9ImHashStrPKcmj.exit.loopexit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ag = icmp eq ptr %.013.lcssa.i.i.i.i, %i.z
  br i1 %i.ag, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %bb.g

bb.g:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ah = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !255
  %.not.i.i.i = icmp eq i32 %i.ah, %i.t
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !187 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 300
  %i.al = load i8, ptr %i.ak, align 4, !tbaa !981, !range !64, !noundef !204
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = icmp ne ptr %i.aj, null
  %or.cond = and i1 %i.an, %i.am
  br i1 %or.cond, label %bb.h, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

bb.h:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 205
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !436, !range !64, !noundef !204
  %i.aq = trunc nuw i8 %i.ap to i1
  br label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit.thread:      ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, %bb.g, %bb.h, %_ZN5ImGui16FindWindowByNameEPKc.exit
  %i.ar = phi i1 [ %i.aq, %bb.h ], [ false, %_ZN5ImGui16FindWindowByNameEPKc.exit ], [ false, %bb.g ], [ false, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3596 ; 3 uses
  %i.at = load <2 x float>, ptr %i.as, align 4, !tbaa !8 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 3604 ; 2 uses
  %i.av = load <2 x float>, ptr %i.au, align 4, !tbaa !8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 4, ptr %0, align 4, !tbaa !417
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !419
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8056
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 4 dereferenceable(20) %0)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8052
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !420
  %.not.i = icmp eq i32 %i.az, 4
  br i1 %.not.i, label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread
  %i.ba = fsub <2 x float> <float 0.000000e+00, float 1.000000e+00>, %i.av
  %i.bb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ba, <2 x float> splat (float 1.500000e-01), <2 x float> %i.av)
  %i.bc = fsub <2 x float> <float 1.000000e+00, float 0.000000e+00>, %i.at
  %i.bd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> splat (float 1.500000e-01), <2 x float> %i.at)
  store <2 x float> %i.bd, ptr %i.as, align 4
  store <2 x float> %i.bb, ptr %i.au, align 4
  br label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit

_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit:        ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 10352
  %i.bf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 7928 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1128
  %i.bi = or i32 %i.bh, 1
  store i32 %i.bi, ptr %i.bg, align 8, !tbaa !1128
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 7944
  %i.bk = load i64, ptr %i.be, align 8
  store i64 %i.bk, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 7952
  store i32 0, ptr %i.bl, align 8
  %.sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.bf, i64 7956
  store i32 0, ptr %.sroa_idx15, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 7932
  store i32 1, ptr %i.bm, align 4, !tbaa !1207
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit
  %i.bn = call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.157, ptr noundef null, i32 noundef 33554799) ; 2 uses
  %i.bo = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8056 ; 4 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !426 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %bb.l, label %.lr.ph

bb.l:                                             ; preds = %bb.k
  %i.bs = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.11), !inline_history !1369 ; 0 uses
  %i.bt = load i32, ptr %i.bp, align 8, !tbaa !426 ; 3 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %_ZN5ImGui13PopStyleColorEi.exit

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0.i38 = phi i32 [ %i.bt, %bb.l ], [ 1, %bb.k ]
  %i.bv = phi i32 [ %i.bt, %bb.l ], [ %i.bq, %bb.k ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 8064
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bo, i64 3532
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %i.by = phi i32 [ %i.bv, %.lr.ph ], [ %i.ci, %bb.m ]
  %.1.i24 = phi i32 [ %.0.i38, %.lr.ph ], [ %i.cj, %bb.m ] ; 2 uses
  %i.bz = load ptr, ptr %i.bw, align 8, !tbaa !423
  %i.ca = sext i32 %i.by to i64
  %i.cb = getelementptr [20 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = getelementptr i8, ptr %i.cb, i64 -20
  %i.cd = getelementptr i8, ptr %i.cb, i64 -16
  %i.ce = load i32, ptr %i.cc, align 4, !tbaa !417
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [16 x i8], ptr %i.bx, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cg, ptr noundef nonnull align 4 dereferenceable(16) %i.cd, i64 16, i1 false), !tbaa.struct !419
  %i.ch = load i32, ptr %i.bp, align 8, !tbaa !421
  %i.ci = add nsw i32 %i.ch, -1                   ; 2 uses
  store i32 %i.ci, ptr %i.bp, align 8, !tbaa !421
  %i.cj = add nsw i32 %.1.i24, -1
  %i.ck = icmp samesign ugt i32 %.1.i24, 1
  br i1 %i.ck, label %bb.m, label %_ZN5ImGui13PopStyleColorEi.exit, !llvm.loop !427

_ZN5ImGui13PopStyleColorEi.exit:                  ; preds = %bb.m, %bb.l
  br i1 %i.bn, label %bb.n, label %.critedge

bb.n:                                             ; preds = %_ZN5ImGui13PopStyleColorEi.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 5312 ; 3 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !298
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 218
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !1097
  %i.cp = icmp eq i16 %i.co, 1
  br i1 %i.cp, label %bb.o, label %bb.t

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef nonnull @.str.158)
  %i.cq = load ptr, ptr %i.cl, align 8, !tbaa !298 ; 7 uses
  %i.cr = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 5216 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 5224 ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !561 ; 3 uses
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !563 ; 4 uses
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr [8 x i8], ptr %i.cu, i64 %i.cw
  %i.cy = getelementptr i8, ptr %i.cx, i64 -8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !705 ; 2 uses
  %i.da = icmp eq ptr %i.cz, %i.cq
  br i1 %i.da, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 960
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !847
  %i.dd = icmp ne ptr %i.dc, %i.cq
  %i.de = icmp sgt i32 %i.cv, 1
  %or.cond.i = and i1 %i.de, %i.dd
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

.lr.ph.preheader.i:                               ; preds = %bb.p
  %i.df = add nsw i32 %i.cv, -2
  %1 = zext nneg i32 %i.df to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.r ] ; 5 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !705
  %i.di = icmp eq ptr %i.dh, %i.cq
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph.i
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %indvars.iv.i ; 2 uses
  %2 = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.dl = xor i32 %2, -1
  %i.dm = add i32 %i.cv, %i.dl
  %i.dn = sext i32 %i.dm to i64
  %i.do = shl nsw i64 %i.dn, 3
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dj, ptr nonnull align 8 %i.dk, i64 %i.do, i1 false)
  %i.dp = load i32, ptr %i.cs, align 8, !tbaa !901
  %i.dq = load ptr, ptr %i.ct, align 8, !tbaa !561
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr [8 x i8], ptr %i.dq, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -8
  store ptr %i.cq, ptr %i.dt, align 8, !tbaa !705
  %.pre = load ptr, ptr %i.cl, align 8, !tbaa !298
  %.pre28 = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit

bb.r:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.du = icmp sgt i64 %indvars.iv.i, 0
  br i1 %i.du, label %.lr.ph.i, label %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, !llvm.loop !902

_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit: ; preds = %bb.r, %bb.o, %bb.p, %bb.q
  %i.dv = phi ptr [ %.pre28, %bb.q ], [ %i.cr, %bb.o ], [ %i.cr, %bb.p ], [ %i.cr, %bb.r ] ; 3 uses
  %i.dw = phi ptr [ %.pre, %bb.q ], [ %i.cq, %bb.o ], [ %i.cq, %bb.p ], [ %i.cq, %bb.r ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 226 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 5232
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 5240
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !561 ; 8 uses
  %i.eb = load i32, ptr %i.dy, align 8, !tbaa !563 ; 2 uses
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr [8 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 -8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !705
  %i.eg = icmp eq ptr %i.ef, %i.dw
  br i1 %i.eg, label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit, label %bb.s

bb.s:                                             ; preds = %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit
  %i.eh = load i16, ptr %i.dx, align 2, !tbaa !899 ; 2 uses
  %i.ei = sext i16 %i.eh to i32
  %i.ej = add nsw i32 %i.eb, -1                   ; 4 uses
  %i.ek = icmp sgt i32 %i.ej, %i.ei
  br i1 %i.ek, label %.lr.ph.preheader.i13, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.s
  %.pre.i = sext i32 %i.ej to i64
  br label %._crit_edge.i

.lr.ph.preheader.i13:                             ; preds = %bb.s
  %i.el = sext i16 %i.eh to i64                   ; 5 uses
  %wide.trip.count.i = sext i32 %i.ej to i64      ; 5 uses
  %i.em = sub nsw i64 %wide.trip.count.i, %i.el
  %xtraiter = and i64 %i.em, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i14.prol.loopexit, label %.lr.ph.i14.prol

.lr.ph.i14.prol:                                  ; preds = %.lr.ph.preheader.i13
  %indvars.iv.next.i.prol = add nsw i64 %i.el, 1  ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.prol
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !705 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.el
  store ptr %i.eo, ptr %i.ep, align 8, !tbaa !705
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 226 ; 2 uses
  %i.er = load i16, ptr %i.eq, align 2, !tbaa !899
  %i.es = add i16 %i.er, -1
  store i16 %i.es, ptr %i.eq, align 2, !tbaa !899
  br label %.lr.ph.i14.prol.loopexit

.lr.ph.i14.prol.loopexit:                         ; preds = %.lr.ph.i14.prol, %.lr.ph.preheader.i13
  %indvars.iv.i.unr = phi i64 [ %i.el, %.lr.ph.preheader.i13 ], [ %indvars.iv.next.i.prol, %.lr.ph.i14.prol ]
  %i.et = add nsw i64 %wide.trip.count.i, -1
  %i.eu = icmp eq i64 %i.et, %i.el
  br i1 %i.eu, label %._crit_edge.i, label %.lr.ph.i14

._crit_edge.i:                                    ; preds = %.lr.ph.i14.prol.loopexit, %.lr.ph.i14, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.._crit_edge_crit_edge.i ], [ %wide.trip.count.i, %.lr.ph.i14 ], [ %wide.trip.count.i, %.lr.ph.i14.prol.loopexit ]
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %.pre-phi.i
  store ptr %i.dw, ptr %i.ev, align 8, !tbaa !705
  %i.ew = trunc i32 %i.ej to i16
  store i16 %i.ew, ptr %i.dx, align 2, !tbaa !899
  br label %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.prol.loopexit, %.lr.ph.i14
  %indvars.iv.i.a = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i14 ], [ %indvars.iv.i.unr, %.lr.ph.i14.prol.loopexit ] ; 3 uses
  %indvars.iv.next.i.a = add nsw i64 %indvars.iv.i.a, 1 ; 2 uses
  %i.ex = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.a
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !705 ; 2 uses
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.i.a
  store ptr %i.ey, ptr %i.ez, align 8, !tbaa !705
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 226 ; 2 uses
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !899
  %i.fc = add i16 %i.fb, -1
  store i16 %i.fc, ptr %i.fa, align 2, !tbaa !899
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i.a, 2 ; 3 uses
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.1
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !705 ; 2 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %indvars.iv.next.i.a
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !705
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 226 ; 2 uses
  %i.fh = load i16, ptr %i.fg, align 2, !tbaa !899
  %i.fi = add i16 %i.fh, -1
  store i16 %i.fi, ptr %i.fg, align 2, !tbaa !899
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %wide.trip.count.i
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %.lr.ph.i14, !llvm.loop !900

_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit: ; preds = %_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow.exit, %._crit_edge.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dv, i64 5312
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !298
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 40
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.fl, align 8
  %i.fm = getelementptr inbounds nuw i8, ptr %i.a, i64 10352
  store <2 x float> %.sroa.0.0.copyload.i, ptr %i.fm, align 8
  br label %bb.t

.critedge:                                        ; preds = %_ZN5ImGui13PopStyleColorEi.exit
  call void @_ZN5ImGui3EndEv()
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %.critedge, %_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow.exit
  ret i1 %i.bn
}

declare void @_ZN5ImGui4TextEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15EndErrorTooltipEv() local_unnamed_addr #0 {
bb.a:
  tail call void @_ZN5ImGui3EndEv()
  ret void
}

declare void @_ZN5ImGui10BulletTextEPKcz(ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui9SeparatorEv() local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui8SameLineEff(float noundef %0, float noundef %1) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp une float %0, 0.000000e+00
  %i.h = fcmp olt float %1, 0.000000e+00          ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.0 = select i1 %i.h, float 0.000000e+00, float %1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.j = load float, ptr %i.i, align 8, !tbaa !870
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.l = load float, ptr %i.k, align 8, !tbaa !871
  %i.m = fsub float %i.j, %i.l
  %i.n = fadd float %0, %i.m
  %i.o = fadd float %.0, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  %i.r = load float, ptr %i.q, align 4, !tbaa !1479
  %i.s = fadd float %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 352
  %i.u = load float, ptr %i.t, align 8, !tbaa !1372
  %i.v = fadd float %i.u, %i.s
  store float %i.v, ptr %i.p, align 8, !tbaa !1343
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 3300
  %i.x = load float, ptr %i.w, align 4, !tbaa !1374
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1 = phi float [ %i.x, %bb.e ], [ %1, %bb.d ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 288
  %i.aa = load float, ptr %i.z, align 8, !tbaa !1373
  %i.ab = fadd float %.1, %i.aa
  store float %i.ab, ptr %i.y, align 8, !tbaa !1343
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !331
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  store float %i.ad, ptr %i.ae, align 4, !tbaa !328
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 320
  %i.ah = load i64, ptr %i.af, align 8
  store i64 %i.ah, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 340
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !1335
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store float %i.aj, ptr %i.ak, align 8, !tbaa !1336
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 1, ptr %i.al, align 8, !tbaa !1337
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %bb.g
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui20DebugStartItemPickerEv() local_unnamed_addr #39 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10465
  store i8 1, ptr %i.b, align 1, !tbaa !683
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui15TextLinkOpenURLEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN5ImGui13SeparatorTextEPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui25BringWindowToDisplayFrontEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5216 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5224 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !561  ; 3 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !563  ; 4 uses
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr [8 x i8], ptr %i.d, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !705  ; 2 uses
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 960
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !847
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
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !705
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
  %i.y = load i32, ptr %i.b, align 8, !tbaa !901
  %i.z = load ptr, ptr %i.c, align 8, !tbaa !561
  %i.aa = sext i32 %i.y to i64
  %i.ab = getelementptr [8 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  store ptr %0, ptr %i.ac, align 8, !tbaa !705
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ad = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit, !llvm.loop !902

.loopexit:                                        ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui23BringWindowToFocusFrontEP11ImGuiWindow(ptr noundef %0) local_unnamed_addr #23 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5232
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5240
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !561  ; 8 uses
  %i.f = load i32, ptr %i.c, align 8, !tbaa !563  ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !705
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i16, ptr %i.b, align 2, !tbaa !899  ; 2 uses
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
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !705  ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.p
  store ptr %i.s, ptr %i.t, align 8, !tbaa !705
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 226 ; 2 uses
  %i.v = load i16, ptr %i.u, align 2, !tbaa !899
  %i.w = add i16 %i.v, -1
  store i16 %i.w, ptr %i.u, align 2, !tbaa !899
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.p, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.x = add nsw i64 %wide.trip.count, -1
  %i.y = icmp eq i64 %i.x, %i.p
  br i1 %i.y, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.._crit_edge_crit_edge ], [ %wide.trip.count, %.lr.ph ], [ %wide.trip.count, %.lr.ph.prol.loopexit ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.pre-phi
  store ptr %0, ptr %i.z, align 8, !tbaa !705
  %i.aa = trunc i32 %i.n to i16
  store i16 %i.aa, ptr %i.b, align 2, !tbaa !899
  br label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !705 ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !705
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 226 ; 2 uses
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !899
  %i.ag = add i16 %i.af, -1
  store i16 %i.ag, ptr %i.ae, align 2, !tbaa !899
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next.1
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !705 ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv.next
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !705
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 226 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !899
  %i.am = add i16 %i.al, -1
  store i16 %i.am, ptr %i.ak, align 2, !tbaa !899
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !900

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.d, align 8
  ret <2 x float> %.sroa.0.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.f = load i64, ptr %0, align 4
  store i64 %i.f, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 345
  store i8 1, ptr %i.g, align 1, !tbaa !1342
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui12GetCursorPosEv() local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.g = load <2 x float>, ptr %i.d, align 4, !tbaa !8
  %i.h = load <2 x float>, ptr %i.e, align 4, !tbaa !8
  %i.i = fsub <2 x float> %i.g, %i.h
  %i.j = load <2 x float>, ptr %i.f, align 4, !tbaa !8
  %i.k = fadd <2 x float> %i.i, %i.j
  ret <2 x float> %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui13GetCursorPosXEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.e = load float, ptr %i.d, align 8, !tbaa !1343
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.g = load float, ptr %i.f, align 8, !tbaa !870
  %i.h = fsub float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.j = load float, ptr %i.i, align 8, !tbaa !871
  %i.k = fadd float %i.h, %i.j
  ret float %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef float @_ZN5ImGui13GetCursorPosYEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 284
  %i.e = load float, ptr %i.d, align 4, !tbaa !328
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.g = load float, ptr %i.f, align 4, !tbaa !929
  %i.h = fsub float %i.e, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  %i.j = load float, ptr %i.i, align 4, !tbaa !1077
  %i.k = fadd float %i.h, %i.j
  ret float %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui12SetCursorPosERK6ImVec2(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #42 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.g = load <2 x float>, ptr %i.e, align 4, !tbaa !8
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !8
  %i.i = fsub <2 x float> %i.g, %i.h
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !8
  %i.k = fadd <2 x float> %i.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store <2 x float> %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 345
  store i8 1, ptr %i.m, align 1, !tbaa !1342
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui13SetCursorPosXEf(float noundef %0) local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 5 uses
end_hunk_1
