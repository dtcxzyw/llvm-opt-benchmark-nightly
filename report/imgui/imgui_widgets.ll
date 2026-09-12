Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemiff:bb.a
  %i.ap = fdiv float %.095, %i.ao                 ; 2 uses
  %i.aq = fcmp olt float %i.ap, %i.am
  %i.ar = select i1 %i.aq, float %i.ap, float %i.am ; 6 uses
  %i.as = icmp sgt i32 %.17288, 0
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit85

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %.17288 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.at = icmp eq i32 %.17288, 1
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv113 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next114.1, %.lr.ph ] ; 3 uses
  %.193 = phi float [ %.095, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv113
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !322 ; 2 uses
  %i.ax = fsub float %i.aw, %3                    ; 2 uses
  %i.ay = fcmp olt float %i.ar, %i.ax
  %i.az = select i1 %i.ay, float %i.ar, float %i.ax ; 2 uses
  %i.ba = fsub float %i.aw, %i.az
  store float %i.ba, ptr %i.av, align 4, !tbaa !322
  %i.bb = fsub float %.193, %i.az
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv113
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !322 ; 2 uses
  %i.bf = fsub float %i.be, %3                    ; 2 uses
  %i.bg = fcmp olt float %i.ar, %i.bf
  %i.bh = select i1 %i.bg, float %i.ar, float %i.bf ; 2 uses
  %i.bi = fsub float %i.be, %i.bh
  store float %i.bi, ptr %i.bd, align 4, !tbaa !322
  %i.bj = fsub float %i.bb, %i.bh                 ; 3 uses
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit85.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !654

.thread:                                          ; preds = %.loopexit85, %bb.g, %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.bk = icmp sgt i32 %1, 0
  br i1 %i.bk, label %.lr.ph99.preheader, label %.loopexit84

.lr.ph99.preheader:                               ; preds = %.thread
  %wide.trip.count119 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count119, 1
  %i.bl = icmp eq i32 %1, 1
  br i1 %i.bl, label %.lr.ph99.epil.preheader, label %.lr.ph99.preheader.new

.lr.ph99.preheader.new:                           ; preds = %.lr.ph99.preheader
  %unroll_iter153 = and i64 %wide.trip.count119, 2147483646
  br label %.lr.ph99

.preheader83.unr-lcssa:                           ; preds = %.lr.ph99
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.preheader83, label %.lr.ph99.epil.preheader

.lr.ph99.epil.preheader:                          ; preds = %.preheader83.unr-lcssa, %.lr.ph99.preheader
  %indvars.iv116.epil.init = phi i64 [ 0, %.lr.ph99.preheader ], [ %indvars.iv.next117.1, %.preheader83.unr-lcssa ]
  %.398.epil.init = phi float [ 0.000000e+00, %.lr.ph99.preheader ], [ %i.cv, %.preheader83.unr-lcssa ]
  %lcmp.mod152 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv116.epil.init
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !322 ; 2 uses
  %i.bp = fptosi float %i.bo to i32
  %i.bq = sitofp i32 %i.bp to float               ; 2 uses
  %i.br = fsub float %i.bo, %i.bq
  %i.bs = fadd float %.398.epil.init, %i.br
  store float %i.bq, ptr %i.bn, align 4, !tbaa !322
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.unr-lcssa, %.lr.ph99.epil.preheader
  %.lcssa = phi float [ %i.cv, %.preheader83.unr-lcssa ], [ %i.bs, %.lr.ph99.epil.preheader ] ; 2 uses
  %i.bt = fcmp ogt float %.lcssa, 0.000000e+00
  br i1 %i.bt, label %.preheader.us.preheader, label %.loopexit84

.preheader.us.preheader:                          ; preds = %.preheader83
  %i.bu = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.mux, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.5102.us = phi float [ %i.ce, %.preheader.us ], [ %.lcssa, %.preheader.us.preheader ]
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv121 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !323
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !322 ; 2 uses
  %i.ca = fsub float %i.bx, %i.bz                 ; 2 uses
  %i.cb = fcmp olt float %i.ca, 1.000000e+00
  %i.cc = select i1 %i.cb, float %i.ca, float 1.000000e+00 ; 2 uses
  %i.cd = fadd float %i.bz, %i.cc
  store float %i.cd, ptr %i.by, align 4, !tbaa !322
  %i.ce = fsub float %.5102.us, %i.cc             ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next122, %i.bu
  %i.cg = fcmp ogt float %i.ce, 0.000000e+00      ; 2 uses
  %i.ch = and i1 %i.cf, %i.cg
  %indvars.iv.next122.mux = select i1 %i.ch, i64 %indvars.iv.next122, i64 0
  br i1 %i.cg, label %.preheader.us, label %.loopexit84, !llvm.loop !655

.lr.ph99:                                         ; preds = %.lr.ph99, %.lr.ph99.preheader.new
  %indvars.iv116 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %indvars.iv.next117.1, %.lr.ph99 ] ; 3 uses
  %.398 = phi float [ 0.000000e+00, %.lr.ph99.preheader.new ], [ %i.cv, %.lr.ph99 ]
  %niter154 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %niter154.next.1, %.lr.ph99 ]
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !322 ; 2 uses
  %i.cl = fptosi float %i.ck to i32
  %i.cm = sitofp i32 %i.cl to float               ; 2 uses
  %i.cn = fsub float %i.ck, %i.cm
  %i.co = fadd float %.398, %i.cn
  store float %i.cm, ptr %i.cj, align 4, !tbaa !322
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv116
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !322 ; 2 uses
  %i.cs = fptosi float %i.cr to i32
  %i.ct = sitofp i32 %i.cs to float               ; 2 uses
  %i.cu = fsub float %i.cr, %i.ct
  %i.cv = fadd float %i.co, %i.cu                 ; 3 uses
  store float %i.ct, ptr %i.cq, align 4, !tbaa !322
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %niter154.next.1 = add i64 %niter154, 2         ; 2 uses
  %niter154.ncmp.1 = icmp eq i64 %niter154.next.1, %unroll_iter153
  br i1 %niter154.ncmp.1, label %.preheader83.unr-lcssa, label %.lr.ph99, !llvm.loop !656

