Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui24GetNavTweakPressedAmountE9ImGuiAxis:bb.a
  %i.az = fsub float %i.aw, %i.ay                 ; 3 uses
  %i.ba = fcmp oeq float %i.aw, 0.000000e+00
  br i1 %i.ba, label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = fcmp ult float %i.az, %i.aw
  br i1 %i.bb, label %bb.i, label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14

bb.i:                                             ; preds = %bb.h
  %i.bc = extractelement <2 x float> %i.d, i64 1
  %i.bd = fcmp ugt float %i.bc, 0.000000e+00
  %i.be = extractelement <2 x float> %i.d, i64 0  ; 3 uses
  %i.bf = fcmp olt float %i.az, %i.be             ; 2 uses
  br i1 %i.bd, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = fcmp oge float %i.aw, %i.be
  %i.bh = and i1 %i.bg, %i.bf
  %i.bi = zext i1 %i.bh to i32
  br label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14

bb.k:                                             ; preds = %bb.i
  %i.bj = insertelement <2 x float> poison, float %i.aw, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.az, i64 1
  %i.bl = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bm = fsub <2 x float> %i.bk, %i.bl
  %i.bn = fcmp olt float %i.aw, %i.be
  %i.bo = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bp = fdiv <2 x float> %i.bm, %i.bo
  %i.bq = fptosi <2 x float> %i.bp to <2 x i32>
  %i.br = insertelement <2 x i1> poison, i1 %i.bn, i64 0
  %i.bs = insertelement <2 x i1> %i.br, i1 %i.bf, i64 1
  %i.bt = select <2 x i1> %i.bs, <2 x i32> splat (i32 -1), <2 x i32> %i.bq ; 2 uses
  %shift39 = shufflevector <2 x i32> %i.bt, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop40 = sub nsw <2 x i32> %i.bt, %shift39
  %i.bu = extractelement <2 x i32> %foldExtExtBinop40, i64 0
  br label %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14

_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14: ; preds = %bb.g, %bb.h, %bb.j, %bb.k
  %.0.i13 = phi i32 [ 0, %bb.h ], [ %i.bu, %bb.k ], [ 1, %bb.g ], [ %i.bi, %bb.j ]
  %i.bv = sitofp i32 %.0.i13 to float
  %i.bw = fsub float %i.aq, %i.bv                 ; 4 uses
  %i.bx = fcmp oeq float %i.bw, 0.000000e+00
  br i1 %i.bx, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14
  %i.by = getelementptr [12 x i8], ptr %i.a, i64 %.011
  %i.bz = getelementptr i8, ptr %i.by, i64 -716
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !536, !range !120, !noundef !254
  %i.cb = icmp eq i8 %i.ca, 0
  %brmerge30.not = and i1 %i.cb, %i.p
  br i1 %brmerge30.not, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20:             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  %i.cc = getelementptr [12 x i8], ptr %i.a, i64 %.010
  %i.cd = getelementptr i8, ptr %i.cc, i64 -716
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !536, !range !120, !noundef !254
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

