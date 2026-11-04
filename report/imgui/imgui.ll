Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui24GetNavTweakPressedAmountE9ImGuiAxis:bb.a
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
  %i.bz = getelementptr i8, ptr %i.by, i64 -572
  %i.ca = load i8, ptr %i.bz, align 4, !tbaa !526, !range !100, !noundef !236
  %i.cb = icmp eq i8 %i.ca, 0
  %brmerge30.not = and i1 %i.cb, %i.p
  br i1 %brmerge30.not, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20:             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  %i.cc = getelementptr [12 x i8], ptr %i.a, i64 %.010
  %i.cd = getelementptr i8, ptr %i.cc, i64 -572
  %i.ce = load i8, ptr %i.cd, align 4, !tbaa !526, !range !100, !noundef !236
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %bb.l, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

bb.l:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit, %bb.l, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20
  %.0 = phi float [ 0.000000e+00, %bb.l ], [ %i.bw, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit20 ], [ %i.bw, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit ], [ %i.bw, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit14 ], [ %i.aq, %_ZN5ImGui19GetKeyPressedAmountE8ImGuiKeyff.exit ]
  ret float %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25NavInitRequestApplyResultEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !370  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.e = load i32, ptr %i.d, align 4, !tbaa !379
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8336 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !994  ; 3 uses
  %.not27 = icmp eq i32 %i.e, %i.g
  br i1 %.not27, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.i = load i32, ptr %i.h, align 8, !tbaa !714
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8680
  store i32 %i.i, ptr %i.j, align 8, !tbaa !793
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8684
  %i.l = load <2 x i32>, ptr %i.f, align 8, !tbaa !237
  store <2 x i32> %i.l, ptr %i.k, align 4, !tbaa !237
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8692
  store i32 0, ptr %i.m, align 4, !tbaa !1045
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8696
  store i8 0, ptr %i.n, align 8, !tbaa !1046
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8360
  %i.p = load i32, ptr %i.o, align 8, !tbaa !829
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8697
  %i.r = lshr i32 %i.p, 21
  %i.s = trunc i32 %i.r to i8
  %i.t = and i8 %i.s, 1
  store i8 %i.t, ptr %i.q, align 1, !tbaa !1047
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.v = load i32, ptr %i.u, align 4, !tbaa !247
  %i.w = and i32 %i.v, 16
  %.not28 = icmp eq i32 %i.w, 0
  br i1 %.not28, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.y = load i32, ptr %i.x, align 4, !tbaa !713
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !313
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.178, i32 noundef %i.g, i32 noundef %i.y, ptr noundef %i.aa)
  %.pre = load i32, ptr %i.f, align 8, !tbaa !994
  %.pre30 = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ab = phi ptr [ %.pre30, %bb.e ], [ %i.a, %bb.d ] ; 3 uses
  %i.ac = phi i32 [ %.pre, %bb.e ], [ %i.g, %bb.d ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !713 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 8340
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !995
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8344
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 8220
  store i32 %i.ac, ptr %i.ai, align 4, !tbaa !379
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 8236
  store i32 %i.ae, ptr %i.aj, align 4, !tbaa !713
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.ag)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 8224
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !370 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 1008
  %i.an = zext i32 %i.ae to i64                   ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.an
  store i32 %i.ac, ptr %i.ao, align 4, !tbaa !237
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 1016
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ah, i64 16, i1 false), !tbaa.struct !386
  %i.ar = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8224
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !370 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 984
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !371
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 1048
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 8236
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !713
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.az
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.ba, align 4, !tbaa !75
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8219
  store i8 1, ptr %i.bb, align 1, !tbaa !715
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8376
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !527 ; 2 uses
  %.not29 = icmp eq i64 %i.bd, -1
  br i1 %.not29, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 %i.bd, ptr %i.be, align 8, !tbaa !552
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8323
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !796, !range !100, !noundef !236
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !614
  %i.bk = and i32 %i.bj, 65536
  %.not13.i = icmp eq i32 %i.bk, 0
  br i1 %.not13.i, label %bb.j, label %.sink.split.i