.loopexit84:                                      ; preds = %.preheader.us, %bb.a, %.thread, %.preheader83, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL23ShrinkWidthItemComparerPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !322
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !322
  %i.e = fsub float %i.b, %i.d
  %i.f = fptosi float %i.e to i32                 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !324
  %i.h = load i32, ptr %0, align 4, !tbaa !324
  %i.i = sub nsw i32 %i.g, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.i, %bb.b ], [ %i.f, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 8             ; 16 uses
  %5 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 7928 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !325
  store i32 0, ptr %i.g, align 8, !tbaa !326
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.j = load i8, ptr %i.i, align 1, !tbaa !183, !range !184, !noundef !185
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.m = and i32 %2, 128
  %i.n = and i32 %2, 32
  %.not89 = icmp eq i32 %i.n, 0                   ; 3 uses
  br i1 %.not89, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.c ], [ 0.000000e+00, %bb.b ] ; 5 uses
  %i.q = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.r = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %i.s = icmp ne i32 %i.m, 0                      ; 2 uses
  %i.t = icmp ne ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.021.0.vec.extract = extractelement <2 x float> %i.u, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi float [ %.sroa.021.0.vec.extract, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.w = and i32 %2, 64
  %.not90 = icmp eq i32 %i.w, 0                   ; 3 uses
  br i1 %.not90, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = fadd float %i.p, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3284
  %i.z = load float, ptr %i.y, align 4, !tbaa !206
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 2.000000e+00, float %i.x)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %i.ac = phi float [ %i.ab, %bb.i ], [ %i.aa, %bb.h ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.r, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 3284 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 3288 ; 3 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !203 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 2.000000e+00, float %.sroa.023.4.vec.extract)
  %i.ai = load <2 x float>, ptr %i.ad, align 4, !tbaa !190 ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ah, i64 1
  %i.al = fadd <2 x float> %i.ak, %i.ai           ; 2 uses
  store <2 x float> %i.ai, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store <2 x float> %i.al, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %.sroa.023.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 2 uses
  %i.an = fcmp ogt float %.sroa.023.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !204
  %i.aq = fadd float %.sroa.023.0.vec.extract, %i.ap
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ar = phi float [ %i.aq, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.as = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  %i.at = fadd <2 x float> %i.as, %i.al           ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store <2 x float> %i.ai, ptr %5, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.at, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.aw = fsub <2 x float> %i.at, %i.ai
  store <2 x float> %i.aw, ptr %3, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.ax = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.l, ptr noundef nonnull %4, i32 noundef 0)
  br i1 %i.ax, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ay = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.az = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.15, i64 noundef 0, i32 noundef %i.l) ; 3 uses
  %i.ba = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.az, i32 noundef 0) ; 2 uses
  %.not = xor i1 %i.ay, true
  %or.cond3 = or i1 %i.ba, %.not
  br i1 %or.cond3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.az, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.087 = phi i1 [ %i.ba, %bb.m ], [ true, %bb.n ] ; 2 uses
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %i.be = select i1 %i.bd, i32 8, i32 7
  %i.bf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.be, float noundef 1.000000e+00)
  %i.bg = load float, ptr %4, align 8, !tbaa !237 ; 2 uses
  %i.bh = load float, ptr %i.am, align 8, !tbaa !238
  %i.bi = fsub float %i.bh, %i.p                  ; 2 uses
  %i.bj = fcmp oge float %i.bg, %i.bi
  %i.bk = select i1 %i.bj, float %i.bg, float %i.bi ; 6 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, i32 noundef 0, float noundef -1.000000e+00)
  br i1 %.not90, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bn = load float, ptr %i.au, align 4, !tbaa !196
  store float %i.bk, ptr %6, align 4, !tbaa !194
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !197
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !233
  %i.br = select i1 %.not89, i32 80, i32 240
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.bf, float noundef %i.bq, i32 noundef %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not89, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bs = or i1 %.087, %i.bd
  %i.bt = select i1 %i.bs, i32 23, i32 22
  %i.bu = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bt, float noundef 1.000000e+00)
  %i.bv = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !195
  store float %i.bk, ptr %7, align 4, !tbaa !194
  %i.ca = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !197
  %i.cb = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !233
  %i.cd = fcmp ole float %i.ac, %i.p
  %i.ce = select i1 %i.cd, i32 240, i32 160
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bx, ptr noundef nonnull align 4 dereferenceable(8) %7, ptr noundef nonnull align 4 dereferenceable(8) %i.am, i32 noundef %i.bu, float noundef %i.cc, i32 noundef %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  %i.cf = fadd float %i.p, %i.bk
  %i.cg = load float, ptr %i.ae, align 4, !tbaa !206
  %i.ch = fsub float %i.cf, %i.cg
  %i.ci = load float, ptr %i.am, align 8, !tbaa !238
  %i.cj = fcmp ugt float %i.ch, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = load ptr, ptr %i.bw, align 8, !tbaa !202
  %i.cl = load float, ptr %i.af, align 8, !tbaa !203 ; 2 uses
  %i.cm = fadd float %i.bk, %i.cl
  %i.cn = load float, ptr %i.by, align 4, !tbaa !195
  %i.co = fadd float %i.cl, %i.cn
  %.sroa.099.0.vec.insert = insertelement <2 x float> poison, float %i.cm, i64 0
  %.sroa.099.4.vec.insert = insertelement <2 x float> %.sroa.099.0.vec.insert, float %i.co, i64 1
  call void @_ZN5ImGui11RenderArrowEP10ImDrawList6ImVec2j8ImGuiDirf(ptr noundef %i.ck, <2 x float> %.sroa.099.4.vec.insert, i32 noundef %i.bv, i32 noundef 3, float noundef 1.000000e+00)
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.q
  %.sroa.04.0.copyload = load <2 x float>, ptr %4, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.am, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !233
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.04.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.cq)
  %i.cr = and i32 %2, 1048576
  %.not91 = icmp eq i32 %i.cr, 0
  br i1 %.not91, label %bb.u, label %.thread

.thread:                                          ; preds = %bb.t
  %i.cs = load float, ptr %i.au, align 4, !tbaa !196
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 9760
  %i.cu = load <2 x float>, ptr %4, align 8, !tbaa !190
  store <2 x float> %i.cu, ptr %i.ct, align 8, !tbaa !190
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9768
  store float %i.bk, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 9772
  store float %i.cs, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !190
  br label %bb.y

bb.u:                                             ; preds = %bb.t
  %brmerge.not = and i1 %.not90, %i.t
  br i1 %brmerge.not, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 10264
  %i.cw = load i8, ptr %i.cv, align 8, !tbaa !191, !range !184, !noundef !185
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.cy = load <2 x float>, ptr %4, align 8, !tbaa !190
  %i.cz = load <2 x float>, ptr %i.ae, align 4, !tbaa !190
  %i.da = fadd <2 x float> %i.cy, %i.cz
  store <2 x float> %i.da, ptr %8, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.db = load float, ptr %i.au, align 4, !tbaa !196
  store float %i.bk, ptr %9, align 4, !tbaa !194
  %i.dc = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.db, ptr %i.dc, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  br label %bb.y

