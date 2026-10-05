Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui8NewFrameEv:bb.a
  %i.gw = add nsw i32 %i.gv, 1
  %i.gx = srem i32 %i.gw, 6                       ; 2 uses
  %i.gy = trunc nsw i32 %i.gx to i16
  store i16 %i.gy, ptr %i.gp, align 4, !tbaa !229
  %i.gz = sext i32 %i.gx to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.gz ; 3 uses
  store i32 %i.gn, ptr %i.ha, align 4, !tbaa !231
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 6
  store i16 0, ptr %i.hb, align 2, !tbaa !233
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i16 0, ptr %i.hc, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i308

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i308: ; preds = %bb.ag, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i309
  %i.hd = phi i16 [ 1, %bb.ag ], [ %i.gu, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i309 ]
  %i.he = phi i64 [ %i.gz, %bb.ag ], [ %i.gr, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i309 ]
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.go, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 6
  store i16 %i.hd, ptr %i.hg, align 2, !tbaa !233
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gl, i64 10600 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !235
  %i.hj = add nsw i32 %i.hi, 1
  store i32 %i.hj, ptr %i.hh, align 4, !tbaa !235
  br label %_Z9IM_DELETEI10ImDrawListEvPT_.exit.i

_Z9IM_DELETEI10ImDrawListEvPT_.exit.i:            ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i308, %bb.ae
  %i.hk = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.hl = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  call void %i.hk(ptr noundef nonnull %i.gk, ptr noundef %i.hl), !inline_history !1334
  store ptr null, ptr %i.gh, align 8, !tbaa !701
  br label %bb.ah

bb.ah:                                            ; preds = %_Z9IM_DELETEI10ImDrawListEvPT_.exit.i, %bb.ad, %.lr.ph.i304
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fm, i64 68
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !75
  %i.ho = fcmp olt float %i.hn, %i.fi
  br i1 %i.ho, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fm, i64 80 ; 2 uses
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !701 ; 3 uses
  %.not38.1.i = icmp eq ptr %i.hq, null
  br i1 %.not38.1.i, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZN10ImDrawListD1Ev(ptr noundef nonnull align 8 dead_on_return(224) dereferenceable(224) %i.hq) #41
  %i.hr = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %.not7.i.i.1.i = icmp eq ptr %i.hr, null
  br i1 %.not7.i.i.1.i, label %_Z9IM_DELETEI10ImDrawListEvPT_.exit.1.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 4
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !228 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 10608 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 10604 ; 2 uses
  %i.hw = load i16, ptr %i.hv, align 4, !tbaa !229 ; 2 uses
  %i.hx = sext i16 %i.hw to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.hx ; 2 uses
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !231
  %.not.i.i.i.1.i = icmp eq i32 %i.hz, %i.ht
  br i1 %.not.i.i.i.1.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.1.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ia = sext i16 %i.hw to i32
  %i.ib = add nsw i32 %i.ia, 1
  %i.ic = srem i32 %i.ib, 6                       ; 2 uses
  %i.id = trunc nsw i32 %i.ic to i16
  store i16 %i.id, ptr %i.hv, align 4, !tbaa !229
  %i.ie = sext i32 %i.ic to i64                   ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.ie ; 3 uses
  store i32 %i.ht, ptr %i.if, align 4, !tbaa !231
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 6
  store i16 0, ptr %i.ig, align 2, !tbaa !233
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 4
  store i16 0, ptr %i.ih, align 4, !tbaa !232
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.1.i

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.1.i: ; preds = %bb.ak
  %.phi.trans.insert.i.i.1.i = getelementptr inbounds nuw i8, ptr %i.hy, i64 6
  %.pre.i.i.1.i = load i16, ptr %.phi.trans.insert.i.i.1.i, align 2, !tbaa !233
  %i.ii = add i16 %.pre.i.i.1.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.1.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.1.i: ; preds = %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.1.i, %bb.al
  %i.ij = phi i16 [ 1, %bb.al ], [ %i.ii, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.1.i ]
  %i.ik = phi i64 [ %i.ie, %bb.al ], [ %i.hx, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.1.i ]
  %i.il = getelementptr inbounds [8 x i8], ptr %i.hu, i64 %i.ik
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 6
  store i16 %i.ij, ptr %i.im, align 2, !tbaa !233
  %i.in = getelementptr inbounds nuw i8, ptr %i.hr, i64 10600 ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !235
  %i.ip = add nsw i32 %i.io, 1
  store i32 %i.ip, ptr %i.in, align 4, !tbaa !235
  br label %_Z9IM_DELETEI10ImDrawListEvPT_.exit.1.i

_Z9IM_DELETEI10ImDrawListEvPT_.exit.1.i:          ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.1.i, %bb.aj
  %i.iq = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !226
  %i.ir = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !226
  call void %i.iq(ptr noundef nonnull %i.hq, ptr noundef %i.ir), !inline_history !1334
  store ptr null, ptr %i.hp, align 8, !tbaa !701
  br label %bb.am

bb.am:                                            ; preds = %_Z9IM_DELETEI10ImDrawListEvPT_.exit.1.i, %bb.ai, %bb.ah
  %i.is = getelementptr inbounds nuw i8, ptr %.03546.i, i64 8 ; 2 uses
  %.not.i305 = icmp eq ptr %i.is, %i.fl
  br i1 %.not.i305, label %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit.loopexit, label %.lr.ph.i304

_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit.loopexit: ; preds = %bb.am
  %.pre = load ptr, ptr @GImGui, align 8, !tbaa !227
  br label %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit

_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit:       ; preds = %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit.loopexit, %bb.ac
  %i.it = phi ptr [ %.pre, %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit.loopexit ], [ %i.el, %bb.ac ] ; 7 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 44
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !744
  %i.iw = and i32 %i.iv, 16
  %i.ix = icmp ne i32 %i.iw, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 4536
  %i.iz = getelementptr inbounds nuw i8, ptr %i.it, i64 4544
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !478 ; 2 uses
  %i.jb = load i32, ptr %i.iy, align 8, !tbaa !479 ; 2 uses
  %i.jc = sext i32 %i.jb to i64
  %.idx.i312 = shl nsw i64 %i.jc, 3
  %i.jd = getelementptr inbounds i8, ptr %i.ja, i64 %.idx.i312
  %.not23.i = icmp eq i32 %i.jb, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i313

.lr.ph.i313:                                      ; preds = %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 4
  br label %bb.an

._crit_edge.i:                                    ; preds = %bb.ap, %_ZN5ImGuiL23UpdateViewportsNewFrameEv.exit
  %i.jf = getelementptr inbounds nuw i8, ptr %i.it, i64 10048
  %i.jg = getelementptr inbounds nuw i8, ptr %i.it, i64 10056
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !469 ; 2 uses
  %i.ji = load i32, ptr %i.jf, align 8, !tbaa !470 ; 2 uses
  %i.jj = sext i32 %i.ji to i64
  %.idx30.i = shl nsw i64 %i.jj, 3
  %i.jk = getelementptr inbounds i8, ptr %i.jh, i64 %.idx30.i
  %.not2225.i = icmp eq i32 %i.ji, 0
  br i1 %.not2225.i, label %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit, label %.lr.ph28.i

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i313
  %.02024.i = phi ptr [ %i.ja, %.lr.ph.i313 ], [ %i.jq, %bb.ap ] ; 2 uses
  %i.jl = load ptr, ptr %.02024.i, align 8, !tbaa !456 ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 728
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !483
  %i.jo = icmp eq ptr %i.jn, %i.it
  br i1 %i.jo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.jp = load i32, ptr %i.je, align 4, !tbaa !228
  call void @_Z25ImFontAtlasUpdateNewFrameP11ImFontAtlasib(ptr noundef nonnull %i.jl, i32 noundef %i.jp, i1 noundef zeroext %i.ix)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jq = getelementptr inbounds nuw i8, ptr %.02024.i, i64 8 ; 2 uses
  %.not.i314 = icmp eq ptr %i.jq, %i.jd
  br i1 %.not.i314, label %._crit_edge.i, label %bb.an

