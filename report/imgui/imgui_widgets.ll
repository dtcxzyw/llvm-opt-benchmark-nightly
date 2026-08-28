Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui11BeginMenuExEPKcS1_b:bb.a
  %i.gs = tail call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00)
  br i1 %i.gs, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  tail call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 656, i32 noundef -1, i32 noundef 0)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %i.gt = getelementptr inbounds nuw i8, ptr %i.a, i64 5404
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !727
  %i.gv = icmp eq i32 %i.gu, %i.h
  %or.cond = and i1 %2, %i.gv
  br i1 %or.cond, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !212, !range !165, !noundef !166
  %i.gy = trunc nuw i8 %i.gx to i1
  %i.gz = xor i1 %i.gy, true
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ha = phi i1 [ %i.gz, %bb.ah ], [ false, %bb.ag ] ; 3 uses
  %i.hb = load i32, ptr %i.cd, align 4, !tbaa !323
  %i.hc = icmp eq i32 %i.hb, 1
  br i1 %i.hc, label %bb.aj, label %bb.bc

bb.aj:                                            ; preds = %bb.ai
  %i.hd = getelementptr inbounds nuw i8, ptr %i.a, i64 8168
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !792 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !791
  %i.hh = icmp slt i32 %i.he, %i.hg
  br i1 %i.hh, label %bb.ak, label %.thread275

bb.ak:                                            ; preds = %bb.aj
  %i.hi = getelementptr inbounds nuw i8, ptr %i.a, i64 8160
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !793 ; 2 uses
  %.not224 = icmp eq ptr %i.hj, null
  br i1 %.not224, label %.thread275, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hk = sext i32 %i.he to i64
  %i.hl = getelementptr inbounds [56 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !796 ; 6 uses
  %.not225 = icmp eq ptr %i.hn, null
  br i1 %.not225, label %.thread275, label %bb.am

.thread275:                                       ; preds = %bb.ak, %bb.al, %bb.aj
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 5320
  br label %bb.ar

bb.am:                                            ; preds = %bb.al
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hn, i64 944
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !774
  %i.hr = icmp eq ptr %i.hq, %i.c
  %i.hs = getelementptr inbounds nuw i8, ptr %i.a, i64 5320 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !193
  %i.hu = icmp eq ptr %i.ht, %i.c
  %or.cond3 = and i1 %i.hr, %i.hu
  br i1 %or.cond3, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %bb.am
  %i.hv = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.hw = load float, ptr %i.hv, align 8, !tbaa !189 ; 6 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hy = load float, ptr %i.hx, align 8, !tbaa !236
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 40
  %i.ia = load float, ptr %i.hz, align 8, !tbaa !236 ; 3 uses
  %i.ib = fcmp olt float %i.hy, %i.ia             ; 2 uses
  %i.ic = select i1 %i.ib, float 1.000000e+00, float -1.000000e+00 ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.hn, i64 44
  %i.ie = load float, ptr %i.id, align 4, !tbaa !237 ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hn, i64 48
  %i.ig = load float, ptr %i.if, align 8, !tbaa !238
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 52
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !239
  %i.ij = fadd float %i.ie, %i.ii                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.ik = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.im = load <2 x float>, ptr %i.ik, align 8, !tbaa !171
  %i.in = load <2 x float>, ptr %i.il, align 4, !tbaa !171
  %i.io = fsub <2 x float> %i.im, %i.in           ; 4 uses
  store <2 x float> %i.io, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  br i1 %i.ib, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ip = insertelement <4 x float> poison, float %i.ia, i64 0 ; 2 uses
  %.sroa.0.0.vec.expand = insertelement <4 x float> %i.ip, float %i.ie, i64 1
  %.sroa.0.0.vec.extract241 = shufflevector <4 x float> %.sroa.0.0.vec.expand, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %.sroa.0.0.vec.insert.i235 = shufflevector <4 x float> %i.ip, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %.sroa.0.4.vec.insert.i236 = insertelement <2 x float> %.sroa.0.0.vec.insert.i235, float %i.ij, i64 1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.iq = fadd float %i.ia, %i.ig
  %.sroa.3.8.vec.insert.i = insertelement <2 x float> poison, float %i.iq, i64 0 ; 2 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %i.ij, i64 1
  %.sroa.0.4.vec.insert.i234 = insertelement <2 x float> %.sroa.3.8.vec.insert.i, float %i.ie, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %.sroa.0.4.vec.insert.i234.sink = phi <2 x float> [ %.sroa.0.0.vec.extract241, %bb.ao ], [ %.sroa.0.4.vec.insert.i234, %bb.ap ] ; 3 uses
  %storemerge226 = phi <2 x float> [ %.sroa.0.4.vec.insert.i236, %bb.ao ], [ %.sroa.3.12.vec.insert.i, %bb.ap ] ; 2 uses
  %i.ir = extractelement <2 x float> %.sroa.0.4.vec.insert.i234.sink, i64 0
  %i.is = extractelement <2 x float> %i.io, i64 0
  %foldExtExtBinop = fsub <2 x float> %i.io, %.sroa.0.4.vec.insert.i234.sink
  %i.it = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.iu = tail call float @llvm.fabs.f32(float %i.it)
  %i.iv = fmul float %i.iu, 3.000000e-01          ; 3 uses
  %i.iw = fmul float %i.hw, 5.000000e-01          ; 2 uses
  %i.ix = fmul float %i.hw, 2.500000e+00          ; 2 uses
  %i.iy = fcmp olt float %i.iv, %i.iw
  %i.iz = fcmp ogt float %i.iv, %i.ix
  %i.ja = select i1 %i.iz, float %i.ix, float %i.iv
  %i.jb = select i1 %i.iy, float %i.iw, float %i.ja ; 2 uses
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.ic, float -5.000000e-01, float %i.is)
  store float %i.jc, ptr %6, align 8, !tbaa !176
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.hw, float %i.ir)
  store float %i.jd, ptr %7, align 4, !tbaa !176
  %i.je = extractelement <2 x float> %storemerge226, i64 0
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.ic, float %i.hw, float %i.je)
  store float %i.jf, ptr %8, align 4, !tbaa !176
  %i.jg = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.jh = extractelement <2 x float> %.sroa.0.4.vec.insert.i234.sink, i64 1
  %i.ji = fsub float %i.jh, %i.jb
  %i.jj = extractelement <2 x float> %i.io, i64 1 ; 4 uses
  %i.jk = fsub float %i.ji, %i.jj                 ; 2 uses
  %i.jl = fmul float %i.hw, -8.000000e+00         ; 2 uses
  %i.jm = fcmp oge float %i.jk, %i.jl
  %i.jn = select i1 %i.jm, float %i.jk, float %i.jl
  %i.jo = fadd float %i.jj, %i.jn
  store float %i.jo, ptr %i.jg, align 4, !tbaa !181
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.jq = extractelement <2 x float> %storemerge226, i64 1
  %i.jr = fadd float %i.jb, %i.jq
  %i.js = fsub float %i.jr, %i.jj                 ; 2 uses
  %i.jt = fmul float %i.hw, 8.000000e+00          ; 2 uses
  %i.ju = fcmp olt float %i.js, %i.jt
  %i.jv = select i1 %i.ju, float %i.js, float %i.jt
  %i.jw = fadd float %i.jj, %i.jv
  store float %i.jw, ptr %i.jp, align 4, !tbaa !181
  %i.jx = call noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.ik)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.ar

