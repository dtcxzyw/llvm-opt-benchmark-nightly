Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui21BeginPopupContextVoidEPKci:bb.a
  %i.r = load i8, ptr %i.o, align 1, !tbaa !187
  %i.s = icmp eq i8 %i.r, 35
  br i1 %i.s, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.u = load i8, ptr %i.t, align 1, !tbaa !187
  %i.v = icmp eq i8 %i.u, 35
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.f, !llvm.loop !248

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i.i
  %i.x = lshr i32 %.23351.i.i, 8
  %i.y = and i32 %.23351.i.i, 255
  %i.z = xor i32 %i.y, %i.p
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.aa
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !205
  %i.ad = xor i32 %i.ac, %i.x
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.334.i.i = phi i32 [ %i.l, %bb.d ], [ %i.ad, %bb.e ] ; 2 uses
  %.3.i.i = phi ptr [ %i.w, %bb.d ], [ %i.o, %bb.e ] ; 2 uses
  %i.ae = load i8, ptr %.3.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.i.loopexit, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.i.loopexit:                ; preds = %bb.f
  %i.af = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.i.loopexit, %bb.a
  %.4.i.i = phi i32 [ %i.k, %bb.a ], [ %i.af, %_Z9ImHashStrPKcmj.exit.i.loopexit ] ; 4 uses
  %i.ag = load ptr, ptr %i.c, align 8, !tbaa !786
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 5400
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !789
  %i.aj = icmp eq i32 %i.ai, %.4.i.i
  br i1 %i.aj, label %bb.g, label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

bb.g:                                             ; preds = %_Z9ImHashStrPKcmj.exit.i
  tail call void @_ZN5ImGui15DebugHookIdInfoEjiPKvS1_(i32 noundef %.4.i.i, i32 noundef 11, ptr noundef nonnull %spec.store.select, ptr noundef null)
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_ZN11ImGuiWindow5GetIDEPKcS1_.exit:               ; preds = %_Z9ImHashStrPKcmj.exit.i, %bb.g
  %i.ak = and i32 %1, 3                           ; 2 uses
  %.not.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i, label %bb.h, label %_ZN5ImGui28GetMouseButtonFromPopupFlagsEi.exit

bb.h:                                             ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit
  %i.al = and i32 %1, 12                          ; 2 uses
  %.not7.i = icmp eq i32 %i.al, 0
  br i1 %.not7.i, label %_ZN5ImGui28GetMouseButtonFromPopupFlagsEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = lshr exact i32 %i.al, 2
  %i.an = add nsw i32 %i.am, -1
  br label %_ZN5ImGui28GetMouseButtonFromPopupFlagsEi.exit

_ZN5ImGui28GetMouseButtonFromPopupFlagsEi.exit:   ; preds = %_ZN11ImGuiWindow5GetIDEPKcS1_.exit, %bb.h, %bb.i
  %.0.i = phi i32 [ %i.ak, %_ZN11ImGuiWindow5GetIDEPKcS1_.exit ], [ %i.an, %bb.i ], [ 1, %bb.h ]
  %i.ao = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2910
  %i.aq = sext i32 %.0.i to i64                   ; 2 uses
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !215, !range !64, !noundef !204
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN5ImGui15IsMouseReleasedEi.exit, label %_ZN5ImGui15IsWindowHoveredEi.exit

_ZN5ImGui15IsMouseReleasedEi.exit:                ; preds = %_ZN5ImGui28GetMouseButtonFromPopupFlagsEi.exit
  %i.au = getelementptr [12 x i8], ptr %i.ao, i64 %i.aq
  %i.av = getelementptr i8, ptr %i.au, i64 7300
  %i.aw = load i8, ptr %i.av, align 4, !tbaa !624, !range !64, !noundef !204
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.j, label %_ZN5ImGui15IsWindowHoveredEi.exit