.lr.ph28.i:                                       ; preds = %._crit_edge.i, %.lr.ph28.i
  %.026.i = phi ptr [ %i.jt, %.lr.ph28.i ], [ %i.jh, %._crit_edge.i ] ; 2 uses
  %i.jr = load ptr, ptr %.026.i, align 8, !tbaa !435
  %i.js = call noundef zeroext i1 @_Z27ImTextureDataUpdateNewFrameP13ImTextureData(ptr noundef %i.jr) ; 0 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.026.i, i64 8 ; 2 uses
  %.not22.i = icmp eq ptr %i.jt, %i.jk
  br i1 %.not22.i, label %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit, label %.lr.ph28.i

_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit:        ; preds = %.lr.ph28.i, %._crit_edge.i
  %i.ju = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 15 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 8200
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8208
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !399 ; 2 uses
  %i.jy = load i32, ptr %i.jv, align 8, !tbaa !431 ; 2 uses
  %i.jz = sext i32 %i.jy to i64
  %.idx.i315 = shl nsw i64 %i.jz, 3
  %i.ka = getelementptr inbounds i8, ptr %i.jx, i64 %.idx.i315
  %.not45.i316 = icmp eq i32 %i.jy, 0
  br i1 %.not45.i316, label %._crit_edge.i318, label %_ZN6ImRect3AddERKS_.exit.i

._crit_edge.i318:                                 ; preds = %_ZN6ImRect3AddERKS_.exit.i, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit
  %.sroa.031.0.lcssa.i = phi <4 x float> [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit ], [ %.sroa.031.4.i, %_ZN6ImRect3AddERKS_.exit.i ] ; 2 uses
  %.sroa.0.4.vec.insert.i.i = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %.sroa.3.12.vec.insert.i.i = shufflevector <4 x float> %.sroa.031.0.lcssa.i, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ju, i64 4592
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 4648
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.kc, align 8, !tbaa !75
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ju, i64 4656
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !75
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ju, i64 3524
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !1364
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ju, i64 4632
  store float %i.ke, ptr %i.kf, align 8, !tbaa !1365
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ju, i64 3528
  %i.kh = load float, ptr %i.kg, align 8, !tbaa !1366
  call void @_ZN20ImDrawListSharedData29SetCircleTessellationMaxErrorEf(ptr noundef nonnull align 8 dereferenceable(564) %i.kb, float noundef %i.kh)
  %i.ki = getelementptr inbounds nuw i8, ptr %i.ju, i64 4644 ; 4 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ju, i64 3520
  %i.kk = load i8, ptr %i.kj, align 8, !tbaa !1367, !range !100, !noundef !236
  %spec.store.select.i = zext nneg i8 %i.kk to i32 ; 4 uses
  store i32 %spec.store.select.i, ptr %i.ki, align 4
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ju, i64 3521
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !1368, !range !100, !noundef !236
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %bb.aq, label %bb.as

_ZN6ImRect3AddERKS_.exit.i:                       ; preds = %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit, %_ZN6ImRect3AddERKS_.exit.i
  %.047.i = phi ptr [ %i.ld, %_ZN6ImRect3AddERKS_.exit.i ], [ %i.jx, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit ] ; 2 uses
  %.sroa.031.046.i = phi <4 x float> [ %.sroa.031.4.i, %_ZN6ImRect3AddERKS_.exit.i ], [ <float f0x7F7FFFFF, float f0x7F7FFFFF, float f0xFF7FFFFF, float f0xFF7FFFFF>, %_ZN5ImGuiL22UpdateTexturesNewFrameEv.exit ] ; 3 uses
  %i.ko = load ptr, ptr %.047.i, align 8, !tbaa !400 ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 8
  %i.kq = load float, ptr %i.kp, align 8, !tbaa !433 ; 3 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ko, i64 12
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !1369 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 16
  %i.ku = load float, ptr %i.kt, align 8, !tbaa !745
  %i.kv = fadd float %i.kq, %i.ku                 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ko, i64 20
  %i.kx = load float, ptr %i.kw, align 4, !tbaa !434
  %i.ky = fadd float %i.ks, %i.kx                 ; 2 uses
  %.sroa.031.0.vec.extract.i = extractelement <4 x float> %.sroa.031.046.i, i64 0
  %i.kz = fcmp ogt float %.sroa.031.0.vec.extract.i, %i.kq
  %.sroa.031.0.vec.insert35.i = insertelement <4 x float> %.sroa.031.046.i, float %i.kq, i64 0
  %.sroa.031.1.i = select i1 %i.kz, <4 x float> %.sroa.031.0.vec.insert35.i, <4 x float> %.sroa.031.046.i ; 3 uses
  %.sroa.031.4.vec.extract.i = extractelement <4 x float> %.sroa.031.1.i, i64 1
  %i.la = fcmp ogt float %.sroa.031.4.vec.extract.i, %i.ks
  %.sroa.031.4.vec.insert38.i = insertelement <4 x float> %.sroa.031.1.i, float %i.ks, i64 1
  %.sroa.031.2.i = select i1 %i.la, <4 x float> %.sroa.031.4.vec.insert38.i, <4 x float> %.sroa.031.1.i ; 3 uses
  %.sroa.031.8.vec.extract.i = extractelement <4 x float> %.sroa.031.2.i, i64 2
  %i.lb = fcmp olt float %.sroa.031.8.vec.extract.i, %i.kv
  %.sroa.031.8.vec.insert41.i = insertelement <4 x float> %.sroa.031.2.i, float %i.kv, i64 2
  %.sroa.031.3.i = select i1 %i.lb, <4 x float> %.sroa.031.8.vec.insert41.i, <4 x float> %.sroa.031.2.i ; 3 uses
  %.sroa.031.12.vec.extract.i = extractelement <4 x float> %.sroa.031.3.i, i64 3
  %i.lc = fcmp olt float %.sroa.031.12.vec.extract.i, %i.ky
  %.sroa.031.12.vec.insert44.i = insertelement <4 x float> %.sroa.031.3.i, float %i.ky, i64 3
  %.sroa.031.4.i = select i1 %i.lc, <4 x float> %.sroa.031.12.vec.insert44.i, <4 x float> %.sroa.031.3.i ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %.047.i, i64 8 ; 2 uses
  %.not.i317 = icmp eq ptr %i.ld, %i.ka
  br i1 %.not.i317, label %._crit_edge.i318, label %_ZN6ImRect3AddERKS_.exit.i

bb.aq:                                            ; preds = %._crit_edge.i318
  %i.le = getelementptr inbounds nuw i8, ptr %i.ju, i64 96
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !455
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !1370
  %i.lh = and i32 %i.lg, 4
  %.not24.i = icmp eq i32 %i.lh, 0
  br i1 %.not24.i, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.li = or disjoint i32 %spec.store.select.i, 2 ; 2 uses
  store i32 %i.li, ptr %i.ki, align 4, !tbaa !1371
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %._crit_edge.i318
  %i.lj = phi i32 [ %i.li, %bb.ar ], [ %spec.store.select.i, %bb.aq ], [ %spec.store.select.i, %._crit_edge.i318 ] ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ju, i64 3522
  %i.ll = load i8, ptr %i.lk, align 2, !tbaa !1372, !range !100, !noundef !236
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.ln = or i32 %i.lj, 4                         ; 2 uses
  store i32 %i.ln, ptr %i.ki, align 4, !tbaa !1371
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.lo = phi i32 [ %i.ln, %bb.at ], [ %i.lj, %bb.as ]
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ju, i64 44
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !744
  %i.lr = and i32 %i.lq, 8
  %.not25.i = icmp eq i32 %i.lr, 0
  br i1 %.not25.i, label %_ZL23SetupDrawListSharedDatav.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ls = or i32 %i.lo, 8
  store i32 %i.ls, ptr %i.ki, align 4, !tbaa !1371
  br label %_ZL23SetupDrawListSharedDatav.exit