bb.l:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit, %bb.l, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20
  %.0 = phi float [ 0.000000e+00, %bb.l ], [ %i.bw, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20 ], [ %i.bw, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit ], [ %i.bw, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14 ], [ %i.aq, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit ]
  ret float %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui25NavInitRequestApplyResultEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !388  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.e = load i32, ptr %i.d, align 4, !tbaa !394
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8176 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !1002 ; 3 uses
  %.not27 = icmp eq i32 %i.e, %i.g
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8088
  %i.i = load i32, ptr %i.h, align 8, !tbaa !725
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8520
  store i32 %i.i, ptr %i.j, align 8, !tbaa !798
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8524
  %i.l = load <2 x i32>, ptr %i.f, align 8, !tbaa !255
  store <2 x i32> %i.l, ptr %i.k, align 4, !tbaa !255
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8532
  store i32 0, ptr %i.m, align 4, !tbaa !1044
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8536
  store i8 0, ptr %i.n, align 8, !tbaa !1045
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8200
  %i.p = load i32, ptr %i.o, align 8, !tbaa !834
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8537
  %i.r = lshr i32 %i.p, 21
  %i.s = trunc i32 %i.r to i8
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 1, !tbaa !1046
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !266
  %i.w = and i32 %i.v, 16
  %.not28 = icmp eq i32 %i.w, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8092
  %i.y = load i32, ptr %i.x, align 4, !tbaa !724
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !333
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.174, i32 noundef %i.g, i32 noundef %i.y, ptr noundef %i.aa)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !1002
  %.pre30 = load ptr, ptr @GImGui, align 8, !tbaa !245
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %.pre30, %bb.e ], [ %i.a, %bb.d ] ; 3 uses
  %i.ac = phi i32 [ %.pre, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8092
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !724 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8180
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !1003
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8184
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8076
  store i32 %i.ac, ptr %i.ai, align 4, !tbaa !394
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8092
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !724
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8080
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !388 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1008
  %i.an = zext i32 %i.ae to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  store i32 %i.ac, ptr %i.ao, align 4, !tbaa !255
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1016
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !402
  %i.ar = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8080
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !388
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 984
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !389
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1048
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8092
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !724
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ba, align 4, !tbaa !86
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8075
  store i8 1, ptr %i.bb, align 1, !tbaa !726
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8216
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !537 ; 2 uses
  %.not29 = icmp eq i64 %i.bd, -1
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !557
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8163
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !801, !range !120, !noundef !254
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ar, i64 86
  %i.bj = load i8, ptr %i.bi, align 2, !tbaa !713, !range !120, !noundef !254
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.j, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8072
  store i8 1, ptr %i.bl, align 8, !tbaa !440
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %bb.i, %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ar, i64 8074
  store i8 1, ptr %i.bm, align 2, !tbaa !723
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 8073
  store i8 1, ptr %i.bn, align 1, !tbaa !685
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui25NavMoveRequestApplyResultEv() local_unnamed_addr #11 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 48 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8304
  %i.c = load i32, ptr %i.b, align 8, !tbaa !961
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8296
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8228 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !390
  br label %.thread140

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8416
  %i.h = load i32, ptr %i.g, align 8, !tbaa !962
  %.not109 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8228 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !390  ; 5 uses
  %i.k = and i32 %i.j, 1024
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  %or.cond = select i1 %i.l, i1 %.not109, i1 false
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8292
  %i.n = load i32, ptr %i.m, align 4, !tbaa !562
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8288
  %i.q = load i32, ptr %i.p, align 8, !tbaa !391
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.thread143

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8472
  %i.t = load i32, ptr %i.s, align 8, !tbaa !1005
  %.not110 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8464
  br i1 %.not110, label %.thread143, label %.thread140

.thread143:                                       ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8240
  %i.w = load i32, ptr %i.v, align 8, !tbaa !824
  %i.x = and i32 %i.w, -2
  %narrow147 = icmp eq i32 %i.x, 2
  %i.y = zext i1 %narrow147 to i32
  br label %bb.h

.thread140:                                       ; preds = %bb.e, %.thread
  %.ph138 = phi i32 [ %i.f, %.thread ], [ %i.j, %bb.e ]
  %.ph139 = phi ptr [ %i.e, %.thread ], [ %i.i, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %.thread ], [ %i.u, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8240 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !824
  %i.ab = and i32 %i.aa, -2
  %narrow146 = icmp eq i32 %i.ab, 2
  %i.ac = zext i1 %narrow146 to i32
  br label %bb.n

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8408
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8240 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !824
  %i.ag = and i32 %i.af, -2
  %narrow = icmp eq i32 %i.ag, 2
  %i.ah = zext i1 %narrow to i32                  ; 3 uses
  br i1 %.not109, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread143, %bb.g
  %i.ai = phi i32 [ %i.y, %.thread143 ], [ %i.ah, %bb.g ]
  %i.aj = or i32 %i.j, 16384                      ; 2 uses
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !390
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ %i.j, %bb.g ]
  %i.al = phi i32 [ %i.ai, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.an = load i32, ptr %i.am, align 4, !tbaa !394
  %.not128 = icmp ne i32 %i.an, 0
  %i.ao = and i32 %i.ak, 16384
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond167 = and i1 %.not128, %i.ap
  br i1 %or.cond167, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 86
  %i.ar = load i8, ptr %i.aq, align 2, !tbaa !713, !range !120, !noundef !254
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 8072
  store i8 1, ptr %i.at, align 8, !tbaa !440
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %bb.j, %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8074
  store i8 1, ptr %i.au, align 2, !tbaa !723
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8073
  store i8 1, ptr %i.av, align 1, !tbaa !685
  br label %bb.l

bb.l:                                             ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !388
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 984
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !389
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1048
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8092
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !724
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bd
  %i.bf = zext nneg i32 %i.al to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %i.bf
  store float f0x7F7FFFFF, ptr %i.bg, align 4, !tbaa !86
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !266
  %i.bj = and i32 %i.bi, 16
  %.not129 = icmp eq i32 %i.bj, 0
  br i1 %.not129, label %bb.ay, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.175)
  br label %bb.ay

bb.n:                                             ; preds = %.thread140, %bb.f
  %i.bk = phi i32 [ %i.ac, %.thread140 ], [ %i.ah, %bb.f ]
  %i.bl = phi ptr [ %i.z, %.thread140 ], [ %i.ae, %bb.f ]
  %.0142 = phi ptr [ %.0.ph, %.thread140 ], [ %i.ad, %bb.f ] ; 3 uses
  %i.bm = phi ptr [ %.ph139, %.thread140 ], [ %i.i, %bb.f ] ; 6 uses
  %i.bn = phi i32 [ %.ph138, %.thread140 ], [ %i.j, %bb.f ]
  %i.bo = and i32 %i.bn, 32
  %.not111 = icmp eq i32 %i.bo, 0
  br i1 %.not111, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 8360
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !1533 ; 2 uses
  %.not112 = icmp eq i32 %i.bq, 0
  br i1 %.not112, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 8352
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !394
  %.not113 = icmp eq i32 %i.bq, %i.bt
  %spec.select130 = select i1 %.not113, ptr %.0142, ptr %i.br
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %.1 = phi ptr [ %.0142, %bb.n ], [ %spec.select130, %bb.p ], [ %.0142, %bb.o ] ; 8 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 8408 ; 3 uses
  %.not114 = icmp eq ptr %.1, %i.bu
  br i1 %.not114, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8416
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !962
  %.not115 = icmp eq i32 %i.bw, 0
  br i1 %.not115, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !1534
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 944
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !802
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8080
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !388
  %i.cc = icmp eq ptr %i.bz, %i.cb
  br i1 %i.cc, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 8444
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !1535 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.1, i64 36
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !1047 ; 2 uses
  %i.ch = fcmp olt float %i.ce, %i.cg
  br i1 %i.ch, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = fcmp oeq float %i.ce, %i.cg
  br i1 %i.ci, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8448
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !1536
  %i.cl = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !1048
  %i.cn = fcmp olt float %i.ck, %i.cm
  br i1 %i.cn, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.t
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.v, %bb.w, %bb.s, %bb.r, %bb.q
  %.2 = phi ptr [ %i.bu, %bb.w ], [ %.1, %bb.v ], [ %.1, %bb.u ], [ %.1, %bb.s ], [ %.1, %bb.r ], [ %.1, %bb.q ] ; 15 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8092 ; 4 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !724
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #35
  %i.cr = load ptr, ptr %.2, align 8, !tbaa !1001
  %i.cs = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 296
  %i.cu = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.cv = load <2 x float>, ptr %i.ct, align 8, !tbaa !86 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.cs, align 8, !tbaa !86
  %i.cx = fadd <2 x float> %i.cv, %i.cw
  %i.cy = load <2 x float>, ptr %i.cu, align 8, !tbaa !86
  %i.cz = fadd <2 x float> %i.cv, %i.cy
  store <2 x float> %i.cx, ptr %0, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.cz, ptr %i.da, align 8
  %i.db = load ptr, ptr %.2, align 8, !tbaa !1001
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !825
  %i.de = call <2 x float> @_ZN5ImGui14ScrollToRectExEP11ImGuiWindowRK6ImRecti(ptr noundef %i.db, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.dd) ; 0 uses
  %i.df = load i32, ptr %i.bm, align 4, !tbaa !390
  %i.dg = and i32 %i.df, 64
  %.not116 = icmp eq i32 %i.dg, 0
  br i1 %.not116, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = load i32, ptr %i.bl, align 8, !tbaa !824
  %i.di = icmp eq i32 %i.dh, 2
  %.pre = load ptr, ptr %.2, align 8, !tbaa !1001 ; 4 uses
  br i1 %i.di, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre, i64 164
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !831
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %i.dl = phi float [ %i.dk, %bb.aa ], [ 0.000000e+00, %bb.z ]
  %i.dm = getelementptr inbounds nuw i8, ptr %.pre, i64 172
  store float %i.dl, ptr %i.dm, align 4, !tbaa !828
  %i.dn = getelementptr inbounds nuw i8, ptr %.pre, i64 180
  store float 0.000000e+00, ptr %i.dn, align 4, !tbaa !829
  %i.do = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  store float 0.000000e+00, ptr %i.do, align 4, !tbaa !830
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #35
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.x
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 8080 ; 5 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !388
  %i.dr = load ptr, ptr %.2, align 8, !tbaa !1001 ; 3 uses
  %.not117 = icmp eq ptr %i.dq, %i.dr
  br i1 %.not117, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ds = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !266
  %i.du = and i32 %i.dt, 4
  %.not118 = icmp eq i32 %i.du, 0
  br i1 %.not118, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !333
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.176, ptr noundef %i.dw)
  %.pre149 = load ptr, ptr %.2, align 8, !tbaa !1001
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.dx = phi ptr [ %.pre149, %bb.af ], [ %i.dr, %bb.ae ]
  store ptr %i.dx, ptr %i.dp, align 8, !tbaa !388
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  store i64 -1, ptr %i.dy, align 8, !tbaa !557
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !665 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !1002 ; 2 uses
  %.not119 = icmp eq i32 %i.ea, %i.ec
  %.pre151.pre157 = load i32, ptr %i.bm, align 4, !tbaa !390 ; 3 uses
  br i1 %.not119, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ed = and i32 %.pre151.pre157, 32768
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  %.pre150 = load i32, ptr %i.eb, align 8, !tbaa !1002
  %.pre151.pre = load i32, ptr %i.bm, align 4, !tbaa !390
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.pre151 = phi i32 [ %.pre151.pre, %bb.aj ], [ %.pre151.pre157, %bb.ai ], [ %.pre151.pre157, %bb.ah ] ; 3 uses
  %i.ef = phi i32 [ %.pre150, %bb.aj ], [ %i.ec, %bb.ai ], [ %i.ea, %bb.ah ] ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8076
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !394
  %.not120 = icmp ne i32 %i.eh, %i.ef
  %i.ei = and i32 %.pre151, 2048
  %.not121 = icmp ne i32 %i.ei, 0
  %or.cond168.not171 = select i1 %.not120, i1 true, i1 %.not121
  %i.ej = and i32 %.pre151, 8192
  %i.ek = icmp eq i32 %i.ej, 0
  %or.cond170 = select i1 %or.cond168.not171, i1 %i.ek, i1 false
  br i1 %or.cond170, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %i.a, i64 8088
  %i.em = load i32, ptr %i.el, align 8, !tbaa !725
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8520
  store i32 %i.em, ptr %i.en, align 8, !tbaa !798
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 8524
  store i32 %i.ef, ptr %i.eo, align 4, !tbaa !676
  %i.ep = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !1003
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8528
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !799
  %i.es = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.et = load i32, ptr %i.es, align 4, !tbaa !833
  %i.eu = getelementptr inbounds nuw i8, ptr %i.a, i64 8532
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !1044
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 8536
  %i.ew = lshr i32 %.pre151, 10
  %i.ex = trunc i32 %i.ew to i8
  %i.ey = and i8 %i.ex, 1
  store i8 %i.ey, ptr %i.ev, align 8, !tbaa !1045
  %i.ez = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !834
  %i.fb = getelementptr inbounds nuw i8, ptr %i.a, i64 8537
  %i.fc = lshr i32 %i.fa, 21
  %i.fd = trunc i32 %i.fc to i8
  %i.fe = and i8 %i.fd, 1
  store i8 %i.fe, ptr %i.fb, align 1, !tbaa !1046
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 10156
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !266
  %i.fh = and i32 %i.fg, 16
  %.not122 = icmp eq i32 %i.fh, 0
  %.pre153 = load ptr, ptr %i.dp, align 8, !tbaa !388 ; 2 uses
  %.pre155 = load i32, ptr %i.co, align 4, !tbaa !724 ; 2 uses
  br i1 %.not122, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fi = getelementptr inbounds nuw i8, ptr %.pre153, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !333
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.177, i32 noundef %i.ef, i32 noundef %.pre155, ptr noundef %i.fj)
  %.pre152 = load ptr, ptr %i.dp, align 8, !tbaa !388
  %.pre154 = load i32, ptr %i.co, align 4, !tbaa !724
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fk = phi i32 [ %.pre154, %bb.an ], [ %.pre155, %bb.am ] ; 2 uses
  %i.fl = phi ptr [ %.pre152, %bb.an ], [ %.pre153, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 984
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !389
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 1048
  %i.fp = zext i32 %i.fk to i64                   ; 3 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %i.fp
  %3 = load i64, ptr %i.fq, align 8, !tbaa !86
  store i64 %3, ptr %1, align 8, !tbaa !86
  %4 = load i32, ptr %i.eb, align 8, !tbaa !1002  ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !1003
  %i.ft = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.fu = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8076
  store i32 %4, ptr %i.fv, align 4, !tbaa !394
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8092
  store i32 %i.fk, ptr %i.fw, align 4, !tbaa !724
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.fs)
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8080
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !388 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 1008
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.fz, i64 %i.fp
  store i32 %4, ptr %i.ga, align 4, !tbaa !255
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 1016
  %i.gc = getelementptr inbounds nuw [16 x i8], ptr %i.gb, i64 %i.fp
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gc, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ft, i64 16, i1 false), !tbaa.struct !402
  %i.gd = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8080
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !388
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 984
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !389
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 1048
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gd, i64 8092
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !724
  %i.gl = zext i32 %i.gk to i64
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.gi, i64 %i.gl
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.gm, align 4, !tbaa !86
  %i.gn = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !537 ; 2 uses
  %.not123 = icmp eq i64 %i.go, -1
  br i1 %.not123, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  store i64 %i.go, ptr %i.gp, align 8, !tbaa !557
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gq = load i32, ptr %i.bm, align 4, !tbaa !390 ; 3 uses
  %i.gr = and i32 %i.gq, 1024
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %.thread145, label %bb.ar