bb.j:                                             ; preds = %_ZN5ImGui15IsMouseReleasedEi.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 5320
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !853 ; 3 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %.loopexit11, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ao, i64 8224
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !389 ; 2 uses
  %.not.i45.i = icmp eq ptr %i.bc, null
  br i1 %.not.i45.i, label %.loopexit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 960
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !847 ; 6 uses
  %.not20.i.i = icmp eq ptr %i.be, null
  br i1 %.not20.i.i, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 205
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !436, !range !64, !noundef !204
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.n, label %.loopexit.i

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 960
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !847 ; 3 uses
  %.not21.i.i = icmp eq ptr %i.be, %i.bj
  br i1 %.not21.i.i, label %.loopexit.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 20
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !722
  %i.bm = and i32 %i.bl, 201326592
  %or.cond.not = icmp eq i32 %i.bm, 0
  br i1 %or.cond.not, label %.loopexit.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 960
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !847
  %i.bp = icmp eq ptr %i.bo, %i.be
  br i1 %i.bp, label %.loopexit.i, label %.lr.ph.i.i46.i

.lr.ph.i.i46.i:                                   ; preds = %bb.p, %bb.q
  %.079.i.i.i = phi ptr [ %i.bs, %bb.q ], [ %i.bj, %bb.p ] ; 2 uses
  %i.bq = icmp eq ptr %.079.i.i.i, %i.be
  br i1 %i.bq, label %.loopexit.i, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i.i46.i
  %i.br = getelementptr inbounds nuw i8, ptr %.079.i.i.i, i64 952
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !848 ; 2 uses
  %.not.i.i47.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i47.i, label %.loopexit11, label %.lr.ph.i.i46.i, !llvm.loop !849

.loopexit.i:                                      ; preds = %.lr.ph.i.i46.i, %bb.o, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 5428
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !819 ; 2 uses
  %.not38.i = icmp eq i32 %i.bu, 0
  br i1 %.not38.i, label %_ZN5ImGui15IsWindowHoveredEi.exit, label %bb.r

bb.r:                                             ; preds = %.loopexit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ao, i64 5443
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !832, !range !64, !noundef !204
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %_ZN5ImGui15IsWindowHoveredEi.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.az, i64 140
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !790
  %.not39.i = icmp eq i32 %i.bu, %i.bz
  br i1 %.not39.i, label %_ZN5ImGui15IsWindowHoveredEi.exit, label %.loopexit11

.loopexit11:                                      ; preds = %bb.q, %bb.j, %bb.s
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ao, i64 8152
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !883 ; 2 uses
  %i.cc = icmp slt i32 %i.cb, 1
  br i1 %i.cc, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit11
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ao, i64 8160
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !888
  %i.cf = zext nneg i32 %i.cb to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.v, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.cf, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.v ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.cg = getelementptr inbounds nuw [56 x i8], ptr %i.ce, i64 %indvars.iv.next.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !884 ; 2 uses
  %.not.i8 = icmp eq ptr %i.ci, null
  br i1 %.not.i8, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !722
  %i.cl = and i32 %i.ck, 134217728
  %.not15.i = icmp eq i32 %i.cl, 0
  br i1 %.not15.i, label %bb.v, label %_ZN5ImGui15IsWindowHoveredEi.exit

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = icmp samesign ult i64 %indvars.iv.i, 2
  br i1 %i.cm, label %.loopexit, label %bb.t, !llvm.loop !889

.loopexit:                                        ; preds = %bb.v, %.loopexit11
  %i.cn = tail call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %.4.i.i, i32 noundef %1) ; 0 uses
  br label %_ZN5ImGui15IsWindowHoveredEi.exit