_ZL23SetupDrawListSharedDatav.exit:               ; preds = %bb.au, %bb.av
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ju, i64 4640
  store float 1.000000e+00, ptr %i.lt, align 8, !tbaa !1373
  %i.lu = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 11 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 44
  %i.lw = load i32, ptr %i.lv, align 4, !tbaa !744
  %i.lx = and i32 %i.lw, 16
  %i.ly = icmp eq i32 %i.lx, 0
  br i1 %i.ly, label %bb.aw, label %.loopexit.i

bb.aw:                                            ; preds = %_ZL23SetupDrawListSharedDatav.exit
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lu, i64 4536
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lu, i64 4544
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !478 ; 3 uses
  %i.mc = load i32, ptr %i.lz, align 8, !tbaa !479 ; 2 uses
  %i.md = sext i32 %i.mc to i64
  %.idx.i320 = shl nsw i64 %i.md, 3               ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %i.mb, i64 %.idx.i320
  %.not29.i = icmp eq i32 %i.mc, 0
  br i1 %.not29.i, label %.loopexit.i, label %.lr.ph.i321.preheader

.lr.ph.i321.preheader:                            ; preds = %bb.aw
  %i.mf = add nsw i64 %.idx.i320, -8              ; 2 uses
  %i.mg = lshr exact i64 %i.mf, 3
  %i.mh = add nuw nsw i64 %i.mg, 1
  %xtraiter = and i64 %i.mh, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i321.prol.loopexit, label %.lr.ph.i321.prol

.lr.ph.i321.prol:                                 ; preds = %.lr.ph.i321.preheader, %.lr.ph.i321.prol
  %.030.i.prol = phi ptr [ %i.mk, %.lr.ph.i321.prol ], [ %i.mb, %.lr.ph.i321.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i321.prol ], [ 0, %.lr.ph.i321.preheader ]
  %i.mi = load ptr, ptr %.030.i.prol, align 8, !tbaa !456
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 80
  store i8 1, ptr %i.mj, align 8, !tbaa !484
  %i.mk = getelementptr inbounds nuw i8, ptr %.030.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i321.prol.loopexit, label %.lr.ph.i321.prol, !llvm.loop !1335

.lr.ph.i321.prol.loopexit:                        ; preds = %.lr.ph.i321.prol, %.lr.ph.i321.preheader
  %.030.i.unr = phi ptr [ %i.mb, %.lr.ph.i321.preheader ], [ %i.mk, %.lr.ph.i321.prol ]
  %i.ml = icmp ult i64 %i.mf, 56
  br i1 %i.ml, label %.loopexit.i, label %.lr.ph.i321

.lr.ph.i321:                                      ; preds = %.lr.ph.i321.prol.loopexit, %.lr.ph.i321
  %.030.i = phi ptr [ %i.nj, %.lr.ph.i321 ], [ %.030.i.unr, %.lr.ph.i321.prol.loopexit ] ; 9 uses
  %i.mm = load ptr, ptr %.030.i, align 8, !tbaa !456
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 80
  store i8 1, ptr %i.mn, align 8, !tbaa !484
  %i.mo = getelementptr inbounds nuw i8, ptr %.030.i, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !456
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 80
  store i8 1, ptr %i.mq, align 8, !tbaa !484
  %i.mr = getelementptr inbounds nuw i8, ptr %.030.i, i64 16
  %i.ms = load ptr, ptr %i.mr, align 8, !tbaa !456
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 80
  store i8 1, ptr %i.mt, align 8, !tbaa !484
  %i.mu = getelementptr inbounds nuw i8, ptr %.030.i, i64 24
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !456
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 80
  store i8 1, ptr %i.mw, align 8, !tbaa !484
  %i.mx = getelementptr inbounds nuw i8, ptr %.030.i, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !456
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 80
  store i8 1, ptr %i.mz, align 8, !tbaa !484
  %i.na = getelementptr inbounds nuw i8, ptr %.030.i, i64 40
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !456
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 80
  store i8 1, ptr %i.nc, align 8, !tbaa !484
  %i.nd = getelementptr inbounds nuw i8, ptr %.030.i, i64 48
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !456
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 80
  store i8 1, ptr %i.nf, align 8, !tbaa !484
  %i.ng = getelementptr inbounds nuw i8, ptr %.030.i, i64 56
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !456
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 80
  store i8 1, ptr %i.ni, align 8, !tbaa !484
  %i.nj = getelementptr inbounds nuw i8, ptr %.030.i, i64 64 ; 2 uses
  %.not.i322.7 = icmp eq ptr %i.nj, %i.me
  br i1 %.not.i322.7, label %.loopexit.i, label %.lr.ph.i321

.loopexit.i:                                      ; preds = %.lr.ph.i321.prol.loopexit, %.lr.ph.i321, %bb.aw, %_ZL23SetupDrawListSharedDatav.exit
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lu, i64 3208 ; 3 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lu, i64 4532 ; 2 uses
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !1374 ; 2 uses
  %i.nn = fcmp une float %i.nm, 0.000000e+00
  br i1 %i.nn, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.loopexit.i
  store float %i.nm, ptr %i.nk, align 8, !tbaa !746
  store float 0.000000e+00, ptr %i.nl, align 4, !tbaa !1374
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.loopexit.i
  %i.no = getelementptr inbounds nuw i8, ptr %i.lu, i64 96
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !455 ; 4 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 688
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !747
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.nt = getelementptr inbounds nuw i8, ptr %i.np, i64 104
  %i.nu = load i32, ptr %i.nt, align 8, !tbaa !748
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @_Z20ImFontAtlasBuildMainP11ImFontAtlas(ptr noundef nonnull %i.np)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %i.nw = getelementptr inbounds nuw i8, ptr %i.lu, i64 104
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !749 ; 2 uses
  %.not.i.i319 = icmp eq ptr %i.nx, null
  br i1 %.not.i.i319, label %bb.bc, label %_ZN5ImGui14GetDefaultFontEv.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ny = getelementptr inbounds nuw i8, ptr %i.np, i64 112
  %i.nz = load ptr, ptr %i.ny, align 8, !tbaa !750
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !751
  br label %_ZN5ImGui14GetDefaultFontEv.exit.i