.thread145:                                       ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.gt = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.gu = load <2 x float>, ptr %i.ft, align 8, !tbaa !86
  %i.gv = load <2 x float>, ptr %i.gt, align 8, !tbaa !86
  %i.gw = fadd <2 x float> %i.gu, %i.gv
  %5 = fmul <2 x float> %i.gw, splat (float 5.000000e-01)
  store <2 x float> %5, ptr %2, align 8
  %6 = zext nneg i32 %i.bk to i64                 ; 2 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %6
  %8 = load float, ptr %7, align 4, !tbaa !86
  %9 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %6
  store float %8, ptr %9, align 4, !tbaa !86
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  %i.gx = load ptr, ptr %i.dp, align 8, !tbaa !388
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 984
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !389
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1048
  %i.hb = load i32, ptr %i.co, align 4, !tbaa !724
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.ha, i64 %i.hc
  %10 = load i64, ptr %1, align 8, !tbaa !86
  store i64 %10, ptr %i.hd, align 8, !tbaa !86
  %.pre156 = load i32, ptr %i.bm, align 4, !tbaa !390
  br label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.he = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !834
  %i.hg = and i32 %i.hf, 1048576
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.hi = and i32 %i.gq, -4097                    ; 2 uses
  store i32 %i.hi, ptr %i.bm, align 4, !tbaa !390
  br label %bb.at