_ZN5ImGui15IsWindowHoveredEi.exit:                ; preds = %bb.u, %_ZN5ImGui28GetMouseButtonFromPopupFlagsEi.exit, %bb.s, %bb.r, %.loopexit.i, %.loopexit, %_ZN5ImGui15IsMouseReleasedEi.exit
  %i.co = tail call noundef zeroext i1 @_ZN5ImGui12BeginPopupExEji(i32 noundef %.4.i.i, i32 noundef 321)
  ret i1 %i.co
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, i32 noundef %5) local_unnamed_addr #43 {
_Z7ImClampRK6ImVec2S1_S1_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 4 uses
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 4 uses
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !8 ; 8 uses
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 13 uses
  %i.g = load <2 x float>, ptr %3, align 4, !tbaa !8 ; 11 uses
  %i.h = fsub <2 x float> %i.e, %i.f              ; 2 uses
  %i.i = fcmp olt <2 x float> %i.c, %i.g
  %i.j = fcmp ogt <2 x float> %i.c, %i.h
  %i.k = select <2 x i1> %i.j, <2 x float> %i.h, <2 x float> %i.c
  %i.l = select <2 x i1> %i.i, <2 x float> %i.g, <2 x float> %i.k ; 5 uses
  %i.m = icmp eq i32 %5, 1
  br i1 %i.m, label %bb.a, label %.critedge118

bb.a:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit
  %i.n = load i32, ptr %2, align 4, !tbaa !1493   ; 5 uses
  %.not.not = icmp eq i32 %i.n, -1                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 4
  %6 = load <2 x float>, ptr %i.o, align 4        ; 2 uses
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %8 = fsub <2 x float> %7, %i.f                  ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.q = extractelement <2 x float> %6, i64 1     ; 4 uses
  %9 = extractelement <2 x float> %i.f, i64 0     ; 4 uses
  %10 = extractelement <2 x float> %i.f, i64 1    ; 4 uses
  %.in = select i1 %.not.not, ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order, ptr %2
  %i.r = load i32, ptr %.in, align 4, !tbaa !1493 ; 2 uses
  switch i32 %i.r, label %bb.f [
    i32 3, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.s = load <4 x float>, ptr %4, align 4        ; 2 uses
  %i.t = shufflevector <4 x float> %i.s, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %11 = extractelement <4 x float> %i.s, i64 2
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.u = load <4 x float>, ptr %4, align 4        ; 3 uses
  %i.v = shufflevector <4 x float> %i.u, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %12 = extractelement <4 x float> %i.u, i64 1
  %13 = fsub float %12, %10
  %.sroa.0151.0.vec.insert173 = insertelement <2 x float> %i.v, float %13, i64 1
  %14 = extractelement <4 x float> %i.u, i64 2
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %15 = fsub float %i.q, %9
  %i.w = load float, ptr %i.p, align 4, !tbaa !399
  %.sroa.0151.0.vec.insert171 = insertelement <2 x float> poison, float %15, i64 0
  %.sroa.0151.4.vec.insert195 = insertelement <2 x float> %.sroa.0151.0.vec.insert171, float %i.w, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %16 = phi float [ %i.q, %bb.a ], [ %11, %bb.b ], [ %14, %bb.c ], [ %i.q, %bb.d ], [ %i.q, %bb.e ] ; 5 uses
  %.sroa.0151.1 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.t, %bb.b ], [ %.sroa.0151.0.vec.insert173, %bb.c ], [ %.sroa.0151.4.vec.insert195, %bb.d ], [ %8, %bb.e ] ; 3 uses
  %i.x = fadd <2 x float> %i.f, %.sroa.0151.1
  %i.y = shufflevector <2 x float> %i.g, <2 x float> %i.x, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.z = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aa = fcmp ugt <4 x float> %i.y, %i.z
  %i.ab = freeze <4 x i1> %i.aa
  %i.ac = bitcast <4 x i1> %i.ab to i4
  %.not258 = icmp eq i4 %i.ac, 0
  br i1 %.not258, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread

.critedge:                                        ; preds = %bb.y, %bb.x, %bb.r, %bb.l, %bb.f
  %.lcssa264.a = phi i32 [ %i.r, %bb.f ], [ %i.ae, %bb.l ], [ %i.as, %bb.r ], [ %i.bg, %bb.x ], [ 2, %bb.y ]
  %.sroa.0151.1.lcssa = phi <2 x float> [ %.sroa.0151.1, %bb.f ], [ %.sroa.0151.1.1, %bb.l ], [ %.sroa.0151.1.2, %bb.r ], [ %.sroa.0151.1.3, %bb.x ], [ %8, %bb.y ]
  store i32 %.lcssa264.a, ptr %2, align 4, !tbaa !1493
  br label %bb.ar