bb.y:                                             ; preds = %.thread, %bb.u, %bb.x
  br i1 %i.an, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.de = load float, ptr %i.dd, align 4, !tbaa !204
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dg = load float, ptr %i.af, align 8, !tbaa !203
  %i.dh = load <2 x float>, ptr %i.df, align 4, !tbaa !190
  %i.di = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.de, i64 1
  %i.dk = fadd <2 x float> %i.dh, %i.dj
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.dl, ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  br i1 %.087, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.h, ptr %i.g, align 8, !tbaa !325
  %i.dm = call noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %i.az, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %2)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab
  %.0 = phi i1 [ %i.dm, %bb.ab ], [ false, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.l, %bb.ac
  %.1 = phi i1 [ %.0, %bb.ac ], [ false, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %bb.ad
  %.2 = phi i1 [ %.1, %bb.ad ], [ false, %bb.a ]
  ret i1 %.2
}

declare noundef i32 @_Z9ImHashStrPKcmj(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float>, <2 x float>, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15BeginComboPopupEjRK6ImRecti(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 6 uses
  %4 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImRect, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 7 uses
  %i.c = tail call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %0, i32 noundef 0)
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  store i32 0, ptr %i.d, align 8, !tbaa !326
  br label %bb.u

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !238
  %i.g = load float, ptr %1, align 4, !tbaa !237
  %i.h = fsub float %i.f, %i.g                    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 7928
  %i.j = load i32, ptr %i.i, align 8, !tbaa !325  ; 2 uses
  %i.k = and i32 %i.j, 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 7996 ; 2 uses
  %i.m = load float, ptr %i.l, align 4, !tbaa !657 ; 2 uses
  %i.n = fcmp oge float %i.m, %i.h
  %i.o = select i1 %i.n, float %i.m, float %i.h
  store float %i.o, ptr %i.l, align 4, !tbaa !657
  br label %bb.n

bb.e:                                             ; preds = %bb.c
  %i.p = and i32 %2, 30
  %i.q = icmp eq i32 %i.p, 0
  %i.r = or disjoint i32 %2, 4
  %spec.select = select i1 %i.q, i32 %i.r, i32 %2 ; 4 uses
  %i.s = and i32 %spec.select, 4
  %.not37 = icmp eq i32 %i.s, 0
  br i1 %.not37, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = and i32 %spec.select, 2
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = and i32 %spec.select, 8
  %.not39 = icmp eq i32 %i.u, 0
  %spec.select42 = select i1 %.not39, i32 -1, i32 20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %spec.select42, %bb.g ], [ 8, %bb.e ], [ 4, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !190
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 4
  store <2 x float> splat (float f0x7F7FFFFF), ptr %4, align 8, !tbaa !190
  %i.w = and i32 %i.j, 2
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.thread44, label %bb.i

.thread44:                                        ; preds = %bb.h
  store float %i.h, ptr %3, align 8, !tbaa !194
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 7960
  %i.z = load float, ptr %i.y, align 8, !tbaa !658
  %i.aa = fcmp ugt float %i.z, 0.000000e+00
  br i1 %i.aa, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  store float %i.h, ptr %3, align 8, !tbaa !194
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 7964
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !659
  %i.ad = fcmp ugt float %i.ac, 0.000000e+00
  br i1 %i.ad, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread44, %.thread
  %i.ae = icmp slt i32 %.0, 1
  br i1 %i.ae, label %_ZL31CalcMaxPopupHeightFromItemCounti.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4568
  %i.ah = load float, ptr %i.ag, align 8, !tbaa !205
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 3304
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !327 ; 2 uses
  %i.ak = fadd float %i.ah, %i.aj
  %i.al = uitofp nneg i32 %.0 to float
  %i.am = fneg float %i.aj
  %i.an = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.al, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 3232
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !328
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.000000e+00, float %i.an)
  br label %_ZL31CalcMaxPopupHeightFromItemCounti.exit

_ZL31CalcMaxPopupHeightFromItemCounti.exit:       ; preds = %bb.k, %bb.l
  %.0.i = phi float [ %i.aq, %bb.l ], [ f0x7F7FFFFF, %bb.k ]
  store float %.0.i, ptr %i.v, align 4, !tbaa !197
  br label %bb.m

bb.m:                                             ; preds = %_ZL31CalcMaxPopupHeightFromItemCounti.exit, %.thread
  call void @_ZN5ImGui28SetNextWindowSizeConstraintsERK6ImVec2S2_PFvP21ImGuiSizeCallbackDataEPv(ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.d
end_hunk_0
begin_hunk_1_@_ZN5ImGui10DragScalarEPKciPvfPKvS4_S1_i:bb.a
  %i.z = fadd <2 x float> %i.y, %i.w              ; 2 uses
  store <2 x float> %i.w, ptr %9, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  store <2 x float> %i.z, ptr %i.aa, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %.sroa.050.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 2 uses
  %i.ab = fcmp ogt float %.sroa.050.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 3308
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !204
  %i.ae = fadd float %.sroa.050.0.vec.extract, %i.ad
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.af = phi float [ %i.ae, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.ag = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  %i.ah = fadd <2 x float> %i.ag, %i.z            ; 2 uses
  store <2 x float> %i.w, ptr %10, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %i.ah, ptr %i.ai, align 8
  %i.aj = and i32 %7, 128
  %i.ak = icmp eq i32 %i.aj, 0                    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.al = fsub <2 x float> %i.ah, %i.w
  store <2 x float> %i.al, ptr %8, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %8, float noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  %i.am = select i1 %i.ak, i32 1048576, i32 0
  %i.an = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %i.i, ptr noundef nonnull %9, i32 noundef %i.am)
  br i1 %i.an, label %bb.g, label %bb.bm

bb.g:                                             ; preds = %bb.f
  %i.ao = icmp eq ptr %6, null
  br i1 %i.ao, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ap = sext i32 %1 to i64
  %i.aq = getelementptr inbounds [32 x i8], ptr @_ZL13GDataTypeInfo, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !362
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0142 = phi ptr [ %i.as, %bb.h ], [ %6, %bb.g ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 7852
  %i.au = load i32, ptr %i.at, align 4, !tbaa !255
  %i.av = call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.i, i32 noundef %i.au) ; 3 uses
  br i1 %i.ak, label %bb.j, label %_ZN5ImGui17TempInputIsActiveEj.exit.thread161

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 9704
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !363
  %i.az = icmp eq i32 %i.ay, %i.i
  br i1 %i.az, label %bb.k, label %_ZN5ImGui17TempInputIsActiveEj.exit

bb.k:                                             ; preds = %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 5428
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !218
  %i.bc = icmp eq i32 %i.bb, %i.i
  br i1 %i.bc, label %.thread172, label %_ZN5ImGui17TempInputIsActiveEj.exit

_ZN5ImGui17TempInputIsActiveEj.exit:              ; preds = %bb.j, %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 9568
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !364
  %i.bf = icmp eq i32 %i.be, %i.i
  br i1 %i.bf, label %.thread172, label %_ZN5ImGui17TempInputIsActiveEj.exit.thread161

_ZN5ImGui17TempInputIsActiveEj.exit.thread161:    ; preds = %bb.i, %_ZN5ImGui17TempInputIsActiveEj.exit
  br i1 %i.av, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN5ImGui17TempInputIsActiveEj.exit.thread161
  %i.bg = call noundef zeroext i1 @_ZN5ImGui14IsMouseClickedEiij(i32 noundef 0, i32 noundef 0, i32 noundef %i.i) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 2890
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !219
  %i.bj = icmp eq i16 %i.bi, 2
  br i1 %i.bj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bk = call noundef zeroext i1 @_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj(i32 noundef 656, i32 noundef %i.i)
  br label %bb.n

bb.n:                                             ; preds = %_ZN5ImGui17TempInputIsActiveEj.exit.thread161, %bb.m, %bb.l
  %i.bl = phi i1 [ %i.bg, %bb.l ], [ %i.bg, %bb.m ], [ false, %_ZN5ImGui17TempInputIsActiveEj.exit.thread161 ] ; 2 uses
  %i.bm = phi i1 [ false, %bb.l ], [ %i.bk, %bb.m ], [ false, %_ZN5ImGui17TempInputIsActiveEj.exit.thread161 ] ; 3 uses
  %or.cond = or i1 %i.bl, %i.bm
  br i1 %or.cond, label %bb.o, label %.thread162

.thread162:                                       ; preds = %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 8244
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !224
  %i.bp = icmp eq i32 %i.bo, %i.i                 ; 2 uses
  %.not152163 = xor i1 %i.bp, true
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef 656, i32 noundef %i.i, i32 noundef 0)
  br label %bb.p

bb.p:                                             ; preds = %.thread162, %bb.o
  %.not152166 = phi i1 [ %.not152163, %.thread162 ], [ false, %bb.o ]
  %i.bq = phi i1 [ %i.bp, %.thread162 ], [ true, %bb.o ] ; 2 uses
  %or.cond5 = and i1 %i.ak, %i.bq
  br i1 %or.cond5, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.p
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 300
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !215, !range !184, !noundef !185
  %i.bt = trunc nuw i8 %i.bs to i1
  %or.cond7 = or i1 %i.bm, %i.bt
  br i1 %or.cond7, label %.thread167, label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.bm, label %.thread167, label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 8244
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !224
  %i.bw = icmp eq i32 %i.bv, %i.i
  br i1 %i.bw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8256
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !229
  %i.bz = and i32 %i.by, 1
  %.not150 = icmp eq i32 %i.bz, 0
  br i1 %.not150, label %bb.v, label %.thread167

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.p
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.cb = load i8, ptr %i.ca, align 8, !tbaa !673, !range !184, !noundef !185
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond10 = and i1 %i.ak, %i.cc
  br i1 %or.cond10, label %bb.w, label %.thread167

bb.w:                                             ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 5428
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !218
  %i.cf = icmp eq i32 %i.ce, %i.i
  %or.cond16 = and i1 %i.av, %i.cf
  br i1 %or.cond16, label %bb.x, label %.thread167

bb.x:                                             ; preds = %bb.w
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 2910
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !231, !range !184, !noundef !185
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %bb.y, label %.thread167

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !357
  %i.cl = fmul float %i.ck, 5.000000e-01
  %i.cm = call noundef zeroext i1 @_ZN5ImGui24IsMouseDragPastThresholdEif(i32 noundef 0, float noundef %i.cl)
  br i1 %i.cm, label %.thread167, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 8244
  store i32 %i.i, ptr %i.cn, align 4, !tbaa !224
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 8256
  store i32 1, ptr %i.co, align 8, !tbaa !229
  br label %.thread167

.thread167:                                       ; preds = %bb.u, %bb.s, %bb.r, %bb.w, %bb.x, %bb.y, %bb.z, %bb.v
  %.1144 = phi i1 [ false, %bb.v ], [ false, %bb.y ], [ true, %bb.z ], [ false, %bb.x ], [ false, %bb.w ], [ true, %bb.r ], [ true, %bb.s ], [ true, %bb.u ] ; 2 uses
  br i1 %i.bq, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.thread167
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 5496
  %i.cq = sext i32 %1 to i64
  %i.cr = getelementptr inbounds [32 x i8], ptr @_ZL13GDataTypeInfo, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 16, !tbaa !355
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr align 1 %2, i64 %i.cs, i1 false)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.thread167
  %or.cond19 = or i1 %.not152166, %.1144
  br i1 %or.cond19, label %bb.ac, label %.thread174

.thread174:                                       ; preds = %bb.ab
  call void @_ZN5ImGui11SetActiveIDEjP11ImGuiWindow(i32 noundef %i.i, ptr noundef nonnull %i.d)
  call void @_ZN5ImGui10SetFocusIDEjP11ImGuiWindow(i32 noundef %i.i, ptr noundef nonnull %i.d)
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.d, i32 noundef 0)
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 7768
  store i32 3, ptr %i.ct, align 8, !tbaa !365
  br label %bb.bc

bb.ac:                                            ; preds = %bb.ab
  br i1 %.1144, label %.thread172, label %bb.bc

.thread172:                                       ; preds = %bb.k, %_ZN5ImGui17TempInputIsActiveEj.exit, %bb.ac
  %i.cu = and i32 %7, 512
  %.not.i = icmp eq i32 %i.cu, 0
  br i1 %.not.i, label %.thread187, label %bb.ad

bb.ad:                                            ; preds = %.thread172
  %i.cv = icmp ne ptr %4, null                    ; 3 uses
  %i.cw = icmp ne ptr %5, null                    ; 3 uses
  %or.cond.i = or i1 %i.cv, %i.cw
  br i1 %or.cond.i, label %bb.ae, label %.thread187

bb.ae:                                            ; preds = %bb.ad
  %or.cond3.i = and i1 %i.cv, %i.cw
  br i1 %or.cond3.i, label %bb.af, label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.af:                                            ; preds = %bb.ae
  switch i32 %1, label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.ai
    i32 3, label %bb.aj
    i32 4, label %bb.ak
    i32 5, label %bb.al
    i32 6, label %bb.am
    i32 7, label %bb.an
    i32 8, label %bb.ao
    i32 9, label %bb.ap
  ]