_ZN5ImGui14GetDefaultFontEv.exit.i:               ; preds = %bb.bc, %bb.bb
  %i.ob = phi ptr [ %i.oa, %bb.bc ], [ %i.nx, %bb.bb ] ; 7 uses
  %i.oc = load float, ptr %i.nk, align 8, !tbaa !746 ; 2 uses
  %i.od = fcmp ugt float %i.oc, 0.000000e+00
  br i1 %i.od, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_ZN5ImGui14GetDefaultFontEv.exit.i
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ob, i64 28
  %i.of = load float, ptr %i.oe, align 4, !tbaa !1375 ; 2 uses
  %i.og = fcmp ogt float %i.of, 0.000000e+00
  %i.oh = select i1 %i.og, float %i.of, float 2.000000e+01 ; 2 uses
  store float %i.oh, ptr %i.nk, align 8, !tbaa !746
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_ZN5ImGui14GetDefaultFontEv.exit.i
  %i.oi = phi float [ %i.oh, %bb.bd ], [ %i.oc, %_ZN5ImGui14GetDefaultFontEv.exit.i ] ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lu, i64 4552
  store ptr %i.ob, ptr %i.oj, align 8, !tbaa !409
  %i.ok = getelementptr inbounds nuw i8, ptr %i.lu, i64 4572
  store float %i.oi, ptr %i.ok, align 4, !tbaa !752
  %i.ol = getelementptr inbounds nuw i8, ptr %i.lu, i64 4568
  store float 0.000000e+00, ptr %i.ol, align 8, !tbaa !410
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  store ptr %i.ob, ptr %1, align 8, !tbaa !754
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.oi, ptr %i.om, align 8, !tbaa !755
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 12
  store float %i.oi, ptr %i.on, align 4, !tbaa !756
  %i.oo = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 5 uses
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 4552
  store ptr %i.ob, ptr %i.op, align 8, !tbaa !409
  %i.oq = getelementptr inbounds nuw i8, ptr %i.oo, i64 4572
  store float %i.oi, ptr %i.oq, align 4, !tbaa !752
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  %.not.i28.i = icmp eq ptr %i.ob, null
  br i1 %.not.i28.i, label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.or = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.os = load ptr, ptr %i.or, align 8, !tbaa !757 ; 4 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %i.oo, i64 4608
  store ptr %i.os, ptr %i.ot, align 8, !tbaa !430
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oo, i64 4616
  store ptr %i.ob, ptr %i.ou, align 8, !tbaa !758
  call void @_Z36ImFontAtlasUpdateDrawListsSharedDataP11ImFontAtlas(ptr noundef %i.os)
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 5312
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !289 ; 2 uses
  %.not16.i.i = icmp eq ptr %i.ow, null
  br i1 %.not16.i.i, label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ow, i64 712
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !408
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 40
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.oz, align 8, !tbaa !435
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.os, i64 48
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !436
  call void @_ZN10ImDrawList11_SetTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.oy, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.2.0.copyload.i.i)
  br label %_ZN5ImGuiL19UpdateFontsNewFrameEv.exit

_ZN5ImGuiL19UpdateFontsNewFrameEv.exit:           ; preds = %bb.be, %bb.bf, %bb.bg
  %i.pa = getelementptr inbounds nuw i8, ptr %i.lu, i64 8088
  call void @_ZN8ImVectorI15ImFontStackDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull align 8 dereferenceable(16) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.pb = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 1, ptr %i.pb, align 1, !tbaa !395
  %i.pc = getelementptr inbounds nuw i8, ptr %i.c, i64 8200
  %i.pd = getelementptr inbounds nuw i8, ptr %i.c, i64 8208
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !399 ; 3 uses
  %i.pf = load i32, ptr %i.pc, align 8, !tbaa !431 ; 2 uses
  %i.pg = sext i32 %i.pf to i64
  %.idx = shl nsw i64 %i.pg, 3                    ; 2 uses
  %i.ph = getelementptr inbounds i8, ptr %i.pe, i64 %.idx
  %.not273491 = icmp eq i32 %i.pf, 0
end_hunk_0
begin_hunk_1_@_ZN5ImGui25NavInitRequestApplyResultEv:bb.a
.thread.i:                                        ; preds = %bb.l, %bb.k, %bb.j
  %i.bx = getelementptr inbounds nuw i8, ptr %i.at, i64 118
  %i.by = load i8, ptr %i.bx, align 2, !tbaa !702, !range !100, !noundef !236
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.sink.split.i, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

.sink.split.i:                                    ; preds = %.thread.i, %bb.l, %bb.k, %bb.i
  %.sink.i = phi i8 [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.k ], [ 1, %.thread.i ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.at, i64 8216
  store i8 %.sink.i, ptr %i.ca, align 8, !tbaa !424
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit:   ; preds = %.thread.i, %.sink.split.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.at, i64 8218
  store i8 1, ptr %i.cb, align 2, !tbaa !712
  %i.cc = getelementptr inbounds nuw i8, ptr %i.at, i64 8217
  store i8 1, ptr %i.cc, align 1, !tbaa !676
  br label %bb.m

bb.m:                                             ; preds = %bb.h, %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui25NavMoveRequestApplyResultEv() local_unnamed_addr #12 {
bb.a:
  %0 = alloca %struct.ImRect, align 8             ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 52 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8464
  %i.c = load i32, ptr %i.b, align 8, !tbaa !965
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8456
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8388 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !375
  br label %.thread148

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8576
  %i.h = load i32, ptr %i.g, align 8, !tbaa !966
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
  %i.t = load i32, ptr %i.s, align 8, !tbaa !998
  %.not112 = icmp eq i32 %i.t, 0
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8624
  br i1 %.not112, label %.thread151, label %.thread148

.thread151:                                       ; preds = %bb.e, %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8400
  %i.w = load i32, ptr %i.v, align 8, !tbaa !820
  %i.x = and i32 %i.w, -2
  %narrow155 = icmp eq i32 %i.x, 2
  %i.y = zext i1 %narrow155 to i32
  br label %bb.h

.thread148:                                       ; preds = %bb.e, %.thread
  %.ph146 = phi i32 [ %i.f, %.thread ], [ %i.j, %bb.e ]
  %.ph147 = phi ptr [ %i.e, %.thread ], [ %i.i, %bb.e ]
  %.0.ph = phi ptr [ %i.d, %.thread ], [ %i.u, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8400 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !820
  %i.ab = and i32 %i.aa, -2
  %narrow154 = icmp eq i32 %i.ab, 2
  %i.ac = zext i1 %narrow154 to i32
  br label %bb.q

bb.f:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8568
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8400 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !820
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
  %or.cond177 = and i1 %.not131, %i.ap
  br i1 %or.cond177, label %bb.j, label %bb.o

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
  br i1 %.not132, label %bb.bf, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.179)
  br label %bb.bf

bb.q:                                             ; preds = %.thread148, %bb.f
  %i.bz = phi i32 [ %i.ac, %.thread148 ], [ %i.ah, %bb.f ]
  %i.ca = phi ptr [ %i.z, %.thread148 ], [ %i.ae, %bb.f ]
  %.0150 = phi ptr [ %.0.ph, %.thread148 ], [ %i.ad, %bb.f ] ; 3 uses
  %i.cb = phi ptr [ %.ph147, %.thread148 ], [ %i.i, %bb.f ] ; 7 uses
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
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !966
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
  %i.dg = load ptr, ptr %.2, align 8, !tbaa !994
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
  %i.dq = load ptr, ptr %.2, align 8, !tbaa !994
  %i.dr = getelementptr inbounds nuw i8, ptr %i.a, i64 8392
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !821
  %i.dt = call <2 x float> @_ZN5ImGui14ScrollToRectExEP11ImGuiWindowRK6ImRecti(ptr noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %0, i32 noundef %i.ds) ; 0 uses
  %i.du = load i32, ptr %i.cb, align 4, !tbaa !375
  %i.dv = and i32 %i.du, 64
  %.not118 = icmp eq i32 %i.dv, 0
  br i1 %.not118, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dw = load i32, ptr %i.ca, align 8, !tbaa !820
  %i.dx = icmp eq i32 %i.dw, 2
  %.pre = load ptr, ptr %.2, align 8, !tbaa !994  ; 4 uses
  br i1 %i.dx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre, i64 164
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !827
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %i.ea = phi float [ %i.dz, %bb.ad ], [ 0.000000e+00, %bb.ac ]
  %i.eb = getelementptr inbounds nuw i8, ptr %.pre, i64 172
  store float %i.ea, ptr %i.eb, align 4, !tbaa !824
  %i.ec = getelementptr inbounds nuw i8, ptr %.pre, i64 180
  store float 0.000000e+00, ptr %i.ec, align 4, !tbaa !825
  %i.ed = getelementptr inbounds nuw i8, ptr %.pre, i64 188
  store float 0.000000e+00, ptr %i.ed, align 4, !tbaa !826
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #41
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.aa
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 8224 ; 5 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !370
  %i.eg = load ptr, ptr %.2, align 8, !tbaa !994  ; 3 uses
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
  %.pre157 = load ptr, ptr %.2, align 8, !tbaa !994
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
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !995 ; 2 uses
  %.not121 = icmp eq i32 %i.ep, %i.er
  %.pre159.pre165 = load i32, ptr %i.cb, align 4, !tbaa !375 ; 3 uses
  br i1 %.not121, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.es = and i32 %.pre159.pre165, 32768
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  tail call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef 0, ptr noundef null)
  %.pre158 = load i32, ptr %i.eq, align 8, !tbaa !995
  %.pre159.pre = load i32, ptr %i.cb, align 4, !tbaa !375
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %.pre159 = phi i32 [ %.pre159.pre, %bb.am ], [ %.pre159.pre165, %bb.al ], [ %.pre159.pre165, %bb.ak ] ; 3 uses
  %i.eu = phi i32 [ %.pre158, %bb.am ], [ %i.er, %bb.al ], [ %i.ep, %bb.ak ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !379
  %.not122 = icmp ne i32 %i.ew, %i.eu
  %i.ex = and i32 %.pre159, 2048
  %.not123 = icmp ne i32 %i.ex, 0
  %or.cond178.not181 = select i1 %.not122, i1 true, i1 %.not123
  %i.ey = and i32 %.pre159, 8192
  %i.ez = icmp eq i32 %i.ey, 0
  %or.cond180 = select i1 %or.cond178.not181, i1 %i.ez, i1 false
  br i1 %or.cond180, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fa = getelementptr inbounds nuw i8, ptr %i.a, i64 8232
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !714
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 8680
  store i32 %i.fb, ptr %i.fc, align 8, !tbaa !793
  %i.fd = getelementptr inbounds nuw i8, ptr %i.a, i64 8684
  store i32 %i.eu, ptr %i.fd, align 4, !tbaa !665
  %i.fe = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !996
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 8688
  store i32 %i.ff, ptr %i.fg, align 8, !tbaa !794
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 8396
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !829
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 8692
  store i32 %i.fi, ptr %i.fj, align 4, !tbaa !1045
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 8696
  %i.fl = lshr i32 %.pre159, 10
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = and i8 %i.fm, 1
  store i8 %i.fn, ptr %i.fk, align 8, !tbaa !1046
  %i.fo = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.fp = load i32, ptr %i.fo, align 8, !tbaa !830
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
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fz = phi i32 [ %.pre162, %bb.aq ], [ %.pre163, %bb.ap ] ; 2 uses
  %i.ga = phi ptr [ %.pre160, %bb.aq ], [ %.pre161, %bb.ap ]
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 984
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !371
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 1048
  %i.ge = zext i32 %i.fz to i64                   ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.ge
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !75
  store i64 %i.gg, ptr %1, align 8, !tbaa !75
  %i.gh = load i32, ptr %i.eq, align 8, !tbaa !995 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.2, i64 12
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !996
  %i.gk = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 2 uses
  %i.gl = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8220
  store i32 %i.gh, ptr %i.gm, align 4, !tbaa !379
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gl, i64 8236
  store i32 %i.fz, ptr %i.gn, align 4, !tbaa !713
  tail call void @_ZN5ImGui16SetNavFocusScopeEj(i32 noundef %i.gj)
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 8224
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !370 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1008
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.ge
  store i32 %i.gh, ptr %i.gr, align 4, !tbaa !237
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 1016
  %i.gt = getelementptr inbounds nuw [16 x i8], ptr %i.gs, i64 %i.ge
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.gk, i64 16, i1 false), !tbaa.struct !386
  %i.gu = load ptr, ptr @GImGui, align 8, !tbaa !227 ; 9 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 8224 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !370
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 984
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !371
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 1048
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gu, i64 8236
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !713
  %i.hc = zext i32 %i.hb to i64
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hc
  store <2 x float> splat (float f0x7F7FFFFF), ptr %i.hd, align 4, !tbaa !75
  %i.he = getelementptr inbounds nuw i8, ptr %.2, i64 48
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !527 ; 2 uses
  %.not125 = icmp eq i64 %i.hf, -1
  br i1 %.not125, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 8312
  store i64 %i.hf, ptr %i.hg, align 8, !tbaa !552
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.hh = load i32, ptr %i.cb, align 4, !tbaa !375 ; 3 uses
  %i.hi = and i32 %i.hh, 1024
  %i.hj = icmp eq i32 %i.hi, 0
  br i1 %i.hj, label %.thread153, label %bb.au