bb.j:                                             ; preds = %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ar, i64 8304
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !551
  switch i32 %i.bm, label %.thread.i [
    i32 2, label %bb.k
    i32 3, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !737
  %i.bp = and i32 %i.bo, 1
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %.sink.split.i, label %.thread.i

bb.l:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !737
  %i.bt = and i32 %i.bs, 2
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %.sink.split.i, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ar, i64 118
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !702, !range !100, !noundef !236
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.sink.split.i, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

.sink.split.i:                                    ; preds = %.thread.i, %bb.l, %bb.k, %bb.i
  %.sink.i = phi i8 [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.k ], [ 1, %.thread.i ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 8216
  store i8 %.sink.i, ptr %i.by, align 8, !tbaa !424
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %.thread.i, %.sink.split.i
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ar, i64 8218
  store i8 1, ptr %i.bz, align 2, !tbaa !712
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 8217
  store i8 1, ptr %i.ca, align 1, !tbaa !676
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25NavMoveRequestApplyResultEv() local_unnamed_addr #12 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 52 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8464
  %i.c = load i32, ptr %i.b, align 8, !tbaa !964
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8456
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8388 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !375
  br label %.thread148

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8576
  %i.h = load i32, ptr %i.g, align 8, !tbaa !965
  %.not111 = icmp eq i32 %i.h, 0                  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8388 ; 4 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !375  ; 5 uses
  %i.k = and i32 %i.j, 1024
  %i.l = icmp ne i32 %i.k, 0                      ; 2 uses
  %or.cond = select i1 %i.l, i1 %.not111, i1 false
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8452
  %i.n = load i32, ptr %i.m, align 4, !tbaa !557
  %i.o = icmp eq i32 %i.n, 1
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8448
  %i.q = load i32, ptr %i.p, align 8, !tbaa !376
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.thread151

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8632
  %i.t = load i32, ptr %i.s, align 8, !tbaa !997
  %.not112 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8624
  br i1 %.not112, label %.thread151, label %.thread148

.thread151:                                       ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8400
  %i.w = load i32, ptr %i.v, align 8, !tbaa !819
  %i.x = and i32 %i.w, -2
  %narrow155 = icmp eq i32 %i.x, 2
  %i.y = zext i1 %narrow155 to i32
  br label %bb.h

.thread148:                                       ; preds = %bb.e, %.thread
  %.ph146 = phi i32 [ %i.f, %.thread ], [ %i.j, %bb.e ]
  %.ph147 = phi ptr [ %i.e, %.thread ], [ %i.i, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %.thread ], [ %i.u, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8400 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !819
  %i.ab = and i32 %i.aa, -2
  %narrow154 = icmp eq i32 %i.ab, 2
  %i.ac = zext i1 %narrow154 to i32
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8568
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8400 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !819
  %i.ag = and i32 %i.af, -2
  %narrow = icmp eq i32 %i.ag, 2
  %i.ah = zext i1 %narrow to i32                  ; 3 uses
  br i1 %.not111, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.thread151, %bb.g
  %i.ai = phi i32 [ %i.y, %.thread151 ], [ %i.ah, %bb.g ]
  %i.aj = or i32 %i.j, 16384                      ; 2 uses
  store i32 %i.aj, ptr %i.i, align 4, !tbaa !375
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = phi i32 [ %i.aj, %bb.h ], [ %i.j, %bb.g ]
  %i.al = phi i32 [ %i.ai, %bb.h ], [ %i.ah, %bb.g ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.an = load i32, ptr %i.am, align 4, !tbaa !379
  %.not131 = icmp ne i32 %i.an, 0
  %i.ao = and i32 %i.ak, 16384
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond176 = and i1 %.not131, %i.ap
  br i1 %or.cond176, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !370 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !614
  %i.au = and i32 %i.at, 65536
  %.not13.i = icmp eq i32 %i.au, 0
  br i1 %.not13.i, label %bb.l, label %.sink.split.i

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8304
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !551
  switch i32 %i.aw, label %.thread.i [
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !737
  %i.az = and i32 %i.ay, 1
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.sink.split.i, label %.thread.i

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !737
  %i.bd = and i32 %i.bc, 2
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.sink.split.i, label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 118
  %i.bg = load i8, ptr %i.bf, align 2, !tbaa !702, !range !100, !noundef !236
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %.sink.split.i, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

.sink.split.i:                                    ; preds = %.thread.i, %bb.n, %bb.m, %bb.k
  %.sink.i = phi i8 [ 0, %bb.k ], [ 0, %bb.n ], [ 0, %bb.m ], [ 1, %.thread.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8216
  store i8 %.sink.i, ptr %i.bi, align 8, !tbaa !424
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %.thread.i, %.sink.split.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8218
  store i8 1, ptr %i.bj, align 2, !tbaa !712
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  store i8 1, ptr %i.bk, align 1, !tbaa !676
  br label %bb.o

bb.o:                                             ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !370
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 984
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !371
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1048
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !713
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bs
  %i.bu = zext nneg i32 %i.al to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.bu
  store float f0x7F7FFFFF, ptr %i.bv, align 4, !tbaa !75
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !247
  %i.by = and i32 %i.bx, 16
  %.not132 = icmp eq i32 %i.by, 0
  br i1 %.not132, label %bb.be, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.179)
  br label %bb.be

bb.q:                                             ; preds = %.thread148, %bb.f
  %i.bz = phi i32 [ %i.ac, %.thread148 ], [ %i.ah, %bb.f ]
  %i.ca = phi ptr [ %i.z, %.thread148 ], [ %i.ae, %bb.f ]
  %.0150 = phi ptr [ %.0.ph, %.thread148 ], [ %i.ad, %bb.f ] ; 3 uses
  %i.cb = phi ptr [ %.ph147, %.thread148 ], [ %i.i, %bb.f ] ; 5 uses
  %i.cc = phi i32 [ %.ph146, %.thread148 ], [ %i.j, %bb.f ]
  %i.cd = and i32 %i.cc, 32
  %.not113 = icmp eq i32 %i.cd, 0
  br i1 %.not113, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 8520
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !1568 ; 2 uses
  %.not114 = icmp eq i32 %i.cf, 0
  br i1 %.not114, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 8512
  %i.ch = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !379
  %.not115 = icmp eq i32 %i.cf, %i.ci
  %spec.select133 = select i1 %.not115, ptr %.0150, ptr %i.cg
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.1 = phi ptr [ %.0150, %bb.q ], [ %spec.select133, %bb.s ], [ %.0150, %bb.r ] ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 8568 ; 3 uses
  %.not116 = icmp eq ptr %.1, %i.cj
  br i1 %.not116, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8576
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !965
  %.not117 = icmp eq i32 %i.cl, 0
  br i1 %.not117, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cm = load ptr, ptr %i.cj, align 8, !tbaa !1569
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 944
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !797
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !370
  %i.cr = icmp eq ptr %i.co, %i.cq
  br i1 %i.cr, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 8604
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !1570 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.1, i64 36
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !1048 ; 2 uses
  %i.cw = fcmp olt float %i.ct, %i.cv
  br i1 %i.cw, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = fcmp oeq float %i.ct, %i.cv
  br i1 %i.cx, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8608
  %i.cz = load float, ptr %i.cy, align 8, !tbaa !1571
  %i.da = getelementptr inbounds nuw i8, ptr %.1, i64 40
  %i.db = load float, ptr %i.da, align 8, !tbaa !1049
  %i.dc = fcmp olt float %i.cz, %i.db
  br i1 %i.dc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.w
  br label %bb.aa

bb.aa:                                            ; preds = %bb.x, %bb.y, %bb.z, %bb.v, %bb.u, %bb.t
  %.2 = phi ptr [ %i.cj, %bb.z ], [ %.1, %bb.y ], [ %.1, %bb.x ], [ %.1, %bb.v ], [ %.1, %bb.u ], [ %.1, %bb.t ] ; 15 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 8236 ; 4 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !713
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.dg = load ptr, ptr %.2, align 8, !tbaa !993
  %i.dh = getelementptr inbounds nuw i8, ptr %.2, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 296
  %i.dj = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.dk = load <2 x float>, ptr %i.di, align 8, !tbaa !75 ; 2 uses
  %i.dl = load <2 x float>, ptr %i.dh, align 8, !tbaa !75
  %i.dm = fadd <2 x float> %i.dk, %i.dl
  %i.dn = load <2 x float>, ptr %i.dj, align 8, !tbaa !75
  %i.do = fadd <2 x float> %i.dk, %i.dn
  store <2 x float> %i.dm, ptr %0, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %i.do, ptr %i.dp, align 8
  %i.dq = load ptr, ptr %.2, align 8, !tbaa !993
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8392
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !820
  %i.dt = call <2 x float> @_ZN5ImGui14ScrollToRectExEP11ImGuiWindowRK6ImRecti(ptr noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.ds) ; 0 uses
  %i.du = load i32, ptr %i.cb, align 4, !tbaa !375
  %i.dv = and i32 %i.du, 64
  %.not118 = icmp eq i32 %i.dv, 0
  br i1 %.not118, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i32, ptr %i.ca, align 8, !tbaa !819
  %i.dx = icmp eq i32 %i.dw, 2
  %.pre = load ptr, ptr %.2, align 8, !tbaa !993  ; 4 uses
  br i1 %i.dx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre, i64 164
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !826
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ea = phi float [ %i.dz, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre, i64 172
  store float %i.ea, ptr %i.eb, align 4, !tbaa !823
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre, i64 180
  store float 0.000000e+00, ptr %i.ec, align 4, !tbaa !824
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !825
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 8224 ; 5 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !370
  %i.eg = load ptr, ptr %.2, align 8, !tbaa !993  ; 3 uses
  %.not119 = icmp eq ptr %i.ef, %i.eg
  br i1 %.not119, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !247
  %i.ej = and i32 %i.ei, 4
  %.not120 = icmp eq i32 %i.ej, 0
  br i1 %.not120, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !313
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.180, ptr noundef %i.el)
  %.pre157 = load ptr, ptr %.2, align 8, !tbaa !993
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.em = phi ptr [ %.pre157, %bb.ai ], [ %i.eg, %bb.ah ]
  store ptr %i.em, ptr %i.ee, align 8, !tbaa !370
  %i.en = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 -1, ptr %i.en, align 8, !tbaa !552
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !652 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 4 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !994 ; 2 uses
  %.not121 = icmp eq i32 %i.ep, %i.er
  %.pre159.pre165 = load i32, ptr %i.cb, align 4, !tbaa !375 ; 3 uses
  br i1 %.not121, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = and i32 %.pre159.pre165, 32768
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  %.pre158 = load i32, ptr %i.eq, align 8, !tbaa !994
  %.pre159.pre = load i32, ptr %i.cb, align 4, !tbaa !375
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.pre159 = phi i32 [ %.pre159.pre, %bb.am ], [ %.pre159.pre165, %bb.al ], [ %.pre159.pre165, %bb.ak ] ; 3 uses
  %i.eu = phi i32 [ %.pre158, %bb.am ], [ %i.er, %bb.al ], [ %i.ep, %bb.ak ] ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !379
  %.not122 = icmp ne i32 %i.ew, %i.eu
  %i.ex = and i32 %.pre159, 2048
  %.not123 = icmp ne i32 %i.ex, 0
  %or.cond177.not180 = select i1 %.not122, i1 true, i1 %.not123
  %i.ey = and i32 %.pre159, 8192
  %i.ez = icmp eq i32 %i.ey, 0
  %or.cond179 = select i1 %or.cond177.not180, i1 %i.ez, i1 false
  br i1 %or.cond179, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !714
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8680
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !793
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8684
  store i32 %i.eu, ptr %i.fd, align 4, !tbaa !665
  %i.fe = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !995
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 8688
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !794
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 8396
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !828
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 8692
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !1045
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8696
  %i.fl = lshr i32 %.pre159, 10
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = and i8 %i.fm, 1
  store i8 %i.fn, ptr %i.fk, align 8, !tbaa !1046
  %i.fo = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !829
  %i.fq = getelementptr inbounds nuw i8, ptr %i.a, i64 8697
  %i.fr = lshr i32 %i.fp, 21
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = and i8 %i.fs, 1
  store i8 %i.ft, ptr %i.fq, align 1, !tbaa !1047
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 10404
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !247
  %i.fw = and i32 %i.fv, 16
  %.not124 = icmp eq i32 %i.fw, 0
  %.pre161 = load ptr, ptr %i.ee, align 8, !tbaa !370 ; 2 uses
  %.pre163 = load i32, ptr %i.dd, align 4, !tbaa !713 ; 2 uses
  br i1 %.not124, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fx = getelementptr inbounds nuw i8, ptr %.pre161, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !313
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.181, i32 noundef %i.eu, i32 noundef %.pre163, ptr noundef %i.fy)
  %.pre160 = load ptr, ptr %i.ee, align 8, !tbaa !370
  %.pre162 = load i32, ptr %i.dd, align 4, !tbaa !713
  %.pre169 = load i32, ptr %i.eq, align 8, !tbaa !994
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %1 = phi i32 [ %.pre169, %bb.aq ], [ %i.eu, %bb.ap ] ; 2 uses
  %i.fz = phi i32 [ %.pre162, %bb.aq ], [ %.pre163, %bb.ap ] ; 2 uses
  %i.ga = phi ptr [ %.pre160, %bb.aq ], [ %.pre161, %bb.ap ]
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 984
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !371
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1048
  %i.ge = zext i32 %i.fz to i64                   ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge ; 2 uses
  %2 = load float, ptr %i.gf, align 8
  %.sroa_idx158 = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  %3 = load float, ptr %.sroa_idx158, align 4
  %i.gg = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !995
  %i.gi = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.gj = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8220
  store i32 %1, ptr %i.gk, align 4, !tbaa !379
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gj, i64 8236
  store i32 %i.fz, ptr %i.gl, align 4, !tbaa !713
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.gh)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gj, i64 8224
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !370 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 1008
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.go, i64 %i.ge
  store i32 %1, ptr %i.gp, align 4, !tbaa !237
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 1016
  %i.gr = getelementptr inbounds nuw [16 x i8], ptr %i.gq, i64 %i.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gr, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gi, i64 16, i1 false), !tbaa.struct !386
  %i.gs = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 8224
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !370 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 984
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !371
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 1048
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 8236
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !713
  %i.ha = zext i32 %i.gz to i64
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.ha
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.hb, align 4, !tbaa !75
  %i.hc = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.hd = load i64, ptr %i.hc, align 8, !tbaa !527 ; 2 uses
  %.not125 = icmp eq i64 %i.hd, -1
  br i1 %.not125, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.he = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !552
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hf = load i32, ptr %i.cb, align 4, !tbaa !375 ; 4 uses
  %i.hg = and i32 %i.hf, 1024
  %i.hh = icmp eq i32 %i.hg, 0
  br i1 %i.hh, label %.thread153, label %bb.au

.thread153:                                       ; preds = %bb.at
  %i.hi = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.hj = load <2 x float>, ptr %i.gi, align 8, !tbaa !75
  %i.hk = load <2 x float>, ptr %i.hi, align 8, !tbaa !75
  %i.hl = fadd <2 x float> %i.hj, %i.hk           ; 2 uses
  %.sroa.idx.not = icmp eq i32 %i.bz, 0           ; 3 uses
  %4 = extractelement <2 x float> %i.hl, i64 0
  %5 = extractelement <2 x float> %i.hl, i64 1
  %.sroa.speculated.v = select i1 %.sroa.idx.not, float %4, float %5
  %.sroa.speculated = fmul float %.sroa.speculated.v, 5.000000e-01 ; 2 uses
  %.sroa.0160.0 = select i1 %.sroa.idx.not, float %.sroa.speculated, float %2
  %.sroa.5.0 = select i1 %.sroa.idx.not, float %3, float %.sroa.speculated
  %i.hm = load ptr, ptr %i.ee, align 8, !tbaa !370
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 984
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !371
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1048
  %i.hq = load i32, ptr %i.dd, align 4, !tbaa !713
  %i.hr = zext i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hr ; 2 uses
  store float %.sroa.0160.0, ptr %i.hs, align 8, !tbaa !75
  %.sroa_idx157 = getelementptr inbounds nuw i8, ptr %i.hs, i64 4
  store float %.sroa.5.0, ptr %.sroa_idx157, align 4, !tbaa !75
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ht = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !829
  %i.hv = and i32 %i.hu, 1048576
  %i.hw = icmp eq i32 %i.hv, 0
  br i1 %i.hw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.hx = and i32 %i.hf, -4097                    ; 2 uses
  store i32 %i.hx, ptr %i.cb, align 4, !tbaa !375
  br label %bb.aw

bb.aw:                                            ; preds = %.thread153, %bb.av, %bb.au
  %i.hy = phi i32 [ %i.hf, %.thread153 ], [ %i.hx, %bb.av ], [ %i.hf, %bb.au ] ; 4 uses
  %i.hz = and i32 %i.hy, 4096
  %.not127 = icmp eq i32 %i.hz, 0
  br i1 %.not127, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ia = load i32, ptr %i.eq, align 8, !tbaa !994
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 8296
  store i32 %i.ia, ptr %i.ib, align 8, !tbaa !818
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 8300 ; 2 uses
  %i.id = lshr i32 %i.hy, 4
  %spec.store.select = and i32 %i.id, 32          ; 2 uses
  store i32 %spec.store.select, ptr %i.ic, align 4, !tbaa !1025
  %i.ie = and i32 %i.hy, 1024
  %.not129 = icmp eq i32 %i.ie, 0
  br i1 %.not129, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.if = or disjoint i32 %spec.store.select, 13
  store i32 %i.if, ptr %i.ic, align 4, !tbaa !1025
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %i.ig = and i32 %i.hy, 16384
  %i.ih = icmp eq i32 %i.ig, 0
  br i1 %i.ih, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.ii = getelementptr inbounds nuw i8, ptr %i.gu, i64 20
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !614
  %i.ik = and i32 %i.ij, 65536
  %.not13.i137 = icmp eq i32 %i.ik, 0
  br i1 %.not13.i137, label %bb.bb, label %.sink.split.i138

bb.bb:                                            ; preds = %bb.ba
  %i.il = getelementptr inbounds nuw i8, ptr %i.gs, i64 8304
  %i.im = load i32, ptr %i.il, align 8, !tbaa !551
  switch i32 %i.im, label %.thread.i140 [
    i32 2, label %bb.bc
    i32 3, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.in = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.io = load i32, ptr %i.in, align 8, !tbaa !737
  %i.ip = and i32 %i.io, 1
  %i.iq = icmp eq i32 %i.ip, 0
  br i1 %i.iq, label %.sink.split.i138, label %.thread.i140

bb.bd:                                            ; preds = %bb.bb
  %i.ir = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !737
  %i.it = and i32 %i.is, 2
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %.sink.split.i138, label %.thread.i140

.thread.i140:                                     ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gs, i64 118
  %i.iw = load i8, ptr %i.iv, align 2, !tbaa !702, !range !100, !noundef !236
  %i.ix = trunc nuw i8 %i.iw to i1
  br i1 %i.ix, label %.sink.split.i138, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141

.sink.split.i138:                                 ; preds = %.thread.i140, %bb.bd, %bb.bc, %bb.ba
  %.sink.i139 = phi i8 [ 0, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 1, %.thread.i140 ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gs, i64 8216
  store i8 %.sink.i139, ptr %i.iy, align 8, !tbaa !424
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141: ; preds = %.thread.i140, %.sink.split.i138
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gs, i64 8218
  store i8 1, ptr %i.iz, align 2, !tbaa !712
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gs, i64 8217
  store i8 1, ptr %i.ja, align 1, !tbaa !676
  br label %bb.be

bb.be:                                            ; preds = %bb.az, %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141, %bb.o, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN5ImGui20IsWindowNavFocusableEP11ImGuiWindow(ptr nofree noundef readonly captures(address) %0) local_unnamed_addr #17 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 205
  %i.b = load i8, ptr %i.a, align 1, !tbaa !398, !range !100, !noundef !236
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !674
  %i.f = icmp eq ptr %0, %i.e
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !614
  %i.i = and i32 %i.h, 131072
  %.not = icmp eq i32 %i.i, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.j = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %.not, %bb.c ]
  ret i1 %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui16IsDragDropActiveEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8776
  %i.c = load i8, ptr %i.b, align 8, !tbaa !687, !range !100, !noundef !236
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui18BeginTooltipHiddenEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.183, ptr noundef null, i32 noundef 33751879)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !289  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 209
  store i8 1, ptr %i.e, align 1, !tbaa !926
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 212
  store i8 1, ptr %i.f, align 4, !tbaa !733
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 235
  store i8 1, ptr %i.g, align 1, !tbaa !920
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 37 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !289  ; 8 uses
  %i.d = and i32 %0, 16
  %i.e = icmp eq i32 %i.d, 0                      ; 2 uses
  br i1 %i.e, label %bb.b, label %.lr.ph.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 7848 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !425  ; 3 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.i = load i32, ptr %i.h, align 4, !tbaa !652
  %.not80 = icmp eq i32 %i.i, %i.g
  br i1 %.not80, label %bb.d, label %bb.ao

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5449
  %i.k = load i8, ptr %i.j, align 1, !tbaa !545   ; 2 uses
  %.not81 = icmp eq i8 %i.k, -1
  %narrow = select i1 %.not81, i8 0, i8 %i.k      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.m = sext i8 %narrow to i64
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 %i.m
  %i.o = load i8, ptr %i.n, align 1, !tbaa !243, !range !100, !noundef !236
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.ao, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.select = sext i8 %narrow to i32
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.r = load i8, ptr %i.q, align 1, !tbaa !926, !range !100, !noundef !236
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.ao, label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.u = load i8, ptr %i.t, align 8, !tbaa !243, !range !100, !noundef !236
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.ao, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.x = load i8, ptr %i.w, align 1, !tbaa !926, !range !100, !noundef !236
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.ao, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 7856
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !670
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !652 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.ao, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !500
  %.not78 = icmp ne ptr %i.ah, %i.c
  %i.ai = and i32 %0, 8
  %.not79 = icmp eq i32 %i.ai, 0
  %or.cond90 = or i1 %.not79, %.not78
  br i1 %or.cond90, label %bb.ao, label %bb.l

bb.k:                                             ; preds = %bb.h
  %.old = and i32 %0, 8
  %.not79.old = icmp eq i32 %.old, 0
  br i1 %.not79.old, label %bb.ao, label %._crit_edge

._crit_edge:                                      ; preds = %bb.k
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !652
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.j
  %i.aj = phi i32 [ %.pre, %._crit_edge ], [ %i.ae, %bb.j ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 7860 ; 2 uses
  %i.al = tail call noundef i32 @_ZN11ImGuiWindow18GetIDFromRectangleERK6ImRect(ptr noundef nonnull align 8 dereferenceable(1077) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.ak) ; 7 uses
  store i32 %i.al, ptr %i.f, align 8, !tbaa !425
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.an = icmp eq i32 %i.aj, %i.al
  br i1 %i.an, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 5432
  store i32 %i.aj, ptr %i.ao, align 8, !tbaa !654
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 5484
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !672
  %i.ar = icmp eq i32 %i.aq, %i.al
  br i1 %i.ar, label %bb.o, label %_ZN5ImGui11KeepAliveIDEj.exit

bb.o:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 5493
  store i8 1, ptr %i.as, align 1, !tbaa !719
  br label %_ZN5ImGui11KeepAliveIDEj.exit

_ZN5ImGui11KeepAliveIDEj.exit:                    ; preds = %bb.n, %bb.o
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 7852
  %i.au = load i32, ptr %i.at, align 4, !tbaa !426
  %i.av = tail call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %i.ak, i32 noundef %i.al, i32 noundef %i.au) ; 2 uses
  %i.aw = zext i1 %i.av to i8
  br i1 %i.av, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN5ImGui11KeepAliveIDEj.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 2880
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !243, !range !100, !noundef !236
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.al, ptr noundef nonnull %i.c)
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.c, i32 noundef 0)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %_ZN5ImGui11KeepAliveIDEj.exit
  %i.ba = load i32, ptr %i.am, align 4, !tbaa !652
  %i.bb = icmp eq i32 %i.ba, %i.al
  br i1 %i.bb, label %bb.s, label %bb.ao

bb.s:                                             ; preds = %bb.r, %bb.e
  %.sink = phi i8 [ 0, %bb.e ], [ %i.aw, %bb.r ]
  %.ph = phi i32 [ %i.g, %bb.e ], [ %i.al, %bb.r ]
  %.174.ph = phi i32 [ %spec.select, %bb.e ], [ 0, %bb.r ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 5443
  store i8 %.sink, ptr %i.bc, align 1, !tbaa !659
  %i.bd = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 15 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 280
  %i.bf = sext i32 %.174.ph to i64                ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !243, !range !100, !noundef !236
  %i.bi = trunc nuw i8 %i.bh to i1
end_hunk_0