bb.ag:                                            ; preds = %bb.af
  %.val.i.i = load i8, ptr %4, align 1, !tbaa !351
  %.val21.i.i = load i8, ptr %5, align 1, !tbaa !351
  %.0.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8 %.val.i.i, i8 %.val21.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.ah:                                            ; preds = %bb.af
  %.val22.i.i = load i8, ptr %4, align 1, !tbaa !351
  %.val23.i.i = load i8, ptr %5, align 1, !tbaa !351
  %.0.i40.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8 %.val22.i.i, i8 %.val23.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.ai:                                            ; preds = %bb.af
  %.val24.i.i = load i16, ptr %4, align 2, !tbaa !219
  %.val25.i.i = load i16, ptr %5, align 2, !tbaa !219
  %.0.i41.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16 %.val24.i.i, i16 %.val25.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.aj:                                            ; preds = %bb.af
  %.val26.i.i = load i16, ptr %4, align 2, !tbaa !219
  %.val27.i.i = load i16, ptr %5, align 2, !tbaa !219
  %.0.i42.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16 %.val26.i.i, i16 %.val27.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.ak:                                            ; preds = %bb.af
  %.val28.i.i = load i32, ptr %4, align 4, !tbaa !208
  %.val29.i.i = load i32, ptr %5, align 4, !tbaa !208
  %.0.i43.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.val28.i.i, i32 %.val29.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.al:                                            ; preds = %bb.af
  %.val30.i.i = load i32, ptr %4, align 4, !tbaa !208
  %.val31.i.i = load i32, ptr %5, align 4, !tbaa !208
  %.0.i44.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %.val30.i.i, i32 %.val31.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.am:                                            ; preds = %bb.af
  %.val32.i.i = load i64, ptr %4, align 8, !tbaa !249
  %.val33.i.i = load i64, ptr %5, align 8, !tbaa !249
  %.0.i45.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %.val32.i.i, i64 %.val33.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.an:                                            ; preds = %bb.af
  %.val34.i.i = load i64, ptr %4, align 8, !tbaa !249
  %.val35.i.i = load i64, ptr %5, align 8, !tbaa !249
  %.0.i46.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %.val34.i.i, i64 %.val35.i.i)
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.ao:                                            ; preds = %bb.af
  %.val36.i.i = load float, ptr %4, align 4, !tbaa !190 ; 2 uses
  %.val37.i.i = load float, ptr %5, align 4, !tbaa !190 ; 2 uses
  %i.cx = fcmp olt float %.val36.i.i, %.val37.i.i
  %i.cy = fcmp ogt float %.val36.i.i, %.val37.i.i
  %..i.i.i = zext i1 %i.cy to i32
  %.0.i47.i.i = select i1 %i.cx, i32 -1, i32 %..i.i.i
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

bb.ap:                                            ; preds = %bb.af
  %.val38.i.i = load double, ptr %4, align 8, !tbaa !352 ; 2 uses
  %.val39.i.i = load double, ptr %5, align 8, !tbaa !352 ; 2 uses
  %i.cz = fcmp olt double %.val38.i.i, %.val39.i.i
  %i.da = fcmp ogt double %.val38.i.i, %.val39.i.i
  %..i48.i.i = zext i1 %i.da to i32
  %.0.i49.i.i = select i1 %i.cz, i32 -1, i32 %..i48.i.i
  br label %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i

_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i:        ; preds = %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.db = phi i32 [ 0, %bb.ae ], [ %.0.i49.i.i, %bb.ap ], [ %.0.i.i.i, %bb.ag ], [ %.0.i40.i.i, %bb.ah ], [ %.0.i41.i.i, %bb.ai ], [ %.0.i42.i.i, %bb.aj ], [ %.0.i43.i.i, %bb.ak ], [ %.0.i44.i.i, %bb.al ], [ %.0.i45.i.i, %bb.am ], [ %.0.i46.i.i, %bb.an ], [ %.0.i47.i.i, %bb.ao ], [ 0, %bb.af ] ; 2 uses
  %12 = icmp sgt i32 %i.db, -1
  %13 = and i1 %i.cw, %12
  %or.cond7.not.i = and i1 %i.cv, %13
  br i1 %or.cond7.not.i, label %bb.aq, label %.thread187

bb.aq:                                            ; preds = %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %bb.ar, label %.thread187

bb.ar:                                            ; preds = %bb.aq
  %i.dd = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 9708 ; 10 uses
  switch i32 %1, label %_ZL23TempInputIsClampEnablediiPKvS0_.exit [
    i32 0, label %bb.as
    i32 1, label %bb.at
    i32 2, label %bb.au
    i32 3, label %bb.av
    i32 4, label %bb.aw
    i32 5, label %bb.ax
    i32 6, label %bb.ay
    i32 7, label %bb.az
    i32 8, label %bb.ba
    i32 9, label %bb.bb
  ]

bb.as:                                            ; preds = %bb.ar
  %.val.i.i.i = load i8, ptr %4, align 1, !tbaa !351
  %.val21.i.i.i = load i8, ptr %i.de, align 1, !tbaa !351
  %.0.i.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8 %.val.i.i.i, i8 %.val21.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.at:                                            ; preds = %bb.ar
  %.val22.i.i.i = load i8, ptr %4, align 1, !tbaa !351
  %.val23.i.i.i = load i8, ptr %i.de, align 1, !tbaa !351
  %.0.i40.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8 %.val22.i.i.i, i8 %.val23.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.au:                                            ; preds = %bb.ar
  %.val24.i.i.i = load i16, ptr %4, align 2, !tbaa !219
  %.val25.i.i.i = load i16, ptr %i.de, align 2, !tbaa !219
  %.0.i41.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16 %.val24.i.i.i, i16 %.val25.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.av:                                            ; preds = %bb.ar
  %.val26.i.i.i = load i16, ptr %4, align 2, !tbaa !219
  %.val27.i.i.i = load i16, ptr %i.de, align 2, !tbaa !219
  %.0.i42.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16 %.val26.i.i.i, i16 %.val27.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.aw:                                            ; preds = %bb.ar
  %.val28.i.i.i = load i32, ptr %4, align 4, !tbaa !208
  %.val29.i.i.i = load i32, ptr %i.de, align 4, !tbaa !208
  %.0.i43.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.val28.i.i.i, i32 %.val29.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.ax:                                            ; preds = %bb.ar
  %.val30.i.i.i = load i32, ptr %4, align 4, !tbaa !208
  %.val31.i.i.i = load i32, ptr %i.de, align 4, !tbaa !208
  %.0.i44.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %.val30.i.i.i, i32 %.val31.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.ay:                                            ; preds = %bb.ar
  %.val32.i.i.i = load i64, ptr %4, align 8, !tbaa !249
  %.val33.i.i.i = load i64, ptr %i.de, align 8, !tbaa !249
  %.0.i45.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %.val32.i.i.i, i64 %.val33.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.az:                                            ; preds = %bb.ar
  %.val34.i.i.i = load i64, ptr %4, align 8, !tbaa !249
  %.val35.i.i.i = load i64, ptr %i.de, align 8, !tbaa !249
  %.0.i46.i.i.i = call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %.val34.i.i.i, i64 %.val35.i.i.i)
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.ba:                                            ; preds = %bb.ar
  %.val36.i.i.i = load float, ptr %4, align 4, !tbaa !190 ; 2 uses
  %.val37.i.i.i = load float, ptr %i.de, align 4, !tbaa !190 ; 2 uses
  %i.df = fcmp olt float %.val36.i.i.i, %.val37.i.i.i
  %i.dg = fcmp ogt float %.val36.i.i.i, %.val37.i.i.i
  %..i.i.i.i = zext i1 %i.dg to i32
  %.0.i47.i.i.i = select i1 %i.df, i32 -1, i32 %..i.i.i.i
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

bb.bb:                                            ; preds = %bb.ar
  %.val38.i.i.i = load double, ptr %4, align 8, !tbaa !352 ; 2 uses
  %.val39.i.i.i = load double, ptr %i.de, align 8, !tbaa !352 ; 2 uses
  %i.dh = fcmp olt double %.val38.i.i.i, %.val39.i.i.i
  %i.di = fcmp ogt double %.val38.i.i.i, %.val39.i.i.i
  %..i48.i.i.i = zext i1 %i.di to i32
  %.0.i49.i.i.i = select i1 %i.dh, i32 -1, i32 %..i48.i.i.i
  br label %_ZL23TempInputIsClampEnablediiPKvS0_.exit

_ZL23TempInputIsClampEnablediiPKvS0_.exit:        ; preds = %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb
  %.0.i.i28.i = phi i32 [ %.0.i49.i.i.i, %bb.bb ], [ %.0.i.i.i.i, %bb.as ], [ %.0.i40.i.i.i, %bb.at ], [ %.0.i41.i.i.i, %bb.au ], [ %.0.i42.i.i.i, %bb.av ], [ %.0.i43.i.i.i, %bb.aw ], [ %.0.i44.i.i.i, %bb.ax ], [ %.0.i45.i.i.i, %bb.ay ], [ %.0.i46.i.i.i, %bb.az ], [ %.0.i47.i.i.i, %bb.ba ], [ 0, %bb.ar ]
  %i.dj = and i32 %7, 1024
  %.0.i.i28.i.fr = freeze i32 %.0.i.i28.i
  %i.dk = or i32 %.0.i.i28.i.fr, %i.dj
  %.not = icmp eq i32 %i.dk, 0                    ; 2 uses
  %spec.select = select i1 %.not, ptr null, ptr %4
  %spec.select191 = select i1 %.not, ptr null, ptr %5
  br label %.thread187