bb.at:                                            ; preds = %.thread145, %bb.as, %bb.ar
  %i.hj = phi i32 [ %.pre156, %.thread145 ], [ %i.hi, %bb.as ], [ %i.gq, %bb.ar ] ; 3 uses
  %i.hk = and i32 %i.hj, 4096
  %.not125 = icmp eq i32 %i.hk, 0
  br i1 %.not125, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.hl = load i32, ptr %i.eb, align 8, !tbaa !1002
  %i.hm = getelementptr inbounds nuw i8, ptr %i.a, i64 8136
  store i32 %i.hl, ptr %i.hm, align 8, !tbaa !823
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 8140
  %i.ho = and i32 %i.hj, 1024
  %.not126 = icmp eq i32 %i.ho, 0
  %spec.store.select = select i1 %.not126, i32 0, i32 13
  store i32 %spec.store.select, ptr %i.hn, align 4, !tbaa !1028
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hp = and i32 %i.hj, 16384
  %i.hq = icmp eq i32 %i.hp, 0
  br i1 %i.hq, label %bb.aw, label %11

bb.aw:                                            ; preds = %bb.av
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gd, i64 86
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !713, !range !120, !noundef !254
  %i.ht = trunc nuw i8 %i.hs to i1
  br i1 %i.ht, label %bb.ax, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133