bb.ar:                                            ; preds = %.thread275, %bb.aq, %bb.am
  %i.jy = phi ptr [ %i.hs, %bb.aq ], [ %i.hs, %bb.am ], [ %i.ho, %.thread275 ]
  %.0200 = phi i1 [ %i.jx, %bb.aq ], [ false, %bb.am ], [ false, %.thread275 ] ; 2 uses
  %.not = xor i1 %i.i, true                       ; 2 uses
  %or.cond5 = select i1 %.not, i1 true, i1 %i.ha
  br i1 %or.cond5, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !193
  %i.ka = icmp ne ptr %i.jz, %i.c
  %or.cond7 = or i1 %.0200, %i.ka
  br i1 %or.cond7, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.kb = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !212, !range !165, !noundef !166
  %i.kd = trunc nuw i8 %i.kc to i1
  br i1 %i.kd, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ke = load i32, ptr %i.gk, align 4, !tbaa !205
  %i.kf = icmp eq i32 %i.ke, 0
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar
  %.0201 = phi i1 [ false, %bb.ar ], [ false, %bb.as ], [ false, %bb.at ], [ %i.kf, %bb.au ] ; 3 uses
  %or.cond10 = and i1 %.0208.in, %.not
  br i1 %or.cond10, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not284 = xor i1 %i.ha, true
  %or.cond13.not = select i1 %i.i, i1 true, i1 %.not284 ; 2 uses
  %or.cond15 = or i1 %or.cond13.not, %.0200
  %or.cond15.not = xor i1 %or.cond15, true        ; 2 uses
  %brmerge = or i1 %or.cond13.not, %or.cond15.not
  br i1 %brmerge, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kg = getelementptr inbounds nuw i8, ptr %i.a, i64 5416
  %i.kh = load float, ptr %i.kg, align 8, !tbaa !197
  %i.ki = fcmp ult float %i.kh, 3.000000e-01
  br i1 %i.ki, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.kj = getelementptr inbounds nuw i8, ptr %i.a, i64 9404
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !800
  %11 = fcmp ult float %i.kk, 3.000000e-01
  br i1 %11, label %bb.az, label %12