.thread187:                                       ; preds = %_ZL23TempInputIsClampEnablediiPKvS0_.exit, %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i, %.thread172, %bb.aq, %bb.ad
  %i.dl = phi ptr [ null, %bb.aq ], [ %spec.select, %_ZL23TempInputIsClampEnablediiPKvS0_.exit ], [ null, %.thread172 ], [ null, %bb.ad ], [ %4, %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i ]
  %i.dm = phi ptr [ null, %bb.aq ], [ %spec.select191, %_ZL23TempInputIsClampEnablediiPKvS0_.exit ], [ null, %.thread172 ], [ null, %bb.ad ], [ %5, %_ZN5ImGui15DataTypeCompareEiPKvS1_.exit.i ]
  %i.dn = call noundef zeroext i1 @_ZN5ImGui15TempInputScalarERK6ImRectjPKciPvS4_PKvS7_(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.i, ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %.0142, ptr noundef %i.dl, ptr noundef %i.dm)
  br label %bb.bm

bb.bc:                                            ; preds = %.thread174, %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %i.b, i64 5428
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !218
  %i.dq = icmp eq i32 %i.dp, %i.i
  %i.dr = select i1 %i.av, i32 8, i32 7
  %i.ds = select i1 %i.dq, i32 9, i32 %i.dr
  %i.dt = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.ds, float noundef 1.000000e+00)
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.i, i32 noundef 0, float noundef -1.000000e+00)
  %.sroa.023.0.copyload = load <2 x float>, ptr %9, align 8
  %.sroa.022.0.copyload = load <2 x float>, ptr %i.aa, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.b, i64 3292 ; 3 uses
  %i.dv = load float, ptr %i.du, align 4, !tbaa !233
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.023.0.copyload, <2 x float> %.sroa.022.0.copyload, i32 noundef %i.dt, i1 noundef zeroext false, float noundef %i.dv)
  %.not151 = icmp eq i32 %i.p, 0
  br i1 %.not151, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 3448
  %i.dx = load float, ptr %i.dw, align 8, !tbaa !366
  %i.dy = fcmp ogt float %i.dx, 0.000000e+00
  br i1 %i.dy, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dz = call noundef i32 @_ZN5ImGui11GetColorU32Ejf(i32 noundef %i.p, float noundef 1.000000e+00)
  %i.ea = load float, ptr %i.du, align 4, !tbaa !233
  call void @_ZN5ImGui26RenderColorComponentMarkerERK6ImRectjf(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.dz, float noundef %i.ea)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc
  %.sroa.021.0.copyload = load <2 x float>, ptr %9, align 8
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aa, align 8
  %i.eb = load float, ptr %i.du, align 4, !tbaa !235
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.021.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef %i.eb)
  %i.ec = call noundef zeroext i1 @_ZN5ImGui12DragBehaviorEjiPvfPKvS2_PKci(i32 noundef %i.i, i32 noundef %1, ptr noundef %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %.0142, i32 noundef %7) ; 2 uses
  br i1 %i.ec, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.i)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ed = call noundef i32 @_ZN5ImGui20DataTypeFormatStringEPciiPKvPKc(ptr noundef nonnull %i.a, i32 noundef 64, i32 noundef %1, ptr noundef %2, ptr noundef %.0142)
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds i8, ptr %i.a, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.b, i64 10264
  %i.eh = load i8, ptr %i.eg, align 8, !tbaa !191, !range !184, !noundef !185
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  call void @_ZN5ImGui24LogSetNextTextDecorationEPKcS1_(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  store <2 x float> splat (float 5.000000e-01), ptr %11, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.aa, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ef, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  br i1 %i.ab, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ej = getelementptr inbounds nuw i8, ptr %i.b, i64 3308
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !204
  %i.el = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.em = load float, ptr %i.t, align 8, !tbaa !203
  %i.en = load <2 x float>, ptr %i.el, align 4, !tbaa !190
  %i.eo = insertelement <2 x float> poison, float %i.em, i64 0
  %i.ep = insertelement <2 x float> %i.eo, float %i.ek, i64 1
  %i.eq = fadd <2 x float> %i.en, %i.ep
  %i.er = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  call void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %i.er, ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false)
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.bm

bb.bm:                                            ; preds = %.thread187, %bb.bl, %bb.f
  %.1 = phi i1 [ false, %bb.f ], [ %i.dn, %.thread187 ], [ %i.ec, %bb.bl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.bn

bb.bn:                                            ; preds = %bb.a, %bb.bm
  %.2 = phi i1 [ %.1, %bb.bm ], [ false, %bb.a ]
  ret i1 %.2
}

declare noundef zeroext i1 @_ZN5ImGui24IsMouseDragPastThresholdEif(i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui15TempInputScalarERK6ImRectjPKciPvS4_PKvS7_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = alloca [32 x i8], align 16               ; 6 uses
end_hunk_1
begin_hunk_2_@_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_MACEP19ImGuiInputTextStatei:bb.a
  %i.x = zext nneg i32 %.018 to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x ; 2 uses
  %i.z = call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.w, ptr noundef %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !400
  %i.ab = load i32, ptr %i.e, align 8, !tbaa !377
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds i8, ptr %i.aa, i64 %i.ac
  %i.ae = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.b, ptr noundef %i.y, ptr noundef %i.ad) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !400
  %i.ag = load i32, ptr %i.e, align 8, !tbaa !377
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah
  %i.aj = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.c, ptr noundef %i.z, ptr noundef %i.ai) ; 0 uses
  %i.ak = load i32, ptr %i.b, align 4, !tbaa !208 ; 2 uses
  switch i32 %i.ak, label %bb.d [
    i32 32, label %_Z14ImCharIsBlankWj.exit.i
    i32 9, label %_Z14ImCharIsBlankWj.exit.i
    i32 12288, label %_Z14ImCharIsBlankWj.exit.i
  ]

bb.d:                                             ; preds = %bb.c
  br label %_Z14ImCharIsBlankWj.exit.i

_Z14ImCharIsBlankWj.exit.i:                       ; preds = %bb.d, %bb.c, %bb.c, %bb.c
  %i.al = phi i1 [ false, %bb.d ], [ true, %bb.c ], [ true, %bb.c ], [ true, %bb.c ]
  %i.am = call fastcc noundef zeroext i1 @_ZN5ImStbL18ImCharIsSeparatorWEj(i32 noundef %i.ak)
  %i.an = load i32, ptr %i.c, align 4, !tbaa !208 ; 2 uses
  switch i32 %i.an, label %bb.e [
    i32 32, label %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit
    i32 9, label %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit
    i32 12288, label %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit
  ]

bb.e:                                             ; preds = %_Z14ImCharIsBlankWj.exit.i
  br label %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit

_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit: ; preds = %_Z14ImCharIsBlankWj.exit.i, %_Z14ImCharIsBlankWj.exit.i, %_Z14ImCharIsBlankWj.exit.i, %bb.e
  %.not23.i = phi i1 [ %i.al, %bb.e ], [ false, %_Z14ImCharIsBlankWj.exit.i ], [ false, %_Z14ImCharIsBlankWj.exit.i ], [ false, %_Z14ImCharIsBlankWj.exit.i ]
  %i.ao = call fastcc noundef zeroext i1 @_ZN5ImStbL18ImCharIsSeparatorWEj(i32 noundef %i.an)
  %i.ap = xor i1 %i.am, true
  %i.aq = select i1 %i.ao, i1 %i.ap, i1 %.not23.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br i1 %i.aq, label %.critedge, label %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit.thread

_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit.thread: ; preds = %bb.b, %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit
  %i.ar = load i32, ptr %i.e, align 8, !tbaa !377 ; 3 uses
  %.not.i13 = icmp slt i32 %.018, %i.ar
  br i1 %.not.i13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit.thread
  %i.as = add nsw i32 %i.ar, 1
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit15

bb.g:                                             ; preds = %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.at = load ptr, ptr %i.r, align 8, !tbaa !400 ; 2 uses
  %i.au = sext i32 %.018 to i64
  %i.av = getelementptr inbounds i8, ptr %i.at, i64 %i.au
  %i.aw = sext i32 %i.ar to i64
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.aw
  %i.ay = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %i.av, ptr noundef %i.ax)
  %i.az = add nsw i32 %i.ay, %.018
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit15

_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit15: ; preds = %bb.f, %bb.g
  %.0.i14 = phi i32 [ %i.as, %bb.f ], [ %i.az, %bb.g ] ; 3 uses
  %i.ba = icmp slt i32 %.0.i14, %i.f
  br i1 %i.ba, label %bb.b, label %.critedge, !llvm.loop !758