bb.ax:                                            ; preds = %bb.aw
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gd, i64 8072
  store i8 1, ptr %i.hu, align 8, !tbaa !440
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133: ; preds = %bb.aw, %bb.ax
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gd, i64 8074
  store i8 1, ptr %i.hv, align 2, !tbaa !723
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gd, i64 8073
  store i8 1, ptr %i.hw, align 1, !tbaa !685
  br label %11

11:                                               ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit133, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br label %bb.ay

bb.ay:                                            ; preds = %bb.l, %bb.m, %11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.b = load i8, ptr %i.a, align 1, !tbaa !414, !range !120, !noundef !254
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !683
  %i.f = icmp eq ptr %0, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !608
  %i.i = and i32 %i.h, 131072
  %.not = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui16IsDragDropActiveEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8616
  %i.c = load i8, ptr %i.b, align 8, !tbaa !696, !range !120, !noundef !254
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui18BeginTooltipHiddenEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.179, ptr noundef null, i32 noundef 33751879)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 209
  store i8 1, ptr %i.e, align 1, !tbaa !919
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 212
  store i8 1, ptr %i.f, align 4, !tbaa !742
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 236
  store i8 1, ptr %i.g, align 4, !tbaa !914
  ret i1 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309  ; 8 uses
  %i.d = and i32 %0, 16
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %_Z9ImHashStrPKcmj.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7704 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !441  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.i = load i32, ptr %i.h, align 4, !tbaa !665
  %.not80 = icmp eq i32 %i.i, %i.g
  br i1 %.not80, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5319
  %i.k = load i8, ptr %i.j, align 1               ; 2 uses
  %.not81 = icmp eq i8 %i.k, -1
  %narrow = select i1 %.not81, i8 0, i8 %i.k      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.m = sext i8 %narrow to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !261, !range !120, !noundef !254
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.aj, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = sext i8 %narrow to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.r = load i8, ptr %i.q, align 1, !tbaa !919, !range !120, !noundef !254
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.aj, label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 232
  %i.u = load i8, ptr %i.t, align 8, !tbaa !261, !range !120, !noundef !254
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.aj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.x = load i8, ptr %i.w, align 1, !tbaa !919, !range !120, !noundef !254
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.aj, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7712
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !682
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !665 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.aj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 5328
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !506
  %.not78 = icmp ne ptr %i.ah, %i.c
  %i.ai = and i32 %0, 8
  %.not79 = icmp eq i32 %i.ai, 0
  %or.cond90 = or i1 %.not79, %.not78
  br i1 %or.cond90, label %bb.aj, label %bb.l