12:                                               ; preds = %bb.ay
  br label %bb.az

bb.az:                                            ; preds = %bb.aw, %bb.av, %12, %bb.ay, %bb.ax
  %.0205 = phi i1 [ true, %bb.av ], [ true, %12 ], [ false, %bb.ay ], [ false, %bb.ax ], [ %or.cond15.not, %bb.aw ] ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !211
  %i.kn = icmp eq i32 %i.km, %i.h
  br i1 %i.kn, label %bb.ba, label %bb.bi

bb.ba:                                            ; preds = %bb.az
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 8400
  %i.kp = load i32, ptr %i.ko, align 8, !tbaa !629
  %i.kq = icmp eq i32 %i.kp, 1
  br i1 %i.kq, label %bb.bb, label %bb.bi

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN5ImGui20NavMoveRequestCancelEv()
  call void @_ZN5ImGui28SetNavCursorVisibleAfterMoveEv()
  br label %bb.bi

bb.bc:                                            ; preds = %bb.ai
  %or.cond20 = and i1 %i.i, %.0208.in
  %or.cond22 = and i1 %.1.i273, %or.cond20
  br i1 %or.cond22, label %.thread, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  br i1 %.0208.in, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %or.cond24 = and i1 %.1.i273, %i.ha
  %or.cond24.not = xor i1 %or.cond24, true
  %or.cond26 = or i1 %i.i, %or.cond24.not
  br i1 %or.cond26, label %bb.bf, label %bb.bi

bb.bf:                                            ; preds = %bb.be
  %i.kr = getelementptr inbounds nuw i8, ptr %i.a, i64 8220
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !211
  %i.kt = icmp eq i32 %i.ks, %i.h
  br i1 %i.kt, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.ku = getelementptr inbounds nuw i8, ptr %i.a, i64 8400
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !629
  %i.kw = icmp eq i32 %i.kv, 3
  br i1 %i.kw, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  tail call void @_ZN5ImGui20NavMoveRequestCancelEv()
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bd, %bb.be, %bb.az, %bb.ba, %bb.bb, %bb.bf, %bb.bg, %bb.bh
  %.1211.shrunk = phi i1 [ %i.i, %bb.bf ], [ %i.i, %bb.az ], [ %i.i, %bb.bd ], [ %i.i, %bb.bh ], [ %i.i, %bb.bg ], [ %i.i, %bb.bb ], [ %i.i, %bb.ba ], [ false, %bb.be ] ; 2 uses
  %.2207 = phi i1 [ false, %bb.bf ], [ %.0205, %bb.az ], [ true, %bb.bd ], [ true, %bb.bh ], [ false, %bb.bg ], [ true, %bb.bb ], [ %.0205, %bb.ba ], [ true, %bb.be ] ; 2 uses
  %.1204 = phi i1 [ false, %bb.bf ], [ false, %bb.az ], [ false, %bb.bd ], [ false, %bb.bh ], [ false, %bb.bg ], [ true, %bb.bb ], [ false, %bb.ba ], [ false, %bb.be ] ; 2 uses
  %.1202 = phi i1 [ false, %bb.bf ], [ %.0201, %bb.az ], [ false, %bb.bd ], [ false, %bb.bh ], [ false, %bb.bg ], [ %.0201, %bb.bb ], [ %.0201, %bb.ba ], [ false, %bb.be ]
  %not. = xor i1 %2, true
  %spec.select230 = select i1 %not., i1 true, i1 %.1202
  br i1 %spec.select230, label %.thread, label %bb.bk