.critedge:                                        ; preds = %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit15, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit
  %.0.lcssa = phi i32 [ %i.o, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ], [ %i.g, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread ], [ %.0.i14, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit15 ], [ %.018, %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit ]
  %i.bb = call i32 @llvm.smin.i32(i32 %.0.lcssa, i32 %i.f)
  ret i32 %i.bb
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(i32 %.24.val, ptr nofree noundef captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !394  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !395  ; 3 uses
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %i.b, %.24.val
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %.24.val, ptr %i.a, align 4, !tbaa !394
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = phi i32 [ %.24.val, %bb.c ], [ %i.b, %bb.b ] ; 2 uses
  %i.g = icmp sgt i32 %i.d, %.24.val
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.24.val, ptr %i.c, align 4, !tbaa !395
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = phi i32 [ %.24.val, %bb.e ], [ %i.d, %bb.d ]
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.f, ptr %0, align 4, !tbaa !388
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.a
  %i.j = load i32, ptr %0, align 4, !tbaa !388
  %i.k = icmp sgt i32 %i.j, %.24.val
  br i1 %i.k, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 %.24.val, ptr %0, align 4, !tbaa !388
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImStbL17stb_textedit_dragEP19ImGuiInputTextStatePNS_17STB_TexteditStateEff(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, float noundef %2, float noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 23
  %i.d = load i8, ptr %i.c, align 1, !tbaa !390
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !400  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store ptr null, ptr %i.a, align 8, !tbaa !198
  %i.g = load ptr, ptr %0, align 8, !tbaa !450    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !377
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds i8, ptr %i.f, i64 %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4552
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !401
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4568
  %i.o = load float, ptr %i.n, align 8, !tbaa !205
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 9520
  %i.q = load float, ptr %i.p, align 8, !tbaa !414
  %i.r = call <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef %i.m, float noundef %i.o, float noundef f0x7F7FFFFF, float noundef %i.q, ptr noundef %i.f, ptr noundef %i.k, ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi float [ 0.000000e+00, %bb.b ], [ %3, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !394
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !395
  %i.w = icmp eq i32 %i.t, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load i32, ptr %1, align 4, !tbaa !388
  store i32 %i.x, ptr %i.s, align 4, !tbaa !394
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = call fastcc noundef i32 @_ZN5ImStbL21stb_text_locate_coordEP19ImGuiInputTextStateffPi(ptr noundef %0, float noundef %2, float noundef %.0, ptr noundef %i.b) ; 2 uses
  store i32 %i.y, ptr %i.u, align 4, !tbaa !395
  store i32 %i.y, ptr %1, align 4, !tbaa !388
  %i.z = load i32, ptr %i.b, align 4, !tbaa !208
  %.not12 = icmp ne i32 %i.z, 0
  %i.aa = zext i1 %.not12 to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 118
  store i8 %i.aa, ptr %i.ab, align 2, !tbaa !436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #5 {
bb.a:
  %6 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 14 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !208    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !389  ; 12 uses
  %i.d = icmp ult i32 %i.a, 32                    ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.a, 10                     ; 2 uses
  %i.f = and i32 %i.c, 67108864
  %i.g = icmp ne i32 %i.f, 0                      ; 3 uses
  %i.h = select i1 %i.e, i1 %i.g, i1 false
  %or.cond = and i1 %5, %i.e
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.g
  br i1 %brmerge, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 32, ptr %2, align 4, !tbaa !208
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0130 = phi i32 [ 32, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.0127.shrunk = phi i1 [ true, %bb.c ], [ %i.h, %bb.b ]
  %i.i = icmp eq i32 %.0130, 10
  %i.j = select i1 %i.i, i1 %i.g, i1 false
  %i.k = or i1 %.0127.shrunk, %i.j
  %i.l = icmp eq i32 %.0130, 9
  %i.m = and i32 %i.c, 32
  %i.n = icmp ne i32 %i.m, 0
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  %i.p = or i1 %i.o, %i.k
  br i1 %i.p, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1131 = phi i32 [ %.0130, %bb.d ], [ %i.a, %bb.a ] ; 7 uses
  br i1 %5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = icmp eq i32 %.1131, 127
  %i.r = add i32 %.1131, -57344
  %or.cond5 = icmp ult i32 %i.r, 6400
  %or.cond163 = or i1 %i.q, %or.cond5
  %i.s = icmp ugt i32 %.1131, 65535
  %or.cond164 = or i1 %i.s, %or.cond163
  br i1 %or.cond164, label %.critedge, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old = icmp ugt i32 %.1131, 65535
  br i1 %.old, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.t = and i32 %i.c, 268435487
  %.not = icmp eq i32 %i.t, 0
  %or.cond151 = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond151, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.v = load i16, ptr %i.u, align 8, !tbaa !759
  %i.w = zext i16 %i.v to i32                     ; 3 uses
  %i.x = and i32 %i.c, 268435461
  %.not141 = icmp ne i32 %i.x, 0
  %i.y = and i32 %.1131, 65533
  %or.cond7 = icmp eq i32 %i.y, 44
  %or.cond152 = and i1 %.not141, %or.cond7
  %.2132 = select i1 %or.cond152, i32 %i.w, i32 %.1131 ; 3 uses
  %i.z = and i32 %i.c, 7
  %.not142 = icmp ne i32 %i.z, 0
  %i.aa = add nsw i32 %.2132, -65281
  %or.cond9 = icmp ult i32 %i.aa, 94
  %or.cond153 = select i1 %.not142, i1 %or.cond9, i1 false
  %i.ab = add nsw i32 %.2132, -65248
  %.3 = select i1 %or.cond153, i32 %i.ab, i32 %.2132 ; 9 uses
  %i.ac = and i32 %i.c, 1
  %.not143 = icmp eq i32 %i.ac, 0
  %i.ad = add nsw i32 %.3, -48
  %or.cond11 = icmp ult i32 %i.ad, 10             ; 3 uses
  %or.cond154 = select i1 %.not143, i1 true, i1 %or.cond11
  br i1 %or.cond154, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp ne i32 %.3, %i.w
  %i.af = freeze i1 %i.ae
  br i1 %i.af, label %switch.early.test, label %bb.k

switch.early.test:                                ; preds = %bb.j
  switch i32 %.3, label %.critedge [
    i32 47, label %bb.k
    i32 45, label %bb.k
    i32 43, label %bb.k
    i32 42, label %bb.k
  ]

bb.k:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.j, %bb.i
  %i.ag = and i32 %i.c, 4
  %.not144 = icmp eq i32 %i.ag, 0
  %or.cond155 = select i1 %.not144, i1 true, i1 %or.cond11
  br i1 %or.cond155, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = icmp ne i32 %.3, %i.w
  %i.ai = freeze i1 %i.ah
  br i1 %i.ai, label %switch.early.test156, label %bb.m

switch.early.test156:                             ; preds = %bb.l
  switch i32 %.3, label %.critedge [
    i32 101, label %bb.m
    i32 69, label %bb.m
    i32 47, label %bb.m
    i32 45, label %bb.m
    i32 43, label %bb.m
    i32 42, label %bb.m
  ]

bb.m:                                             ; preds = %switch.early.test156, %switch.early.test156, %switch.early.test156, %switch.early.test156, %switch.early.test156, %switch.early.test156, %bb.l, %bb.k
  %i.aj = and i32 %i.c, 2
  %.not145 = icmp eq i32 %i.aj, 0
  %or.cond157 = select i1 %.not145, i1 true, i1 %or.cond11
  %i.ak = add nsw i32 %.3, -97                    ; 2 uses
  %or.cond37 = icmp ult i32 %i.ak, 6
  %or.cond158 = select i1 %or.cond157, i1 true, i1 %or.cond37
  %i.al = add nsw i32 %.3, -65
  %or.cond39 = icmp ult i32 %i.al, 6
  %or.cond159 = select i1 %or.cond158, i1 true, i1 %or.cond39
  br i1 %or.cond159, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.am = and i32 %i.c, 8
  %.not146 = icmp ne i32 %i.am, 0
  %or.cond41 = icmp ult i32 %i.ak, 26
  %or.cond160 = select i1 %.not146, i1 %or.cond41, i1 false
  %i.an = add nsw i32 %.3, -32
  %.4 = select i1 %or.cond160, i32 %i.an, i32 %.3 ; 3 uses
  %i.ao = and i32 %i.c, 16
  %.not147 = icmp eq i32 %i.ao, 0
  br i1 %.not147, label %_Z14ImCharIsBlankWj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i32 %.4, label %_Z14ImCharIsBlankWj.exit [
    i32 32, label %.critedge
    i32 9, label %.critedge
    i32 12288, label %.critedge
  ]

_Z14ImCharIsBlankWj.exit:                         ; preds = %bb.o, %bb.n
  store i32 %.4, ptr %2, align 4, !tbaa !208
  br label %bb.p

bb.p:                                             ; preds = %_Z14ImCharIsBlankWj.exit, %bb.h
  %.6 = phi i32 [ %.4, %_Z14ImCharIsBlankWj.exit ], [ %.1131, %bb.h ]
  %i.ap = and i32 %i.c, 2097152
  %.not148 = icmp eq i32 %i.ap, 0
  br i1 %.not148, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @_ZN26ImGuiInputTextCallbackDataC1Ev(ptr noundef nonnull align 8 dereferenceable(68) %6)
  store ptr %i.aq, ptr %6, align 8, !tbaa !423
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !392 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.as, ptr %i.at, align 8, !tbaa !424
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.c, ptr %i.au, align 4, !tbaa !425
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 2097152, ptr %i.av, align 8, !tbaa !426
  %i.aw = trunc nuw i32 %.6 to i16
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i16 %i.aw, ptr %i.ax, align 8, !tbaa !760
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 5428
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !218
  %i.ba = icmp eq i32 %i.az, %i.as
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 5440
  %i.bc = load i8, ptr %i.bb, align 8, !tbaa !230, !range !184, !noundef !185
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bd = phi i8 [ 0, %bb.q ], [ %i.bc, %bb.r ]
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !427
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !378 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bi = load <2 x i32>, ptr %i.bg, align 4, !tbaa !208
  store <2 x i32> %i.bi, ptr %i.bh, align 8, !tbaa !208
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !395
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !433
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.bm, align 8, !tbaa !428
  %i.bn = call noundef i32 %3(ptr noundef nonnull %6)
  %.not149 = icmp eq i32 %i.bn, 0
  br i1 %.not149, label %bb.t, label %.critedge162

bb.t:                                             ; preds = %bb.s
  %i.bo = load i16, ptr %i.ax, align 8, !tbaa !760 ; 2 uses
  %i.bp = zext i16 %i.bo to i32
  store i32 %i.bp, ptr %2, align 4, !tbaa !208
  %.not150.not = icmp eq i16 %i.bo, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br i1 %.not150.not, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  br label %.critedge

.critedge162:                                     ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %.critedge

.critedge:                                        ; preds = %bb.o, %bb.o, %bb.o, %bb.m, %switch.early.test156, %switch.early.test, %.critedge162, %bb.g, %bb.f, %bb.d, %bb.t, %bb.u
  %.5138 = phi i1 [ false, %bb.d ], [ false, %bb.f ], [ false, %bb.m ], [ true, %bb.u ], [ false, %bb.t ], [ false, %.critedge162 ], [ false, %bb.g ], [ false, %switch.early.test156 ], [ false, %switch.early.test ], [ false, %bb.o ], [ false, %bb.o ], [ false, %bb.o ]
  ret i1 %.5138
}

declare noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef, float noundef) local_unnamed_addr #3

end_hunk_2
begin_hunk_3_@_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !602  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !582  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !569  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !17

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %indvars.iv.i ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !594
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !599  ; 2 uses
  %i.m = and i32 %i.l, 32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.n = trunc i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i16, ptr %i.o, align 8, !tbaa !603  ; 3 uses
  %i.q = sext i16 %i.p to i32
  %i.r = add nsw i32 %i.n, %i.q                   ; 2 uses
  %or.cond = icmp ult i32 %i.r, %i.d
  br i1 %or.cond, label %bb.e, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !599  ; 2 uses
  %i.w = and i32 %i.v, 32
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %bb.f, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = xor i32 %i.v, %i.l
  %i.y = and i32 %i.x, 192
  %.not36 = icmp eq i32 %i.y, 0
  br i1 %.not36, label %bb.g, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %1, ptr noundef nonnull align 4 dereferenceable(44) %i.h, i64 44, i1 false), !tbaa.struct !597
  %i.z = icmp sgt i16 %i.p, 0                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ab = select i1 %i.z, ptr %i.aa, ptr %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.ad = select i1 %i.z, ptr %i.h, ptr %i.ac
  %i.ae = tail call i16 @llvm.abs.i16(i16 %i.p, i1 false)
  %i.af = zext i16 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.ab, i64 %i.ag, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.t, ptr noundef nonnull align 4 dereferenceable(41) %1, i64 41, i1 false), !tbaa.struct !597
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !580
  %i.aj = and i32 %i.ai, 4194304
  %.not37 = icmp eq i32 %i.aj, 0
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %bb.d, %bb.f, %bb.e, %bb.i, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %.2 = phi i1 [ false, %bb.f ], [ false, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit ], [ false, %bb.d ], [ false, %.preheader.i ], [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.2
}