_ZNK6ImRect8ContainsERKS_.exit.thread:            ; preds = %bb.f
  %indvars.iv.next = zext i1 %.not.not to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order, i64 %indvars.iv.next
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !1493 ; 3 uses
  %i.af = icmp eq i32 %i.ae, %i.n
  br i1 %i.af, label %_ZNK6ImRect8ContainsERKS_.exit.thread.1, label %bb.g

bb.g:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread
  switch i32 %i.ae, label %bb.l [
    i32 3, label %bb.k
    i32 1, label %bb.j
    i32 0, label %bb.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %17 = fsub float %16, %9
  %i.ag = load float, ptr %i.p, align 4, !tbaa !399
  %.sroa.0151.0.vec.insert171.1 = insertelement <2 x float> poison, float %17, i64 0
  %.sroa.0151.4.vec.insert195.1 = insertelement <2 x float> %.sroa.0151.0.vec.insert171.1, float %i.ag, i64 1
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.ah = load <4 x float>, ptr %4, align 4       ; 3 uses
  %i.ai = shufflevector <4 x float> %i.ah, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %18 = extractelement <4 x float> %i.ah, i64 1
  %19 = fsub float %18, %10
  %.sroa.0151.0.vec.insert173.1 = insertelement <2 x float> %i.ai, float %19, i64 1
  %20 = extractelement <4 x float> %i.ah, i64 2
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.aj = load <4 x float>, ptr %4, align 4       ; 2 uses
  %i.ak = shufflevector <4 x float> %i.aj, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %21 = extractelement <4 x float> %i.aj, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %22 = phi float [ %16, %bb.g ], [ %21, %bb.k ], [ %20, %bb.j ], [ %16, %bb.i ], [ %16, %bb.h ]
  %.sroa.0151.1.1 = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.ak, %bb.k ], [ %.sroa.0151.0.vec.insert173.1, %bb.j ], [ %.sroa.0151.4.vec.insert195.1, %bb.i ], [ %8, %bb.h ] ; 3 uses
  %i.al = fadd <2 x float> %i.f, %.sroa.0151.1.1
  %i.am = shufflevector <2 x float> %i.g, <2 x float> %i.al, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.an = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ao = fcmp ugt <4 x float> %i.am, %i.an
  %i.ap = freeze <4 x i1> %i.ao
  %i.aq = bitcast <4 x i1> %i.ap to i4
  %.not258.1 = icmp eq i4 %i.aq, 0
  br i1 %.not258.1, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread.1

_ZNK6ImRect8ContainsERKS_.exit.thread.1:          ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread, %bb.l
  %23 = phi float [ %16, %_ZNK6ImRect8ContainsERKS_.exit.thread ], [ %22, %bb.l ] ; 5 uses
  %indvars.iv.next.1 = select i1 %.not.not, i64 2, i64 1
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order, i64 %indvars.iv.next.1
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !1493 ; 3 uses
  %i.at = icmp eq i32 %i.as, %i.n
  br i1 %i.at, label %_ZNK6ImRect8ContainsERKS_.exit.thread.2, label %bb.m