.thread:                                          ; preds = %bb.bc, %bb.bi
  %.1204319.a = phi i1 [ %.1204, %bb.bi ], [ false, %bb.bc ] ; 2 uses
  %.2207317.a = phi i1 [ %.2207, %bb.bi ], [ false, %bb.bc ] ; 2 uses
  %.1211.shrunk315.a = phi i1 [ %.1211.shrunk, %bb.bi ], [ false, %bb.bc ] ; 2 uses
  %i.kx = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.h, i32 noundef 0)
  br i1 %i.kx, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.thread
  %i.ky = getelementptr inbounds nuw i8, ptr %i.a, i64 8168
  %i.kz = load i32, ptr %i.ky, align 8, !tbaa !792
  call void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %i.kz, i1 noundef zeroext true)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread, %bb.bi
  %.1204318 = phi i1 [ %.1204319.a, %bb.bj ], [ %.1204319.a, %.thread ], [ %.1204, %bb.bi ]
  %.2207316 = phi i1 [ %.2207317.a, %bb.bj ], [ %.2207317.a, %.thread ], [ %.2207, %bb.bi ] ; 3 uses
  %.1211.shrunk314 = phi i1 [ %.1211.shrunk315.a, %bb.bj ], [ %.1211.shrunk315.a, %.thread ], [ %.1211.shrunk, %bb.bi ] ; 2 uses
  call void @_ZN5ImGui5PopIDEv()
  %i.la = load i32, ptr %i.gk, align 4, !tbaa !205
  %i.lb = icmp eq i32 %i.la, %i.h
  %or.cond28 = and i1 %.2207316, %i.lb
  br i1 %or.cond28, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.lc = getelementptr inbounds nuw i8, ptr %i.a, i64 5444
  store i8 1, ptr %i.lc, align 4, !tbaa !801
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.not29 = xor i1 %.2207316, true
  %or.cond31 = or i1 %.1211.shrunk314, %.not29
  br i1 %or.cond31, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ld = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !791
  %i.lf = getelementptr inbounds nuw i8, ptr %i.a, i64 8168
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !792
  %i.lh = icmp sgt i32 %i.le, %i.lg
  br i1 %i.lh, label %.thread281, label %bb.bo

.thread281:                                       ; preds = %bb.bn
  %i.li = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef 0) ; 0 uses
  br label %bb.bx

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  br i1 %.2207316, label %.thread279, label %bb.bp

.thread279:                                       ; preds = %bb.bo
  %i.lj = call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef %0, i32 noundef 32) ; 0 uses
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  br i1 %.1211.shrunk314, label %bb.bq, label %bb.bx

bb.bq:                                            ; preds = %.thread279, %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 7848 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(80) %9, ptr noundef nonnull align 8 dereferenceable(80) %i.lk, i64 80, i1 false), !tbaa.struct !658
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !171
  call void @_ZN5ImGui16SetNextWindowPosERK6ImVec2iS2_(ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull align 4 dereferenceable(8) %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  %i.ll = getelementptr inbounds nuw i8, ptr %i.a, i64 3276
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !802
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef %i.lm)
  %i.ln = call noundef zeroext i1 @_ZN5ImGui16BeginPopupMenuExEjPKci(i32 noundef %i.h, ptr noundef %0, i32 noundef %spec.select) ; 2 uses
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  br i1 %i.ln, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  br i1 %.1204318, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %bb.br
  %i.lo = getelementptr inbounds nuw i8, ptr %i.a, i64 8322
  %i.lp = load i8, ptr %i.lo, align 2, !tbaa !803, !range !165, !noundef !166
  %i.lq = trunc nuw i8 %i.lp to i1
  br i1 %i.lq, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.lr = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %i.lr, i32 noundef 2)
  %i.ls = load ptr, ptr %i.b, align 8, !tbaa !11
  call void @_ZN5ImGui13NavInitWindowEP11ImGuiWindowb(ptr noundef %i.ls, i1 noundef zeroext false)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %bb.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.lk, ptr noundef nonnull align 4 dereferenceable(80) %9, i64 80, i1 false), !tbaa.struct !658
  %i.lt = getelementptr inbounds nuw i8, ptr %i.a, i64 5320
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !193
  %i.lv = icmp eq ptr %i.lu, %i.c
  br i1 %i.lv, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.lw = getelementptr inbounds nuw i8, ptr %i.a, i64 7856 ; 2 uses
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !276
  %i.ly = or i32 %i.lx, 128
  store i32 %i.ly, ptr %i.lw, align 8, !tbaa !276
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bu, %bb.bv, %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.by

bb.bx:                                            ; preds = %.thread281, %bb.bp
  %i.lz = getelementptr inbounds nuw i8, ptr %i.a, i64 7928
  store i32 0, ptr %i.lz, align 8, !tbaa !348
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.3 = phi i1 [ %i.ln, %bb.bw ], [ false, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.g, %bb.f, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ %.3, %bb.by ], [ %i.w, %bb.f ], [ false, %bb.g ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5ImGui16BeginPopupMenuExEjPKci(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN5ImGui13NavInitWindowEP11ImGuiWindowb(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9BeginMenuEPKcb(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui11BeginMenuExEPKcS1_b(ptr noundef %0, ptr noundef null, i1 noundef zeroext %1)
  ret i1 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui7EndMenuEv() local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11   ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241
  %i.f = and i32 %i.e, 335544320
end_hunk_0