declare void @_ZN5ImGui20MarkIniSettingsDirtyEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !158
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !183, !range !184, !noundef !185
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9088
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !576  ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.133) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) ; 2 uses
  %i.k = and i32 %2, 8
  %.not15 = icmp eq i32 %i.k, 0
  %or.cond = and i1 %.not15, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 138
  %i.m = load i16, ptr %i.l, align 2, !tbaa !565
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !569
  %i.p = sext i16 %i.m to i64
  %i.q = getelementptr inbounds [44 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !594
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.e ], [ %i.j, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readnone captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ImGuiNextItemData, align 8  ; 4 uses
  %6 = alloca %struct.ImRect, align 4             ; 4 uses
  %7 = alloca %struct.ImRect, align 4             ; 4 uses
  %8 = alloca %struct.ImRect, align 16            ; 15 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.g = load i8, ptr %i.f, align 1, !tbaa !584, !range !184, !noundef !185
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7792 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !tbaa.struct !900
  tail call fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !900
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !158  ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 209
  %i.m = load i8, ptr %i.l, align 1, !tbaa !183, !range !184, !noundef !185
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.cl, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 24         ; 8 uses
  %.val = load i32, ptr %i.o, align 8, !tbaa !580
  %i.p = and i32 %.val, 1048576
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef %1, i64 noundef 0, i32 noundef 0) ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.q)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5312
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !158
  %i.u = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.t, ptr noundef %1, ptr noundef null)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi i32 [ %i.q, %bb.e ], [ %i.u, %bb.f ] ; 14 uses
  %.not247 = icmp eq ptr %2, null                 ; 3 uses
  br i1 %.not247, label %bb.i, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.v = load i8, ptr %2, align 1, !tbaa !231, !range !184, !noundef !185
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.x = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %6, i32 noundef %.0.i, ptr noundef null, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.cl

bb.i:                                             ; preds = %bb.g, %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit
  %i.y = and i32 %3, 1048576
  %.not248 = icmp eq i32 %i.y, 0                  ; 2 uses
  %i.z = or disjoint i32 %3, 1048576
  %i.aa = and i1 %.not247, %.not248
  %.0235 = select i1 %i.aa, i32 %i.z, i32 %3      ; 7 uses
  %.not.i271 = icmp ne i32 %.0.i, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !601 ; 8 uses
  %i.ab = icmp sgt i32 %.pre, 0
  %or.cond372 = select i1 %.not.i271, i1 %i.ab, i1 false
  br i1 %or.cond372, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !569 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %.pre to i64
  br label %bb.k

bb.j:                                             ; preds = %bb.k
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit, label %bb.k, !llvm.loop !17

bb.k:                                             ; preds = %bb.j, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.j ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [44 x i8], ptr %i.ad, i64 %indvars.iv.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !594
  %i.ag = icmp eq i32 %i.af, %.0.i
  br i1 %i.ag, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !600
  %i.ak = icmp eq i32 %.pre, %i.aj
  br i1 %i.ak, label %bb.l, label %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i

._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i: ; preds = %.loopexit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !569
  br label %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit

bb.l:                                             ; preds = %.loopexit
  %i.al = add nsw i32 %.pre, 1
  %.not.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i, label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = sdiv i32 %.pre, 2
  %i.an = add nsw i32 %i.am, %.pre
  br label %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i

_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i: ; preds = %bb.m, %bb.l
  %i.ao = phi i32 [ %i.an, %bb.m ], [ 8, %bb.l ]
  %i.ap = tail call noundef i32 @llvm.smax.i32(i32 %i.ao, i32 %i.al) ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, 44
  %i.as = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.ar) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !569 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.au, null
  br i1 %.not6.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  %i.av = load i32, ptr %i.ah, align 8, !tbaa !601
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.aw, 44
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.as, ptr nonnull align 4 %i.au, i64 %i.ax, i1 false)
  %i.ay = load ptr, ptr %i.at, align 8, !tbaa !569
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.ay)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZNK8ImVectorI12ImGuiTabItemE14_grow_capacityEi.exit.i
  store ptr %i.as, ptr %i.at, align 8, !tbaa !569
  store i32 %i.ap, ptr %i.ai, align 4, !tbaa !600
  %.pre3.i = load i32, ptr %i.ah, align 8, !tbaa !601
  br label %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit

_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit: ; preds = %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i, %bb.o
  %i.az = phi i32 [ %.pre, %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i ], [ %.pre3.i, %bb.o ]
  %i.ba = phi ptr [ %.pre.i, %._ZN8ImVectorI12ImGuiTabItemE7reserveEi.exit_crit_edge.i ], [ %i.as, %bb.o ]
  %i.bb = sext i32 %i.az to i64
  %i.bc = getelementptr inbounds [44 x i8], ptr %i.ba, i64 %i.bb ; 7 uses
  store i64 0, ptr %i.bc, align 4
  %.sroa.4336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store i32 -1, ptr %.sroa.4336.0..sroa_idx, align 4
  %.sroa.5337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  store i32 -1, ptr %.sroa.5337.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.0..sroa_idx, i8 0, i64 12, i1 false)
  %.sroa.6338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 28
  store float -1.000000e+00, ptr %.sroa.6338.0..sroa_idx, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 32
  store i64 -1, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 40
  store i32 0, ptr %.sroa.8.0..sroa_idx, align 4
  %i.bd = load i32, ptr %i.ah, align 8, !tbaa !601
  %i.be = add nsw i32 %i.bd, 1                    ; 2 uses
  store i32 %i.be, ptr %i.ah, align 8, !tbaa !601
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !569 ; 2 uses
  %i.bh = sext i32 %i.be to i64
  %i.bi = getelementptr [44 x i8], ptr %i.bg, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 -44    ; 2 uses
  store i32 %.0.i, ptr %i.bj, align 4, !tbaa !594
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 133
  store i8 1, ptr %i.bk, align 1, !tbaa !581
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.k, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit
  %i.bl = phi ptr [ %i.bg, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ %i.ad, %bb.k ]
  %i.bm = phi i1 [ false, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ true, %bb.k ] ; 2 uses
  %.0241 = phi ptr [ %i.bj, %_ZN8ImVectorI12ImGuiTabItemE9push_backERKS0_.exit ], [ %i.ae, %bb.k ] ; 21 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = ptrtoint ptr %.0241 to i64
  %i.bp = ptrtoint ptr %i.bl to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = sdiv exact i64 %i.bq, 44
  %i.bs = trunc i64 %i.br to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 138
  store i16 %i.bs, ptr %i.bt, align 2, !tbaa !565
  %.not247.not = xor i1 %.not247, true
  %i.bu = and i1 %.not248, %.not247.not           ; 3 uses
  %i.bv = trunc i32 %.0235 to i1                  ; 2 uses
  %i.bw = select i1 %i.bu, i1 true, i1 %i.bv
  %i.bx = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  %i.by = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %1, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 3284
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !330 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 3288
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !234
  br i1 %i.bw, label %bb.p, label %_ZN5ImGui15TabItemCalcSizeEPKcb.exit

bb.p:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 3308
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !367
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 4568
  %i.cg = load float, ptr %i.cf, align 8, !tbaa !205
  %i.ch = fadd float %i.ce, %i.cg
  br label %_ZN5ImGui15TabItemCalcSizeEPKcb.exit

_ZN5ImGui15TabItemCalcSizeEPKcb.exit:             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, %bb.p
  %.sink.i = phi float [ %i.ch, %bb.p ], [ 1.000000e+00, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit ]
  %i.ci = fadd float %i.ca, %.sink.i
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.by, i64 0
  %i.cj = fadd float %.sroa.0.0.vec.extract.i, %i.ca
  %storemerge.i = fadd float %i.cj, %i.ci         ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.by, i64 1
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cc, float 2.000000e+00, float %.sroa.0.4.vec.extract.i)
  %i.cl = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4568
  %i.cn = load float, ptr %i.cm, align 8, !tbaa !205
  %i.co = fmul float %i.cn, 2.000000e+01          ; 2 uses
  %i.cp = fcmp olt float %storemerge.i, %i.co
  %i.cq = select i1 %i.cp, float %storemerge.i, float %i.co
  %.sroa.08.0.vec.insert.i = insertelement <2 x float> poison, float %i.cq, i64 0
  %.sroa.08.4.vec.insert.i = insertelement <2 x float> %.sroa.08.0.vec.insert.i, float %i.ck, i64 1 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0241, i64 28 ; 2 uses
  store float -1.000000e+00, ptr %i.cr, align 4, !tbaa !607
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 7792
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !360
  %i.cu = and i32 %i.ct, 1
  %.not249 = icmp eq i32 %i.cu, 0
  br i1 %.not249, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN5ImGui15TabItemCalcSizeEPKcb.exit
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 7816
  %i.cw = load float, ptr %i.cv, align 8, !tbaa !901 ; 2 uses
  store float %i.cw, ptr %i.cr, align 4, !tbaa !607
  %.sroa.0327.0.vec.insert = insertelement <2 x float> %.sroa.08.4.vec.insert.i, float %i.cw, i64 0
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit
  %.sroa.0327.0 = phi <2 x float> [ %.sroa.08.4.vec.insert.i, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit ], [ %.sroa.0327.0.vec.insert, %bb.q ] ; 2 uses
  %.pre355 = extractelement <2 x float> %.sroa.0327.0, i64 0 ; 3 uses
  br i1 %i.bm, label %._crit_edge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cx = fcmp ole float %.pre355, 1.000000e+00
  %i.cy = select i1 %i.cx, float 1.000000e+00, float %.pre355
  %i.cz = getelementptr inbounds nuw i8, ptr %.0241, i64 20
  store float %i.cy, ptr %i.cz, align 4, !tbaa !609
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.r, %bb.s
  %i.da = getelementptr inbounds nuw i8, ptr %.0241, i64 24
  store float %.pre355, ptr %i.da, align 4, !tbaa !608
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.dc = load i16, ptr %i.db, align 8, !tbaa !587 ; 2 uses
  %i.dd = add i16 %i.dc, 1
  store i16 %i.dd, ptr %i.db, align 8, !tbaa !587
  %i.de = getelementptr inbounds nuw i8, ptr %.0241, i64 36
  store i16 %i.dc, ptr %i.de, align 4, !tbaa !590
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !563
  %i.dh = add nsw i32 %i.dg, 1
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !455 ; 3 uses
  %i.dk = icmp slt i32 %i.dh, %i.dj               ; 3 uses
  %i.dl = load i32, ptr %i.o, align 8, !tbaa !580
  %i.dm = and i32 %i.dl, 2097152
  %.not250 = icmp eq i32 %i.dm, 0                 ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0241, i64 8 ; 3 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !593
  %i.dp = add nsw i32 %i.do, 1
  %i.dq = icmp sge i32 %i.dp, %i.dj               ; 3 uses
  br i1 %i.bv, label %bb.t, label %bb.u

bb.t:                                             ; preds = %._crit_edge
  %i.dr = getelementptr inbounds nuw i8, ptr %.0241, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !599
  %i.dt = and i32 %i.ds, 1
  %.not251 = icmp eq i32 %i.dt, 0
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge
  %i.du = phi i1 [ false, %._crit_edge ], [ %.not251, %bb.t ]
  %i.dv = and i32 %.0235, 2097152
  %i.dw = icmp ne i32 %i.dv, 0                    ; 7 uses
  store i32 %i.dj, ptr %i.dn, align 4, !tbaa !593
  %i.dx = getelementptr inbounds nuw i8, ptr %.0241, i64 4 ; 4 uses
  store i32 %.0235, ptr %i.dx, align 4, !tbaa !599
  %.not252 = icmp eq ptr %4, null
  br i1 %.not252, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !902
  %spec.select.i = tail call noundef i32 @llvm.usub.sat.i32(i32 %i.dz, i32 1)
  %i.ea = getelementptr inbounds nuw i8, ptr %.0241, i64 32
  store i32 %spec.select.i, ptr %i.ea, align 4, !tbaa !604
  %i.eb = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #40
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 1
  tail call void @_ZN15ImGuiTextBuffer6appendEPKcS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull %1, ptr noundef nonnull %i.ed)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  br i1 %i.dw, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.dq, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ee = load i32, ptr %i.o, align 8, !tbaa !580
  %i.ef = and i32 %i.ee, 2
  %.not253 = icmp eq i32 %i.ef, 0
  br i1 %.not253, label %bb.ad, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !596
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  br i1 %i.dk, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !595
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.em = load i32, ptr %.0241, align 4, !tbaa !594
  store i32 %i.em, ptr %i.eg, align 4, !tbaa !596
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac, %bb.z, %bb.y, %bb.x
  %i.en = and i32 %.0235, 2
  %.not254 = icmp eq i32 %i.en, 0
  br i1 %.not254, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !595
  %.not255 = icmp eq i32 %i.ep, %.0.i
  br i1 %.not255, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.eq = load i32, ptr %.0241, align 4, !tbaa !594
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.eq, ptr %i.er, align 4, !tbaa !596
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.ae, %bb.af, %bb.w
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 3 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !592
  %i.eu = icmp eq i32 %i.et, %.0.i
  br i1 %i.eu, label %bb.ah, label %.critedge

bb.ah:                                            ; preds = %bb.ag
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 1, ptr %i.ev, align 4, !tbaa !591
  br label %bb.ak

.critedge:                                        ; preds = %bb.ag
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !595
  %i.ey = icmp eq i32 %i.ex, 0
  %or.cond = select i1 %i.ey, i1 %i.dk, i1 false
  br i1 %or.cond, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %.critedge
  %i.ez = load i32, ptr %i.bn, align 8, !tbaa !582
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fb = load i32, ptr %i.o, align 8, !tbaa !580
  %i.fc = and i32 %i.fb, 2
  %.not256 = icmp eq i32 %i.fc, 0
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah, %bb.ai, %.critedge
  %.0239.shrunk = phi i1 [ true, %bb.ah ], [ %.not256, %bb.aj ], [ false, %.critedge ], [ false, %bb.ai ] ; 6 uses
  %or.cond3.not = and i1 %i.bm, %i.dk
  %or.cond267 = select i1 %i.dq, i1 true, i1 %or.cond3.not
  br i1 %or.cond267, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
end_hunk_3