bb.k:                                             ; preds = %bb.h
  %.old = and i32 %0, 8
  %.not79.old = icmp eq i32 %.old, 0
  br i1 %.not79.old, label %bb.aj, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !665
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.aj = phi i32 [ %.pre, %._crit_edge ], [ %i.ae, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7716 ; 2 uses
  %i.al = tail call noundef i32 @_ZN11ImGuiWindow18GetIDFromRectangleERK6ImRect(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.ak) ; 7 uses
  store i32 %i.al, ptr %i.f, align 8, !tbaa !441
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 5300
  %i.an = icmp eq i32 %i.aj, %i.al
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 5304
  store i32 %i.aj, ptr %i.ao, align 8, !tbaa !667
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 5344
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !680
  %i.ar = icmp eq i32 %i.aq, %i.al
  br i1 %i.ar, label %bb.o, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 5353
  store i8 1, ptr %i.as, align 1, !tbaa !730
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.n, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 7708
  %i.au = load i32, ptr %i.at, align 4, !tbaa !442
  %i.av = tail call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i32 noundef %i.al, i32 noundef %i.au) ; 2 uses
  %i.aw = zext i1 %i.av to i8
  br i1 %i.av, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2832
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !261, !range !120, !noundef !254
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.al, ptr noundef nonnull %i.c)
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.c, i32 noundef 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN5ImGui11KeepAliveIDEj.exit
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !665
  %i.bb = icmp eq i32 %i.ba, %i.al
  br i1 %i.bb, label %bb.s, label %bb.aj

bb.s:                                             ; preds = %bb.r, %bb.e
  %.sink = phi i8 [ 0, %bb.e ], [ %i.aw, %bb.r ]
  %.ph = phi i32 [ %i.g, %bb.e ], [ %i.al, %bb.r ]
  %.174.ph = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.r ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 5313
  store i8 %.sink, ptr %i.bc, align 1, !tbaa !671
  %i.bd = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 15 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 232
  %i.bf = sext i32 %.174.ph to i64                ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !261, !range !120, !noundef !254
  %i.bi = trunc nuw i8 %i.bh to i1
end_hunk_0