.thread153:                                       ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.hk = getelementptr inbounds nuw i8, ptr %.2, i64 24
  %i.hl = load <2 x float>, ptr %i.gk, align 8, !tbaa !75
  %i.hm = load <2 x float>, ptr %i.hk, align 8, !tbaa !75
  %i.hn = fadd <2 x float> %i.hl, %i.hm
  %i.ho = fmul <2 x float> %i.hn, splat (float 5.000000e-01)
  store <2 x float> %i.ho, ptr %2, align 8
  %i.hp = zext nneg i32 %i.bz to i64              ; 2 uses
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.hp
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !75
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.hp
  store float %i.hr, ptr %i.hs, align 4, !tbaa !75
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.ht = load ptr, ptr %i.ee, align 8, !tbaa !370
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 984
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !371
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 1048
  %i.hx = load i32, ptr %i.dd, align 4, !tbaa !713
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.hw, i64 %i.hy
  %i.ia = load i64, ptr %1, align 8, !tbaa !75
  store i64 %i.ia, ptr %i.hz, align 8, !tbaa !75
  %.pre164 = load i32, ptr %i.cb, align 4, !tbaa !375
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.ib = getelementptr inbounds nuw i8, ptr %.2, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !830
  %i.id = and i32 %i.ic, 1048576
  %i.ie = icmp eq i32 %i.id, 0
  br i1 %i.ie, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.if = and i32 %i.hh, -4097                    ; 2 uses
  store i32 %i.if, ptr %i.cb, align 4, !tbaa !375
  br label %bb.aw

bb.aw:                                            ; preds = %.thread153, %bb.av, %bb.au
  %i.ig = phi i32 [ %.pre164, %.thread153 ], [ %i.if, %bb.av ], [ %i.hh, %bb.au ] ; 3 uses
  %i.ih = and i32 %i.ig, 4096
  %.not127 = icmp eq i32 %i.ih, 0
  br i1 %.not127, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ii = load i32, ptr %i.eq, align 8, !tbaa !995
  %i.ij = getelementptr inbounds nuw i8, ptr %i.a, i64 8296
  store i32 %i.ii, ptr %i.ij, align 8, !tbaa !818
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 8300 ; 2 uses
  %i.il = lshr i32 %i.ig, 4
  %spec.store.select = and i32 %i.il, 32          ; 2 uses
  store i32 %spec.store.select, ptr %i.ik, align 4
  %i.im = and i32 %i.ig, 1024
  %.not129 = icmp eq i32 %i.im, 0
  br i1 %.not129, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.in = or disjoint i32 %spec.store.select, 13
  store i32 %i.in, ptr %i.ik, align 4, !tbaa !819
  br label %bb.az

bb.az:                                            ; preds = %bb.ax, %bb.ay, %bb.aw
  %3 = load i32, ptr %i.cb, align 4, !tbaa !375
  %i.io = and i32 %3, 16384
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %4, label %bb.be

4:                                                ; preds = %bb.az
  %5 = load ptr, ptr %i.gv, align 8, !tbaa !370   ; 2 uses
  %.not.i136 = icmp eq ptr %5, null
  br i1 %.not.i136, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %4
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !614
  %i.is = and i32 %i.ir, 65536
  %.not13.i137 = icmp eq i32 %i.is, 0
  br i1 %.not13.i137, label %bb.bb, label %.sink.split.i138

