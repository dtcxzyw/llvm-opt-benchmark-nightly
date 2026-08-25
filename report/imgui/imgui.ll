Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui21BeginPopupContextVoidEPKci:bb.a
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
  %i.f = load <2 x float>, ptr %1, align 4, !tbaa !8 ; 12 uses
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
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.p = load float, ptr %i.o, align 4
  %i.q = extractelement <2 x float> %i.f, i64 0
  %i.r = fsub float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = load float, ptr %i.s, align 4
  %i.u = extractelement <2 x float> %i.f, i64 1
  %i.v = fsub float %i.t, %i.u                    ; 5 uses
  %.sroa.0151.0.vec.insert169 = insertelement <2 x float> poison, float %i.r, i64 0 ; 5 uses
  %.sroa.0151.4.vec.insert193 = insertelement <2 x float> %.sroa.0151.0.vec.insert169, float %i.v, i64 1 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %.val266 = load i32, ptr %2, align 4
  %6 = select i1 %.not.not, i32 3, i32 %.val266   ; 2 uses
  switch i32 %6, label %bb.f [
    i32 3, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.x = load <4 x float>, ptr %4, align 4, !tbaa !8
  %i.y = shufflevector <4 x float> %i.x, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.z = load <4 x float>, ptr %4, align 4
  %i.aa = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0151.0.vec.insert173 = insertelement <2 x float> %i.aa, float %i.v, i64 1
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.ab = load float, ptr %i.w, align 4, !tbaa !399
  %.sroa.0151.4.vec.insert195 = insertelement <2 x float> %.sroa.0151.0.vec.insert169, float %i.ab, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0151.1 = phi <2 x float> [ zeroinitializer, %bb.a ], [ %i.y, %bb.b ], [ %.sroa.0151.0.vec.insert173, %bb.c ], [ %.sroa.0151.4.vec.insert195, %bb.d ], [ %.sroa.0151.4.vec.insert193, %bb.e ] ; 3 uses
  %i.ac = fadd <2 x float> %i.f, %.sroa.0151.1
  %i.ad = shufflevector <2 x float> %i.g, <2 x float> %i.ac, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ae = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.af = fcmp ugt <4 x float> %i.ad, %i.ae
  %i.ag = freeze <4 x i1> %i.af
  %i.ah = bitcast <4 x i1> %i.ag to i4
  %.not258 = icmp eq i4 %i.ah, 0
  br i1 %.not258, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread

.critedge:                                        ; preds = %bb.y, %bb.x, %bb.r, %bb.l, %bb.f
  %.lcssa264 = phi i32 [ %6, %bb.f ], [ %i.aj, %bb.l ], [ %i.ax, %bb.r ], [ %i.bl, %bb.x ], [ 2, %bb.y ]
  %.sroa.0151.1.lcssa = phi <2 x float> [ %.sroa.0151.1, %bb.f ], [ %.sroa.0151.1.1, %bb.l ], [ %.sroa.0151.1.2, %bb.r ], [ %.sroa.0151.1.3, %bb.x ], [ %.sroa.0151.4.vec.insert193, %bb.y ]
  store i32 %.lcssa264, ptr %2, align 4, !tbaa !1493
  br label %bb.ar

_ZNK6ImRect8ContainsERKS_.exit.thread:            ; preds = %bb.f
  %indvars.iv.next = zext i1 %.not.not to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order, i64 %indvars.iv.next
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !1493 ; 3 uses
  %i.ak = icmp eq i32 %i.aj, %i.n
  br i1 %i.ak, label %_ZNK6ImRect8ContainsERKS_.exit.thread.1, label %bb.g

bb.g:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread
  switch i32 %i.aj, label %bb.l [
    i32 3, label %bb.k
    i32 1, label %bb.j
    i32 0, label %bb.i
    i32 2, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.al = load float, ptr %i.w, align 4, !tbaa !399
  %.sroa.0151.4.vec.insert195.1 = insertelement <2 x float> %.sroa.0151.0.vec.insert169, float %i.al, i64 1
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.am = load <4 x float>, ptr %4, align 4
  %i.an = shufflevector <4 x float> %i.am, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0151.0.vec.insert173.1 = insertelement <2 x float> %i.an, float %i.v, i64 1
  br label %bb.l

bb.k:                                             ; preds = %bb.g
  %i.ao = load <4 x float>, ptr %4, align 4, !tbaa !8
  %i.ap = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.sroa.0151.1.1 = phi <2 x float> [ zeroinitializer, %bb.g ], [ %i.ap, %bb.k ], [ %.sroa.0151.0.vec.insert173.1, %bb.j ], [ %.sroa.0151.4.vec.insert195.1, %bb.i ], [ %.sroa.0151.4.vec.insert193, %bb.h ] ; 3 uses
  %i.aq = fadd <2 x float> %i.f, %.sroa.0151.1.1
  %i.ar = shufflevector <2 x float> %i.g, <2 x float> %i.aq, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.as = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1.1, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.at = fcmp ugt <4 x float> %i.ar, %i.as
  %i.au = freeze <4 x i1> %i.at
  %i.av = bitcast <4 x i1> %i.au to i4
  %.not258.1 = icmp eq i4 %i.av, 0
  br i1 %.not258.1, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread.1

_ZNK6ImRect8ContainsERKS_.exit.thread.1:          ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread, %bb.l
  %indvars.iv.next.1 = select i1 %.not.not, i64 2, i64 1
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order, i64 %indvars.iv.next.1
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !1493 ; 3 uses
  %i.ay = icmp eq i32 %i.ax, %i.n
  br i1 %i.ay, label %_ZNK6ImRect8ContainsERKS_.exit.thread.2, label %bb.m

bb.m:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.1
  switch i32 %i.ax, label %bb.r [
    i32 3, label %bb.q
    i32 1, label %bb.p
    i32 0, label %bb.o
    i32 2, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.az = load float, ptr %i.w, align 4, !tbaa !399
  %.sroa.0151.4.vec.insert195.2 = insertelement <2 x float> %.sroa.0151.0.vec.insert169, float %i.az, i64 1
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.ba = load <4 x float>, ptr %4, align 4
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0151.0.vec.insert173.2 = insertelement <2 x float> %i.bb, float %i.v, i64 1
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  %i.bc = load <4 x float>, ptr %4, align 4, !tbaa !8
  %i.bd = shufflevector <4 x float> %i.bc, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m
  %.sroa.0151.1.2 = phi <2 x float> [ zeroinitializer, %bb.m ], [ %i.bd, %bb.q ], [ %.sroa.0151.0.vec.insert173.2, %bb.p ], [ %.sroa.0151.4.vec.insert195.2, %bb.o ], [ %.sroa.0151.4.vec.insert193, %bb.n ] ; 3 uses
  %i.be = fadd <2 x float> %i.f, %.sroa.0151.1.2
  %i.bf = shufflevector <2 x float> %i.g, <2 x float> %i.be, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bg = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1.2, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bh = fcmp ugt <4 x float> %i.bf, %i.bg
  %i.bi = freeze <4 x i1> %i.bh
  %i.bj = bitcast <4 x i1> %i.bi to i4
  %.not258.2 = icmp eq i4 %i.bj, 0
  br i1 %.not258.2, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread.2

_ZNK6ImRect8ContainsERKS_.exit.thread.2:          ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.1, %bb.r
  %indvars.iv.next.2 = select i1 %.not.not, i64 3, i64 2
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order, i64 %indvars.iv.next.2
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !1493 ; 3 uses
  %i.bm = icmp eq i32 %i.bl, %i.n
  br i1 %i.bm, label %_ZNK6ImRect8ContainsERKS_.exit.thread.3, label %bb.s

bb.s:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.2
  switch i32 %i.bl, label %bb.x [
    i32 3, label %bb.w
    i32 1, label %bb.v
    i32 0, label %bb.u
    i32 2, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.bn = load float, ptr %i.w, align 4, !tbaa !399
  %.sroa.0151.4.vec.insert195.3 = insertelement <2 x float> %.sroa.0151.0.vec.insert169, float %i.bn, i64 1
  br label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bo = load <4 x float>, ptr %4, align 4
  %i.bp = shufflevector <4 x float> %i.bo, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0151.0.vec.insert173.3 = insertelement <2 x float> %i.bp, float %i.v, i64 1
  br label %bb.x

bb.w:                                             ; preds = %bb.s
  %i.bq = load <4 x float>, ptr %4, align 4, !tbaa !8
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s
  %.sroa.0151.1.3 = phi <2 x float> [ zeroinitializer, %bb.s ], [ %i.br, %bb.w ], [ %.sroa.0151.0.vec.insert173.3, %bb.v ], [ %.sroa.0151.4.vec.insert195.3, %bb.u ], [ %.sroa.0151.4.vec.insert193, %bb.t ] ; 3 uses
  %i.bs = fadd <2 x float> %i.f, %.sroa.0151.1.3
  %i.bt = shufflevector <2 x float> %i.g, <2 x float> %i.bs, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.bu = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.1.3, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = fcmp ugt <4 x float> %i.bt, %i.bu
  %i.bw = freeze <4 x i1> %i.bv
  %i.bx = bitcast <4 x i1> %i.bw to i4
  %.not258.3 = icmp eq i4 %i.bx, 0
  br i1 %.not258.3, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread.3

_ZNK6ImRect8ContainsERKS_.exit.thread.3:          ; preds = %bb.x, %_ZNK6ImRect8ContainsERKS_.exit.thread.2
  switch i32 %i.n, label %bb.y [
    i32 -1, label %.critedge118
    i32 2, label %.critedge118
  ]

bb.y:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.3
  %i.by = fadd <2 x float> %i.f, %.sroa.0151.4.vec.insert193
  %i.bz = shufflevector <2 x float> %i.g, <2 x float> %i.by, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ca = shufflevector <2 x float> %i.e, <2 x float> %.sroa.0151.4.vec.insert193, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cb = fcmp ugt <4 x float> %i.bz, %i.ca
  %i.cc = freeze <4 x i1> %i.cb
  %i.cd = bitcast <4 x i1> %i.cc to i4
  %.not258.4 = icmp eq i4 %i.cd, 0
  br i1 %.not258.4, label %.critedge, label %.critedge118

.critedge118:                                     ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread.3, %_ZNK6ImRect8ContainsERKS_.exit.thread.3, %bb.y, %_Z7ImClampRK6ImVec2S1_S1_.exit
  %i.ce = icmp eq i32 %5, 2
  switch i32 %5, label %.critedge123 [
    i32 2, label %bb.z
    i32 0, label %bb.z
  ]

bb.z:                                             ; preds = %.critedge118, %.critedge118
  %i.cf = load i32, ptr %2, align 4, !tbaa !1493  ; 5 uses
  %.not110 = icmp ne i32 %i.cf, -1                ; 19 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 4 uses
  %i.cj = extractelement <2 x float> %i.f, i64 0  ; 5 uses
  %i.ck = extractelement <2 x float> %i.f, i64 1  ; 5 uses
  %.val268 = load i32, ptr %2, align 4
  %7 = select i1 %.not110, i32 %.val268, i32 1    ; 7 uses
  %i.cl = icmp eq i32 %7, 0                       ; 2 uses
  %.val = load float, ptr %4, align 4
  %.val251 = load float, ptr %i.a, align 4
  %i.cm = select i1 %i.cl, float %.val, float %.val251
  %i.cn = icmp eq i32 %7, 1                       ; 2 uses
  %.val252 = load float, ptr %i.cg, align 4
  %.val253 = load float, ptr %3, align 4
  %i.co = select i1 %i.cn, float %.val252, float %.val253
  %i.cp = fsub float %i.cm, %i.co
  %i.cq = fcmp olt float %i.cp, %i.cj
  %or.cond8 = icmp ult i32 %7, 2
  %or.cond = select i1 %i.cq, i1 %or.cond8, i1 false
  br i1 %or.cond, label %.critedge121, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cr = icmp eq i32 %7, 3                       ; 2 uses
  %i.cs = icmp eq i32 %7, 2                       ; 2 uses
  %.val254 = load float, ptr %i.ch, align 4
  %.val255 = load float, ptr %i.b, align 4
  %i.ct = select i1 %i.cs, float %.val254, float %.val255
  %.val256 = load float, ptr %i.ci, align 4
  %.val257 = load float, ptr %i.d, align 4
  %i.cu = select i1 %i.cr, float %.val256, float %.val257
  %i.cv = fsub float %i.ct, %i.cu
  %i.cw = fcmp olt float %i.cv, %i.ck
  %i.cx = and i32 %7, -2
  %or.cond10 = icmp eq i32 %i.cx, 2
  %or.cond119 = select i1 %i.cw, i1 %or.cond10, i1 false
  br i1 %or.cond119, label %.critedge121, label %bb.ab

bb.ab:                                            ; preds = %bb.ao, %bb.an, %bb.al, %bb.ak, %bb.aa
  %.lcssa262 = phi i32 [ %7, %bb.aa ], [ %i.dm, %bb.ak ], [ %i.dv, %bb.al ], [ %i.ec, %bb.an ], [ 0, %bb.ao ]
  %.lcssa261 = phi i1 [ %i.cr, %bb.aa ], [ %not..not110, %bb.ak ], [ %.not110, %bb.al ], [ false, %bb.an ], [ false, %bb.ao ]
  %.lcssa260 = phi i1 [ %i.cs, %bb.aa ], [ false, %bb.ak ], [ %not..not110267, %bb.al ], [ %.not110, %bb.an ], [ false, %bb.ao ]
  %.lcssa259 = phi i1 [ %i.cl, %bb.aa ], [ false, %bb.ak ], [ false, %bb.al ], [ %not..not110269, %bb.an ], [ true, %bb.ao ]
  %.lcssa = phi i1 [ %i.cn, %bb.aa ], [ %.not110, %bb.ak ], [ false, %bb.al ], [ false, %bb.an ], [ false, %bb.ao ]
  br i1 %.lcssa259, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.cy = load float, ptr %4, align 4, !tbaa !394
  %i.cz = fsub float %i.cy, %i.cj
  %i.da = insertelement <2 x float> %i.l, float %i.cz, i64 0
  br label %.thread203

bb.ad:                                            ; preds = %bb.ab
  br i1 %.lcssa, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.db = load float, ptr %i.cg, align 4, !tbaa !395
  %i.dc = insertelement <2 x float> %i.l, float %i.db, i64 0
  br label %.thread203

bb.af:                                            ; preds = %bb.ad
  br i1 %.lcssa260, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dd = load float, ptr %i.ch, align 4, !tbaa !398
  %i.de = fsub float %i.dd, %i.ck
  %i.df = insertelement <2 x float> %i.l, float %i.de, i64 1
  br label %.thread203

bb.ah:                                            ; preds = %bb.af
  br i1 %.lcssa261, label %bb.ai, label %.thread203

bb.ai:                                            ; preds = %bb.ah
  %i.dg = load float, ptr %i.ci, align 4, !tbaa !399
  %i.dh = insertelement <2 x float> %i.l, float %i.dg, i64 1
  br label %.thread203

.thread203:                                       ; preds = %bb.ae, %bb.ac, %bb.ah, %bb.ai, %bb.ag
  %i.di = phi <2 x float> [ %i.df, %bb.ag ], [ %i.dh, %bb.ai ], [ %i.l, %bb.ah ], [ %i.dc, %bb.ae ], [ %i.da, %bb.ac ] ; 2 uses
  %i.dj = fcmp oge <2 x float> %i.di, %i.g
  %i.dk = select <2 x i1> %i.dj, <2 x float> %i.di, <2 x float> %i.g
  store i32 %.lcssa262, ptr %2, align 4, !tbaa !1493
  br label %bb.ar

.critedge121:                                     ; preds = %bb.z, %bb.aa
  %not..not110 = xor i1 %.not110, true            ; 2 uses
  %indvars.iv.next232 = zext i1 %not..not110 to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order.174, i64 %indvars.iv.next232
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !1493 ; 2 uses
  %i.dn = icmp eq i32 %i.dm, %i.cf
  br i1 %i.dn, label %.critedge121.1, label %bb.aj

bb.aj:                                            ; preds = %.critedge121
  %.val251.1 = load float, ptr %i.a, align 4
  %.val252.1 = load float, ptr %i.cg, align 4
  %.val253.1 = load float, ptr %3, align 4
  %i.do = select i1 %.not110, float %.val252.1, float %.val253.1
  %i.dp = fsub float %.val251.1, %i.do
  %i.dq = fcmp olt float %i.dp, %i.cj
  %or.cond.1 = select i1 %i.dq, i1 %.not110, i1 false
  br i1 %or.cond.1, label %.critedge121.1, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val255.1 = load float, ptr %i.b, align 4
  %.val256.1 = load float, ptr %i.ci, align 4
  %.val257.1 = load float, ptr %i.d, align 4
  %i.dr = select i1 %.not110, float %.val257.1, float %.val256.1
  %i.ds = fsub float %.val255.1, %i.dr
  %i.dt = fcmp uge float %i.ds, %i.ck
  %or.cond119.1.not = or i1 %i.dt, %.not110
  br i1 %or.cond119.1.not, label %bb.ab, label %.critedge121.1

.critedge121.1:                                   ; preds = %.critedge121, %bb.aj, %bb.ak
  %indvars.iv.next232.1 = select i1 %.not110, i64 1, i64 2
  %i.du = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order.174, i64 %indvars.iv.next232.1
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !1493 ; 2 uses
  %i.dw = icmp eq i32 %i.dv, %i.cf
  br i1 %i.dw, label %.critedge121.2, label %bb.al

bb.al:                                            ; preds = %.critedge121.1
  %not..not110267 = xor i1 %.not110, true
  %.val254.2 = load float, ptr %i.ch, align 4
  %.val255.2 = load float, ptr %i.b, align 4
  %i.dx = select i1 %.not110, float %.val255.2, float %.val254.2
  %.val256.2 = load float, ptr %i.ci, align 4
  %.val257.2 = load float, ptr %i.d, align 4
  %i.dy = select i1 %.not110, float %.val256.2, float %.val257.2
  %i.dz = fsub float %i.dx, %i.dy
  %i.ea = fcmp olt float %i.dz, %i.ck
  br i1 %i.ea, label %.critedge121.2, label %bb.ab

.critedge121.2:                                   ; preds = %.critedge121.1, %bb.al
  %indvars.iv.next232.2 = select i1 %.not110, i64 2, i64 3
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr @__const._ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy.dir_preferred_order.174, i64 %indvars.iv.next232.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !1493 ; 2 uses
  %i.ed = icmp eq i32 %i.ec, %i.cf
  br i1 %i.ed, label %.critedge121.3, label %bb.am

bb.am:                                            ; preds = %.critedge121.2
  %.val.3 = load float, ptr %4, align 4
  %.val251.3 = load float, ptr %i.a, align 4
  %i.ee = select i1 %.not110, float %.val251.3, float %.val.3
  %.val253.3 = load float, ptr %3, align 4
  %i.ef = fsub float %i.ee, %.val253.3
  %i.eg = fcmp uge float %i.ef, %i.cj
  %or.cond.3.not = select i1 %i.eg, i1 true, i1 %.not110
  br i1 %or.cond.3.not, label %bb.an, label %.critedge121.3

bb.an:                                            ; preds = %bb.am
  %not..not110269 = xor i1 %.not110, true
  %.val254.3 = load float, ptr %i.ch, align 4
  %.val255.3 = load float, ptr %i.b, align 4
  %i.eh = select i1 %.not110, float %.val254.3, float %.val255.3
  %.val257.3 = load float, ptr %i.d, align 4
  %i.ei = fsub float %i.eh, %.val257.3
  %i.ej = fcmp olt float %i.ei, %i.ck
  %or.cond119.3 = select i1 %i.ej, i1 %.not110, i1 false
  br i1 %or.cond119.3, label %.critedge121.3, label %bb.ab

.critedge121.3:                                   ; preds = %bb.an, %bb.am, %.critedge121.2
  %.off = add i32 %i.cf, -1
  %switch = icmp ult i32 %.off, -2
  br i1 %switch, label %bb.ao, label %.critedge123

bb.ao:                                            ; preds = %.critedge121.3
  %.val.4 = load float, ptr %4, align 4
  %.val253.4 = load float, ptr %3, align 4
  %i.ek = fsub float %.val.4, %.val253.4
  %i.el = fcmp olt float %i.ek, %i.cj
  br i1 %i.el, label %.critedge123, label %bb.ab

.critedge123:                                     ; preds = %.critedge121.3, %bb.ao, %.critedge118
  store i32 -1, ptr %2, align 4, !tbaa !1493
  br i1 %i.ce, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.critedge123
  %i.em = fadd <2 x float> %i.c, splat (float 2.000000e+00)
  br label %bb.ar

bb.aq:                                            ; preds = %.critedge123
  %i.en = load <2 x float>, ptr %0, align 4
  %i.eo = fadd <2 x float> %i.f, %i.en            ; 2 uses
  %i.ep = fcmp olt <2 x float> %i.eo, %i.e
  %i.eq = select <2 x i1> %i.ep, <2 x float> %i.eo, <2 x float> %i.e
  %i.er = fsub <2 x float> %i.eq, %i.f            ; 2 uses
  %i.es = fcmp oge <2 x float> %i.er, %i.g
  %i.et = select <2 x i1> %i.es, <2 x float> %i.er, <2 x float> %i.g
  br label %bb.ar

bb.ar:                                            ; preds = %.thread203, %.critedge, %bb.aq, %bb.ap
  %.sroa.0151.5 = phi <2 x float> [ %i.em, %bb.ap ], [ %i.et, %bb.aq ], [ %i.dk, %.thread203 ], [ %.sroa.0151.1.lcssa, %.critedge ]
  ret <2 x float> %.sroa.0151.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { <2 x float>, <2 x float> } @_ZN5ImGui25GetPopupAllowedExtentRectEP11ImGuiWindow(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #40 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !437
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3508
  %i.h = load <2 x float>, ptr %i.e, align 8, !tbaa !8 ; 3 uses
  %i.i = load <2 x float>, ptr %i.f, align 8, !tbaa !8
  %i.j = fadd <2 x float> %i.h, %i.i              ; 2 uses
  %i.k = load <2 x float>, ptr %i.g, align 4, !tbaa !8 ; 2 uses
  %i.l = fsub <2 x float> %i.j, %i.h
  %i.m = fmul <2 x float> %i.k, splat (float 2.000000e+00)
  %i.n = fcmp ogt <2 x float> %i.l, %i.m
  %i.o = fneg <2 x float> %i.k
  %i.p = select <2 x i1> %i.n, <2 x float> %i.o, <2 x float> zeroinitializer ; 2 uses
  %i.q = fsub <2 x float> %i.h, %i.p
  %i.r = fadd <2 x float> %i.j, %i.p
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.q, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %i.r, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14SetWindowFocusEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %i.c, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui14SetWindowFocusEPKc(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %0, align 1, !tbaa !187     ; 2 uses
  %.not4050.i.i = icmp eq i8 %i.a, 0
  br i1 %.not4050.i.i, label %_Z9ImHashStrPKcmj.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b, %bb.g
  %i.b = phi i8 [ %i.s, %bb.g ], [ %i.a, %bb.b ]  ; 2 uses
  %.252.i.i = phi ptr [ %.3.i.i, %bb.g ], [ %0, %bb.b ] ; 3 uses
  %.23351.i.i = phi i32 [ %.334.i.i, %bb.g ], [ -1, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 1 ; 2 uses
  %i.d = zext i8 %i.b to i32
  %i.e = icmp eq i8 %i.b, 35
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.f = load i8, ptr %i.c, align 1, !tbaa !187
  %i.g = icmp eq i8 %i.f, 35
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 2
  %i.i = load i8, ptr %i.h, align 1, !tbaa !187
  %i.j = icmp eq i8 %i.i, 35
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.252.i.i, i64 3
  br label %bb.g, !llvm.loop !248

bb.f:                                             ; preds = %bb.d, %bb.c, %.lr.ph.i.i
  %i.l = lshr i32 %.23351.i.i, 8
  %i.m = and i32 %.23351.i.i, 255
  %i.n = xor i32 %i.m, %i.d
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !205
  %i.r = xor i32 %i.q, %i.l
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.334.i.i = phi i32 [ -1, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %.3.i.i = phi ptr [ %i.k, %bb.e ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load i8, ptr %.3.i.i, align 1, !tbaa !187 ; 2 uses
  %.not40.i.i = icmp eq i8 %i.s, 0
  br i1 %.not40.i.i, label %_Z9ImHashStrPKcmj.exit.loopexit.i, label %.lr.ph.i.i

_Z9ImHashStrPKcmj.exit.loopexit.i:                ; preds = %bb.g
  %i.t = xor i32 %.334.i.i, -1
  br label %_Z9ImHashStrPKcmj.exit.i

_Z9ImHashStrPKcmj.exit.i:                         ; preds = %_Z9ImHashStrPKcmj.exit.loopexit.i, %bb.b
  %.4.i.i = phi i32 [ 0, %bb.b ], [ %i.t, %_Z9ImHashStrPKcmj.exit.loopexit.i ] ; 2 uses
  %i.u = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 5280
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 5288
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !259  ; 3 uses
  %i.y = load i32, ptr %i.v, align 8, !tbaa !258  ; 2 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %.idx.i.i.i = shl nsw i64 %i.z, 4
  %i.aa = getelementptr inbounds i8, ptr %i.x, i64 %.idx.i.i.i
  %.not15.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not15.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_Z9ImHashStrPKcmj.exit.i, %.lr.ph.i.i.i.i
  %.017.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.z, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %.01316.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.x, %_Z9ImHashStrPKcmj.exit.i ] ; 2 uses
  %i.ab = lshr i64 %.017.i.i.i.i, 1               ; 3 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %.01316.i.i.i.i, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !255
  %i.ae = icmp ult i32 %i.ad, %.4.i.i             ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %.neg.i.i.i.i = xor i64 %i.ab, -1
  %i.ag = add i64 %.017.i.i.i.i, %.neg.i.i.i.i
  %.114.i.i.i.i = select i1 %i.ae, ptr %i.af, ptr %.01316.i.i.i.i ; 2 uses
  %.1.i.i.i.i = select i1 %i.ae, i64 %i.ag, i64 %i.ab ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.1.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !257

_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_Z9ImHashStrPKcmj.exit.i
  %.013.lcssa.i.i.i.i = phi ptr [ %i.x, %_Z9ImHashStrPKcmj.exit.i ], [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.ah = icmp eq ptr %.013.lcssa.i.i.i.i, %i.aa
  br i1 %i.ah, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %bb.h

bb.h:                                             ; preds = %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i
  %i.ai = load i32, ptr %.013.lcssa.i.i.i.i, align 8, !tbaa !255
  %.not.i.i.i = icmp eq i32 %i.ai, %.4.i.i
  br i1 %.not.i.i.i, label %_ZN5ImGui16FindWindowByNameEPKc.exit, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit:             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.013.lcssa.i.i.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !187 ; 2 uses
  %.not5 = icmp eq ptr %i.ak, null
  br i1 %.not5, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread, label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split

_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split: ; preds = %bb.a, %_ZN5ImGui16FindWindowByNameEPKc.exit
  %.sink = phi ptr [ %i.ak, %_ZN5ImGui16FindWindowByNameEPKc.exit ], [ null, %bb.a ]
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %.sink, i32 noundef 0)
  br label %_ZN5ImGui16FindWindowByNameEPKc.exit.thread

_ZN5ImGui16FindWindowByNameEPKc.exit.thread:      ; preds = %_ZN5ImGui16FindWindowByNameEPKc.exit.thread.sink.split, %_Z12ImLowerBoundP16ImGuiStoragePairS0_j.exit.i.i.i, %bb.h, %_ZN5ImGui16FindWindowByNameEPKc.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui18SetNextWindowFocusEv() local_unnamed_addr #30 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7928 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1128
  %i.d = or i32 %i.c, 32
  store i32 %i.d, ptr %i.b, align 8, !tbaa !1128
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN5ImGui15IsWindowFocusedEi(i32 noundef %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !389  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
end_hunk_0