bb.m:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.1
  switch i32 %i.as, label %bb.r [
    i32 3, label %bb.q
    i32 1, label %bb.p
    i32 0, label %bb.o
    i32 2, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %24 = fsub float %23, %9
  %i.au = load float, ptr %i.p, align 4, !tbaa !399
  %.sroa.0151.0.vec.insert171.2 = insertelement <2 x float> poison, float %24, i64 0
  %.sroa.0151.4.vec.insert195.2 = insertelement <2 x float> %.sroa.0151.0.vec.insert171.2, float %i.au, i64 1
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.av = load <4 x float>, ptr %4, align 4       ; 3 uses
  %i.aw = shufflevector <4 x float> %i.av, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %25 = extractelement <4 x float> %i.av, i64 1
  %26 = fsub float %25, %10
  %.sroa.0151.0.vec.insert173.2 = insertelement <2 x float> %i.aw, float %26, i64 1
  %27 = extractelement <4 x float> %i.av, i64 2
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.ax = load <4 x float>, ptr %4, align 4       ; 2 uses
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %28 = extractelement <4 x float> %i.ax, i64 2
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %29 = phi float [ %23, %bb.m ], [ %28, %bb.q ], [ %27, %bb.p ], [ %23, %bb.o ], [ %23, %bb.n ]
  %.sroa.0151.1.2 = phi <2 x float> [ zeroinitializer, %bb.m ], [ %i.ay, %bb.q ], [ %.sroa.0151.0.vec.insert173.2, %bb.p ], [ %.sroa.0151.4.vec.insert195.2, %bb.o ], [ %8, %bb.n ] ; 3 uses
  %i.az = fadd <2 x float> %i.f, %.sroa.0151.1.2
  %i.ba = shufflevector <2 x float> %i.g, <2 x float> %i.az, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bb = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1.2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bc = fcmp ugt <4 x float> %i.ba, %i.bb
  %i.bd = freeze <4 x i1> %i.bc
  %i.be = bitcast <4 x i1> %i.bd to i4
  %.not258.2 = icmp eq i4 %i.be, 0
  br i1 %.not258.2, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread.2

_ZNK6ImRect8ContainsERKS_.exit.thread.2:          ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.1, %bb.r
  %30 = phi float [ %23, %_ZNK6ImRect8ContainsERKS_.exit.thread.1 ], [ %29, %bb.r ]
  %indvars.iv.next.2 = select i1 %.not.not, i64 3, i64 2
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order, i64 %indvars.iv.next.2
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !1493 ; 3 uses
  %i.bh = icmp eq i32 %i.bg, %i.n
  br i1 %i.bh, label %_ZNK6ImRect8ContainsERKS_.exit.thread.3, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.2
  switch i32 %i.bg, label %bb.x [
    i32 3, label %bb.w
    i32 1, label %bb.v
    i32 0, label %bb.u
    i32 2, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %31 = fsub float %30, %9
  %i.bi = load float, ptr %i.p, align 4, !tbaa !399
  %.sroa.0151.0.vec.insert171.3 = insertelement <2 x float> poison, float %31, i64 0
  %.sroa.0151.4.vec.insert195.3 = insertelement <2 x float> %.sroa.0151.0.vec.insert171.3, float %i.bi, i64 1
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bj = load <4 x float>, ptr %4, align 4       ; 2 uses
  %i.bk = shufflevector <4 x float> %i.bj, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %32 = extractelement <4 x float> %i.bj, i64 1
  %33 = fsub float %32, %10
  %.sroa.0151.0.vec.insert173.3 = insertelement <2 x float> %i.bk, float %33, i64 1
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.bl = load <4 x float>, ptr %4, align 4
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.0151.1.3 = phi <2 x float> [ zeroinitializer, %bb.s ], [ %i.bm, %bb.w ], [ %.sroa.0151.0.vec.insert173.3, %bb.v ], [ %.sroa.0151.4.vec.insert195.3, %bb.u ], [ %8, %bb.t ] ; 3 uses
  %i.bn = fadd <2 x float> %i.f, %.sroa.0151.1.3
  %i.bo = shufflevector <2 x float> %i.g, <2 x float> %i.bn, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bp = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1.3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bq = fcmp ugt <4 x float> %i.bo, %i.bp
  %i.br = freeze <4 x i1> %i.bq
  %i.bs = bitcast <4 x i1> %i.br to i4
  %.not258.3 = icmp eq i4 %i.bs, 0
  br i1 %.not258.3, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread.3

_ZNK6ImRect8ContainsERKS_.exit.thread.3:          ; preds = %bb.x, %_ZNK6ImRect8ContainsERKS_.exit.thread.2
  switch i32 %i.n, label %bb.y [
    i32 -1, label %.critedge118
    i32 2, label %.critedge118
  ]

bb.y:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.3
  %i.bt = fadd <2 x float> %i.f, %8
  %i.bu = shufflevector <2 x float> %i.g, <2 x float> %i.bt, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bv = shufflevector <2 x float> %i.e, <2 x float> %8, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bw = fcmp ugt <4 x float> %i.bu, %i.bv
  %i.bx = freeze <4 x i1> %i.bw
  %i.by = bitcast <4 x i1> %i.bx to i4
  %.not258.4 = icmp eq i4 %i.by, 0
  br i1 %.not258.4, label %.critedge, label %.critedge118

.critedge118:                                     ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.3, %_ZNK6ImRect8ContainsERKS_.exit.thread.3, %bb.y, %_Z7ImClampRK6ImVec2S1_S1_.exit
  %i.bz = icmp eq i32 %5, 2
  switch i32 %5, label %.critedge123 [
    i32 2, label %bb.z
    i32 0, label %bb.z
  ]

bb.z:                                             ; preds = %.critedge118, %.critedge118
  %i.ca = load i32, ptr %2, align 4, !tbaa !1493  ; 5 uses
  %.not110 = icmp ne i32 %i.ca, -1                ; 19 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.ce = extractelement <2 x float> %i.f, i64 0  ; 5 uses
  %i.cf = extractelement <2 x float> %i.f, i64 1  ; 5 uses
  %.in111 = select i1 %.not110, ptr %2, ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order.174
  %i.cg = load i32, ptr %.in111, align 4, !tbaa !1493 ; 7 uses
  %i.ch = icmp eq i32 %i.cg, 0                    ; 2 uses
  %.val = load float, ptr %4, align 4
  %.val251 = load float, ptr %i.a, align 4
  %i.ci = select i1 %i.ch, float %.val, float %.val251
  %i.cj = icmp eq i32 %i.cg, 1                    ; 2 uses
  %.val252 = load float, ptr %i.cb, align 4
  %.val253 = load float, ptr %3, align 4
  %i.ck = select i1 %i.cj, float %.val252, float %.val253
  %i.cl = fsub float %i.ci, %i.ck
  %i.cm = fcmp olt float %i.cl, %i.ce
  %or.cond8 = icmp ult i32 %i.cg, 2
  %or.cond = select i1 %i.cm, i1 %or.cond8, i1 false
  br i1 %or.cond, label %.critedge121, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cn = icmp eq i32 %i.cg, 3                    ; 2 uses
  %i.co = icmp eq i32 %i.cg, 2                    ; 2 uses
  %.val254 = load float, ptr %i.cc, align 4
  %.val255 = load float, ptr %i.b, align 4
  %i.cp = select i1 %i.co, float %.val254, float %.val255
  %.val256 = load float, ptr %i.cd, align 4
  %.val257 = load float, ptr %i.d, align 4
  %i.cq = select i1 %i.cn, float %.val256, float %.val257
  %i.cr = fsub float %i.cp, %i.cq
  %i.cs = fcmp olt float %i.cr, %i.cf
  %i.ct = and i32 %i.cg, -2
  %or.cond10 = icmp eq i32 %i.ct, 2
  %or.cond119 = select i1 %i.cs, i1 %or.cond10, i1 false
  br i1 %or.cond119, label %.critedge121, label %bb.ab

bb.ab:                                            ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aa
  %.lcssa262 = phi i32 [ %i.cg, %bb.aa ], [ %i.di, %bb.ak ], [ %i.dr, %bb.al ], [ %i.dy, %bb.an ], [ 0, %bb.ao ]
  %.lcssa261 = phi i1 [ %i.cn, %bb.aa ], [ %not..not110, %bb.ak ], [ %.not110, %bb.al ], [ false, %bb.an ], [ false, %bb.ao ]
  %.lcssa260 = phi i1 [ %i.co, %bb.aa ], [ false, %bb.ak ], [ %not..not110267, %bb.al ], [ %.not110, %bb.an ], [ false, %bb.ao ]
  %.lcssa259 = phi i1 [ %i.ch, %bb.aa ], [ false, %bb.ak ], [ false, %bb.al ], [ %not..not110269, %bb.an ], [ true, %bb.ao ]
  %.lcssa = phi i1 [ %i.cj, %bb.aa ], [ %.not110, %bb.ak ], [ false, %bb.al ], [ false, %bb.an ], [ false, %bb.ao ]
  br i1 %.lcssa259, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cu = load float, ptr %4, align 4, !tbaa !394
  %i.cv = fsub float %i.cu, %i.ce
  %i.cw = insertelement <2 x float> %i.l, float %i.cv, i64 0
  br label %.thread203

bb.ad:                                            ; preds = %bb.ab
  br i1 %.lcssa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cx = load float, ptr %i.cb, align 4, !tbaa !395
  %i.cy = insertelement <2 x float> %i.l, float %i.cx, i64 0
  br label %.thread203

bb.af:                                            ; preds = %bb.ad
  br i1 %.lcssa260, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cz = load float, ptr %i.cc, align 4, !tbaa !398
  %i.da = fsub float %i.cz, %i.cf
  %i.db = insertelement <2 x float> %i.l, float %i.da, i64 1
  br label %.thread203

bb.ah:                                            ; preds = %bb.af
  br i1 %.lcssa261, label %bb.ai, label %.thread203

bb.ai:                                            ; preds = %bb.ah
  %i.dc = load float, ptr %i.cd, align 4, !tbaa !399
  %i.dd = insertelement <2 x float> %i.l, float %i.dc, i64 1
  br label %.thread203

.thread203:                                       ; preds = %bb.ae, %bb.ac, %bb.ah, %bb.ai, %bb.ag
  %i.de = phi <2 x float> [ %i.db, %bb.ag ], [ %i.dd, %bb.ai ], [ %i.l, %bb.ah ], [ %i.cy, %bb.ae ], [ %i.cw, %bb.ac ] ; 2 uses
  %i.df = fcmp oge <2 x float> %i.de, %i.g
  %i.dg = select <2 x i1> %i.df, <2 x float> %i.de, <2 x float> %i.g
  store i32 %.lcssa262, ptr %2, align 4, !tbaa !1493
  br label %bb.ar

.critedge121:                                     ; preds = %bb.z, %bb.aa
  %not..not110 = xor i1 %.not110, true            ; 2 uses
  %indvars.iv.next232 = zext i1 %not..not110 to i64
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order.174, i64 %indvars.iv.next232
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !1493 ; 2 uses
  %i.dj = icmp eq i32 %i.di, %i.ca
  br i1 %i.dj, label %.critedge121.1, label %bb.aj

bb.aj:                                            ; preds = %.critedge121
  %.val251.1 = load float, ptr %i.a, align 4
  %.val252.1 = load float, ptr %i.cb, align 4
  %.val253.1 = load float, ptr %3, align 4
  %i.dk = select i1 %.not110, float %.val252.1, float %.val253.1
  %i.dl = fsub float %.val251.1, %i.dk
  %i.dm = fcmp olt float %i.dl, %i.ce
  %or.cond.1 = and i1 %i.dm, %.not110
  br i1 %or.cond.1, label %.critedge121.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val255.1 = load float, ptr %i.b, align 4
  %.val256.1 = load float, ptr %i.cd, align 4
  %.val257.1 = load float, ptr %i.d, align 4
  %i.dn = select i1 %.not110, float %.val257.1, float %.val256.1
  %i.do = fsub float %.val255.1, %i.dn
  %i.dp = fcmp uge float %i.do, %i.cf
  %or.cond119.1.not = or i1 %i.dp, %.not110
  br i1 %or.cond119.1.not, label %bb.ab, label %.critedge121.1

.critedge121.1:                                   ; preds = %.critedge121, %bb.aj, %bb.ak
  %indvars.iv.next232.1 = select i1 %.not110, i64 1, i64 2
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order.174, i64 %indvars.iv.next232.1
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !1493 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, %i.ca
  br i1 %i.ds, label %.critedge121.2, label %bb.al

bb.al:                                            ; preds = %.critedge121.1
  %not..not110267 = xor i1 %.not110, true
  %.val254.2 = load float, ptr %i.cc, align 4
  %.val255.2 = load float, ptr %i.b, align 4
  %i.dt = select i1 %.not110, float %.val255.2, float %.val254.2
  %.val256.2 = load float, ptr %i.cd, align 4
  %.val257.2 = load float, ptr %i.d, align 4
  %i.du = select i1 %.not110, float %.val256.2, float %.val257.2
  %i.dv = fsub float %i.dt, %i.du
  %i.dw = fcmp olt float %i.dv, %i.cf
  br i1 %i.dw, label %.critedge121.2, label %bb.ab

.critedge121.2:                                   ; preds = %.critedge121.1, %bb.al
  %indvars.iv.next232.2 = select i1 %.not110, i64 2, i64 3
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order.174, i64 %indvars.iv.next232.2
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !1493 ; 2 uses
  %i.dz = icmp eq i32 %i.dy, %i.ca
  br i1 %i.dz, label %.critedge121.3, label %bb.am

bb.am:                                            ; preds = %.critedge121.2
  %.val.3 = load float, ptr %4, align 4
  %.val251.3 = load float, ptr %i.a, align 4
  %i.ea = select i1 %.not110, float %.val251.3, float %.val.3
  %.val253.3 = load float, ptr %3, align 4
  %i.eb = fsub float %i.ea, %.val253.3
  %i.ec = fcmp uge float %i.eb, %i.ce
  %or.cond.3.not = or i1 %i.ec, %.not110
  br i1 %or.cond.3.not, label %bb.an, label %.critedge121.3

bb.an:                                            ; preds = %bb.am
  %not..not110269 = xor i1 %.not110, true
  %.val254.3 = load float, ptr %i.cc, align 4
  %.val255.3 = load float, ptr %i.b, align 4
  %i.ed = select i1 %.not110, float %.val254.3, float %.val255.3
  %.val257.3 = load float, ptr %i.d, align 4
  %i.ee = fsub float %i.ed, %.val257.3
  %i.ef = fcmp olt float %i.ee, %i.cf
  %or.cond119.3 = and i1 %i.ef, %.not110
  br i1 %or.cond119.3, label %.critedge121.3, label %bb.ab

.critedge121.3:                                   ; preds = %bb.an, %bb.am, %.critedge121.2
  %.off = add i32 %i.ca, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.ao, label %.critedge123

bb.ao:                                            ; preds = %.critedge121.3
  %.val.4 = load float, ptr %4, align 4
  %.val253.4 = load float, ptr %3, align 4
  %i.eg = fsub float %.val.4, %.val253.4
  %i.eh = fcmp olt float %i.eg, %i.ce
  br i1 %i.eh, label %.critedge123, label %bb.ab

.critedge123:                                     ; preds = %.critedge121.3, %bb.ao, %.critedge118
  store i32 -1, ptr %2, align 4, !tbaa !1493
  br i1 %i.bz, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge123
  %i.ei = fadd <2 x float> %i.c, splat (float 2.000000e+00)
  br label %bb.ar

bb.aq:                                            ; preds = %.critedge123
  %i.ej = load <2 x float>, ptr %0, align 4
  %i.ek = fadd <2 x float> %i.f, %i.ej            ; 2 uses
  %i.el = fcmp olt <2 x float> %i.ek, %i.e
  %i.em = select <2 x i1> %i.el, <2 x float> %i.ek, <2 x float> %i.e
  %i.en = fsub <2 x float> %i.em, %i.f            ; 2 uses
end_hunk_0