bb.bb:                                            ; preds = %bb.ba, %4
  %i.it = getelementptr inbounds nuw i8, ptr %i.gu, i64 8304
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !551
  switch i32 %i.iu, label %.thread.i140 [
    i32 2, label %bb.bc
    i32 3, label %bb.bd
  ]

bb.bc:                                            ; preds = %bb.bb
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !737
  %i.ix = and i32 %i.iw, 1
  %i.iy = icmp eq i32 %i.ix, 0
  br i1 %i.iy, label %.sink.split.i138, label %.thread.i140

bb.bd:                                            ; preds = %bb.bb
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !737
  %i.jb = and i32 %i.ja, 2
  %i.jc = icmp eq i32 %i.jb, 0
  br i1 %i.jc, label %.sink.split.i138, label %.thread.i140

.thread.i140:                                     ; preds = %bb.bd, %bb.bc, %bb.bb
  %i.jd = getelementptr inbounds nuw i8, ptr %i.gu, i64 118
  %i.je = load i8, ptr %i.jd, align 2, !tbaa !702, !range !100, !noundef !236
  %i.jf = trunc nuw i8 %i.je to i1
  br i1 %i.jf, label %.sink.split.i138, label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141

.sink.split.i138:                                 ; preds = %.thread.i140, %bb.bd, %bb.bc, %bb.ba
  %.sink.i139 = phi i8 [ 0, %bb.ba ], [ 0, %bb.bd ], [ 0, %bb.bc ], [ 1, %.thread.i140 ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.gu, i64 8216
  store i8 %.sink.i139, ptr %i.jg, align 8, !tbaa !424
  br label %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141

_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141: ; preds = %.thread.i140, %.sink.split.i138
  %i.jh = getelementptr inbounds nuw i8, ptr %i.gu, i64 8218
  store i8 1, ptr %i.jh, align 2, !tbaa !712
  %i.ji = getelementptr inbounds nuw i8, ptr %i.gu, i64 8217
  store i8 1, ptr %i.ji, align 1, !tbaa !676
  br label %bb.be

bb.be:                                            ; preds = %_ZN5ImGui28SetNavCursorVisibleAfterMoveEv.exit141, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.bf

bb.bf:                                            ; preds = %bb.o, %bb.p, %bb.be
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
  store i8 1, ptr %i.e, align 1, !tbaa !927
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 212
  store i8 1, ptr %i.f, align 4, !tbaa !733
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 235
  store i8 1, ptr %i.g, align 1, !tbaa !921
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
  %i.r = load i8, ptr %i.q, align 1, !tbaa !927, !range !100, !noundef !236
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.ao, label %bb.s

bb.f:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.u = load i8, ptr %i.t, align 8, !tbaa !243, !range !100, !noundef !236
  %i.v = icmp eq i8 %i.u, 0
  br i1 %i.v, label %bb.ao, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.x = load i8, ptr %i.w, align 1, !tbaa !927, !range !100, !noundef !236
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
end_hunk_1
begin_hunk_2_@llvm.fabs.v2f32
!1168 = distinct !{!1168, !99}
!1169 = !{!271, !71, i64 256}
!1170 = !{!220, !71, i64 8968}
!1171 = !{!312, !74, i64 364}
!1172 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1173 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1174 = distinct !{!1174, !99}
!1175 = distinct !{!1175, !99}
!1176 = distinct !{!1176, !99}
!1177 = distinct !{!1177, !99}
!1178 = distinct !{!1178, !99}
!1179 = !{!343, !78, i64 584}
!1180 = !{!"_ZTS21ImGuiListClipperRange", !71, i64 0, !71, i64 4, !78, i64 8, !70, i64 9, !70, i64 10}
!1181 = !{!1180, !71, i64 0}
!1182 = !{!1180, !71, i64 4}
!1183 = !{!220, !74, i64 8416}
!1184 = !{!220, !74, i64 8424}
!1185 = !{!184, !131, i64 40}
!1186 = !{!184, !78, i64 48}
!1187 = !{!184, !74, i64 56}
!1188 = !{!184, !74, i64 64}
!1189 = !{i64 0, i64 4, !237, i64 4, i64 4, !237, i64 8, i64 1, !243, i64 9, i64 1, !82, i64 10, i64 1, !82}
!1190 = !{!1180, !78, i64 8}
!1191 = !{!1180, !70, i64 9}
!1192 = !{!1180, !70, i64 10}
!1193 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1194 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1195 = !{!220, !78, i64 174}
!1196 = !{!220, !78, i64 175}
!1197 = !{!220, !85, i64 10336}
!1198 = !{!220, !85, i64 10344}
!1199 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1200 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1201 = !{!116, !74, i64 8}
!1202 = !{!311, !303, i64 56}
!1203 = !{!121, !88, i64 24}
!1204 = !{!121, !74, i64 32}
!1205 = !{!121, !74, i64 36}
!1206 = !{!220, !74, i64 3448}
!1207 = distinct !{!1207, !454}
!1208 = distinct !{!1208, !454}
!1209 = distinct !{!1209, !99}
!1210 = !{!220, !85, i64 3112}
!1211 = !{!"_ZTS2tm", !71, i64 0, !71, i64 4, !71, i64 8, !71, i64 12, !71, i64 16, !71, i64 20, !71, i64 24, !71, i64 28, !71, i64 32, !252, i64 40, !86, i64 48}
!1212 = !{!1211, !71, i64 20}
!1213 = !{!1211, !71, i64 16}
!1214 = !{!1211, !71, i64 12}
!1215 = !{!220, !89, i64 4696}
!1216 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1217 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1218 = distinct !{!1218, !454}
!1219 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1220 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1221 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1222 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1223 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1224 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1225 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1226 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1227 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1228 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1229 = distinct !{!1229, !99}
!1230 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1231 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1232 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1233 = !{!220, !85, i64 200}
!1234 = !{!220, !85, i64 208}
!1235 = !{!158, !71, i64 4}
!1236 = !{!158, !71, i64 0}
!1237 = !{!181, !71, i64 4}
!1238 = !{!181, !71, i64 0}
!1239 = !{!183, !71, i64 4}
!1240 = !{!183, !71, i64 0}
!1241 = !{!170, !71, i64 4}
!1242 = !{!176, !71, i64 4}
!1243 = !{!176, !71, i64 0}
!1244 = !{!194, !71, i64 0}
!1245 = !{!194, !71, i64 4}
!1246 = !{!139, !138, i64 16}
!1247 = !{!220, !89, i64 264}
!1248 = !{!220, !89, i64 9416}
!1249 = !{!220, !71, i64 8996}
!1250 = !{!196, !195, i64 8}
!1251 = distinct !{!1251, !454}
!1252 = !{!604, !78, i64 8}
!1253 = !{!604, !78, i64 10}
!1254 = !{!604, !78, i64 11}
!1255 = !{!220, !78, i64 133}
!1256 = distinct !{!1256, !454}
!1257 = distinct !{!1257, !99}
!1258 = !{!"_ZTS11ImGuiLocKey", !70, i64 0}
!1259 = !{!"_ZTS13ImGuiLocEntry", !1258, i64 0, !86, i64 8}
!1260 = !{!1259, !86, i64 8}
!1261 = !{!1259, !1258, i64 0}
!1262 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1263 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1264 = distinct !{!1264, !454}
!1265 = distinct !{!1265, !454}
!1266 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1267 = distinct !{!1267, !99}
!1268 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1269 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1270 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1271 = distinct !{!1271, !99}
!1272 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1273 = distinct !{!1273, !99}
!1274 = !{!178, !71, i64 4}
!1275 = !{!178, !71, i64 0}
!1276 = !{!179, !71, i64 32}
!1277 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1278 = distinct !{!1278, !99}
!1279 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1280 = distinct !{!1280, !99}
!1281 = !{!171, !71, i64 4}
!1282 = !{!171, !71, i64 0}
!1283 = !{!172, !71, i64 32}
!1284 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1285 = !{!188, !71, i64 4}
!1286 = !{!188, !71, i64 0}
!1287 = !{!189, !71, i64 32}
!1288 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1289 = distinct !{!1289, !99}
!1290 = !{!186, !71, i64 0}
!1291 = !{!186, !71, i64 4}
!1292 = !{!634, !633, i64 8}
!1293 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1294 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1295 = !{!210, !71, i64 4}
!1296 = distinct !{!1296, !454}
!1297 = !{ptr @_Z8ImStrdupPKc}
!1298 = distinct !{null}
!1299 = distinct !{null}
!1300 = distinct !{!1300, !99}
!1301 = !{!297, !71, i64 4}
!1302 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1303 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1304 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1305 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1306 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1307 = !{!312, !71, i64 1068}
!1308 = !{!312, !71, i64 1072}
!1309 = !{!302, !71, i64 4}
!1310 = !{!302, !301, i64 8}
!1311 = !{!302, !71, i64 0}
!1312 = !{!132, !71, i64 0}
!1313 = !{!132, !71, i64 4}
!1314 = !{!132, !78, i64 8}
!1315 = !{!132, !78, i64 9}
!1316 = !{!220, !71, i64 9436}
!1317 = !{!220, !78, i64 5445}
!1318 = !{!220, !71, i64 4524}
!1319 = !{!220, !74, i64 4516}
!1320 = !{!220, !74, i64 4512}
!1321 = !{!220, !85, i64 10160}
!1322 = distinct !{!1322, !99}
!1323 = !{!220, !74, i64 3324}
!1324 = !{!220, !74, i64 3328}
!1325 = !{!220, !131, i64 5336}
!1326 = !{!94, !78, i64 2748}
!1327 = !{!94, !78, i64 184}
!1328 = !{!94, !78, i64 185}
!1329 = !{!94, !78, i64 186}
!1330 = distinct !{!1330, !99}
!1331 = !{!312, !91, i64 652}
!1332 = !{!312, !91, i64 654}
!1333 = distinct !{null, ptr @_ZN5ImGui23LoadIniSettingsFromDiskEPKc, ptr @_ZN5ImGui7MemFreeEPv}
!1334 = distinct !{null, null, ptr @_ZN5ImGui7MemFreeEPv}
!1335 = distinct !{!1335, !454}
!1336 = distinct !{!1336, !454}
!1337 = distinct !{!1337, !99}
!1338 = distinct !{!1338, !99}
!1339 = distinct !{!1339, !454}
!1340 = distinct !{null, null, ptr @_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_, null, ptr @_ZN5ImGui8MemAllocEm}
!1341 = distinct !{null, null, ptr @_ZN8ImVectorI19ImGuiKeyRoutingDataE9push_backERKS0_, null, ptr @_ZN5ImGui7MemFreeEPv}
!1342 = distinct !{!1342, !99}
!1343 = distinct !{!1343, !99}
!1344 = distinct !{!1344, !99}
!1345 = distinct !{!1345, !99}
!1346 = distinct !{!1346, !99}
!1347 = distinct !{!1347, !99}
!1348 = distinct !{!1348, !99}
!1349 = distinct !{!1349, !99}
!1350 = distinct !{!1350, !99}
!1351 = distinct !{!1351, !99}
!1352 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1353 = distinct !{null, ptr @_ZN8ImVectorIcE7reserveEi, ptr @_ZN5ImGui8MemAllocEm}
!1354 = distinct !{null, ptr @_ZN8ImVectorIcE7reserveEi, ptr @_ZN5ImGui7MemFreeEPv}
!1355 = distinct !{!1355, !454}
!1356 = !{!220, !71, i64 10136}
!1357 = !{!220, !78, i64 115}
!1358 = !{!220, !78, i64 228}
!1359 = !{!220, !71, i64 10896}
!1360 = !{!220, !74, i64 10904}
!1361 = !{!220, !71, i64 10900}
!1362 = !{!220, !74, i64 232}
!1363 = !{!220, !78, i64 121}
!1364 = !{!220, !74, i64 3524}
!1365 = !{!220, !74, i64 4632}
!1366 = !{!220, !74, i64 3528}
!1367 = !{!220, !78, i64 3520}
!1368 = !{!220, !78, i64 3521}
!1369 = !{!432, !74, i64 12}
!1370 = !{!467, !71, i64 0}
!1371 = !{!220, !71, i64 4644}
!1372 = !{!220, !78, i64 3522}
!1373 = !{!220, !74, i64 4640}
!1374 = !{!220, !74, i64 4532}
!1375 = !{!421, !74, i64 28}
!1376 = !{!220, !78, i64 177}
!1377 = !{!220, !74, i64 5420}
!1378 = !{!220, !78, i64 5441}
!1379 = !{!220, !78, i64 5512}
!1380 = !{!220, !78, i64 5442}
!1381 = !{!220, !78, i64 5513}
!1382 = !{!220, !71, i64 9704}
!1383 = !{!220, !71, i64 9700}
!1384 = !{!220, !71, i64 9572}
!1385 = !{!220, !71, i64 9568}
!1386 = !{!220, !74, i64 4508}
!1387 = !{!220, !74, i64 9388}
!1388 = !{!94, !71, i64 264}
!1389 = !{!94, !74, i64 24}
!1390 = !{!137, !71, i64 328}
!1391 = !{!94, !78, i64 187}
!1392 = !{!220, !70, i64 8320}
!1393 = !{!220, !103, i64 8744}
!1394 = !{!94, !78, i64 190}
!1395 = !{!220, !78, i64 113}
!1396 = !{!220, !78, i64 116}
!1397 = !{!220, !78, i64 117}
!1398 = !{!220, !78, i64 302}
!1399 = !{!94, !78, i64 2930}
!1400 = !{!94, !74, i64 108}
!1401 = !{!94, !74, i64 112}
!1402 = !{!312, !91, i64 220}
!1403 = !{i64 0, i64 1, !243, i64 1, i64 1, !243, i64 4, i64 4, !75, i64 8, i64 4, !75, i64 12, i64 4, !75, i64 16, i64 4, !237}
!1404 = !{!220, !78, i64 10009}
!1405 = !{!220, !78, i64 10008}
!1406 = !{!220, !74, i64 292}
!1407 = !{!220, !74, i64 288}
!1408 = !{!220, !78, i64 112}
!1409 = !{!220, !78, i64 2970}
!1410 = !{!220, !71, i64 9056}
!1411 = !{!847, !71, i64 4}
!1412 = !{!847, !71, i64 0}
!1413 = !{!"_ZTS18ImGuiTableTempData", !71, i64 0, !71, i64 4, !74, i64 8, !74, i64 12, !850, i64 16, !847, i64 32, !85, i64 48, !330, i64 56, !76, i64 72, !307, i64 80, !140, i64 104, !140, i64 120, !76, i64 136, !76, i64 144, !76, i64 152, !291, i64 160, !74, i64 164, !71, i64 168}
!1414 = !{!1413, !74, i64 8}
!1415 = !{!220, !71, i64 10588}
!1416 = !{!859, !70, i64 4}
!1417 = distinct !{!1417, !99}
!1418 = distinct !{!1418, !99}
!1419 = distinct !{!1419, !99}
!1420 = !{!94, !78, i64 2996}
!1421 = !{!220, !122, i64 5184}
!1422 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1423 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1424 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1425 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1426 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1427 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1428 = distinct !{!1428, !454}
!1429 = distinct !{!1429, !99}
!1430 = distinct !{null}
!1431 = distinct !{!1431, !99}
!1432 = distinct !{ptr @_ZN5ImGui5PopIDEv, null}
!1433 = distinct !{!1433, !99}
!1434 = !{!312, !78, i64 214}
!1435 = !{!312, !74, i64 700}
!1436 = !{!220, !74, i64 7976}
!1437 = !{!220, !74, i64 7980}
!1438 = !{!312, !78, i64 215}
!1439 = !{!312, !70, i64 237}
!1440 = !{!79, !74, i64 64}
!1441 = !{!79, !74, i64 24}
!1442 = !{!79, !74, i64 92}
!1443 = !{!220, !74, i64 8036}
!1444 = !{!312, !74, i64 380}
!1445 = !{!220, !74, i64 8040}
!1446 = !{!312, !74, i64 384}
!1447 = !{!312, !74, i64 244}
!1448 = !{!220, !78, i64 129}
!1449 = !{!312, !70, i64 216}
!1450 = !{!312, !70, i64 217}
!1451 = !{!312, !70, i64 203}
!1452 = !{!312, !78, i64 202}
!1453 = !{!79, !74, i64 88}
!1454 = !{!"_ZTS20ImGuiResizeBorderDef", !76, i64 0, !76, i64 8, !76, i64 16, !74, i64 24}
!1455 = !{!1454, !74, i64 24}
!1456 = !{!312, !74, i64 64}
!1457 = !{!312, !74, i64 552}
!1458 = !{!312, !74, i64 556}
!1459 = !{!312, !74, i64 584}
!1460 = !{!312, !74, i64 588}
!1461 = !{!312, !74, i64 596}
!1462 = !{!312, !74, i64 632}
!1463 = !{!312, !74, i64 636}
!1464 = !{!312, !74, i64 640}
!1465 = !{!312, !74, i64 644}
!1466 = !{!312, !71, i64 424}
!1467 = !{!312, !71, i64 420}
!1468 = !{!312, !71, i64 472}
!1469 = !{!220, !78, i64 131}
!1470 = !{!79, !74, i64 76}
!1471 = !{!79, !74, i64 80}
!1472 = !{!79, !74, i64 48}
!1473 = !{!220, !78, i64 130}
!1474 = !{!312, !71, i64 480}
!1475 = !{!312, !74, i64 536}
!1476 = !{!312, !74, i64 544}
!1477 = !{!312, !74, i64 540}
!1478 = !{!312, !74, i64 548}
!1479 = !{!312, !70, i64 238}
!1480 = !{!220, !78, i64 179}
!1481 = distinct !{!1481, !99}
!1482 = distinct !{null, ptr @_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_, null, ptr @_ZN5ImGui8MemAllocEm}
!1483 = distinct !{null, ptr @_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_, null, ptr @_ZN5ImGui7MemFreeEPv}
!1484 = distinct !{!1484, !454}
!1485 = !{!202, !78, i64 0}
!1486 = !{!202, !78, i64 1}
!1487 = !{!220, !71, i64 248}
!1488 = distinct !{!1488, !99}
!1489 = !{!220, !78, i64 178}
!1490 = distinct !{!1490, !99}
!1491 = !{!312, !124, i64 440}
!1492 = !{!697, !78, i64 0}
!1493 = !{!697, !71, i64 4}
!1494 = !{!697, !71, i64 8}
!1495 = !{!697, !71, i64 12}
!1496 = !{!697, !695, i64 56}
!1497 = !{!697, !696, i64 64}
!1498 = !{!697, !71, i64 72}
!1499 = !{!220, !78, i64 141}
!1500 = !{!220, !71, i64 240}
!1501 = !{!220, !71, i64 236}
!1502 = !{!697, !71, i64 16}
!1503 = !{!220, !74, i64 3272}
!1504 = !{!312, !71, i64 484}
!1505 = !{!312, !74, i64 324}
!1506 = !{!312, !74, i64 616}
!1507 = !{!312, !74, i64 624}
!1508 = distinct !{!1508, !99}
!1509 = !{!312, !74, i64 196}
!1510 = !{!"_ZTS21ImGuiSizeCallbackData", !85, i64 0, !76, i64 8, !76, i64 16, !76, i64 24}
!1511 = !{!1510, !85, i64 0}
!1512 = distinct !{!1512, !99}
!1513 = distinct !{!1513, !99}
!1514 = distinct !{!1514, !99}
!1515 = distinct !{!1515, !99}
!1516 = distinct !{!1516, !99}
!1517 = distinct !{!1517, !99}
!1518 = distinct !{!1518, !99}
!1519 = distinct !{!1519, !99}
!1520 = distinct !{!1520, !99}
!1521 = distinct !{!1521, !99}
!1522 = distinct !{!1522, !99}
!1523 = distinct !{!1523, !99}
!1524 = !{!1015, !131, i64 0}
!1525 = !{!"_ZTS18ImGuiMultiSelectIO", !634, i64 0, !138, i64 16, !138, i64 24, !78, i64 32, !78, i64 33, !71, i64 36}
!1526 = !{!"_ZTS24ImGuiMultiSelectTempData", !1525, i64 0, !187, i64 40, !71, i64 48, !71, i64 52, !76, i64 56, !76, i64 64, !71, i64 72, !71, i64 76, !70, i64 80, !78, i64 81, !78, i64 82, !78, i64 83, !78, i64 84, !78, i64 85, !78, i64 86, !78, i64 87}
!1527 = !{!1526, !187, i64 40}
!1528 = !{!"_ZTS21ImGuiMultiSelectState", !131, i64 0, !71, i64 8, !71, i64 12, !71, i64 16, !70, i64 20, !70, i64 21, !138, i64 24, !138, i64 32}
!1529 = !{!1528, !131, i64 0}
!1530 = !{!220, !74, i64 3212}
!1531 = !{!220, !74, i64 3216}
!1532 = !{!220, !74, i64 3056}
!1533 = !{!421, !74, i64 72}
!1534 = !{!421, !74, i64 20}
!1535 = !{!220, !74, i64 4624}
!1536 = !{!343, !71, i64 116}
!1537 = !{!1023, !78, i64 112}
!1538 = !{!220, !74, i64 4576}
!1539 = !{!220, !74, i64 4628}
!1540 = distinct !{!1540, !99}
!1541 = distinct !{!1541, !99}
!1542 = !{!220, !149, i64 8112}
!1543 = distinct !{!1543, !99}
!1544 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1545 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1546 = !{!113, !71, i64 4}
!1547 = distinct !{null, ptr @_ZN5ImGui8MemAllocEm}
!1548 = distinct !{null, ptr @_ZN5ImGui7MemFreeEPv}
!1549 = distinct !{!1549, !99}
!1550 = distinct !{!1550, !99}
!1551 = !{!220, !78, i64 226}
!1552 = !{!220, !149, i64 8272}
!1553 = !{!220, !74, i64 148}
!1554 = distinct !{!1554, !99}
!1555 = !{!312, !71, i64 504}
!1556 = !{!1032, !71, i64 0}
!1557 = !{!220, !74, i64 7860}
!1558 = !{!220, !74, i64 7868}
!1559 = !{!706, !71, i64 28}
!1560 = !{!706, !71, i64 32}
!1561 = distinct !{!1561, !99}
!1562 = distinct !{!1562, !99}
!1563 = !{!77, !77, i64 0}
!1564 = distinct !{!1564, !99}
!1565 = !{!"_ZTS22ImGuiTreeNodeStackData", !71, i64 0, !71, i64 4, !71, i64 8, !140, i64 12, !74, i64 28, !74, i64 32, !91, i64 36}
!1566 = !{!1565, !71, i64 0}
!1567 = !{!1565, !71, i64 8}
!1568 = !{!220, !71, i64 8520}
!1569 = !{!220, !131, i64 8568}
!1570 = !{!220, !74, i64 8604}
!1571 = !{!220, !74, i64 8608}
end_hunk_2
