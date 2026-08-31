Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui?download=true
inline.NumInlined: 3345
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 69
begin_hunk_0_@_ZN5ImGui10RenderTextE6ImVec2PKcS2_b:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298
  %.not.i = icmp eq ptr %2, null                  ; 2 uses
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %spec.store.select.i = select i1 %.not.i, ptr inttoptr (i64 -1 to ptr), ptr %2 ; 3 uses
  %i.d = icmp ult ptr %1, %spec.store.select.i
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

.lr.ph.preheader.i:                               ; preds = %bb.b
  %spec.store.select20.i = ptrtoaddr ptr %spec.store.select.i to i64
  %i.e = ptrtoaddr ptr %1 to i64
  %i.f = sub i64 %spec.store.select20.i, %i.e
  %scevgep.i = getelementptr i8, ptr %1, i64 %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.j, %.critedge2.i ], [ %1, %.lr.ph.preheader.i ] ; 5 uses
  %i.g = load i8, ptr %.015.i, align 1, !tbaa !187
  switch i8 %i.g, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !187
  %.not14.i = icmp eq i8 %i.i, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.j, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !451

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.e, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #57
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.d, %bb.e
  %.0 = phi ptr [ %i.l, %bb.e ], [ %2, %bb.d ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ], [ %.015.i, %bb.c ] ; 3 uses
  %.not20 = icmp eq ptr %1, %.0
  br i1 %.not20, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !452
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4552
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !453
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.r = load float, ptr %i.q, align 8, !tbaa !454
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.u = load float, ptr %i.t, align 4, !tbaa !416
  %i.v = load <4 x float>, ptr %i.s, align 4, !tbaa !8
  %i.w = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.u, i64 3
  %i.x = fmul <4 x float> %i.v, %i.w              ; 3 uses
  %i.y = fcmp olt <4 x float> %i.x, zeroinitializer
  %i.z = fcmp ogt <4 x float> %i.x, splat (float 1.000000e+00)
  %i.aa = select <4 x i1> %i.z, <4 x float> splat (float 1.000000e+00), <4 x float> %i.x
  %i.ab = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.aa, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ac = select <4 x i1> %i.y, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ab
  %i.ad = fptosi <4 x float> %i.ac to <4 x i32>
  %i.ae = shl <4 x i32> %i.ad, <i32 0, i32 8, i32 16, i32 24>
  %i.af = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ae)
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.n, ptr noundef %i.p, float noundef %i.r, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.af, ptr noundef %1, ptr noundef %.0, float noundef 0.000000e+00, ptr noundef null)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !387, !range !64, !noundef !204
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %.0)
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread: ; preds = %bb.b, %bb.f, %bb.g, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  ret void
}

declare void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not66 = icmp eq ptr %0, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.o, %bb.a
  %.tr71 = phi ptr [ %1, %bb.a ], [ %i.h, %bb.o ] ; 5 uses
  %.tr72 = phi ptr [ %2, %bb.a ], [ %i.bd, %bb.o ] ; 2 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5312
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !298
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10304 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !455  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10312
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !456  ; 4 uses
  %.not = icmp eq ptr %.tr72, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.b, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.b:                                             ; preds = %tailrecurse
  %.not70 = icmp eq ptr %.tr71, inttoptr (i64 -1 to ptr)
  br i1 %.not70, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = ptrtoaddr ptr %.tr71 to i64
  %i.j = xor i64 %i.i, -1
  %scevgep.i = getelementptr i8, ptr %.tr71, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.n, %.critedge2.i ], [ %.tr71, %.lr.ph.preheader.i ] ; 5 uses
  %i.k = load i8, ptr %.015.i, align 1, !tbaa !187
  switch i8 %i.k, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !187
  %.not14.i = icmp eq i8 %i.m, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.n, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !451

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.b, %tailrecurse
  %.057 = phi ptr [ %.tr72, %tailrecurse ], [ inttoptr (i64 -1 to ptr), %bb.b ], [ %.015.i, %bb.c ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ] ; 3 uses
  br i1 %.not66, label %.thread69, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.o = load float, ptr %i.a, align 4, !tbaa !228 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 10320 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !457
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3288
  %i.s = load float, ptr %i.r, align 8, !tbaa !458 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 3304
  %i.u = load float, ptr %i.t, align 8, !tbaa !330 ; 2 uses
  %i.v = fcmp oge float %i.s, %i.u
  %i.w = select i1 %i.v, float %i.s, float %i.u
  %i.x = fadd float %i.q, %i.w
  %i.y = fadd float %i.x, 1.000000e+00
  %i.z = fcmp ogt float %i.o, %i.y
  store float %i.o, ptr %i.p, align 8, !tbaa !457
  br i1 %i.z, label %bb.e, label %.thread69

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.188)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 10265
  store i8 1, ptr %i.aa, align 1, !tbaa !459
  br label %.thread69

.thread69:                                        ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, %bb.e, %bb.d
  %.not67 = icmp eq ptr %i.f, null
  br i1 %.not67, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread69
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #57
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ab
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.ac)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread69
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 10324 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !460 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !461 ; 4 uses
  %i.ah = icmp sgt i32 %i.ae, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !460
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ai = phi i32 [ %i.ag, %bb.h ], [ %i.ae, %bb.g ]
  %i.aj = sub nsw i32 %i.ag, %i.ai
  %i.ak = ptrtoint ptr %.057 to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 10265 ; 3 uses
  %i.am = shl nsw i32 %i.aj, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.056 = phi ptr [ %.tr71, %bb.i ], [ %i.bb, %bb.m ] ; 4 uses
  %i.an = ptrtoint ptr %.056 to i64               ; 2 uses
  %i.ao = sub i64 %i.ak, %i.an
  %i.ap = tail call noundef ptr @memchr(ptr noundef %.056, i32 noundef 10, i64 noundef %i.ao) #57 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  %i.aq = select i1 %.not.i, ptr %.057, ptr %i.ap ; 5 uses
  %i.ar = icmp eq ptr %i.aq, %.057                ; 2 uses
  %i.as = icmp eq ptr %i.aq, %.056
  %or.cond = and i1 %i.as, %i.ar
  br i1 %or.cond, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = sub i64 %i.at, %i.an
  %i.av = trunc i64 %i.au to i32
  %i.aw = load i8, ptr %i.al, align 1, !tbaa !459, !range !64, !noundef !204
  %i.ax = trunc nuw i8 %i.aw to i1
  %i.ay = select i1 %i.ax, i32 %i.am, i32 1
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.189, i32 noundef %i.ay, ptr noundef nonnull @.str.4, i32 noundef %i.av, ptr noundef %.056)
  store i8 0, ptr %i.al, align 1, !tbaa !459
  %i.az = load i8, ptr %i.aq, align 1, !tbaa !187
  %i.ba = icmp eq i8 %i.az, 10
  br i1 %i.ba, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.188)
  store i8 1, ptr %i.al, align 1, !tbaa !459
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  br i1 %i.ar, label %bb.n, label %bb.j

bb.n:                                             ; preds = %bb.m
  %.not68 = icmp eq ptr %i.h, null
  br i1 %.not68, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #57
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.bc
  br label %tailrecurse

bb.p:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float> %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #12 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 3 uses
  store <2 x float> %0, ptr %4, align 8
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #57
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %2, %bb.a ], [ %i.e, %bb.b ]    ; 3 uses
  %.not17 = icmp eq ptr %1, %.0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !452
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4552
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !453
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.k = load float, ptr %i.j, align 8, !tbaa !454
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3532
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.n = load float, ptr %i.m, align 4, !tbaa !416
  %i.o = load <4 x float>, ptr %i.l, align 4, !tbaa !8
  %i.p = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.n, i64 3
  %i.q = fmul <4 x float> %i.o, %i.p              ; 3 uses
  %i.r = fcmp olt <4 x float> %i.q, zeroinitializer
  %i.s = fcmp ogt <4 x float> %i.q, splat (float 1.000000e+00)
  %i.t = select <4 x i1> %i.s, <4 x float> splat (float 1.000000e+00), <4 x float> %i.q
  %i.u = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.t, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.v = select <4 x i1> %i.r, <4 x float> splat (float 5.000000e-01), <4 x float> %i.u
  %i.w = fptosi <4 x float> %i.v to <4 x i32>
  %i.x = shl <4 x i32> %i.w, <i32 0, i32 8, i32 16, i32 24>
  %i.y = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.x)
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef %i.i, float noundef %i.k, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.y, ptr noundef %1, ptr noundef nonnull %.0, float noundef %3, ptr noundef null)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 10264
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !387, !range !64, !noundef !204
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #12 {
bb.a:
  %8 = alloca %struct.ImVec2, align 8             ; 7 uses
  %9 = alloca %struct.ImVec4, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  %i.a = load i64, ptr %1, align 4                ; 3 uses
  store i64 %i.a, ptr %8, align 8
  %.not = icmp eq ptr %5, null
  %i.b = trunc i64 %i.a to i32
  %i.c = bitcast i32 %i.b to float                ; 6 uses
  %i.d = lshr i64 %i.a, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <2 x float>, ptr %5, align 4
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4568
  %i.i = load float, ptr %i.h, align 8, !tbaa !454 ; 2 uses
  %i.j = icmp eq ptr %3, %4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.i, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4552
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !453
  %i.m = tail call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.l, float noundef %i.i, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef null) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.m, i64 0 ; 2 uses
  %i.n = fptosi float %.sroa.0.0.vec.extract.i to i32 ; 2 uses
  %i.o = sitofp i32 %i.n to float
  %i.p = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.o
  %i.q = zext i1 %i.p to i32
  %i.r = add nsw i32 %i.q, %i.n
  %i.s = sitofp i32 %i.r to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.m, float %i.s, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit:            ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.4.vec.insert.i, %bb.d ], [ %.sroa.0.0.vec.insert.i, %bb.e ] ; 3 uses
  %.not40 = icmp eq ptr %7, null                  ; 3 uses
  %i.t = select i1 %.not40, ptr %1, ptr %7
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = select i1 %.not40, ptr %2, ptr %i.u      ; 3 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 0 ; 2 uses
  %i.w = fadd float %.sroa.0.0.vec.extract, %i.c
  %i.x = load float, ptr %i.v, align 4, !tbaa !227 ; 2 uses
  %i.y = fcmp ult float %i.w, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.z = fadd float %.sroa.0.4.vec.extract, %i.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !228
  %i.ac = fcmp oge float %i.z, %i.ab
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %i.ad = phi i1 [ true, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit ], [ %i.ac, %bb.f ] ; 2 uses
  br i1 %.not40, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = load float, ptr %7, align 4, !tbaa !227
  %i.af = fcmp ogt float %i.ae, %i.c
  br i1 %i.af, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !228
  %i.ai = fcmp ogt float %i.ah, %i.f
  %i.aj = or i1 %i.ad, %i.ai
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.0 = phi i1 [ %i.ad, %bb.g ], [ true, %bb.h ], [ %i.aj, %bb.i ]
  %i.ak = load float, ptr %6, align 4, !tbaa !227 ; 2 uses
  %i.al = fcmp ogt float %i.ak, 0.000000e+00
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.am = load float, ptr %2, align 4, !tbaa !227
  %i.an = fsub float %i.am, %i.c
  %i.ao = fsub float %i.an, %.sroa.0.0.vec.extract
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ak, float %i.c) ; 2 uses
  %i.aq = fcmp ole float %i.ap, %i.c
  %i.ar = select i1 %i.aq, float %i.c, float %i.ap
  store float %i.ar, ptr %8, align 8, !tbaa !227
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.at = load float, ptr %i.as, align 4, !tbaa !228 ; 2 uses
  %i.au = fcmp ogt float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 4
end_hunk_0
begin_hunk_1_@_ZN5ImGui15RenderNavCursorERK6ImRectjif:bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 4528
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !479
  %i.aj = fmul float %i.ai, 1.500000e+00          ; 2 uses
  %i.ak = fcmp ole float %i.aj, 2.000000e+00
  %i.al = select i1 %i.ak, float 2.000000e+00, float %i.aj
  %i.am = fptosi float %i.al to i32
  %i.an = sitofp i32 %i.am to float               ; 4 uses
  %i.ao = and i32 %2, 2
  %.not36 = icmp eq i32 %i.ao, 0
  br i1 %.not36, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 712
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !452
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 4444
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.at = load float, ptr %i.as, align 4, !tbaa !416
  %i.au = load <4 x float>, ptr %i.ar, align 4, !tbaa !8
  %i.av = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.at, i64 3
  %i.aw = fmul <4 x float> %i.au, %i.av           ; 3 uses
  %i.ax = fcmp olt <4 x float> %i.aw, zeroinitializer
  %i.ay = fcmp ogt <4 x float> %i.aw, splat (float 1.000000e+00)
  %i.az = select <4 x i1> %i.ay, <4 x float> splat (float 1.000000e+00), <4 x float> %i.aw
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bb = select <4 x i1> %i.ax, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ba
  %i.bc = fptosi <4 x float> %i.bb to <4 x i32>
  %i.bd = shl <4 x i32> %i.bc, <i32 0, i32 8, i32 16, i32 24>
  %i.be = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bd)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.aq, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i32 noundef %i.be, float noundef %.1, float noundef %i.an, i32 noundef 0)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.an, float 5.000000e-01, float 3.000000e+00)
  %i.bg = fptosi float %i.bf to i32
  %i.bh = sitofp i32 %i.bg to float
  %i.bi = insertelement <4 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bk = fsub <4 x float> %i.ae, %i.bj           ; 2 uses
  %i.bl = fadd <4 x float> %i.ae, %i.bj           ; 2 uses
  %i.bm = shufflevector <4 x float> %i.bk, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.bm, ptr %4, align 16, !tbaa !8
  %i.bn = shufflevector <4 x float> %i.bl, <4 x float> %i.aa, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bo = shufflevector <4 x float> %i.aa, <4 x float> %i.bk, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.bp = fcmp ole <4 x float> %i.bn, %i.bo
  %i.bq = freeze <4 x i1> %i.bp
  %i.br = bitcast <4 x i1> %i.bq to i4
  %i.bs = icmp eq i4 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.o, i64 712 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !452 ; 2 uses
  br i1 %i.bs, label %.critedge, label %_ZNK6ImRect8ContainsERKS_.exit.thread

_ZNK6ImRect8ContainsERKS_.exit.thread:            ; preds = %bb.j
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i1 noundef zeroext false)
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !452
  %i.bw = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4444
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 3220
  %i.bz = load float, ptr %i.by, align 4, !tbaa !416
  %i.ca = load <4 x float>, ptr %i.bx, align 4, !tbaa !8
  %i.cb = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bz, i64 3
  %i.cc = fmul <4 x float> %i.ca, %i.cb           ; 3 uses
  %i.cd = fcmp olt <4 x float> %i.cc, zeroinitializer
  %i.ce = fcmp ogt <4 x float> %i.cc, splat (float 1.000000e+00)
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cc
  %i.cg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ch = select <4 x i1> %i.cd, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cg
  %i.ci = fptosi <4 x float> %i.ch to <4 x i32>
  %i.cj = shl <4 x i32> %i.ci, <i32 0, i32 8, i32 16, i32 24>
  %i.ck = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cj)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.bv, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i32 noundef %i.ck, float noundef %.1, float noundef %i.an, i32 noundef 0)
  %i.cl = load ptr, ptr %i.bt, align 8, !tbaa !452
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.cl)
  br label %bb.k

.critedge:                                        ; preds = %bb.j
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 4444
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.co = load float, ptr %i.cn, align 4, !tbaa !416
  %i.cp = load <4 x float>, ptr %i.cm, align 4, !tbaa !8
  %i.cq = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.co, i64 3
  %i.cr = fmul <4 x float> %i.cp, %i.cq           ; 3 uses
  %i.cs = fcmp olt <4 x float> %i.cr, zeroinitializer
  %i.ct = fcmp ogt <4 x float> %i.cr, splat (float 1.000000e+00)
  %i.cu = select <4 x i1> %i.ct, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cr
  %i.cv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cu, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cw = select <4 x i1> %i.cs, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cv
  %i.cx = fptosi <4 x float> %i.cw to <4 x i32>
  %i.cy = shl <4 x i32> %i.cx, <i32 0, i32 8, i32 16, i32 24>
  %i.cz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cy)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jffi(ptr noundef nonnull align 8 dereferenceable(224) %i.bu, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.y, i32 noundef %i.cz, float noundef %.1, float noundef %i.an, i32 noundef 0)
  br label %bb.k

bb.k:                                             ; preds = %_ZNK6ImRect8ContainsERKS_.exit.thread, %.critedge, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.e, %bb.d, %bb.b, %bb.a
  ret void
}

declare void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) local_unnamed_addr #2

declare void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17RenderMouseCursorE6ImVec2fijjj(<2 x float> %0, float noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #12 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 9 uses
  %8 = alloca [4 x %struct.ImVec2], align 16      ; 8 uses
  %9 = alloca %struct.ImVec2, align 8             ; 11 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %16 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 4 uses
  %or.cond = icmp ugt i32 %2, 10
  %spec.store.select4 = select i1 %or.cond, i32 0, i32 %2 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4608
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !480  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8200
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !437  ; 2 uses
  %i.g = load i32, ptr %i.d, align 8, !tbaa !481  ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx134 = shl nsw i64 %i.h, 3
  %i.i = getelementptr inbounds i8, ptr %i.f, i64 %.idx134
  %.not132 = icmp eq i32 %i.g, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.m = insertelement <2 x float> poison, float %1, i64 0
  %i.n = shufflevector <2 x float> %i.m, <2 x float> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.o = fmul <2 x float> %i.n, <float 1.000000e+00, float 0.000000e+00> ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 3 uses
  %i.q = fmul float %1, 2.000000e+00
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.s = and i32 %spec.store.select4, 14
  %or.cond3 = icmp eq i32 %i.s, 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.u = fmul float %1, 1.400000e+01
  %i.v = fmul float %1, 6.000000e+00
  %i.w = fmul float %1, 3.000000e+00
  %i.x = insertelement <2 x float> %i.o, float %i.q, i64 0
  %i.y = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %1, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  br label %bb.b

._crit_edge:                                      ; preds = %bb.g, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.0133 = phi ptr [ %i.f, %.lr.ph ], [ %i.ch, %bb.g ] ; 2 uses
  %i.aa = load ptr, ptr %.0133, align 8, !tbaa !438 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  store <2 x float> zeroinitializer, ptr %7, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, i8 0, i64 32, i1 false), !tbaa !8
  %i.ab = call noundef zeroext i1 @_Z32ImFontAtlasGetMouseCursorTexDataP11ImFontAtlasiP6ImVec2S2_S2_S2_(ptr noundef %i.c, i32 noundef %spec.store.select4, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %i.j)
  br i1 %i.ab, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.ac = load <2 x float>, ptr %6, align 8, !tbaa !8
  %i.ad = fsub <2 x float> %0, %i.ac              ; 3 uses
  store <2 x float> %i.ad, ptr %9, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ah = load float, ptr %i.ae, align 8, !tbaa !482 ; 2 uses
  %i.ai = load <2 x float>, ptr %i.af, align 4, !tbaa !8 ; 2 uses
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !484
  %i.ak = load <2 x float>, ptr %7, align 8, !tbaa !8
  %i.al = insertelement <4 x float> poison, float %i.aj, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ah, i64 3
  %i.an = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ao = shufflevector <4 x float> %i.an, <4 x float> %i.am, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ap = fadd <4 x float> %i.ao, <float 2.000000e+00, float 2.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.aq = fmul <4 x float> %i.z, %i.ap
  %i.ar = shufflevector <2 x float> %i.ad, <2 x float> %i.ai, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.as = fadd <4 x float> %i.ar, %i.aq
  %i.at = shufflevector <2 x float> %i.ad, <2 x float> %i.ai, <4 x i32> <i32 2, i32 poison, i32 1, i32 0>
  %i.au = insertelement <4 x float> %i.at, float %i.ah, i64 1
  %i.av = fcmp ogt <4 x float> %i.as, %i.au
  %i.aw = freeze <4 x i1> %i.av
  %i.ax = bitcast <4 x i1> %i.aw to i4
  %i.ay = icmp eq i4 %i.ax, -1
  br i1 %i.ay, label %bb.d, label %_ZNK6ImRect8OverlapsERKS_.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.az = call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef nonnull %i.aa, i64 noundef 1, ptr noundef nonnull @.str.86) ; 10 uses
  %.sroa.015.0.copyload = load i64, ptr %i.l, align 8, !tbaa !485
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !486 ; 5 uses
  %17 = inttoptr i64 %.sroa.015.0.copyload to ptr ; 5 uses
  call void @_ZN10ImDrawList11PushTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr %17, i64 %.sroa.8.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.ba = load <2 x float>, ptr %9, align 8, !tbaa !8 ; 2 uses
  %i.bb = fadd <2 x float> %i.o, %i.ba
  store <2 x float> %i.bb, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #41
  %i.bc = load <2 x float>, ptr %7, align 8, !tbaa !8
  %i.bd = fadd <2 x float> %i.bc, <float 1.000000e+00, float 0.000000e+00>
  %i.be = fmul <2 x float> %i.n, %i.bd
  %i.bf = fadd <2 x float> %i.ba, %i.be
  store <2 x float> %i.bf, ptr %11, align 8
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr %17, i64 %.sroa.8.0.copyload, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %i.p, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #41
  %i.bg = load <2 x float>, ptr %9, align 8, !tbaa !8 ; 2 uses
  %i.bh = fadd <2 x float> %i.x, %i.bg
  store <2 x float> %i.bh, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #41
  %i.bi = load <2 x float>, ptr %7, align 8, !tbaa !8
  %i.bj = fadd <2 x float> %i.bi, <float 2.000000e+00, float 0.000000e+00>
  %i.bk = fmul <2 x float> %i.n, %i.bj
  %i.bl = fadd <2 x float> %i.bg, %i.bk
  store <2 x float> %i.bl, ptr %13, align 8
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr %17, i64 %.sroa.8.0.copyload, ptr noundef nonnull align 4 dereferenceable(8) %12, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %i.p, i32 noundef %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #41
  %i.bm = load <2 x float>, ptr %7, align 8, !tbaa !8
  %i.bn = fmul <2 x float> %i.n, %i.bm
  %i.bo = load <2 x float>, ptr %9, align 8, !tbaa !8
  %i.bp = fadd <2 x float> %i.bn, %i.bo
  store <2 x float> %i.bp, ptr %14, align 8
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr %17, i64 %.sroa.8.0.copyload, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %14, ptr noundef nonnull align 4 dereferenceable(8) %i.j, ptr noundef nonnull align 4 dereferenceable(8) %i.p, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  %i.bq = load <2 x float>, ptr %7, align 8, !tbaa !8
  %i.br = fmul <2 x float> %i.n, %i.bq
  %i.bs = load <2 x float>, ptr %9, align 8, !tbaa !8
  %i.bt = fadd <2 x float> %i.br, %i.bs
  store <2 x float> %i.bt, ptr %15, align 8
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr %17, i64 %.sroa.8.0.copyload, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.r, i32 noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bu = load double, ptr %i.t, align 8, !tbaa !487
  %i.bv = fptrunc double %i.bu to float
  %i.bw = fmul float %i.bv, 5.000000e+00
  %i.bx = call float @fmodf(float noundef %i.bw, float noundef f0x40C90FDB) #41 ; 2 uses
  %i.by = fadd float %i.bx, f0x40A5E048
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  %i.bz = load float, ptr %9, align 8, !tbaa !227
  %i.ca = fadd float %i.u, %i.bz
  %i.cb = load float, ptr %i.k, align 4, !tbaa !228
  %i.cc = fsub float %i.cb, %1
  %.sroa.0.0.vec.insert.i100 = insertelement <2 x float> poison, float %i.ca, i64 0
  %.sroa.0.4.vec.insert.i101 = insertelement <2 x float> %.sroa.0.0.vec.insert.i100, float %i.cc, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i101, ptr %16, align 8
  call void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr noundef nonnull align 4 dereferenceable(8) %16, float noundef %i.v, float noundef %i.bx, float noundef %i.by, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 80 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !488
  %i.cg = load i32, ptr %i.cd, align 8, !tbaa !489
  call void @_ZN10ImDrawList11AddPolylineEPK6ImVec2ijfi(ptr noundef nonnull align 8 dereferenceable(224) %i.az, ptr noundef %i.cf, i32 noundef %i.cg, i32 noundef %3, float noundef %i.w, i32 noundef 0)
  store i32 0, ptr %i.cd, align 8, !tbaa !489
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  call void @_ZN10ImDrawList10PopTextureEv(ptr noundef nonnull align 8 dereferenceable(224) %i.az)
  br label %_ZNK6ImRect8OverlapsERKS_.exit.thread

_ZNK6ImRect8OverlapsERKS_.exit.thread:            ; preds = %bb.c, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %_ZNK6ImRect8OverlapsERKS_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  %i.ch = getelementptr inbounds nuw i8, ptr %.0133, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ch, %i.i
  br i1 %.not, label %._crit_edge, label %bb.b
}

declare noundef zeroext i1 @_Z32ImFontAtlasGetMouseCursorTexDataP11ImFontAtlasiP6ImVec2S2_S2_S2_(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui21GetForegroundDrawListEP13ImGuiViewport(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL23GetViewportBgFgDrawListP14ImGuiViewportPmPKc(ptr noundef %0, i64 noundef 1, ptr noundef nonnull @.str.86)
  ret ptr %i.a
}

declare void @_ZN10ImDrawList11PushTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64) local_unnamed_addr #2

declare void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN10ImDrawList10PopTextureEv(ptr noundef nonnull align 8 dereferenceable(224)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui17SetCurrentContextEP12ImGuiContext(ptr noundef %0) local_unnamed_addr #35 {
bb.a:
  store ptr %0, ptr @GImGui, align 8, !tbaa !193
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui21SetAllocatorFunctionsEPFPvmS0_EPFvS0_S0_ES0_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #35 {
bb.a:
  store ptr %0, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  store ptr %1, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !191
  store ptr %2, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui21GetAllocatorFunctionsEPPFPvmS0_EPPFvS0_S0_EPS0_(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %2) local_unnamed_addr #36 {
bb.a:
  %i.a = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  store ptr %i.a, ptr %0, align 8, !tbaa !191
  %i.b = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !191
  store ptr %i.b, ptr %1, align 8, !tbaa !191
  %i.c = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  store ptr %i.c, ptr %2, align 8, !tbaa !191
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5ImGui13CreateContextEP11ImFontAtlas(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.c = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.d = tail call noundef ptr %i.b(i64 noundef 11000, ptr noundef %i.c), !inline_history !231 ; 3 uses
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN5ImGui8MemAllocEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 10596 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !194  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 10608 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 10604 ; 2 uses
  %i.k = load i16, ptr %i.j, align 4, !tbaa !195  ; 2 uses
  %i.l = sext i16 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !196
  %.not.i.i = icmp eq i32 %i.n, %i.h
  br i1 %.not.i.i, label %._crit_edge, label %bb.c

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !198
  %i.o = add i16 %.pre, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = sext i16 %i.k to i32
  %i.q = add nsw i32 %i.p, 1
  %i.r = srem i32 %i.q, 6                         ; 2 uses
  %i.s = trunc nsw i32 %i.r to i16
  store i16 %i.s, ptr %i.j, align 4, !tbaa !195
  %i.t = sext i32 %i.r to i64                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.t ; 3 uses
  store i32 %i.h, ptr %i.u, align 4, !tbaa !196
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 6
  store i16 0, ptr %i.v, align 2, !tbaa !199
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i16 0, ptr %i.w, align 4, !tbaa !198
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %i.x = phi i16 [ 1, %bb.c ], [ %i.o, %._crit_edge ]
  %i.y = phi i64 [ %i.t, %bb.c ], [ %i.l, %._crit_edge ]
  %i.z = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  store i16 %i.x, ptr %i.aa, align 4, !tbaa !198
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !200
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit

_ZN5ImGui8MemAllocEm.exit:                        ; preds = %bb.a, %bb.d
  tail call void @_ZN12ImGuiContextC1EP11ImFontAtlas(ptr noundef nonnull align 8 dereferenceable(11000) %i.d, ptr noundef %0)
  store ptr %i.d, ptr @GImGui, align 8, !tbaa !193
  tail call void @_ZN5ImGui10InitializeEv()
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit
  store ptr %i.a, ptr @GImGui, align 8, !tbaa !193
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN5ImGui8MemAllocEm.exit
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui10InitializeEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %0 = alloca %struct.ImGuiSettingsHandler, align 8 ; 12 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.tm, align 8                 ; 8 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.e, i8 0, i64 72, i1 false)
  store ptr @.str.76, ptr %0, align 8, !tbaa !490
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.a
  %i.f = phi i8 [ %i.w, %bb.f ], [ 87, %bb.a ]    ; 2 uses
  %.252.i = phi ptr [ %.3.i, %bb.f ], [ @.str.76, %bb.a ] ; 3 uses
  %.23351.i = phi i32 [ %.334.i, %bb.f ], [ -1, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.252.i, i64 1 ; 2 uses
  %i.h = zext i8 %i.f to i32
  %i.i = icmp eq i8 %i.f, 35
  br i1 %i.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = load i8, ptr %i.g, align 1, !tbaa !187
  %i.k = icmp eq i8 %i.j, 35
  br i1 %i.k, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.252.i, i64 2
  %i.m = load i8, ptr %i.l, align 1, !tbaa !187
  %i.n = icmp eq i8 %i.m, 35
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %.252.i, i64 3
  br label %bb.f, !llvm.loop !248

bb.e:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
end_hunk_1
begin_hunk_2_@_ZN5ImGui8NewFrameEv:bb.a
  %i.cix = fcmp ogt float %i.ciw, 0.000000e+00
  br i1 %i.cix, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.aln, i64 64
  %i.ciz = load float, ptr %i.ciy, align 8, !tbaa !1010
  %i.cja = fsub float %i.ciw, %i.ciz              ; 2 uses
  %i.cjb = fcmp ole float %i.cja, 0.000000e+00
  %i.cjc = select i1 %i.cjb, float 0.000000e+00, float %i.cja ; 2 uses
  store float %i.cjc, ptr %i.civ, align 4, !tbaa !1070
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps
  %i.cjd = phi float [ %i.cjc, %bb.pt ], [ %i.ciw, %bb.ps ]
  %i.cje = fcmp oeq float %i.cjd, 0.000000e+00
  br i1 %i.cje, label %bb.pv, label %bb.pw

bb.pv:                                            ; preds = %bb.pu
  %i.cjf = getelementptr inbounds nuw i8, ptr %i.aln, i64 8280
  store i32 0, ptr %i.cjf, align 8, !tbaa !1069
  br label %bb.pw

bb.pw:                                            ; preds = %bb.pv, %bb.pu
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.aln, i64 8296 ; 2 uses
  %i.cjh = load i32, ptr %i.cjg, align 8, !tbaa !1072 ; 4 uses
  %.not237.i = icmp eq i32 %i.cjh, 0
  br i1 %.not237.i, label %bb.py, label %bb.px

bb.px:                                            ; preds = %bb.pw
  store i32 %i.cjh, ptr %i.cfn, align 4, !tbaa !1068
  store i32 %i.cjh, ptr %i.cfo, align 8, !tbaa !1067
  store i32 %i.cjh, ptr %i.cfp, align 4, !tbaa !837
  %i.cji = getelementptr inbounds nuw i8, ptr %i.aln, i64 8300
  %i.cjj = load i32, ptr %i.cji, align 4, !tbaa !1073
  store i32 %i.cjj, ptr %i.cfq, align 8, !tbaa !1066
  br label %bb.py

bb.py:                                            ; preds = %bb.px, %bb.pw
  store i32 0, ptr %i.cjg, align 8, !tbaa !1072
  %i.cjk = getelementptr inbounds nuw i8, ptr %i.cfm, i64 40
  %i.cjl = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8224
  %i.cjm = load ptr, ptr %i.cjl, align 8, !tbaa !389 ; 20 uses
  %i.cjn = load i32, ptr %i.cjk, align 8, !tbaa !920 ; 2 uses
  %i.cjo = and i32 %i.cjn, 2
  %.not.i305.i = icmp eq i32 %i.cjo, 0
  br i1 %.not.i305.i, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cfm, i64 44
  %i.cjq = load i32, ptr %i.cjp, align 4, !tbaa !1007
  %i.cjr = trunc i32 %i.cjq to i1
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.cjs = phi i1 [ false, %bb.py ], [ %i.cjr, %bb.pz ] ; 4 uses
  %i.cjt = trunc i32 %i.cjn to i1                 ; 5 uses
  %i.cju = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8386 ; 2 uses
  %i.cjv = load i8, ptr %i.cju, align 2, !tbaa !656, !range !64, !noundef !204
  %i.cjw = trunc nuw i8 %i.cjv to i1
  %i.cjx = icmp ne ptr %i.cjm, null               ; 5 uses
  %or.cond.i306.i = select i1 %i.cjw, i1 %i.cjx, i1 false
  br i1 %or.cond.i306.i, label %bb.qb, label %bb.qd

bb.qb:                                            ; preds = %bb.qa
  %i.cjy = getelementptr inbounds nuw i8, ptr %i.cfm, i64 10404
  %i.cjz = load i32, ptr %i.cjy, align 4, !tbaa !221
  %i.cka = and i32 %i.cjz, 16
  %.not107.i.i = icmp eq i32 %i.cka, 0
  br i1 %.not107.i.i, label %.thread.i315.i, label %bb.qc

bb.qc:                                            ; preds = %bb.qb
  %i.ckb = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400
  %i.ckc = load i32, ptr %i.ckb, align 8, !tbaa !1074
  call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.760, i32 noundef %i.ckc)
  br label %.thread.i315.i

bb.qd:                                            ; preds = %bb.qa
  %i.ckd = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400 ; 5 uses
  store i32 -1, ptr %i.ckd, align 8, !tbaa !1074
  %i.cke = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8388
  store i32 0, ptr %i.cke, align 4, !tbaa !396
  %i.ckf = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8392
  store i32 0, ptr %i.ckf, align 8, !tbaa !1075
  br i1 %i.cjx, label %bb.qe, label %bb.re

bb.qe:                                            ; preds = %bb.qd
  %i.ckg = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8712
  %i.ckh = load ptr, ptr %i.ckg, align 8, !tbaa !1045
  %.not105.i.i = icmp eq ptr %i.ckh, null
  br i1 %.not105.i.i, label %bb.qf, label %.thread234.i.i

bb.qf:                                            ; preds = %bb.qe
  %i.cki = getelementptr inbounds nuw i8, ptr %i.cjm, i64 20
  %i.ckj = load i32, ptr %i.cki, align 4, !tbaa !722
  %i.ckk = and i32 %i.ckj, 65536
  %.not106.i.i = icmp eq i32 %i.ckk, 0
  br i1 %.not106.i.i, label %bb.qg, label %.thread234.i.i

bb.qg:                                            ; preds = %bb.qf
  %i.ckl = getelementptr inbounds nuw i8, ptr %i.cfm, i64 7768
  %i.ckm = load i32, ptr %i.ckl, align 8, !tbaa !649 ; 4 uses
  %i.ckn = and i32 %i.ckm, 1
  %.not240.i323.i = icmp eq i32 %i.ckn, 0
  br i1 %.not240.i323.i, label %bb.qh, label %bb.qm

bb.qh:                                            ; preds = %bb.qg
  br i1 %i.cjs, label %bb.qi, label %bb.qj

bb.qi:                                            ; preds = %bb.qh
  %i.cko = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 638, i32 noundef 5, i32 noundef -1)
  br i1 %i.cko, label %bb.ql, label %bb.qj

bb.qj:                                            ; preds = %bb.qi, %bb.qh
  br i1 %i.cjt, label %bb.qk, label %bb.qm

bb.qk:                                            ; preds = %bb.qj
  %i.ckp = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 513, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckp, label %bb.ql, label %bb.qm

bb.ql:                                            ; preds = %bb.qk, %bb.qi
  store i32 0, ptr %i.ckd, align 8, !tbaa !1074
  br label %bb.qm

bb.qm:                                            ; preds = %bb.ql, %bb.qk, %bb.qj, %bb.qg
  %i.ckq = phi i32 [ 0, %bb.ql ], [ -1, %bb.qk ], [ -1, %bb.qj ], [ -1, %bb.qg ] ; 3 uses
  %i.ckr = and i32 %i.ckm, 2
  %.not241.i324.i = icmp eq i32 %i.ckr, 0
  br i1 %.not241.i324.i, label %bb.qn, label %bb.qs

bb.qn:                                            ; preds = %bb.qm
  br i1 %i.cjs, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %i.cks = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 639, i32 noundef 5, i32 noundef -1)
  br i1 %i.cks, label %bb.qr, label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qn
  br i1 %i.cjt, label %bb.qq, label %bb.qs

bb.qq:                                            ; preds = %bb.qp
  %i.ckt = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 514, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckt, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq, %bb.qo
  store i32 1, ptr %i.ckd, align 8, !tbaa !1074
  br label %bb.qs

bb.qs:                                            ; preds = %bb.qr, %bb.qq, %bb.qp, %bb.qm
  %i.cku = phi i32 [ 1, %bb.qr ], [ %i.ckq, %bb.qq ], [ %i.ckq, %bb.qp ], [ %i.ckq, %bb.qm ] ; 3 uses
  %i.ckv = and i32 %i.ckm, 4
  %.not242.i325.i = icmp eq i32 %i.ckv, 0
  br i1 %.not242.i325.i, label %bb.qt, label %bb.qy

bb.qt:                                            ; preds = %bb.qs
  br i1 %i.cjs, label %bb.qu, label %bb.qv

bb.qu:                                            ; preds = %bb.qt
  %i.ckw = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 640, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckw, label %bb.qx, label %bb.qv

bb.qv:                                            ; preds = %bb.qu, %bb.qt
  br i1 %i.cjt, label %bb.qw, label %bb.qy

bb.qw:                                            ; preds = %bb.qv
  %i.ckx = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 515, i32 noundef 5, i32 noundef -1)
  br i1 %i.ckx, label %bb.qx, label %bb.qy

bb.qx:                                            ; preds = %bb.qw, %bb.qu
  store i32 2, ptr %i.ckd, align 8, !tbaa !1074
  br label %bb.qy

bb.qy:                                            ; preds = %bb.qx, %bb.qw, %bb.qv, %bb.qs
  %i.cky = phi i32 [ 2, %bb.qx ], [ %i.cku, %bb.qw ], [ %i.cku, %bb.qv ], [ %i.cku, %bb.qs ] ; 3 uses
  %i.ckz = and i32 %i.ckm, 8
  %.not243.i.i = icmp eq i32 %i.ckz, 0
  br i1 %.not243.i.i, label %bb.qz, label %.thread234.i.i

bb.qz:                                            ; preds = %bb.qy
  br i1 %i.cjs, label %bb.ra, label %bb.rb

bb.ra:                                            ; preds = %bb.qz
  %i.cla = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 641, i32 noundef 5, i32 noundef -1)
  br i1 %i.cla, label %bb.rd, label %bb.rb

bb.rb:                                            ; preds = %bb.ra, %bb.qz
  br i1 %i.cjt, label %bb.rc, label %.thread234.i.i

bb.rc:                                            ; preds = %bb.rb
  %i.clb = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyij(i32 noundef 516, i32 noundef 5, i32 noundef -1)
  br i1 %i.clb, label %bb.rd, label %.thread234.i.i

bb.rd:                                            ; preds = %bb.rc, %bb.ra
  store i32 3, ptr %i.ckd, align 8, !tbaa !1074
  br label %.thread234.i.i

.thread234.i.i:                                   ; preds = %bb.rd, %bb.rc, %bb.rb, %bb.qy, %bb.qf, %bb.qe
  %i.clc = phi i32 [ -1, %bb.qe ], [ -1, %bb.qf ], [ 3, %bb.rd ], [ %i.cky, %bb.rc ], [ %i.cky, %bb.rb ], [ %i.cky, %bb.qy ]
  %i.cld = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8408
  store i32 %i.clc, ptr %i.cld, align 8, !tbaa !391
  %i.cle = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8428
  store <4 x i32> <i32 2139095039, i32 2139095039, i32 -8388609, i32 -8388609>, ptr %i.cle, align 4, !tbaa !8
  br label %.thread.i315.i

bb.re:                                            ; preds = %bb.qd
  %i.clf = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8408
  store i32 -1, ptr %i.clf, align 8, !tbaa !391
  %i.clg = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8428
  store <4 x i32> <i32 2139095039, i32 2139095039, i32 -8388609, i32 -8388609>, ptr %i.clg, align 4, !tbaa !8
  br label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

.thread.i315.i:                                   ; preds = %.thread234.i.i, %bb.qc, %bb.qb
  %i.clh = getelementptr inbounds nuw i8, ptr %i.cfm, i64 8400
  %i.cli = load i32, ptr %i.clh, align 8, !tbaa !1074
  %i.clj = icmp eq i32 %i.cli, -1
  %or.cond3.i316.i = and i1 %i.clj, %i.cjt
  br i1 %or.cond3.i316.i, label %bb.rf, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rf:                                            ; preds = %.thread.i315.i
  %i.clk = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 37 uses
  %i.cll = getelementptr inbounds nuw i8, ptr %i.clk, i64 8224
  %i.clm = load ptr, ptr %i.cll, align 8, !tbaa !389 ; 27 uses
  %i.cln = getelementptr inbounds nuw i8, ptr %i.clm, i64 20
  %i.clo = load i32, ptr %i.cln, align 4, !tbaa !722
  %i.clp = and i32 %i.clo, 65536
  %.not.i.i317.i = icmp eq i32 %i.clp, 0
  br i1 %.not.i.i317.i, label %bb.rg, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rg:                                            ; preds = %bb.rf
  %i.clq = getelementptr inbounds nuw i8, ptr %i.clk, i64 8712
  %i.clr = load ptr, ptr %i.clq, align 8, !tbaa !1045
  %.not53.i.i.i = icmp eq ptr %i.clr, null
  br i1 %.not53.i.i.i, label %bb.rh, label %_ZN5ImGuiL23NavUpdatePageUpPageDownEv.exit.i.i

bb.rh:                                            ; preds = %bb.rg
  %i.cls = getelementptr i8, ptr %i.clk, i64 388
  %i.clt = load i8, ptr %i.cls, align 4, !tbaa !208, !range !64, !noundef !204
  %i.clu = trunc nuw i8 %i.clt to i1
  br i1 %i.clu, label %bb.ri, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

bb.ri:                                            ; preds = %bb.rh
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clk, i64 7772
  %i.clw = load i8, ptr %i.clv, align 4, !tbaa !650, !range !64, !noundef !204
  %i.clx = trunc nuw i8 %i.clw to i1
  br i1 %i.clx, label %bb.rj, label %bb.rk

bb.rj:                                            ; preds = %bb.ri
  %i.cly = getelementptr inbounds nuw i8, ptr %i.clk, i64 5428
  %i.clz = load i32, ptr %i.cly, align 4, !tbaa !819
  %.not101.i.i.i.a = icmp eq i32 %i.clz, -1
  br i1 %.not101.i.i.i.a, label %bb.rk, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

bb.rk:                                            ; preds = %bb.rj, %bb.ri
  %i.cma = getelementptr i8, ptr %i.clk, i64 5624
  %i.cmb = load i32, ptr %i.cma, align 8, !tbaa !622
  %.not.i.i.i.i322.i = icmp eq i32 %i.cmb, -1
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i:        ; preds = %bb.rk, %bb.rj, %bb.rh
  %.0.i.i.i.i = phi i1 [ false, %bb.rh ], [ %.not.i.i.i.i322.i, %bb.rk ], [ false, %bb.rj ] ; 3 uses
  %i.cmc = getelementptr i8, ptr %i.clk, i64 404
  %i.cmd = load i8, ptr %i.cmc, align 4, !tbaa !208, !range !64, !noundef !204
  %i.cme = trunc nuw i8 %i.cmd to i1
  br i1 %i.cme, label %bb.rl, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

bb.rl:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i
  %i.cmf = getelementptr inbounds nuw i8, ptr %i.clk, i64 7772
  %i.cmg = load i8, ptr %i.cmf, align 4, !tbaa !650, !range !64, !noundef !204
  %i.cmh = trunc nuw i8 %i.cmg to i1
  br i1 %i.cmh, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %i.cmi = getelementptr inbounds nuw i8, ptr %i.clk, i64 5428
  %i.cmj = load i32, ptr %i.cmi, align 4, !tbaa !819
  %.not102.i.i.i.a = icmp eq i32 %i.cmj, -1
  br i1 %.not102.i.i.i.a, label %bb.rn, label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %i.cmk = getelementptr i8, ptr %i.clk, i64 5636
  %i.cml = load i32, ptr %i.cmk, align 4, !tbaa !622
  %.not.i.i56.i.i.i.a = icmp eq i32 %i.cml, -1
  %i.cmm = xor i1 %.0.i.i.i.i, %.not.i.i56.i.i.i.a
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i

_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i:      ; preds = %bb.rn, %bb.rm, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i
  %.0.i55.i.i.i = phi i1 [ %.0.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit.i.i.i ], [ %i.cmm, %bb.rn ], [ %.0.i.i.i.i, %bb.rm ]
  %i.cmn = getelementptr i8, ptr %i.clk, i64 420
  %i.cmo = load i8, ptr %i.cmn, align 4, !tbaa !208, !range !64, !noundef !204
  %i.cmp = trunc nuw i8 %i.cmo to i1
  br i1 %i.cmp, label %bb.ro, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.ro:                                            ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i
  %i.cmq = getelementptr i8, ptr %i.clk, i64 424
  %i.cmr = load float, ptr %i.cmq, align 8, !tbaa !1008 ; 8 uses
  %i.cms = fcmp olt float %i.cmr, 0.000000e+00
  br i1 %i.cms, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i, label %bb.rp

bb.rp:                                            ; preds = %bb.ro
  %i.cmt = fcmp oeq float %i.cmr, 0.000000e+00
  br i1 %i.cmt, label %.thread.i.i321.i, label %bb.rq

bb.rq:                                            ; preds = %bb.rp
  %i.cmu = getelementptr inbounds nuw i8, ptr %i.clk, i64 164
  %i.cmv = load float, ptr %i.cmu, align 4, !tbaa !911 ; 5 uses
  %i.cmw = getelementptr inbounds nuw i8, ptr %i.clk, i64 168
  %i.cmx = load float, ptr %i.cmw, align 8, !tbaa !913 ; 2 uses
  %i.cmy = fcmp ogt float %i.cmr, %i.cmv
  br i1 %i.cmy, label %bb.rr, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rr:                                            ; preds = %bb.rq
  %i.cmz = getelementptr inbounds nuw i8, ptr %i.clk, i64 64
  %i.cna = load float, ptr %i.cmz, align 8, !tbaa !912
  %i.cnb = fsub float %i.cmr, %i.cna              ; 3 uses
  %i.cnc = fcmp ult float %i.cnb, %i.cmr
  br i1 %i.cnc, label %bb.rs, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rs:                                            ; preds = %bb.rr
  %i.cnd = fcmp ugt float %i.cmx, 0.000000e+00
  %i.cne = fcmp olt float %i.cnb, %i.cmv          ; 2 uses
  br i1 %i.cnd, label %.split.i.i.i, label %bb.rt

.split.i.i.i:                                     ; preds = %bb.rs
  %i.cnf = insertelement <2 x float> poison, float %i.cmr, i64 0
  %i.cng = insertelement <2 x float> %i.cnf, float %i.cnb, i64 1
  %i.cnh = insertelement <2 x float> poison, float %i.cmv, i64 0
  %i.cni = shufflevector <2 x float> %i.cnh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnj = fsub <2 x float> %i.cng, %i.cni
  %i.cnk = fcmp olt float %i.cmr, %i.cmv
  %i.cnl = insertelement <2 x float> poison, float %i.cmx, i64 0
  %i.cnm = shufflevector <2 x float> %i.cnl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cnn = fdiv <2 x float> %i.cnj, %i.cnm
  %i.cno = fptosi <2 x float> %i.cnn to <2 x i32>
  %i.cnp = insertelement <2 x i1> poison, i1 %i.cnk, i64 0
  %i.cnq = insertelement <2 x i1> %i.cnp, i1 %i.cne, i64 1
  %i.cnr = select <2 x i1> %i.cnq, <2 x i32> splat (i32 -1), <2 x i32> %i.cno ; 2 uses
  %shift781 = shufflevector <2 x i32> %i.cnr, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %i.cns = icmp sgt <2 x i32> %i.cnr, %shift781
  %i.cnt = extractelement <2 x i1> %i.cns, i64 0
  br i1 %i.cnt, label %.thread.i.i321.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rt:                                            ; preds = %bb.rs
  %i.cnu = fcmp oge float %i.cmr, %i.cmv
  %i.cnv = and i1 %i.cnu, %i.cne
  br i1 %i.cnv, label %.thread.i.i321.i, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

.thread.i.i321.i:                                 ; preds = %bb.rt, %.split.i.i.i, %bb.rp
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.clk, i64 7772
  %i.cnx = load i8, ptr %i.cnw, align 4, !tbaa !650, !range !64, !noundef !204
  %i.cny = trunc nuw i8 %i.cnx to i1
  br i1 %i.cny, label %bb.ru, label %bb.rv

bb.ru:                                            ; preds = %.thread.i.i321.i
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.clk, i64 5428
  %i.coa = load i32, ptr %i.cnz, align 4, !tbaa !819
  %.not103.i.i.i.a = icmp eq i32 %i.coa, -1
  br i1 %.not103.i.i.i.a, label %bb.rv, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

bb.rv:                                            ; preds = %bb.ru, %.thread.i.i321.i
  %i.cob = getelementptr i8, ptr %i.clk, i64 5648
  %i.coc = load i32, ptr %i.cob, align 8, !tbaa !622
  %.not.i.i58.i.i.i = icmp eq i32 %i.coc, -1
  br label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i

_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i:   ; preds = %bb.rv, %bb.ru, %bb.rt, %.split.i.i.i, %bb.rr, %bb.rq, %bb.ro, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i
  %.230.i.i.i.i = phi i1 [ false, %_ZN5ImGui9IsKeyDownE8ImGuiKeyj.exit57.i.i.i ], [ false, %bb.ro ], [ false, %bb.rt ], [ false, %bb.rr ], [ false, %bb.rq ], [ %.not.i.i58.i.i.i, %bb.rv ], [ false, %bb.ru ], [ false, %.split.i.i.i ] ; 3 uses
  %i.cod = getelementptr i8, ptr %i.clk, i64 436
  %i.coe = load i8, ptr %i.cod, align 4, !tbaa !208, !range !64, !noundef !204
  %i.cof = trunc nuw i8 %i.coe to i1
  br i1 %i.cof, label %bb.rw, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.rw:                                            ; preds = %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit.i.i.i
  %i.cog = getelementptr i8, ptr %i.clk, i64 440
  %i.coh = load float, ptr %i.cog, align 8, !tbaa !1008 ; 8 uses
  %i.coi = fcmp olt float %i.coh, 0.000000e+00
  br i1 %i.coi, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i, label %bb.rx

bb.rx:                                            ; preds = %bb.rw
  %i.coj = fcmp oeq float %i.coh, 0.000000e+00
  br i1 %i.coj, label %.thread83.i.i.i, label %bb.ry

bb.ry:                                            ; preds = %bb.rx
  %i.cok = getelementptr inbounds nuw i8, ptr %i.clk, i64 164
  %i.col = load float, ptr %i.cok, align 4, !tbaa !911 ; 5 uses
  %i.com = getelementptr inbounds nuw i8, ptr %i.clk, i64 168
  %i.con = load float, ptr %i.com, align 8, !tbaa !913 ; 2 uses
  %i.coo = fcmp ogt float %i.coh, %i.col
  br i1 %i.coo, label %bb.rz, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.rz:                                            ; preds = %bb.ry
  %i.cop = getelementptr inbounds nuw i8, ptr %i.clk, i64 64
  %i.coq = load float, ptr %i.cop, align 8, !tbaa !912
  %i.cor = fsub float %i.coh, %i.coq              ; 3 uses
  %i.cos = fcmp ult float %i.cor, %i.coh
  br i1 %i.cos, label %bb.sa, label %_ZN5ImGui12IsKeyPressedE8ImGuiKeyij.exit65.i.i.i

bb.sa:                                            ; preds = %bb.rz
  %i.cot = fcmp ugt float %i.con, 0.000000e+00
  %i.cou = fcmp olt float %i.cor, %i.col          ; 2 uses
  br i1 %i.cot, label %.split85.i.i.i, label %bb.sb

.split85.i.i.i:                                   ; preds = %bb.sa
  %i.cov = insertelement <2 x float> poison, float %i.coh, i64 0
  %i.cow = insertelement <2 x float> %i.cov, float %i.cor, i64 1
  %i.cox = insertelement <2 x float> poison, float %i.col, i64 0
  %i.coy = shufflevector <2 x float> %i.cox, <2 x float> poison, <2 x i32> zeroinitializer
  %i.coz = fsub <2 x float> %i.cow, %i.coy
  %i.cpa = fcmp olt float %i.coh, %i.col
  %i.cpb = insertelement <2 x float> poison, float %i.con, i64 0
  %i.cpc = shufflevector <2 x float> %i.cpb, <2 x float> poison, <2 x i32> zeroinitializer
end_hunk_2
begin_hunk_3_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.te = phi i8 [ %i.td, %bb.cg ], [ %i.tc, %._crit_edge.i565 ]
  %i.tf = icmp ne i8 %i.te, %i.sr
  %i.tg = zext i1 %i.tf to i8
  store i8 %i.tg, ptr %i.sy, align 8, !tbaa !1215
  %.pre1037 = load i32, ptr %i.pn, align 8, !tbaa !1128
  br label %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit

_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit: ; preds = %._crit_edge8.i, %bb.cf, %bb.cd
  %i.th = phi i32 [ %.pre1037, %._crit_edge8.i ], [ %i.so, %bb.cf ], [ %i.so, %bb.cd ]
  %i.ti = and i32 %i.th, 32
  %.not461 = icmp eq i32 %i.ti, 0
  br i1 %.not461, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit
  call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef %.pre1039.pre, i32 noundef 0)
  %.pre1038 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit
  %i.tj = phi ptr [ %.pre1038, %bb.ch ], [ %.pre1039.pre, %_ZN5ImGui18SetWindowCollapsedEP11ImGuiWindowbi.exit ] ; 15 uses
  %i.tk = getelementptr inbounds nuw i8, ptr %i.tj, i64 211
  %i.tl = load i8, ptr %i.tk, align 1, !tbaa !905, !range !64, !noundef !204
  %i.tm = trunc nuw i8 %i.tl to i1                ; 2 uses
  br i1 %i.tm, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tj, i64 239 ; 2 uses
  %i.to = load i32, ptr %i.tn, align 1
  %i.tp = and i32 %i.to, -134744065
  store i32 %i.tp, ptr %i.tn, align 1
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.tq = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 11 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tj, i64 210 ; 2 uses
  store i8 0, ptr %i.tr, align 2, !tbaa !1216
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tq, i64 7928
  %i.tt = load i32, ptr %i.ts, align 8, !tbaa !1128
  %i.tu = and i32 %i.tt, 1024
  %i.tv = icmp eq i32 %i.tu, 0
  br i1 %i.tv, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tq, i64 8044
  %i.tx = load i32, ptr %i.tw, align 4, !tbaa !1217 ; 3 uses
  %i.ty = and i32 %i.tx, 1
  %.not.i566 = icmp eq i32 %i.ty, 0
  %brmerge = or i1 %.not.i566, %i.tm
  br i1 %brmerge, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tj, i64 212
  %i.ua = load i8, ptr %i.tz, align 4, !tbaa !926, !range !64, !noundef !204
  %i.ub = trunc nuw i8 %i.ua to i1
  br i1 %i.ub, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.uc = and i32 %i.tx, 2
  %.not22.i = icmp eq i32 %i.uc, 0
  br i1 %.not22.i, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ud = getelementptr inbounds nuw i8, ptr %i.tq, i64 5320
  %i.ue = load ptr, ptr %i.ud, align 8, !tbaa !853 ; 2 uses
  %.not23.i = icmp eq ptr %i.ue, null
  br i1 %.not23.i, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.uf = getelementptr inbounds nuw i8, ptr %i.tj, i64 960
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !847
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ue, i64 960
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !847 ; 3 uses
  %i.uj = icmp eq ptr %i.ug, %i.ui
  br i1 %i.uj, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.uk = getelementptr inbounds nuw i8, ptr %i.ui, i64 960
  %i.ul = load ptr, ptr %i.uk, align 8, !tbaa !847
  %i.um = icmp eq ptr %i.ul, %i.tj
  br i1 %i.um, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %.lr.ph.i.i567

.lr.ph.i.i567:                                    ; preds = %bb.cq, %bb.cr
  %.079.i.i = phi ptr [ %i.up, %bb.cr ], [ %i.ui, %bb.cq ] ; 2 uses
  %i.un = icmp eq ptr %.079.i.i, %i.tj
  br i1 %i.un, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %bb.cr

bb.cr:                                            ; preds = %.lr.ph.i.i567
  %i.uo = getelementptr inbounds nuw i8, ptr %.079.i.i, i64 952
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !848 ; 2 uses
  %.not.i.i568 = icmp eq ptr %i.up, null
  br i1 %.not.i.i568, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i, label %.lr.ph.i.i567, !llvm.loop !849

_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i: ; preds = %bb.cr, %bb.co, %bb.cn
  %i.uq = and i32 %i.tx, 4
  %.not24.i = icmp eq i32 %i.uq, 0
  br i1 %.not24.i, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit30.i, label %bb.cs

bb.cs:                                            ; preds = %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i
  %i.ur = getelementptr inbounds nuw i8, ptr %i.tq, i64 8224
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !389 ; 2 uses
  %.not25.i569 = icmp eq ptr %i.us, null
  br i1 %.not25.i569, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit30.i, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ut = getelementptr inbounds nuw i8, ptr %i.tj, i64 960
  %i.uu = load ptr, ptr %i.ut, align 8, !tbaa !847
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 960
  %i.uw = load ptr, ptr %i.uv, align 8, !tbaa !847 ; 3 uses
  %i.ux = icmp eq ptr %i.uu, %i.uw
  br i1 %i.ux, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 960
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !847
  %i.va = icmp eq ptr %i.uz, %i.tj
  br i1 %i.va, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %.lr.ph.i26.i

.lr.ph.i26.i:                                     ; preds = %bb.cu, %bb.cv
  %.079.i27.i = phi ptr [ %i.vd, %bb.cv ], [ %i.uw, %bb.cu ] ; 2 uses
  %i.vb = icmp eq ptr %.079.i27.i, %i.tj
  br i1 %i.vb, label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit, label %bb.cv

bb.cv:                                            ; preds = %.lr.ph.i26.i
  %i.vc = getelementptr inbounds nuw i8, ptr %.079.i27.i, i64 952
  %i.vd = load ptr, ptr %i.vc, align 8, !tbaa !848 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.vd, null
  br i1 %.not.i28.i, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit30.i, label %.lr.ph.i26.i, !llvm.loop !849

_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit30.i: ; preds = %bb.cv, %bb.cs, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit.i
  %i.ve = getelementptr inbounds nuw i8, ptr %i.tj, i64 712
  store ptr null, ptr %i.ve, align 8, !tbaa !452
  store i8 1, ptr %i.tr, align 2, !tbaa !1216
  br label %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit

_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit: ; preds = %.lr.ph.i.i567, %.lr.ph.i26.i, %bb.cl, %bb.ck, %bb.cm, %bb.cp, %bb.cq, %bb.ct, %bb.cu, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit30.i
  %.pre10621243 = phi i8 [ 0, %.lr.ph.i26.i ], [ 1, %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit30.i ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ 0, %bb.cm ], [ 0, %bb.cp ], [ 0, %bb.cq ], [ 0, %bb.ct ], [ 0, %bb.cu ], [ 0, %.lr.ph.i.i567 ] ; 2 uses
  %i.vf = load i8, ptr %i.la, align 2, !tbaa !1194, !range !64, !noundef !204
  %i.vg = trunc nuw i8 %i.vf to i1
  br i1 %i.vg, label %bb.cw, label %bb.cy

bb.cw:                                            ; preds = %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit
  %i.vh = getelementptr inbounds nuw i8, ptr %i.tj, i64 960
  %i.vi = load ptr, ptr %i.vh, align 8, !tbaa !847
  %i.vj = icmp eq ptr %i.vi, %i.tj
  br i1 %i.vj, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.vk = getelementptr inbounds nuw i8, ptr %i.tq, i64 3220 ; 2 uses
  %i.vl = load float, ptr %i.vk, align 4, !tbaa !1218
  %i.vm = getelementptr inbounds nuw i8, ptr %i.tq, i64 5264
  %i.vn = getelementptr inbounds nuw i8, ptr %i.tq, i64 5272
  %i.vo = load ptr, ptr %i.vn, align 8, !tbaa !565
  %i.vp = load i32, ptr %i.vm, align 8, !tbaa !567
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr [120 x i8], ptr %i.vo, i64 %i.vq
  %i.vs = getelementptr i8, ptr %i.vr, i64 -8
  store float %i.vl, ptr %i.vs, align 8, !tbaa !1195
  %i.vt = getelementptr inbounds nuw i8, ptr %i.tq, i64 9852
  %i.vu = load float, ptr %i.vt, align 4, !tbaa !1219
  store float %i.vu, ptr %i.vk, align 4, !tbaa !1218
  %i.vv = getelementptr inbounds nuw i8, ptr %i.tq, i64 7784 ; 3 uses
  %i.vw = load i32, ptr %i.vv, align 8, !tbaa !1036
  %i.vx = and i32 %i.vw, -65
  store i32 %i.vx, ptr %i.vv, align 8, !tbaa !1036
  %i.vy = getelementptr inbounds nuw i8, ptr %i.tq, i64 8120
  call void @_ZN8ImVectorIiE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(16) %i.vy, ptr noundef nonnull align 4 dereferenceable(4) %i.vv)
  %i.vz = getelementptr inbounds nuw i8, ptr %i.tq, i64 9856 ; 2 uses
  %i.wa = load i16, ptr %i.vz, align 8, !tbaa !1165
  %i.wb = add i16 %i.wa, 1
  store i16 %i.wb, ptr %i.vz, align 8, !tbaa !1165
  %.pre1059.pre = load ptr, ptr %i.g, align 8, !tbaa !705 ; 2 uses
  %.phi.trans.insert1061.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1059.pre, i64 210
  %.pre1062.pre = load i8, ptr %.phi.trans.insert1061.phi.trans.insert, align 2, !tbaa !1216, !range !64
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw, %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit
  %.pre1062 = phi i8 [ %.pre1062.pre, %bb.cx ], [ %.pre10621243, %bb.cw ], [ %.pre10621243, %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit ]
  %.pre1059 = phi ptr [ %.pre1059.pre, %bb.cx ], [ %i.tj, %bb.cw ], [ %i.tj, %_ZN5ImGui23UpdateWindowSkipRefreshEP11ImGuiWindow.exit ] ; 7 uses
  store ptr null, ptr %i.ki, align 8, !tbaa !298
  %i.wc = trunc nuw i8 %.pre1062 to i1            ; 2 uses
  br i1 %.not444, label %bb.pv, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  br i1 %i.wc, label %.thread1189, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.wd = and i32 %.1403, 16777216
  %.not462 = icmp eq i32 %i.wd, 0                 ; 9 uses
  %i.we = and i32 %.1403, 50331648                ; 2 uses
  %i.wf = icmp eq i32 %i.we, 50331648             ; 3 uses
  %i.wg = getelementptr inbounds nuw i8, ptr %.pre1059, i64 236
  %i.wh = load i8, ptr %i.wg, align 4, !tbaa !1220
  %i.wi = icmp slt i8 %i.wh, 1
  %i.wj = getelementptr inbounds nuw i8, ptr %.pre1059, i64 204
  store i8 1, ptr %i.wj, align 4, !tbaa !886
  %i.wk = icmp ne ptr %1, null
  %i.wl = getelementptr inbounds nuw i8, ptr %.pre1059, i64 215
  %i.wm = zext i1 %i.wk to i8
  store i8 %i.wm, ptr %i.wl, align 1, !tbaa !1221
  %i.wn = getelementptr inbounds nuw i8, ptr %.pre1059, i64 616
  store <4 x i32> <i32 -8388609, i32 -8388609, i32 2139095039, i32 2139095039>, ptr %i.wn, align 8, !tbaa !8
  %i.wo = getelementptr inbounds nuw i8, ptr %.pre1059, i64 264
  call void @_ZN8ImVectorIjE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.wo, i32 noundef 1)
  %i.wp = load ptr, ptr %i.g, align 8, !tbaa !705
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wp, i64 712
  %i.wr = load ptr, ptr %i.wq, align 8, !tbaa !452
  call void @_ZN10ImDrawList17_ResetForNewFrameEv(ptr noundef nonnull align 8 dereferenceable(224) %i.wr)
  %i.ws = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 464
  store i32 -1, ptr %i.wt, align 8, !tbaa !1222
  %i.wu = getelementptr inbounds nuw i8, ptr %i.ws, i64 1076
  %i.wv = load i8, ptr %i.wu, align 4, !tbaa !808, !range !64, !noundef !204
  %i.ww = trunc nuw i8 %i.wv to i1
  br i1 %i.ww, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  call void @_ZN5ImGui29GcAwakeTransientWindowBuffersEP11ImGuiWindow(ptr noundef nonnull %i.ws)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %i.wx = getelementptr inbounds nuw i8, ptr %i.j, i64 8728
  %i.wy = load ptr, ptr %i.wx, align 8, !tbaa !1223 ; 2 uses
  %.not464 = icmp eq ptr %i.wy, null
  br i1 %.not464, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 205
  %i.xa = load i8, ptr %i.wz, align 1, !tbaa !436, !range !64, !noundef !204
  %i.xb = trunc nuw i8 %i.xa to i1
  %i.xc = and i32 %.1403, 131072
  %i.xd = icmp eq i32 %i.xc, 0
  %or.cond510 = select i1 %i.xb, i1 %i.xd, i1 false
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.0417 = phi i1 [ %or.cond510, %bb.dd ], [ false, %bb.dc ]
  %spec.select511 = select i1 %.not448, i1 true, i1 %.0417
  %or.cond = or i1 %.0407.in964, %spec.select511
  %or.cond.not = xor i1 %or.cond, true
  %or.cond3 = or i1 %i.eg, %or.cond.not
  %.pre1040 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 4 uses
  br i1 %or.cond3, label %bb.dh, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xe = getelementptr inbounds nuw i8, ptr %.pre1040, i64 8
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !299 ; 2 uses
  %i.xg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %i.xf) #57
  %.not465 = icmp eq i32 %i.xg, 0
  br i1 %.not465, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #41
  %i.xh = getelementptr inbounds nuw i8, ptr %.pre1040, i64 136
  %i.xi = load i32, ptr %i.xh, align 8, !tbaa !788
  %i.xj = sext i32 %i.xi to i64
  store i64 %i.xj, ptr %i.h, align 8, !tbaa !232
  %i.xk = call noundef ptr @_Z11ImStrdupcpyPcPmPKc(ptr noundef nonnull %i.xf, ptr noundef nonnull %i.h, ptr noundef nonnull %0)
  %i.xl = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 8
  store ptr %i.xk, ptr %i.xm, align 8, !tbaa !299
  %i.xn = load i64, ptr %i.h, align 8, !tbaa !232
  %i.xo = trunc i64 %i.xn to i32
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 136
  store i32 %i.xo, ptr %i.xp, align 8, !tbaa !788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #41
  br label %bb.dh

bb.dh:                                            ; preds = %bb.de, %bb.dg, %bb.df
  %i.xq = phi ptr [ %.pre1040, %bb.de ], [ %i.xl, %bb.dg ], [ %.pre1040, %bb.df ] ; 3 uses
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xq, i64 64
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xq, i64 72
  call fastcc void @_ZL22CalcWindowContentSizesP11ImGuiWindowP6ImVec2S2_(ptr noundef %i.xq, ptr noundef nonnull %i.xr, ptr noundef nonnull %i.xs)
  %i.xt = load ptr, ptr %i.g, align 8, !tbaa !705 ; 12 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 235 ; 2 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !1224 ; 2 uses
  %i.xw = icmp sgt i8 %i.xv, 0
  br i1 %i.xw, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.xx = add nsw i8 %i.xv, -1
  store i8 %i.xx, ptr %i.xu, align 1, !tbaa !1224
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xt, i64 236 ; 4 uses
  %i.xz = load i8, ptr %i.xy, align 4, !tbaa !1220 ; 2 uses
  %i.ya = icmp sgt i8 %i.xz, 0
  br i1 %i.ya, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.yb = add nsw i8 %i.xz, -1
  store i8 %i.yb, ptr %i.xy, align 4, !tbaa !1220
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xt, i64 237 ; 2 uses
  %i.yd = load i8, ptr %i.yc, align 1, !tbaa !1225 ; 2 uses
  %i.ye = icmp sgt i8 %i.yd, 0
  br i1 %i.ye, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.yf = add nsw i8 %i.yd, -1
  store i8 %i.yf, ptr %i.yc, align 1, !tbaa !1225
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %.not512 = xor i1 %i.eg, true
  %or.cond5 = select i1 %.0420, i1 %.0419, i1 false
  %or.cond513 = select i1 %.not512, i1 true, i1 %or.cond5
  br i1 %or.cond513, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %bb.dn
  store i8 1, ptr %i.xy, align 4, !tbaa !1220
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.yg = and i32 %.1403, 100663296
  %.not466 = icmp ne i32 %i.yg, 0                 ; 2 uses
  %or.cond514.not = select i1 %.0407.in964, i1 %.not466, i1 false
  br i1 %or.cond514.not, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %bb.dp
  store i8 1, ptr %i.xy, align 4, !tbaa !1220
  %i.yh = and i32 %.1403, 64
  %.not467 = icmp eq i32 %i.yh, 0
  br i1 %.not467, label %bb.dw, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  br i1 %.0420, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xt, i64 56
  store float 0.000000e+00, ptr %i.yi, align 8, !tbaa !910
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xt, i64 48
  store float 0.000000e+00, ptr %i.yj, align 8, !tbaa !723
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  br i1 %.0419, label %bb.dv, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xt, i64 60
  store float 0.000000e+00, ptr %i.yk, align 4, !tbaa !1210
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xt, i64 52
  store float 0.000000e+00, ptr %i.yl, align 4, !tbaa !724
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.ym = getelementptr inbounds nuw i8, ptr %i.xt, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ym, i8 0, i64 16, i1 false)
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dp, %bb.dv, %bb.dq
  %i.yn = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 11 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %i.yn, i64 8208
  %i.yp = load ptr, ptr %i.yo, align 8, !tbaa !437
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !438 ; 6 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xt, i64 32
  store ptr %i.yq, ptr %i.yr, align 8, !tbaa !1226
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yn, i64 5312
  store ptr %i.xt, ptr %i.ys, align 8, !tbaa !298
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yn, i64 5264
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yn, i64 5272
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !565
  %i.yw = load i32, ptr %i.yt, align 8, !tbaa !567
  %i.yx = sext i32 %i.yw to i64
  %i.yy = getelementptr [120 x i8], ptr %i.yv, i64 %i.yx
  %i.yz = getelementptr i8, ptr %i.yy, i64 -32
  %i.za = getelementptr inbounds nuw i8, ptr %i.yn, i64 10392
  store ptr %i.yz, ptr %i.za, align 8, !tbaa !680
  %i.zb = getelementptr inbounds nuw i8, ptr %i.xt, i64 464
  %i.zc = load i32, ptr %i.zb, align 8, !tbaa !1222 ; 2 uses
  %.not23.i571 = icmp eq i32 %i.zc, -1
  br i1 %.not23.i571, label %bb.dy, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yn, i64 9024
  %i.ze = load ptr, ptr %i.zd, align 8, !tbaa !700
  %i.zf = sext i32 %i.zc to i64
  %i.zg = getelementptr inbounds [592 x i8], ptr %i.ze, i64 %i.zf
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.ph.i = phi ptr [ null, %bb.dw ], [ %i.zg, %bb.dx ]
  %i.zh = getelementptr inbounds nuw i8, ptr %i.yn, i64 8984
  store ptr %.ph.i, ptr %i.zh, align 8, !tbaa !338
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yn, i64 4584
  store float 1.000000e+00, ptr %i.zi, align 8, !tbaa !1227
  %i.zj = getelementptr inbounds nuw i8, ptr %i.yn, i64 44
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !950
  %i.zl = and i32 %i.zk, 16
  %.not24.i572 = icmp eq i32 %i.zl, 0
  br i1 %.not24.i572, label %bb.ec, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.zm = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.zn = load float, ptr %i.zm, align 8, !tbaa !1228 ; 2 uses
  %i.zo = fcmp une float %i.zn, 0.000000e+00
  br i1 %i.zo, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
end_hunk_3
begin_hunk_4_@_ZN5ImGui5BeginEPKcPbi:bb.a
  store i8 1, ptr %i.bhu, align 8, !tbaa !1090
  br label %.thread983

.thread983:                                       ; preds = %bb.kl, %bb.ko, %bb.kn
  %i.biy = phi i8 [ %i.bin, %bb.kn ], [ 1, %bb.ko ], [ %i.bin, %bb.kl ]
  %i.biz = phi i8 [ 0, %bb.kn ], [ 1, %bb.ko ], [ 0, %bb.kl ]
  %i.bja = getelementptr inbounds nuw i8, ptr %i.bgn, i64 202
  store i8 %i.biz, ptr %i.bja, align 2, !tbaa !1263
  %i.bjb = trunc nuw i8 %i.biy to i1              ; 2 uses
  %.not999 = xor i1 %i.bjb, true
  %i.bjc = trunc nuw i8 %i.bia to i1
  %or.cond1000 = select i1 %.not999, i1 true, i1 %i.bjc
  br i1 %or.cond1000, label %bb.kq, label %bb.kp

bb.kp:                                            ; preds = %.thread983
  %.sroa.0826.4.vec.extract829 = extractelement <2 x float> %.sroa.0826.0, i64 1
  %i.bjd = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bje = load float, ptr %i.bjd, align 4, !tbaa !1260
  %i.bjf = fsub float %i.bht, %i.bje
  %i.bjg = fcmp ogt float %.sroa.0826.4.vec.extract829, %i.bjf
  %i.bjh = and i32 %.1403, 8
  %.not493 = icmp eq i32 %i.bjh, 0
  %narrow = select i1 %i.bjg, i1 %.not493, i1 false
  %i.bji = zext i1 %narrow to i8                  ; 2 uses
  store i8 %i.bji, ptr %i.bib, align 1, !tbaa !1259
  br label %bb.kq

bb.kq:                                            ; preds = %bb.kp, %.thread983
  %i.bjj = phi i8 [ %i.bji, %bb.kp ], [ %i.bia, %.thread983 ]
  %i.bjk = trunc nuw i8 %i.bjj to i1
  br i1 %i.bjk, label %bb.kr, label %bb.ks

bb.kr:                                            ; preds = %bb.kq
  %i.bjl = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjm = load float, ptr %i.bjl, align 4, !tbaa !1260
  br label %bb.ks

bb.ks:                                            ; preds = %bb.kq, %bb.kr
  %.cast = phi float [ %i.bjm, %bb.kr ], [ 0.000000e+00, %bb.kq ] ; 2 uses
  br i1 %i.bjb, label %bb.kt, label %bb.ku

bb.kt:                                            ; preds = %bb.ks
  %i.bjn = getelementptr inbounds nuw i8, ptr %i.j, i64 3340
  %i.bjo = load float, ptr %i.bjn, align 4, !tbaa !1260
  br label %bb.ku

bb.ku:                                            ; preds = %bb.ks, %bb.kt
  %.cast1008 = phi float [ %i.bjo, %bb.kt ], [ 0.000000e+00, %bb.ks ] ; 2 uses
  %i.bjp = getelementptr inbounds nuw i8, ptr %i.bgn, i64 192
  store float %.cast, ptr %i.bjp, align 8
  %.sroa_idx822 = getelementptr inbounds nuw i8, ptr %i.bgn, i64 196
  store float %.cast1008, ptr %.sroa_idx822, align 4
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bgn, i64 120 ; 2 uses
  %i.bjr = load float, ptr %i.bjq, align 8, !tbaa !1264
  %i.bjs = fadd float %.cast, %i.bjr
  store float %i.bjs, ptr %i.bjq, align 8, !tbaa !1264
  %i.bjt = fadd float %i.bhb, %.cast1008
  store float %i.bjt, ptr %i.bha, align 4, !tbaa !1258
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit.i

_Z7ImClampRK6ImVec2S1_S1_.exit.i:                 ; preds = %bb.ku, %_ZN5ImGuiL24UpdateWindowManualResizeEP11ImGuiWindowPiS2_iPjRK6ImRect.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #41
  %or.cond29 = or i1 %i.wf, %i.oy
  %or.cond534 = select i1 %.not462, i1 true, i1 %or.cond29 ; 2 uses
  %i.bju = getelementptr inbounds nuw i8, ptr %i.kb, i64 616
  %i.bjv = select i1 %or.cond534, ptr %28, ptr %i.bju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 4 dereferenceable(16) %i.bjv, i64 16, i1 false), !tbaa.struct !419
  %i.bjw = getelementptr inbounds nuw i8, ptr %i.bgn, i64 40
  %i.bjx = getelementptr inbounds nuw i8, ptr %i.bgn, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #41
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.bgn, i64 56
  %i.bjz = load float, ptr %i.bjy, align 8, !tbaa !910
  %i.bka = getelementptr inbounds nuw i8, ptr %i.bgn, i64 104
  %i.bkb = load float, ptr %i.bka, align 8, !tbaa !909
  %i.bkc = load <2 x float>, ptr %i.bjw, align 8  ; 8 uses
  store <2 x float> %i.bkc, ptr %30, align 8
  %i.bkd = getelementptr inbounds nuw i8, ptr %30, i64 8 ; 5 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bgn, i64 536
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bgn, i64 544
  %i.bkf = extractelement <2 x float> %i.bkc, i64 0
  %i.bkg = fadd float %i.bkf, %i.bjz
  %i.bkh = extractelement <2 x float> %i.bkc, i64 1
  %i.bki = fadd float %i.bkh, %i.bkb
  %.sroa.2.8.vec.insert.i635 = insertelement <2 x float> poison, float %i.bkg, i64 0
  %.sroa.2.12.vec.insert.i636 = insertelement <2 x float> %.sroa.2.8.vec.insert.i635, float %i.bki, i64 1
  store <2 x float> %.sroa.2.12.vec.insert.i636, ptr %i.bkd, align 8
  %i.bkj = load <2 x float>, ptr %29, align 8, !tbaa !8 ; 6 uses
  %i.bkk = fcmp ole <2 x float> %i.bkj, %i.bkc
  %i.bkl = select <2 x i1> %i.bkk, <2 x float> %i.bkc, <2 x float> %i.bkj
  store <2 x float> %i.bkl, ptr %i.bke, align 8
  %i.bkm = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 2 uses
  %i.bkn = getelementptr inbounds nuw i8, ptr %i.bgn, i64 112
  %i.bko = getelementptr inbounds nuw i8, ptr %i.bgn, i64 552
  %i.bkp = load <2 x float>, ptr %i.bkn, align 8, !tbaa !8
  %i.bkq = fadd <2 x float> %i.bkc, %i.bkp        ; 3 uses
  store <2 x float> %i.bkq, ptr %i.bko, align 8, !tbaa !8
  %i.bkr = getelementptr inbounds nuw i8, ptr %i.bgn, i64 120
  %i.bks = getelementptr inbounds nuw i8, ptr %i.bgn, i64 560
  %i.bkt = load <2 x float>, ptr %i.bjx, align 8, !tbaa !8 ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.bkc, %i.bkt
  %i.bku = fadd <2 x float> %i.bkt, %i.bkc        ; 2 uses
  %i.bkv = load <2 x float>, ptr %i.bkm, align 8, !tbaa !8 ; 6 uses
  %i.bkw = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %i.bku, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bkx = fcmp ogt <2 x float> %i.bkv, %i.bkw
  %i.bky = select <2 x i1> %i.bkx, <2 x float> %i.bkw, <2 x float> %i.bkv
  store <2 x float> %i.bky, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bkz = load <2 x float>, ptr %i.bkr, align 8, !tbaa !8
  %i.bla = fsub <2 x float> %i.bku, %i.bkz        ; 3 uses
  store <2 x float> %i.bla, ptr %i.bks, align 8, !tbaa !8
  %i.blb = and i32 %.1403, 1025
  %brmerge535.not = icmp eq i32 %i.blb, 1
  %i.blc = getelementptr inbounds nuw i8, ptr %i.j, i64 3296
  %i.bld = getelementptr inbounds nuw i8, ptr %i.bgn, i64 100 ; 2 uses
  %.in494 = select i1 %brmerge535.not, ptr %i.bld, ptr %i.blc
  %i.ble = load float, ptr %.in494, align 4, !tbaa !8
  %i.blf = load float, ptr %i.bld, align 4, !tbaa !1233 ; 2 uses
  %i.blg = getelementptr inbounds nuw i8, ptr %i.bgn, i64 568
  %i.blh = fneg float %i.blf
  %i.bli = getelementptr inbounds nuw i8, ptr %i.bgn, i64 576
  %i.blj = fadd <2 x float> %i.bkq, splat (float 5.000000e-01)
  %i.blk = insertelement <2 x float> poison, float %i.blf, i64 0
  %i.bll = insertelement <2 x float> %i.blk, float %i.ble, i64 1
  %i.blm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bll, <2 x float> splat (float 5.000000e-01), <2 x float> %i.blj) ; 3 uses
  %i.bln = fcmp ult <2 x float> %i.blm, zeroinitializer
  %i.blo = fptosi <2 x float> %i.blm to <2 x i32> ; 2 uses
  %i.blp = sitofp <2 x i32> %i.blo to <2 x float>
  %i.blq = fcmp une <2 x float> %i.blm, %i.blp
  %i.blr = and <2 x i1> %i.bln, %i.blq
  %i.bls = sext <2 x i1> %i.blr to <2 x i32>
  %i.blt = add nsw <2 x i32> %i.bls, %i.blo
  %i.blu = sitofp <2 x i32> %i.blt to <2 x float> ; 3 uses
  %i.blv = fcmp ogt <2 x float> %i.bkj, %i.blu
  %i.blw = fcmp olt <2 x float> %i.bkv, %i.blu
  %i.blx = select <2 x i1> %i.blw, <2 x float> %i.bkv, <2 x float> %i.blu
  %i.bly = select <2 x i1> %i.blv, <2 x float> %i.bkj, <2 x float> %i.blx
  store <2 x float> %i.bly, ptr %i.blg, align 8
  %i.blz = insertelement <2 x float> poison, float %i.blh, i64 0
  %i.bma = shufflevector <2 x float> %i.blz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bmb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bma, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bla) ; 3 uses
  %i.bmc = fcmp ult <2 x float> %i.bmb, zeroinitializer
  %i.bmd = fptosi <2 x float> %i.bmb to <2 x i32> ; 2 uses
  %i.bme = sitofp <2 x i32> %i.bmd to <2 x float>
  %i.bmf = fcmp une <2 x float> %i.bmb, %i.bme
  %i.bmg = and <2 x i1> %i.bmc, %i.bmf
  %i.bmh = sext <2 x i1> %i.bmg to <2 x i32>
  %i.bmi = add nsw <2 x i32> %i.bmh, %i.bmd
  %i.bmj = sitofp <2 x i32> %i.bmi to <2 x float> ; 3 uses
  %i.bmk = fcmp ogt <2 x float> %i.bkj, %i.bmj
  %i.bml = fcmp olt <2 x float> %i.bkv, %i.bmj
  %i.bmm = select <2 x i1> %i.bml, <2 x float> %i.bkv, <2 x float> %i.bmj
  %i.bmn = select <2 x i1> %i.bmk, <2 x float> %i.bkj, <2 x float> %i.bmm
  store <2 x float> %i.bmn, ptr %i.bli, align 8
  %i.bmo = getelementptr inbounds nuw i8, ptr %i.bgn, i64 64
  %i.bmp = getelementptr inbounds nuw i8, ptr %i.bgn, i64 88
  %i.bmq = getelementptr inbounds nuw i8, ptr %i.bgn, i64 160
  %i.bmr = load <2 x float>, ptr %i.bmo, align 8, !tbaa !8
  %i.bms = load <2 x float>, ptr %i.bmp, align 8, !tbaa !8
  %i.bmt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bms, <2 x float> splat (float 2.000000e+00), <2 x float> %i.bmr)
  %i.bmu = fsub <2 x float> %i.bla, %i.bkq
  %i.bmv = fsub <2 x float> %i.bmt, %i.bmu        ; 2 uses
  %i.bmw = fcmp ole <2 x float> %i.bmv, zeroinitializer
  %i.bmx = select <2 x i1> %i.bmw, <2 x float> zeroinitializer, <2 x float> %i.bmv
  store <2 x float> %i.bmx, ptr %i.bmq, align 8, !tbaa !8
  %i.bmy = call fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr noundef nonnull %i.bgn)
  %i.bmz = getelementptr inbounds nuw i8, ptr %i.bgn, i64 152
  store <2 x float> %i.bmy, ptr %i.bmz, align 8
  %i.bna = getelementptr inbounds nuw i8, ptr %i.bgn, i64 168
  store i32 2139095039, ptr %i.bna, align 8
  %.sroa_idx819 = getelementptr inbounds nuw i8, ptr %i.bgn, i64 172
  store i32 2139095039, ptr %.sroa_idx819, align 4
  %i.bnb = getelementptr inbounds nuw i8, ptr %i.bgn, i64 128
  store <2 x float> zeroinitializer, ptr %i.bnb, align 8, !tbaa !8
  %i.bnc = getelementptr inbounds nuw i8, ptr %i.bgn, i64 712
  %i.bnd = load ptr, ptr %i.bnc, align 8, !tbaa !452
  %i.bne = getelementptr inbounds nuw i8, ptr %i.j, i64 4552
  %i.bnf = load ptr, ptr %i.bne, align 8, !tbaa !453
  %i.bng = getelementptr inbounds nuw i8, ptr %i.bnf, i64 8
  %i.bnh = load ptr, ptr %i.bng, align 8, !tbaa !976 ; 2 uses
  %i.bni = getelementptr inbounds nuw i8, ptr %i.bnh, i64 40
  %.sroa.0.0.copyload = load ptr, ptr %i.bni, align 8, !tbaa !485
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bnh, i64 48
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !486
  call void @_ZN10ImDrawList11PushTextureE12ImTextureRef(ptr noundef nonnull align 8 dereferenceable(224) %i.bnd, ptr %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  %i.bnj = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bnk = getelementptr inbounds nuw i8, ptr %i.bnj, i64 5312
  %i.bnl = load ptr, ptr %i.bnk, align 8, !tbaa !298 ; 3 uses
  %i.bnm = getelementptr inbounds nuw i8, ptr %i.bnl, i64 206
  store i8 1, ptr %i.bnm, align 2, !tbaa !854
  %i.bnn = getelementptr inbounds nuw i8, ptr %i.bnl, i64 712 ; 2 uses
  %i.bno = load ptr, ptr %i.bnn, align 8, !tbaa !452
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.bno, ptr noundef nonnull align 4 dereferenceable(8) %29, ptr noundef nonnull align 4 dereferenceable(8) %i.bkm, i1 noundef zeroext false)
  %i.bnp = load ptr, ptr %i.bnn, align 8, !tbaa !452 ; 2 uses
  %i.bnq = getelementptr inbounds nuw i8, ptr %i.bnp, i64 160
  %i.bnr = getelementptr inbounds nuw i8, ptr %i.bnp, i64 168
  %i.bns = load ptr, ptr %i.bnr, align 8, !tbaa !1265
  %i.bnt = load i32, ptr %i.bnq, align 8, !tbaa !1266
  %i.bnu = sext i32 %i.bnt to i64
  %i.bnv = getelementptr [16 x i8], ptr %i.bns, i64 %i.bnu
  %i.bnw = getelementptr i8, ptr %i.bnv, i64 -16
  %i.bnx = getelementptr inbounds nuw i8, ptr %i.bnl, i64 616
  %31 = load <4 x i32>, ptr %i.bnw, align 4, !tbaa !8
  store <4 x i32> %31, ptr %i.bnx, align 8, !tbaa !8
  br i1 %or.cond534, label %.thread986, label %bb.kv

bb.kv:                                            ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i
  %i.bny = getelementptr inbounds nuw i8, ptr %i.kb, i64 432
  %i.bnz = load i32, ptr %i.bny, align 8, !tbaa !1246 ; 2 uses
  %i.boa = icmp sgt i32 %i.bnz, 1
  br i1 %i.boa, label %bb.kw, label %..thread984_crit_edge

..thread984_crit_edge:                            ; preds = %bb.kv
  %.pre1045 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %.thread984

bb.kw:                                            ; preds = %bb.kv
  %i.bob = getelementptr inbounds nuw i8, ptr %i.kb, i64 440
  %i.boc = load ptr, ptr %i.bob, align 8, !tbaa !561
  %i.bod = zext nneg i32 %i.bnz to i64
  %i.boe = getelementptr [8 x i8], ptr %i.boc, i64 %i.bod
  %i.bof = getelementptr i8, ptr %i.boe, i64 -16
  %i.bog = load ptr, ptr %i.bof, align 8, !tbaa !705 ; 5 uses
  %.not495 = icmp eq ptr %i.bog, null
  %.pre1046 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  br i1 %.not495, label %.thread984, label %bb.kx

bb.kx:                                            ; preds = %bb.kw
  %i.boh = getelementptr inbounds nuw i8, ptr %i.bog, i64 40
  %i.boi = load float, ptr %i.boh, align 8, !tbaa !870 ; 2 uses
  %i.boj = getelementptr inbounds nuw i8, ptr %i.bog, i64 44
  %i.bok = load float, ptr %i.boj, align 4, !tbaa !929 ; 2 uses
  %i.bol = getelementptr inbounds nuw i8, ptr %i.bog, i64 48
  %i.bom = load float, ptr %i.bol, align 8, !tbaa !723
  %i.bon = fadd float %i.boi, %i.bom
  %i.boo = getelementptr inbounds nuw i8, ptr %i.bog, i64 52
  %i.bop = load float, ptr %i.boo, align 4, !tbaa !724
  %i.boq = fadd float %i.bok, %i.bop
  %i.bor = getelementptr inbounds nuw i8, ptr %.pre1046, i64 40
  %i.bos = load float, ptr %i.bor, align 8, !tbaa !870 ; 2 uses
  %i.bot = getelementptr inbounds nuw i8, ptr %.pre1046, i64 44
  %i.bou = load float, ptr %i.bot, align 4, !tbaa !929 ; 2 uses
  %i.bov = getelementptr inbounds nuw i8, ptr %.pre1046, i64 48
  %i.bow = load float, ptr %i.bov, align 8, !tbaa !723
  %i.box = fadd float %i.bos, %i.bow
  %i.boy = getelementptr inbounds nuw i8, ptr %.pre1046, i64 52
  %i.boz = load float, ptr %i.boy, align 4, !tbaa !724
  %i.bpa = fadd float %i.bou, %i.boz
  %i.bpb = fcmp olt float %i.bou, %i.boq
  %i.bpc = fcmp ogt float %i.bpa, %i.bok
  %or.cond1001 = select i1 %i.bpb, i1 %i.bpc, i1 false
  %i.bpd = fcmp olt float %i.bos, %i.bon
  %or.cond1002 = select i1 %or.cond1001, i1 %i.bpd, i1 false
  %i.bpe = fcmp ogt float %i.box, %i.boi
  %spec.select1003 = select i1 %or.cond1002, i1 %i.bpe, i1 false
  br label %.thread984

.thread984:                                       ; preds = %..thread984_crit_edge, %bb.kx, %bb.kw
  %i.bpf = phi ptr [ %.pre1045, %..thread984_crit_edge ], [ %.pre1046, %bb.kw ], [ %.pre1046, %bb.kx ]
  %i.bpg = phi i1 [ false, %..thread984_crit_edge ], [ false, %bb.kw ], [ %spec.select1003, %bb.kx ]
  %i.bph = getelementptr inbounds nuw i8, ptr %i.kb, i64 712
  %i.bpi = load ptr, ptr %i.bph, align 8, !tbaa !452 ; 2 uses
  %i.bpj = getelementptr inbounds nuw i8, ptr %i.bpi, i64 32
  %i.bpk = load i32, ptr %i.bpj, align 8, !tbaa !1267
  %i.bpl = icmp eq i32 %i.bpk, 0
  %i.bpm = getelementptr inbounds nuw i8, ptr %i.bpf, i64 712 ; 2 uses
  %i.bpn = load ptr, ptr %i.bpm, align 8, !tbaa !452 ; 2 uses
  %i.bpo = getelementptr inbounds nuw i8, ptr %i.bpn, i64 8
  %i.bpp = load ptr, ptr %i.bpo, align 8, !tbaa !1268
  %i.bpq = load i32, ptr %i.bpn, align 8, !tbaa !1269
  %i.bpr = sext i32 %i.bpq to i64
  %i.bps = getelementptr [72 x i8], ptr %i.bpp, i64 %i.bpr
  %i.bpt = getelementptr i8, ptr %i.bps, i64 -32
  %i.bpu = load i32, ptr %i.bpt, align 8, !tbaa !1270
  %i.bpv = icmp ne i32 %i.bpu, 0
  %or.cond33 = select i1 %i.bpv, i1 true, i1 %i.bpl
  %or.cond35 = or i1 %i.bpg, %or.cond33
  br i1 %or.cond35, label %.thread986, label %bb.ky

bb.ky:                                            ; preds = %.thread984
  store ptr %i.bpi, ptr %i.bpm, align 8, !tbaa !452
  br label %.thread986

.thread986:                                       ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit.i, %bb.ky, %.thread984
  %.1988 = phi i1 [ false, %.thread984 ], [ true, %bb.ky ], [ false, %_Z7ImClampRK6ImVec2S1_S1_.exit.i ]
  %i.bpw = getelementptr inbounds nuw i8, ptr %i.j, i64 8712
  %i.bpx = load ptr, ptr %i.bpw, align 8, !tbaa !1045 ; 2 uses
  %.not496 = icmp eq ptr %i.bpx, null
  br i1 %.not496, label %bb.kz, label %bb.la

bb.kz:                                            ; preds = %.thread986
  %i.bpy = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.bpz = load ptr, ptr %i.bpy, align 8, !tbaa !389
  br label %bb.la

bb.la:                                            ; preds = %.thread986, %bb.kz
  %i.bqa = phi ptr [ %i.bpz, %bb.kz ], [ %i.bpx, %.thread986 ] ; 2 uses
  br i1 %spec.select995, label %._crit_edge1047, label %bb.lb

._crit_edge1047:                                  ; preds = %bb.la
  %.pre1048 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.ld

bb.lb:                                            ; preds = %bb.la
  %.not497 = icmp eq ptr %i.bqa, null
  %.pre1049 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 3 uses
  br i1 %.not497, label %bb.ld, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.bqb = getelementptr inbounds nuw i8, ptr %.pre1049, i64 976
  %i.bqc = load ptr, ptr %i.bqb, align 8, !tbaa !1198
  %i.bqd = getelementptr inbounds nuw i8, ptr %i.bqa, i64 976
  %i.bqe = load ptr, ptr %i.bqd, align 8, !tbaa !1198
  %i.bqf = icmp eq ptr %i.bqc, %i.bqe
  br label %bb.ld

bb.ld:                                            ; preds = %._crit_edge1047, %bb.lb, %bb.lc
  %i.bqg = phi ptr [ %.pre1048, %._crit_edge1047 ], [ %.pre1049, %bb.lb ], [ %.pre1049, %bb.lc ] ; 52 uses
  %i.bqh = phi i1 [ true, %._crit_edge1047 ], [ false, %bb.lb ], [ %i.bqf, %bb.lc ] ; 2 uses
  %i.bqi = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 9 uses
  %i.bqj = getelementptr inbounds nuw i8, ptr %i.bqg, i64 20 ; 3 uses
  %i.bqk = load i32, ptr %i.bqj, align 4, !tbaa !722 ; 7 uses
  %i.bql = getelementptr inbounds nuw i8, ptr %i.bqg, i64 209
  store i8 0, ptr %i.bql, align 1, !tbaa !1231
  %i.bqm = getelementptr inbounds nuw i8, ptr %i.bqg, i64 368 ; 2 uses
  store i32 1, ptr %i.bqm, align 8, !tbaa !1205
  %i.bqn = getelementptr inbounds nuw i8, ptr %i.bqg, i64 96 ; 5 uses
  %i.bqo = load float, ptr %i.bqn, align 8, !tbaa !1248 ; 7 uses
  %i.bqp = getelementptr inbounds nuw i8, ptr %i.bqg, i64 100 ; 3 uses
  %i.bqq = load float, ptr %i.bqp, align 4, !tbaa !1233 ; 4 uses
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.bqg, i64 207
  %i.bqs = load i8, ptr %i.bqr, align 1, !tbaa !721, !range !64, !noundef !204
  %i.bqt = trunc nuw i8 %i.bqs to i1
  br i1 %i.bqt, label %bb.le, label %bb.lh

bb.le:                                            ; preds = %bb.ld
  %i.bqu = getelementptr inbounds nuw i8, ptr %i.bqi, i64 3296 ; 3 uses
  %i.bqv = load float, ptr %i.bqu, align 4, !tbaa !1272
  store float %i.bqq, ptr %i.bqu, align 8, !tbaa !472
  br i1 %i.bqh, label %bb.lf, label %bb.lg

bb.lf:                                            ; preds = %bb.le
  %i.bqw = getelementptr inbounds nuw i8, ptr %i.bqi, i64 8216
  %i.bqx = load i8, ptr %i.bqw, align 8, !tbaa !474, !range !64, !noundef !204
  %i.bqy = trunc nuw i8 %i.bqx to i1
  %i.bqz = select i1 %i.bqy, i64 11, i64 12
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %i.bra = phi i64 [ 12, %bb.le ], [ %i.bqz, %bb.lf ]
  %i.brb = getelementptr inbounds nuw i8, ptr %i.bqi, i64 3532
  %i.brc = getelementptr inbounds nuw [16 x i8], ptr %i.brb, i64 %i.bra
  %i.brd = getelementptr inbounds nuw i8, ptr %i.bqi, i64 3220
  %i.bre = load float, ptr %i.brd, align 4, !tbaa !416
  %i.brf = load <4 x float>, ptr %i.brc, align 4, !tbaa !8
  %i.brg = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bre, i64 3
  %i.brh = fmul <4 x float> %i.brf, %i.brg        ; 3 uses
  %i.bri = fcmp olt <4 x float> %i.brh, zeroinitializer
  %i.brj = fcmp ogt <4 x float> %i.brh, splat (float 1.000000e+00)
  %i.brk = select <4 x i1> %i.brj, <4 x float> splat (float 1.000000e+00), <4 x float> %i.brh
  %i.brl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.brk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.brm = select <4 x i1> %i.bri, <4 x float> splat (float 5.000000e-01), <4 x float> %i.brl
  %i.brn = fptosi <4 x float> %i.brm to <4 x i32>
  %i.bro = shl <4 x i32> %i.brn, <i32 0, i32 8, i32 16, i32 24>
  %i.brp = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.bro)
  %.sroa.028.0.copyload.i = load <2 x float>, ptr %30, align 8
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.bkd, align 8
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.028.0.copyload.i, <2 x float> %.sroa.0.0.copyload.i, i32 noundef %i.brp, i1 noundef zeroext true, float noundef %i.bqo)
  store float %i.bqv, ptr %i.bqu, align 8, !tbaa !472
  br label %_ZN5ImGuiL23RenderWindowDecorationsEP11ImGuiWindowRK6ImRectbbiPKjf.exit

bb.lh:                                            ; preds = %bb.ld
  %i.brq = and i32 %i.bqk, 128
  %.not.i667 = icmp eq i32 %i.brq, 0
  br i1 %.not.i667, label %bb.li, label %bb.ll

bb.li:                                            ; preds = %bb.lh
  %i.brr = and i32 %i.bqk, 100663296
  %.not.i.i674 = icmp eq i32 %i.brr, 0
  %i.brs = and i32 %i.bqk, 16777216
  %.not2.i.i = icmp eq i32 %i.brs, 0
  %..i.i675 = select i1 %.not2.i.i, i64 2, i64 3
  %.0.i.i = select i1 %.not.i.i674, i64 %..i.i675, i64 4
  %i.brt = getelementptr inbounds nuw i8, ptr %i.bqi, i64 3532
  %i.bru = getelementptr inbounds nuw [16 x i8], ptr %i.brt, i64 %.0.i.i ; 3 uses
  %.sroa.0.0.copyload.i112.i = load float, ptr %i.bru, align 4, !tbaa !8
  %.sroa.4.0..sroa_idx.i113.i = getelementptr inbounds nuw i8, ptr %i.bru, i64 4
  %.sroa.6.0..sroa_idx.i117.i = getelementptr inbounds nuw i8, ptr %i.bru, i64 12
  %.sroa.6.0.copyload.i118.i = load float, ptr %.sroa.6.0..sroa_idx.i117.i, align 4, !tbaa !8
  %i.brv = getelementptr inbounds nuw i8, ptr %i.bqi, i64 3220
  %i.brw = load float, ptr %i.brv, align 4, !tbaa !416
  %i.brx = fmul float %.sroa.6.0.copyload.i118.i, %i.brw
  %i.bry = load <2 x float>, ptr %.sroa.4.0..sroa_idx.i113.i, align 4, !tbaa !8 ; 3 uses
  %i.brz = fcmp olt <2 x float> %i.bry, zeroinitializer
  %i.bsa = fcmp ogt <2 x float> %i.bry, splat (float 1.000000e+00)
  %i.bsb = select <2 x i1> %i.bsa, <2 x float> splat (float 1.000000e+00), <2 x float> %i.bry
  %i.bsc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bsb, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01))
  %i.bsd = select <2 x i1> %i.brz, <2 x float> splat (float 5.000000e-01), <2 x float> %i.bsc
  %i.bse = fptosi <2 x float> %i.bsd to <2 x i32>
  %i.bsf = shl <2 x i32> %i.bse, <i32 8, i32 16>  ; 2 uses
  %i.bsg = extractelement <2 x i32> %i.bsf, i64 0
  %i.bsh = extractelement <2 x i32> %i.bsf, i64 1
  %i.bsi = insertelement <2 x float> poison, float %.sroa.0.0.copyload.i112.i, i64 0
  %i.bsj = insertelement <2 x float> %i.bsi, float %i.brx, i64 1 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN5ImGui5BeginEPKcPbi:bb.a
  %i.deg = fadd float %.sroa.8.12.vec.extract15.i, %i.deb
  %i.deh = fcmp olt float %i.ddz, %i.deg
  %i.dei = zext i1 %i.deh to i32
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.po, %bb.pp, %bb.pq
  %i.dej = phi i32 [ %i.dei, %bb.pq ], [ 0, %bb.pp ], [ 0, %bb.po ] ; 2 uses
  store i32 %i.dej, ptr %i.ddo, align 8, !tbaa !1307
  %i.dek = getelementptr i8, ptr %i.dcx, i64 140  ; 2 uses
  %.val552 = load i32, ptr %i.dek, align 4, !tbaa !790
  %i.del = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7784
  %i.dem = load i32, ptr %i.del, align 8, !tbaa !1036
  %i.den = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7848
  store i32 %.val552, ptr %i.den, align 8, !tbaa !475
  %i.deo = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7852
  store i32 %i.dem, ptr %i.deo, align 4, !tbaa !476
  %i.dep = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7856
  store i32 %i.dej, ptr %i.dep, align 8, !tbaa !843
  %i.deq = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7876
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.deq, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false), !tbaa.struct !419
  %i.der = getelementptr inbounds nuw i8, ptr %i.ddp, i64 7860
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.der, ptr noundef nonnull readonly align 8 dereferenceable(16) %30, i64 16, i1 false)
  %i.des = getelementptr inbounds nuw i8, ptr %i.j, i64 7788
  %i.det = load i32, ptr %i.des, align 4, !tbaa !1144 ; 3 uses
  %.not504 = icmp eq i32 %i.det, 0
  br i1 %.not504, label %bb.pu, label %bb.pr

bb.pr:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %i.deu = getelementptr inbounds nuw i8, ptr %i.dcx, i64 16
  %i.dev = load i32, ptr %i.deu, align 8, !tbaa !726
  %i.dew = icmp eq i32 %i.dev, %i.det
  br i1 %i.dew, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.dex = load i32, ptr %i.dek, align 4, !tbaa !790
  %i.dey = icmp eq i32 %i.dex, %i.det
  br i1 %i.dey, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  call void @_ZN5ImGui34DebugLocateItemResolveWithLastItemEv()
  %.pre1064.pre = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %.pre1064 = phi ptr [ %.pre1064.pre, %bb.pt ], [ %i.dcx, %bb.ps ], [ %i.dcx, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #41
  br label %bb.qd

bb.pv:                                            ; preds = %bb.cy
  br i1 %i.wc, label %.thread1189, label %.thread990

.thread1189:                                      ; preds = %bb.cz, %bb.pv
  call fastcc void @_ZL29SetWindowActiveForSkipRefreshP11ImGuiWindow(ptr noundef nonnull %.pre1059)
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !705, !nonnull !204, !noundef !204
  br label %.thread990

.thread990:                                       ; preds = %bb.pv, %.thread1189
  %.pr.sink = phi ptr [ %.pr, %.thread1189 ], [ %.pre1059, %bb.pv ] ; 4 uses
  %i.dez = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.dfa = getelementptr inbounds nuw i8, ptr %i.dez, i64 5312
  store ptr %.pr.sink, ptr %i.dfa, align 8, !tbaa !298
  %i.dfb = getelementptr inbounds nuw i8, ptr %i.dez, i64 5264
  %i.dfc = getelementptr inbounds nuw i8, ptr %i.dez, i64 5272
  %i.dfd = load ptr, ptr %i.dfc, align 8, !tbaa !565
  %i.dfe = load i32, ptr %i.dfb, align 8, !tbaa !567
  %i.dff = sext i32 %i.dfe to i64
  %i.dfg = getelementptr [120 x i8], ptr %i.dfd, i64 %i.dff
  %i.dfh = getelementptr i8, ptr %i.dfg, i64 -32
  %i.dfi = getelementptr inbounds nuw i8, ptr %i.dez, i64 10392
  store ptr %i.dfh, ptr %i.dfi, align 8, !tbaa !680
  %i.dfj = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 464
  %i.dfk = load i32, ptr %i.dfj, align 8, !tbaa !1222 ; 2 uses
  %.not23.i702 = icmp eq i32 %i.dfk, -1
  br i1 %.not23.i702, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %.thread990
  %i.dfl = getelementptr inbounds nuw i8, ptr %i.dez, i64 9024
  %i.dfm = load ptr, ptr %i.dfl, align 8, !tbaa !700
  %i.dfn = sext i32 %i.dfk to i64
  %i.dfo = getelementptr inbounds [592 x i8], ptr %i.dfm, i64 %i.dfn
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %.thread990
  %.ph.i703 = phi ptr [ null, %.thread990 ], [ %i.dfo, %bb.pw ]
  %i.dfp = getelementptr inbounds nuw i8, ptr %i.dez, i64 8984
  store ptr %.ph.i703, ptr %i.dfp, align 8, !tbaa !338
  %i.dfq = getelementptr inbounds nuw i8, ptr %i.dez, i64 4584
  store float 1.000000e+00, ptr %i.dfq, align 8, !tbaa !1227
  %i.dfr = getelementptr inbounds nuw i8, ptr %i.dez, i64 44
  %i.dfs = load i32, ptr %i.dfr, align 4, !tbaa !950
  %i.dft = and i32 %i.dfs, 16
  %.not24.i704 = icmp eq i32 %i.dft, 0
  br i1 %.not24.i704, label %bb.qb, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.dfu = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 32
  %i.dfv = load ptr, ptr %i.dfu, align 8, !tbaa !1226
  %i.dfw = getelementptr inbounds nuw i8, ptr %i.dfv, i64 24
  %i.dfx = load float, ptr %i.dfw, align 8, !tbaa !1228 ; 2 uses
  %i.dfy = fcmp une float %i.dfx, 0.000000e+00
  br i1 %i.dfy, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dez, i64 56
  %i.dga = load float, ptr %i.dfz, align 8, !tbaa !1229
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.dgb = phi float [ %i.dga, %bb.pz ], [ %i.dfx, %bb.py ]
  %i.dgc = getelementptr inbounds nuw i8, ptr %i.dez, i64 4580
  store float %i.dgb, ptr %i.dgc, align 4, !tbaa !1230
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.px
  %i.dgd = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 209 ; 3 uses
  %i.dge = load i8, ptr %i.dgd, align 1, !tbaa !1231, !range !64, !noundef !204
  store i8 0, ptr %i.dgd, align 1, !tbaa !1231
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.dge, ptr %i.dgd, align 1, !tbaa !1231
  %i.dgf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.dgg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 5312
  %i.dgh = load ptr, ptr %i.dgg, align 8, !tbaa !298 ; 2 uses
  %i.dgi = getelementptr inbounds nuw i8, ptr %i.dgf, i64 8984
  %i.dgj = load ptr, ptr %i.dgi, align 8, !tbaa !338
  %i.dgk = icmp eq ptr %i.dgj, null
  br i1 %i.dgk, label %bb.qc, label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705

bb.qc:                                            ; preds = %bb.qb
  %i.dgl = getelementptr inbounds nuw i8, ptr %i.dgh, i64 456
  %i.dgm = load ptr, ptr %i.dgl, align 8, !tbaa !333
  %i.dgn = icmp eq ptr %i.dgm, null
  %i.dgo = zext i1 %i.dgn to i8
  br label %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705

_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705: ; preds = %bb.qc, %bb.qb
  %i.dgp = phi i8 [ 0, %bb.qb ], [ %i.dgo, %bb.qc ]
  %i.dgq = getelementptr inbounds nuw i8, ptr %i.dgh, i64 376
  store i8 %i.dgp, ptr %i.dgq, align 8, !tbaa !1232
  %.pre1063 = load ptr, ptr %i.g, align 8, !tbaa !705 ; 6 uses
  %i.dgr = getelementptr inbounds nuw i8, ptr %.pre1063, i64 40
  %i.dgs = getelementptr inbounds nuw i8, ptr %.pre1063, i64 56
  %i.dgt = load float, ptr %i.dgs, align 8, !tbaa !910
  %i.dgu = getelementptr inbounds nuw i8, ptr %.pre1063, i64 104
  %i.dgv = load float, ptr %i.dgu, align 8, !tbaa !909
  %i.dgw = load <2 x float>, ptr %i.dgr, align 8, !tbaa !8 ; 3 uses
  %i.dgx = insertelement <2 x float> poison, float %i.dgt, i64 0
  %i.dgy = insertelement <2 x float> %i.dgx, float %i.dgv, i64 1
  %i.dgz = fadd <2 x float> %i.dgw, %i.dgy        ; 2 uses
  %i.dha = getelementptr i8, ptr %.pre1063, i64 140
  %.val550 = load i32, ptr %i.dha, align 4, !tbaa !790
  %i.dhb = getelementptr i8, ptr %.pre1063, i64 480
  %.val551 = load i32, ptr %i.dhb, align 8, !tbaa !1307
  %i.dhc = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7784
  %i.dhd = load i32, ptr %i.dhc, align 8, !tbaa !1036
  %i.dhe = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7848
  store i32 %.val550, ptr %i.dhe, align 8, !tbaa !475
  %i.dhf = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7852
  store i32 %i.dhd, ptr %i.dhf, align 4, !tbaa !476
  %i.dhg = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7856
  store i32 %.val551, ptr %i.dhg, align 8, !tbaa !843
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7876
  store <2 x float> %i.dgw, ptr %i.dhh, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7884
  store <2 x float> %i.dgz, ptr %.sroa.5.0..sroa_idx, align 4
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7860
  store <2 x float> %i.dgw, ptr %i.dhi, align 4
  %.sroa.5.0..sroa_idx797 = getelementptr inbounds nuw i8, ptr %i.dgf, i64 7868
  store <2 x float> %i.dgz, ptr %.sroa.5.0..sroa_idx797, align 4
  br label %bb.qd

bb.qd:                                            ; preds = %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705, %bb.pu
  %i.dhj = phi ptr [ %.pre1063, %_ZN5ImGui39NavUpdateCurrentWindowIsScrollPushableXEv.exit.i705 ], [ %.pre1064, %bb.pu ] ; 4 uses
  %i.dhk = getelementptr inbounds nuw i8, ptr %i.dhj, i64 210
  %i.dhl = load i8, ptr %i.dhk, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.dhm = trunc nuw i8 %i.dhl to i1
  br i1 %i.dhm, label %bb.qf, label %bb.qe

bb.qe:                                            ; preds = %bb.qd
  %i.dhn = getelementptr inbounds nuw i8, ptr %i.dhj, i64 568
  %i.dho = getelementptr inbounds nuw i8, ptr %i.dhj, i64 576
  %i.dhp = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.dhq = getelementptr inbounds nuw i8, ptr %i.dhp, i64 5312
  %i.dhr = load ptr, ptr %i.dhq, align 8, !tbaa !298 ; 3 uses
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dhr, i64 206
  store i8 1, ptr %i.dhs, align 2, !tbaa !854
  %i.dht = getelementptr inbounds nuw i8, ptr %i.dhr, i64 712 ; 2 uses
  %i.dhu = load ptr, ptr %i.dht, align 8, !tbaa !452
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.dhu, ptr noundef nonnull align 4 dereferenceable(8) %i.dhn, ptr noundef nonnull align 4 dereferenceable(8) %i.dho, i1 noundef zeroext true)
  %i.dhv = load ptr, ptr %i.dht, align 8, !tbaa !452 ; 2 uses
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhv, i64 160
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhv, i64 168
  %i.dhy = load ptr, ptr %i.dhx, align 8, !tbaa !1265
  %i.dhz = load i32, ptr %i.dhw, align 8, !tbaa !1266
  %i.dia = sext i32 %i.dhz to i64
  %i.dib = getelementptr [16 x i8], ptr %i.dhy, i64 %i.dia
  %i.dic = getelementptr i8, ptr %i.dib, i64 -16
  %i.did = getelementptr inbounds nuw i8, ptr %i.dhr, i64 616
  %32 = load <4 x i32>, ptr %i.dic, align 4, !tbaa !8
  store <4 x i32> %32, ptr %i.did, align 8, !tbaa !8
  %.pre1065 = load ptr, ptr %i.g, align 8, !tbaa !705
  br label %bb.qf

bb.qf:                                            ; preds = %bb.qe, %bb.qd
  %i.die = phi ptr [ %.pre1065, %bb.qe ], [ %i.dhj, %bb.qd ] ; 31 uses
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 206
  store i8 0, ptr %i.dif, align 2, !tbaa !854
  %i.dig = getelementptr inbounds nuw i8, ptr %i.die, i64 218 ; 2 uses
  %i.dih = load i16, ptr %i.dig, align 2, !tbaa !1097
  %i.dii = add i16 %i.dih, 1
  store i16 %i.dii, ptr %i.dig, align 2, !tbaa !1097
  store i32 0, ptr %i.pn, align 8, !tbaa !1308
  br i1 %.not444, label %.critedge546, label %bb.qg

bb.qg:                                            ; preds = %bb.qf
  %i.dij = getelementptr inbounds nuw i8, ptr %i.die, i64 210
  %i.dik = load i8, ptr %i.dij, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.dil = trunc nuw i8 %i.dik to i1
  br i1 %i.dil, label %.critedge546.sink.split, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  %i.dim = and i32 %.1403, 285212672
  %brmerge541.not = icmp eq i32 %i.dim, 16777216
  br i1 %brmerge541.not, label %bb.qi, label %.critedge543

bb.qi:                                            ; preds = %bb.qh
  %i.din = getelementptr inbounds nuw i8, ptr %i.die, i64 24
  %i.dio = load i32, ptr %i.din, align 8, !tbaa !1188
  %i.dip = and i32 %i.dio, 256
  %.not506 = icmp eq i32 %i.dip, 0
  br i1 %.not506, label %bb.qm, label %bb.qj

bb.qj:                                            ; preds = %bb.qi
  %i.diq = getelementptr inbounds nuw i8, ptr %i.j, i64 8321
  %i.dir = load i8, ptr %i.diq, align 1, !tbaa !882, !range !64, !noundef !204
  %i.dis = trunc nuw i8 %i.dir to i1
  br i1 %i.dis, label %bb.qk, label %bb.qm

bb.qk:                                            ; preds = %bb.qj
  %i.dit = getelementptr inbounds nuw i8, ptr %i.j, i64 8224
  %i.diu = load ptr, ptr %i.dit, align 8, !tbaa !389 ; 2 uses
  %.not507 = icmp eq ptr %i.diu, null
  br i1 %.not507, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  %i.div = getelementptr inbounds nuw i8, ptr %i.diu, i64 984
  %i.diw = load ptr, ptr %i.div, align 8, !tbaa !390
  %i.dix = getelementptr inbounds nuw i8, ptr %i.die, i64 984
  %i.diy = load ptr, ptr %i.dix, align 8, !tbaa !390
  %i.diz = icmp eq ptr %i.diw, %i.diy
  br label %bb.qm

bb.qm:                                            ; preds = %bb.qj, %bb.qk, %bb.ql, %bb.qi
  %i.dja = phi i1 [ false, %bb.qi ], [ false, %bb.qk ], [ false, %bb.qj ], [ %i.diz, %bb.ql ]
  %i.djb = getelementptr inbounds nuw i8, ptr %i.j, i64 10264
  %i.djc = load i8, ptr %i.djb, align 8, !tbaa !387, !range !64, !noundef !204
  %i.djd = trunc nuw i8 %i.djc to i1
  %or.cond37 = select i1 %i.djd, i1 true, i1 %i.dja
  br i1 %or.cond37, label %bb.qt, label %bb.qn

bb.qn:                                            ; preds = %bb.qm
  %i.dje = getelementptr inbounds nuw i8, ptr %i.die, i64 536
  %i.djf = load float, ptr %i.dje, align 8, !tbaa !1309
  %i.djg = getelementptr inbounds nuw i8, ptr %i.die, i64 544
  %i.djh = load float, ptr %i.djg, align 8, !tbaa !1310
  %i.dji = fcmp ult float %i.djf, %i.djh
  br i1 %i.dji, label %bb.qo, label %bb.qp

bb.qo:                                            ; preds = %bb.qn
  %i.djj = getelementptr inbounds nuw i8, ptr %i.die, i64 540
  %i.djk = load float, ptr %i.djj, align 4, !tbaa !1311
  %i.djl = getelementptr inbounds nuw i8, ptr %i.die, i64 548
  %i.djm = load float, ptr %i.djl, align 4, !tbaa !1312
  %i.djn = fcmp ult float %i.djk, %i.djm
  br i1 %i.djn, label %bb.qt, label %bb.qp

bb.qp:                                            ; preds = %bb.qo, %bb.qn
  %i.djo = getelementptr inbounds nuw i8, ptr %i.die, i64 232
  %i.djp = load i8, ptr %i.djo, align 8, !tbaa !720
  %i.djq = icmp sgt i8 %i.djp, 0
  br i1 %i.djq, label %bb.qr, label %bb.qq

bb.qq:                                            ; preds = %bb.qp
  %i.djr = getelementptr inbounds nuw i8, ptr %i.die, i64 233
  %i.djs = load i8, ptr %i.djr, align 1, !tbaa !719
  %i.djt = icmp sgt i8 %i.djs, 0
  br i1 %i.djt, label %bb.qr, label %bb.qs

bb.qr:                                            ; preds = %bb.qq, %bb.qp
  %i.dju = getelementptr inbounds nuw i8, ptr %i.die, i64 236
  store i8 1, ptr %i.dju, align 4, !tbaa !1220
  br label %bb.qt

bb.qs:                                            ; preds = %bb.qq
  %i.djv = getelementptr inbounds nuw i8, ptr %i.die, i64 235
  store i8 1, ptr %i.djv, align 1, !tbaa !1224
  br label %bb.qt

bb.qt:                                            ; preds = %bb.qo, %bb.qs, %bb.qr, %bb.qm
  %.not508 = icmp eq ptr %i.kb, null
  br i1 %.not508, label %.critedge543, label %bb.qu

bb.qu:                                            ; preds = %bb.qt
  %i.djw = getelementptr inbounds nuw i8, ptr %i.kb, i64 207
  %i.djx = load i8, ptr %i.djw, align 1, !tbaa !721, !range !64, !noundef !204
  %i.djy = trunc nuw i8 %i.djx to i1
  br i1 %i.djy, label %bb.qw, label %bb.qv

bb.qv:                                            ; preds = %bb.qu
  %i.djz = getelementptr inbounds nuw i8, ptr %i.kb, i64 235
  %i.dka = load i8, ptr %i.djz, align 1, !tbaa !1224
  %i.dkb = icmp sgt i8 %i.dka, 0
  br i1 %i.dkb, label %bb.qw, label %bb.qx

bb.qw:                                            ; preds = %bb.qv, %bb.qu
  %i.dkc = getelementptr inbounds nuw i8, ptr %i.die, i64 235
  store i8 1, ptr %i.dkc, align 1, !tbaa !1224
  br label %bb.qx

bb.qx:                                            ; preds = %bb.qv, %bb.qw
  %i.dkd = getelementptr inbounds nuw i8, ptr %i.kb, i64 236
  %i.dke = load i8, ptr %i.dkd, align 4, !tbaa !1220
  %i.dkf = icmp sgt i8 %i.dke, 0
  br i1 %i.dkf, label %bb.qy, label %.critedge543

bb.qy:                                            ; preds = %bb.qx
  %i.dkg = getelementptr inbounds nuw i8, ptr %i.die, i64 236
  store i8 1, ptr %i.dkg, align 4, !tbaa !1220
  br label %.critedge543

.critedge543:                                     ; preds = %bb.qx, %bb.qy, %bb.qt, %bb.qh
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.j, i64 3220
  %i.dki = load float, ptr %i.dkh, align 4, !tbaa !416
  %i.dkj = fcmp ugt float %i.dki, 0.000000e+00
  %.phi.trans.insert1066 = getelementptr inbounds nuw i8, ptr %i.die, i64 235 ; 2 uses
  br i1 %i.dkj, label %bb.qz, label %.thread1190

.thread1190:                                      ; preds = %.critedge543
  store i8 1, ptr %.phi.trans.insert1066, align 1, !tbaa !1224
  br label %.thread992

bb.qz:                                            ; preds = %.critedge543
  %.pre1067 = load i8, ptr %.phi.trans.insert1066, align 1, !tbaa !1224
  %i.dkk = icmp sgt i8 %.pre1067, 0
  br i1 %i.dkk, label %.thread992, label %bb.ra

bb.ra:                                            ; preds = %bb.qz
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.die, i64 236
  %i.dkm = load i8, ptr %i.dkl, align 4, !tbaa !1220
  %i.dkn = icmp sgt i8 %i.dkm, 0
  br i1 %i.dkn, label %.thread992, label %bb.rb

bb.rb:                                            ; preds = %bb.ra
  %i.dko = getelementptr inbounds nuw i8, ptr %i.die, i64 237
  %i.dkp = load i8, ptr %i.dko, align 1, !tbaa !1225
  %i.dkq = icmp sgt i8 %i.dkp, 0
  %i.dkr = zext i1 %i.dkq to i8
  br label %.thread992

.thread992:                                       ; preds = %.thread1190, %bb.qz, %bb.rb, %bb.ra
  %.not1009 = phi i1 [ false, %bb.ra ], [ true, %bb.rb ], [ false, %bb.qz ], [ false, %.thread1190 ]
  %i.dks = phi i8 [ 1, %bb.ra ], [ %i.dkr, %bb.rb ], [ 1, %bb.qz ], [ 1, %.thread1190 ]
  %i.dkt = getelementptr inbounds nuw i8, ptr %i.die, i64 212
  store i8 %i.dks, ptr %i.dkt, align 4, !tbaa !926
  %i.dku = getelementptr inbounds nuw i8, ptr %i.die, i64 238 ; 2 uses
  %i.dkv = load i8, ptr %i.dku, align 2, !tbaa !1313 ; 2 uses
  %i.dkw = icmp sgt i8 %i.dkv, 0
  br i1 %i.dkw, label %bb.rc, label %bb.rd

bb.rc:                                            ; preds = %.thread992
  %i.dkx = add nsw i8 %i.dkv, -1
  store i8 %i.dkx, ptr %i.dku, align 2, !tbaa !1313
  %i.dky = getelementptr inbounds nuw i8, ptr %i.die, i64 20 ; 2 uses
  %i.dkz = load i32, ptr %i.dky, align 4, !tbaa !722
  %i.dla = or i32 %i.dkz, 197120
  store i32 %i.dla, ptr %i.dky, align 4, !tbaa !722
  br label %bb.rd

bb.rd:                                            ; preds = %bb.rc, %.thread992
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.die, i64 207
  %i.dlc = load i8, ptr %i.dlb, align 1, !tbaa !721, !range !64, !noundef !204
  %i.dld = trunc nuw i8 %i.dlc to i1
  br i1 %i.dld, label %bb.rf, label %bb.re

bb.re:                                            ; preds = %bb.rd
  %i.dle = getelementptr inbounds nuw i8, ptr %i.die, i64 204
  %i.dlf = load i8, ptr %i.dle, align 4, !tbaa !886, !range !64, !noundef !204
  %i.dlg = trunc nuw i8 %i.dlf to i1
  %or.cond39.not = and i1 %.not1009, %i.dlg
  br i1 %or.cond39.not, label %.critedge546.sink.split, label %bb.rf

bb.rf:                                            ; preds = %bb.re, %bb.rd
  %i.dlh = getelementptr inbounds nuw i8, ptr %i.die, i64 232
  %i.dli = load i8, ptr %i.dlh, align 8, !tbaa !720
  %i.dlj = icmp slt i8 %i.dli, 1
  br i1 %i.dlj, label %bb.rg, label %.critedge546.sink.split

bb.rg:                                            ; preds = %bb.rf
  %i.dlk = getelementptr inbounds nuw i8, ptr %i.die, i64 233
  %i.dll = load i8, ptr %i.dlk, align 1, !tbaa !719
  %i.dlm = icmp slt i8 %i.dll, 1
  br i1 %i.dlm, label %bb.rh, label %.critedge546.sink.split

bb.rh:                                            ; preds = %bb.rg
  %i.dln = getelementptr inbounds nuw i8, ptr %i.die, i64 236
  %i.dlo = load i8, ptr %i.dln, align 4, !tbaa !1220
  %i.dlp = icmp slt i8 %i.dlo, 1
  %spec.select544 = zext i1 %i.dlp to i8
  br label %.critedge546.sink.split

.critedge546.sink.split:                          ; preds = %bb.qg, %bb.re, %bb.rg, %bb.rf, %bb.rh
  %.sink1229 = phi i8 [ 0, %bb.rf ], [ 0, %bb.re ], [ %spec.select544, %bb.rh ], [ 0, %bb.rg ], [ 1, %bb.qg ]
  %i.dlq = getelementptr inbounds nuw i8, ptr %i.die, i64 209
  store i8 %.sink1229, ptr %i.dlq, align 1, !tbaa !1231
  br label %.critedge546

.critedge546:                                     ; preds = %.critedge546.sink.split, %bb.qf
  %i.dlr = getelementptr inbounds nuw i8, ptr %i.die, i64 213
  %i.dls = load i8, ptr %i.dlr, align 1, !tbaa !435, !range !64, !noundef !204
  %i.dlt = trunc nuw i8 %i.dls to i1
  br i1 %i.dlt, label %bb.rp, label %bb.ri

bb.ri:                                            ; preds = %.critedge546
  %i.dlu = getelementptr inbounds nuw i8, ptr %i.j, i64 179
  %i.dlv = load i8, ptr %i.dlu, align 1, !tbaa !1314, !range !64, !noundef !204
  %i.dlw = trunc nuw i8 %i.dlv to i1
  %or.cond41 = and i1 %i.eg, %i.dlw
  br i1 %or.cond41, label %bb.rl, label %bb.rj

bb.rj:                                            ; preds = %bb.ri
  %i.dlx = getelementptr inbounds nuw i8, ptr %i.j, i64 180
  %i.dly = load i8, ptr %i.dlx, align 4, !tbaa !1167, !range !64, !noundef !204
  %i.dlz = trunc nuw i8 %i.dly to i1
  br i1 %i.dlz, label %bb.rk, label %bb.rp

bb.rk:                                            ; preds = %bb.rj
  %i.dma = getelementptr inbounds nuw i8, ptr %i.j, i64 10464
  %i.dmb = load i8, ptr %i.dma, align 8, !tbaa !682
  %i.dmc = sext i8 %i.dmb to i32
  %i.dmd = load i32, ptr %i.eu, align 8, !tbaa !1149
  %i.dme = icmp eq i32 %i.dmd, %i.dmc
  br i1 %i.dme, label %bb.rl, label %bb.rp

bb.rl:                                            ; preds = %bb.ri, %bb.rk
  %i.dmf = getelementptr inbounds nuw i8, ptr %i.die, i64 232 ; 2 uses
  %i.dmg = load i8, ptr %i.dmf, align 8, !tbaa !720 ; 2 uses
  %i.dmh = icmp sgt i8 %i.dmg, 0
  br i1 %i.dmh, label %bb.rm, label %bb.rn

bb.rm:                                            ; preds = %bb.rl
  %i.dmi = add nuw i8 %i.dmg, 1
  store i8 %i.dmi, ptr %i.dmf, align 8, !tbaa !720
  br label %bb.rn

bb.rn:                                            ; preds = %bb.rm, %bb.rl
  %i.dmj = getelementptr inbounds nuw i8, ptr %i.die, i64 233 ; 2 uses
  %i.dmk = load i8, ptr %i.dmj, align 1, !tbaa !719 ; 2 uses
  %i.dml = icmp sgt i8 %i.dmk, 0
  br i1 %i.dml, label %bb.ro, label %bb.rq

bb.ro:                                            ; preds = %bb.rn
  %i.dmm = add nuw i8 %i.dmk, 1
  store i8 %i.dmm, ptr %i.dmj, align 1, !tbaa !719
  br label %bb.rq

bb.rp:                                            ; preds = %bb.rj, %bb.rk, %.critedge546
  %i.dmn = getelementptr inbounds nuw i8, ptr %i.die, i64 209
  %i.dmo = load i8, ptr %i.dmn, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.dmp = trunc nuw i8 %i.dmo to i1
  %i.dmq = xor i1 %i.dmp, true
  br label %bb.rq

bb.rq:                                            ; preds = %bb.rn, %bb.ro, %bb.rp
  %.0401 = phi i1 [ %i.dmq, %bb.rp ], [ false, %bb.ro ], [ false, %bb.rn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #41
  ret i1 %.0401
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui23ErrorRecoveryStoreStateEP23ImGuiErrorRecoveryState(ptr nofree noundef writeonly captures(none) initializes((0, 22)) %0) local_unnamed_addr #44 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5264
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1149
  %i.d = trunc i32 %i.c to i16
  store i16 %i.d, ptr %0, align 2, !tbaa !1150
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !298  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 264
  %i.h = load i32, ptr %i.g, align 8, !tbaa !1151
  %i.i = trunc i32 %i.h to i16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i16 %i.i, ptr %i.j, align 2, !tbaa !1152
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.l = load i32, ptr %i.k, align 8, !tbaa !461
  %i.m = trunc i32 %i.l to i16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.m, ptr %i.n, align 2, !tbaa !1153
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8056
  %i.p = load i32, ptr %i.o, align 8, !tbaa !426
  %i.q = trunc i32 %i.p to i16
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.q, ptr %i.r, align 2, !tbaa !1154
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8072
  %i.t = load i32, ptr %i.s, align 8, !tbaa !449
  %i.u = trunc i32 %i.t to i16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i16 %i.u, ptr %i.v, align 2, !tbaa !1155
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8088
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1156
  %i.y = trunc i32 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i16 %i.y, ptr %i.z, align 2, !tbaa !1157
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8104
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !1158
  %i.ac = trunc i32 %i.ab to i16
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !1159
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8136
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !1160
  %i.ag = trunc i32 %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i16 %i.ag, ptr %i.ah, align 2, !tbaa !1161
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8120
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !1162
  %i.ak = trunc i32 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 %i.ak, ptr %i.al, align 2, !tbaa !1163
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8168
  %i.an = load i32, ptr %i.am, align 8, !tbaa !914
  %i.ao = trunc i32 %i.an to i16
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i16 %i.ao, ptr %i.ap, align 2, !tbaa !1164
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 9856
  %i.ar = load i16, ptr %i.aq, align 8, !tbaa !1165
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !1166
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !452
  tail call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %i.f, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i1 noundef zeroext %2)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !452  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1265
  %i.k = load i32, ptr %i.h, align 8, !tbaa !1266
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [16 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %3 = load <4 x i32>, ptr %i.n, align 4, !tbaa !8
  store <4 x i32> %3, ptr %i.o, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui11PopClipRectEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 206
  store i8 1, ptr %i.d, align 2, !tbaa !854
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !452
  tail call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.f)
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !452  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1265
  %i.k = load i32, ptr %i.h, align 8, !tbaa !1266
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr [16 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -16
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %0 = load <4 x i32>, ptr %i.n, align 4, !tbaa !8
  store <4 x i32> %0, ptr %i.o, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui43FindBottomMostVisibleWindowWithinBeginStackEP11ImGuiWindow(ptr nofree noundef readonly captures(address, ret: address, provenance) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5216
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !561  ; 5 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !563  ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx.i.i = shl nsw i64 %i.f, 3
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %.idx.i.i
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.07.i.i = phi ptr [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.07.i.i, align 8, !tbaa !705
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.07.i.i, i64 8 ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.g
  br i1 %i.l, label %.lr.ph.i.i, label %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit, !llvm.loop !887

_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit: ; preds = %.lr.ph.i.i, %bb.b, %bb.a
  %.0.lcssa.i.i = phi ptr [ %i.d, %bb.a ], [ %.07.i.i, %.lr.ph.i.i ], [ %i.k, %bb.b ]
  %i.m = ptrtoint ptr %.0.lcssa.i.i to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = and i64 %i.o, 17179869184
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit

.lr.ph:                                           ; preds = %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit
  %i.r = lshr exact i64 %i.o, 3
  %i.s = getelementptr i8, ptr %0, i64 20
  %i.t = and i64 %i.r, 2147483647
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread
  %indvars.iv = phi i64 [ %i.t, %.lr.ph ], [ %indvars.iv.next, %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread ] ; 3 uses
  %.01528 = phi ptr [ %0, %.lr.ph ], [ %.2.ph, %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread ] ; 5 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !705  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !722  ; 2 uses
  %i.y = and i32 %i.x, 16777216
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.d, label %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 960
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !847
  %i.ab = icmp eq ptr %i.aa, %0
  br i1 %i.ab, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %.079.i = phi ptr [ %i.ae, %bb.e ], [ %i.v, %bb.d ] ; 2 uses
  %i.ac = icmp eq ptr %.079.i, %0
  br i1 %i.ac, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.079.i, i64 952
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !848 ; 2 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit, label %.lr.ph.i, !llvm.loop !849

.loopexit:                                        ; preds = %.lr.ph.i, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 204
  %i.ag = load i8, ptr %i.af, align 4, !tbaa !886, !range !64, !noundef !204
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit, label %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread

_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit: ; preds = %.loopexit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 212
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !926, !range !64, !noundef !204
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit
  %i.al = lshr i32 %i.x, 25
  %.lobit.i = and i32 %i.al, 1
  %.val = load i32, ptr %i.s, align 4, !tbaa !722
  %i.am = lshr i32 %.val, 25
  %.lobit.i18 = and i32 %i.am, 1
  %.not16 = icmp samesign ugt i32 %.lobit.i, %.lobit.i18
  %spec.select = select i1 %.not16, ptr %.01528, ptr %i.v
  br label %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread

_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread: ; preds = %.loopexit, %bb.c, %bb.f, %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit
  %.2.ph = phi ptr [ %.01528, %bb.c ], [ %.01528, %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit ], [ %spec.select, %bb.f ], [ %.01528, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.an = icmp sgt i64 %indvars.iv, 0
  br i1 %i.an, label %bb.c, label %_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit, !llvm.loop !1315

_ZN5ImGui26IsWindowWithinBeginStackOfEP11ImGuiWindowS1_.exit: ; preds = %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread, %bb.e, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit
  %.01527 = phi ptr [ %.01528, %bb.e ], [ %0, %_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow.exit ], [ %.2.ph, %_ZL24IsWindowActiveAndVisibleP11ImGuiWindow.exit.thread ]
  ret ptr %.01527
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN5ImGui22FindWindowDisplayIndexEP11ImGuiWindow(ptr nofree noundef readnone captures(address) %0) local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5216
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 5224
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !561  ; 4 uses
  %i.e = load i32, ptr %i.b, align 8, !tbaa !563  ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx.i = shl nsw i64 %i.f, 3
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 %.idx.i
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph.i, label %_ZN8ImVectorIP11ImGuiWindowE4findERKS1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.07.i = phi ptr [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 3 uses
  %i.i = load ptr, ptr %.07.i, align 8, !tbaa !705
  %i.j = icmp eq ptr %i.i, %0
  br i1 %i.j, label %_ZN8ImVectorIP11ImGuiWindowE4findERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.07.i, i64 8 ; 3 uses
  %i.l = icmp ult ptr %i.k, %i.g
  br i1 %i.l, label %.lr.ph.i, label %_ZN8ImVectorIP11ImGuiWindowE4findERKS1_.exit, !llvm.loop !887

_ZN8ImVectorIP11ImGuiWindowE4findERKS1_.exit:     ; preds = %.lr.ph.i, %bb.b, %bb.a
  %.0.lcssa.i = phi ptr [ %i.d, %bb.a ], [ %i.k, %bb.b ], [ %.07.i, %.lr.ph.i ]
  %i.m = ptrtoint ptr %.0.lcssa.i to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = lshr exact i64 %i.o, 3
  %i.q = trunc i64 %i.p to i32
  ret i32 %i.q
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui8EndFrameEv() local_unnamed_addr #12 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %0 = alloca %struct.ImGuiStyleMod, align 4      ; 5 uses
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 44 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !640
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !194
  %i.g = icmp eq i32 %i.d, %i.f
  br i1 %i.g, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit113, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !433, !range !64, !noundef !204
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.91) ; 0 uses
  br label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit113

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 10136 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 10144 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !554  ; 2 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !555  ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.idx.i = shl nsw i64 %i.p, 5
  %i.q = getelementptr inbounds i8, ptr %i.n, i64 %.idx.i
  %.not12.i = icmp eq i32 %i.o, 0
  br i1 %.not12.i, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.f
  %.013.i = phi ptr [ %i.w, %bb.f ], [ %i.n, %bb.d ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.013.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !556
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.013.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !559
  tail call void %i.v(ptr noundef %i.b, ptr noundef nonnull %.013.i), !inline_history !560
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %i.w = getelementptr inbounds nuw i8, ptr %.013.i, i64 32 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.q
  br i1 %.not.i, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit, label %.lr.ph.i

_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit: ; preds = %bb.f, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.y = load i8, ptr %i.x, align 4, !tbaa !1316, !range !64, !noundef !204
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 10368
end_hunk_5
begin_hunk_6_@_ZN5ImGui8EndFrameEv:bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !198
  %i.lz = add i16 %.pre.i, 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.ma = sext i16 %i.lv to i32
  %i.mb = add nsw i32 %i.ma, 1
  %i.mc = srem i32 %i.mb, 6                       ; 2 uses
  %i.md = trunc nsw i32 %i.mc to i16
  store i16 %i.md, ptr %i.lu, align 4, !tbaa !195
  %i.me = sext i32 %i.mc to i64                   ; 2 uses
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.me ; 3 uses
  store i32 %i.ls, ptr %i.mf, align 4, !tbaa !196
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 6
  store i16 0, ptr %i.mg, align 2, !tbaa !199
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mf, i64 4
  store i16 0, ptr %i.mh, align 4, !tbaa !198
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %._crit_edge.i
  %i.mi = phi i16 [ 1, %bb.bq ], [ %i.lz, %._crit_edge.i ]
  %i.mj = phi i64 [ %i.me, %bb.bq ], [ %i.lw, %._crit_edge.i ]
  %i.mk = getelementptr inbounds [8 x i8], ptr %i.lt, i64 %i.mj
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 4
  store i16 %i.mi, ptr %i.ml, align 4, !tbaa !198
  %i.mm = load i32, ptr %i.lq, align 4, !tbaa !200
  %i.mn = add nsw i32 %i.mm, 1
  store i32 %i.mn, ptr %i.lq, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.br, %bb.bo
  %i.mo = getelementptr inbounds nuw i8, ptr %i.b, i64 5256 ; 3 uses
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !561 ; 2 uses
  %.not6.i = icmp eq ptr %i.mp, null
  br i1 %.not6.i, label %bb.bw, label %bb.bs

bb.bs:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.mq = load i32, ptr %i.lf, align 8, !tbaa !563
  %i.mr = sext i32 %i.mq to i64
  %i.ms = shl nsw i64 %i.mr, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.lo, ptr nonnull align 8 %i.mp, i64 %i.ms, i1 false)
  %i.mt = load ptr, ptr %i.mo, align 8, !tbaa !561 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.mt, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.mu = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.mu, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 4
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !194 ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mu, i64 10608 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mu, i64 10604 ; 2 uses
  %i.mz = load i16, ptr %i.my, align 4, !tbaa !195 ; 2 uses
  %i.na = sext i16 %i.mz to i64                   ; 2 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.na ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !196
  %.not.i.i8.i = icmp eq i32 %i.nc, %i.mw
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.bv

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.bu
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.nb, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !199
  %i.nd = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.bv:                                            ; preds = %bb.bu
  %i.ne = sext i16 %i.mz to i32
  %i.nf = add nsw i32 %i.ne, 1
  %i.ng = srem i32 %i.nf, 6                       ; 2 uses
  %i.nh = trunc nsw i32 %i.ng to i16
  store i16 %i.nh, ptr %i.my, align 4, !tbaa !195
  %i.ni = sext i32 %i.ng to i64                   ; 2 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.ni ; 3 uses
  store i32 %i.mw, ptr %i.nj, align 4, !tbaa !196
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nj, i64 6
  store i16 0, ptr %i.nk, align 2, !tbaa !199
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 4
  store i16 0, ptr %i.nl, align 4, !tbaa !198
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.bv, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.nm = phi i16 [ 1, %bb.bv ], [ %i.nd, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.nn = phi i64 [ %i.ni, %bb.bv ], [ %i.na, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.no = getelementptr inbounds [8 x i8], ptr %i.mx, i64 %i.nn
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 6
  store i16 %i.nm, ptr %i.np, align 2, !tbaa !199
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mu, i64 10600 ; 2 uses
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !201
  %i.ns = add nsw i32 %i.nr, 1
  store i32 %i.ns, ptr %i.nq, align 4, !tbaa !201
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.bt, %bb.bs
  %i.nt = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !191
  %i.nu = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  call void %i.nt(ptr noundef %i.mt, ptr noundef %i.nu), !inline_history !1326
  br label %bb.bw

bb.bw:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.lo, ptr %i.mo, align 8, !tbaa !561
  store i32 %i.lh, ptr %i.li, align 4, !tbaa !562
  %.pre124 = load i32, ptr %i.lg, align 8, !tbaa !563
  br label %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit

_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit:      ; preds = %_ZN5ImGuiL19UpdateFontsEndFrameEv.exit, %bb.bw
  %i.nv = phi i32 [ %i.lj, %_ZN5ImGuiL19UpdateFontsEndFrameEv.exit ], [ %i.lh, %bb.bw ]
  %i.nw = phi i32 [ %i.lh, %_ZN5ImGuiL19UpdateFontsEndFrameEv.exit ], [ %.pre124, %bb.bw ] ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.b, i64 5224 ; 3 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !561 ; 3 uses
  %i.nz = sext i32 %i.nw to i64
  %.idx = shl nsw i64 %i.nz, 3
  %i.oa = getelementptr inbounds i8, ptr %i.ny, i64 %.idx
  %.not90114 = icmp eq i32 %i.nw, 0
  br i1 %.not90114, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.cl
  %.pre125 = load i32, ptr %i.lg, align 8, !tbaa !563
  %.pre126 = load i32, ptr %i.li, align 4, !tbaa !562
  %.pre127 = load ptr, ptr %i.nx, align 8, !tbaa !561
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit
  %i.ob = phi ptr [ %.pre127, %._crit_edge.loopexit ], [ %i.ny, %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit ]
  %i.oc = phi i32 [ %.pre126, %._crit_edge.loopexit ], [ %i.nv, %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit ]
  %i.od = phi i32 [ %.pre125, %._crit_edge.loopexit ], [ 0, %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit ]
  %i.oe = load i32, ptr %i.lf, align 8, !tbaa !563
  store i32 %i.od, ptr %i.lf, align 8, !tbaa !563
  store i32 %i.oe, ptr %i.lg, align 8, !tbaa !563
  %i.of = getelementptr inbounds nuw i8, ptr %i.b, i64 5220 ; 2 uses
  %i.og = load i32, ptr %i.of, align 4, !tbaa !562
  store i32 %i.og, ptr %i.li, align 4, !tbaa !562
  store i32 %i.oc, ptr %i.of, align 4, !tbaa !562
  %i.oh = getelementptr inbounds nuw i8, ptr %i.b, i64 5256 ; 2 uses
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !561
  store ptr %i.ob, ptr %i.oh, align 8, !tbaa !561
  store ptr %i.oi, ptr %i.nx, align 8, !tbaa !561
  %i.oj = getelementptr inbounds nuw i8, ptr %i.b, i64 5296
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !641
  %i.ol = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store i32 %i.ok, ptr %i.ol, align 8, !tbaa !1327
  %i.om = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 7 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 3192 ; 7 uses
  call void @_ZN8ImVectorIP13ImTextureDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.on, i32 noundef 0)
  %i.oo = getelementptr inbounds nuw i8, ptr %i.om, i64 4536
  %i.op = getelementptr inbounds nuw i8, ptr %i.om, i64 4544
  %i.oq = load ptr, ptr %i.op, align 8, !tbaa !541 ; 2 uses
  %i.or = load i32, ptr %i.oo, align 8, !tbaa !542 ; 2 uses
  %i.os = sext i32 %i.or to i64
  %.idx.i99 = shl nsw i64 %i.os, 3
  %i.ot = getelementptr inbounds i8, ptr %i.oq, i64 %.idx.i99
  %.not31.i = icmp eq i32 %i.or, 0
  br i1 %.not31.i, label %._crit_edge35.i, label %.lr.ph34.i

.lr.ph34.i:                                       ; preds = %._crit_edge
  %i.ou = getelementptr inbounds nuw i8, ptr %i.om, i64 3196 ; 2 uses
  %.phi.trans.insert.i.i100 = getelementptr inbounds nuw i8, ptr %i.om, i64 3200 ; 4 uses
  br label %bb.bx

._crit_edge35.i:                                  ; preds = %._crit_edge.i104, %._crit_edge
  %i.ov = getelementptr inbounds nuw i8, ptr %i.om, i64 10048
  %i.ow = getelementptr inbounds nuw i8, ptr %i.om, i64 10056
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !527 ; 2 uses
  %i.oy = load i32, ptr %i.ov, align 8, !tbaa !528 ; 2 uses
  %i.oz = sext i32 %i.oy to i64
  %.idx42.i = shl nsw i64 %i.oz, 3
  %i.pa = getelementptr inbounds i8, ptr %i.ox, i64 %.idx42.i
  %.not2736.i = icmp eq i32 %i.oy, 0
  br i1 %.not2736.i, label %_ZN5ImGuiL22UpdateTexturesEndFrameEv.exit, label %.lr.ph39.i

bb.bx:                                            ; preds = %._crit_edge.i104, %.lr.ph34.i
  %.02632.i = phi ptr [ %i.oq, %.lr.ph34.i ], [ %i.pj, %._crit_edge.i104 ] ; 2 uses
  %i.pb = load ptr, ptr %.02632.i, align 8, !tbaa !514 ; 3 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 64
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pb, i64 72
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !527 ; 2 uses
  %i.pf = load i32, ptr %i.pc, align 8, !tbaa !528 ; 2 uses
  %i.pg = sext i32 %i.pf to i64
  %.idx41.i = shl nsw i64 %i.pg, 3
  %i.ph = getelementptr inbounds i8, ptr %i.pe, i64 %.idx41.i
  %.not2829.i = icmp eq i32 %i.pf, 0
  br i1 %.not2829.i, label %._crit_edge.i104, label %.lr.ph.i101

.lr.ph.i101:                                      ; preds = %bb.bx
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pb, i64 724
  %.pre.i102 = load i32, ptr %i.on, align 8, !tbaa !528
  br label %bb.by

._crit_edge.i104:                                 ; preds = %_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_.exit.i, %bb.bx
  %i.pj = getelementptr inbounds nuw i8, ptr %.02632.i, i64 8 ; 2 uses
  %.not.i105 = icmp eq ptr %i.pj, %i.ot
  br i1 %.not.i105, label %._crit_edge35.i, label %bb.bx

bb.by:                                            ; preds = %_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_.exit.i, %.lr.ph.i101
  %i.pk = phi i32 [ %.pre.i102, %.lr.ph.i101 ], [ %i.sl, %_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_.exit.i ] ; 6 uses
  %.02530.i = phi ptr [ %i.pe, %.lr.ph.i101 ], [ %i.sm, %_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_.exit.i ] ; 2 uses
  %i.pl = load ptr, ptr %.02530.i, align 8, !tbaa !485 ; 2 uses
  %2 = ptrtoint ptr %i.pl to i64
  %i.pm = load i32, ptr %i.pi, align 4, !tbaa !515
  %i.pn = trunc i32 %i.pm to i16
  %i.po = getelementptr inbounds nuw i8, ptr %i.pl, i64 92
  store i16 %i.pn, ptr %i.po, align 4, !tbaa !529
  %i.pp = load i32, ptr %i.ou, align 4, !tbaa !1328
  %i.pq = icmp eq i32 %i.pk, %i.pp
  br i1 %i.pq, label %bb.bz, label %._ZN8ImVectorIP13ImTextureDataE7reserveEi.exit_crit_edge.i.i

._ZN8ImVectorIP13ImTextureDataE7reserveEi.exit_crit_edge.i.i: ; preds = %bb.by
  %.pre.i.i103 = load ptr, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !527
  br label %_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.pr = add nsw i32 %i.pk, 1
  %.not.i.i.i106 = icmp eq i32 %i.pk, 0
  br i1 %.not.i.i.i106, label %_ZNK8ImVectorIP13ImTextureDataE14_grow_capacityEi.exit.i.i, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ps = sdiv i32 %i.pk, 2
  %i.pt = add nsw i32 %i.ps, %i.pk
  br label %_ZNK8ImVectorIP13ImTextureDataE14_grow_capacityEi.exit.i.i

_ZNK8ImVectorIP13ImTextureDataE14_grow_capacityEi.exit.i.i: ; preds = %bb.ca, %bb.bz
  %i.pu = phi i32 [ %i.pt, %bb.ca ], [ 8, %bb.bz ]
  %i.pv = call noundef i32 @llvm.smax.i32(i32 %i.pu, i32 %i.pr) ; 2 uses
  %i.pw = sext i32 %i.pv to i64
  %i.px = shl nsw i64 %i.pw, 3
  %i.py = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.pz = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.qa = call noundef ptr %i.py(i64 noundef %i.px, ptr noundef %i.pz), !inline_history !1329 ; 3 uses
  %i.qb = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i.i.i.i = icmp eq ptr %i.qb, null
  br i1 %.not.i.i.i.i, label %_ZN5ImGui8MemAllocEm.exit.i.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZNK8ImVectorIP13ImTextureDataE14_grow_capacityEi.exit.i.i
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 10596 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !194 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qb, i64 10608 ; 3 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qb, i64 10604 ; 2 uses
  %i.qh = load i16, ptr %i.qg, align 4, !tbaa !195 ; 2 uses
  %i.qi = sext i16 %i.qh to i64                   ; 2 uses
  %i.qj = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.qi ; 2 uses
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !196
  %.not.i.i.i.i.i = icmp eq i32 %i.qk, %i.qe
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i, label %bb.cc

._crit_edge.i.i.i:                                ; preds = %bb.cb
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %i.qj, i64 4
  %.pre.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !198
  %i.ql = add i16 %.pre.i.i.i, 1
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.qm = sext i16 %i.qh to i32
  %i.qn = add nsw i32 %i.qm, 1
  %i.qo = srem i32 %i.qn, 6                       ; 2 uses
  %i.qp = trunc nsw i32 %i.qo to i16
  store i16 %i.qp, ptr %i.qg, align 4, !tbaa !195
  %i.qq = sext i32 %i.qo to i64                   ; 2 uses
  %i.qr = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.qq ; 3 uses
  store i32 %i.qe, ptr %i.qr, align 4, !tbaa !196
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 6
  store i16 0, ptr %i.qs, align 2, !tbaa !199
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  store i16 0, ptr %i.qt, align 4, !tbaa !198
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %._crit_edge.i.i.i
  %i.qu = phi i16 [ 1, %bb.cc ], [ %i.ql, %._crit_edge.i.i.i ]
  %i.qv = phi i64 [ %i.qq, %bb.cc ], [ %i.qi, %._crit_edge.i.i.i ]
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.qf, i64 %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  store i16 %i.qu, ptr %i.qx, align 4, !tbaa !198
  %i.qy = load i32, ptr %i.qc, align 4, !tbaa !200
  %i.qz = add nsw i32 %i.qy, 1
  store i32 %i.qz, ptr %i.qc, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit.i.i.i

_ZN5ImGui8MemAllocEm.exit.i.i.i:                  ; preds = %bb.cd, %_ZNK8ImVectorIP13ImTextureDataE14_grow_capacityEi.exit.i.i
  %i.ra = load ptr, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !527 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.ra, null
  br i1 %.not6.i.i.i, label %bb.ci, label %bb.ce

bb.ce:                                            ; preds = %_ZN5ImGui8MemAllocEm.exit.i.i.i
  %i.rb = load i32, ptr %i.on, align 8, !tbaa !528
  %i.rc = sext i32 %i.rb to i64
  %i.rd = shl nsw i64 %i.rc, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.qa, ptr nonnull align 8 %i.ra, i64 %i.rd, i1 false)
  %i.re = load ptr, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !527 ; 2 uses
  %.not.i7.i.i.i = icmp eq ptr %i.re, null
  br i1 %.not.i7.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.rf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not7.i.i.i.i = icmp eq ptr %i.rf, null
  br i1 %.not7.i.i.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 4
  %i.rh = load i32, ptr %i.rg, align 4, !tbaa !194 ; 2 uses
  %i.ri = getelementptr inbounds nuw i8, ptr %i.rf, i64 10608 ; 3 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %i.rf, i64 10604 ; 2 uses
  %i.rk = load i16, ptr %i.rj, align 4, !tbaa !195 ; 2 uses
  %i.rl = sext i16 %i.rk to i64                   ; 2 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.rl ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !196
  %.not.i.i8.i.i.i = icmp eq i32 %i.rn, %i.rh
  br i1 %.not.i.i8.i.i.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i, label %bb.ch

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i: ; preds = %bb.cg
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.rm, i64 6
  %.pre.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i, align 2, !tbaa !199
  %i.ro = add i16 %.pre.i.i.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i

bb.ch:                                            ; preds = %bb.cg
  %i.rp = sext i16 %i.rk to i32
  %i.rq = add nsw i32 %i.rp, 1
  %i.rr = srem i32 %i.rq, 6                       ; 2 uses
  %i.rs = trunc nsw i32 %i.rr to i16
  store i16 %i.rs, ptr %i.rj, align 4, !tbaa !195
  %i.rt = sext i32 %i.rr to i64                   ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.rt ; 3 uses
  store i32 %i.rh, ptr %i.ru, align 4, !tbaa !196
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 6
  store i16 0, ptr %i.rv, align 2, !tbaa !199
  %i.rw = getelementptr inbounds nuw i8, ptr %i.ru, i64 4
  store i16 0, ptr %i.rw, align 4, !tbaa !198
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i: ; preds = %bb.ch, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i
  %i.rx = phi i16 [ 1, %bb.ch ], [ %i.ro, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i ]
  %i.ry = phi i64 [ %i.rt, %bb.ch ], [ %i.rl, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i.i.i ]
  %i.rz = getelementptr inbounds [8 x i8], ptr %i.ri, i64 %i.ry
  %i.sa = getelementptr inbounds nuw i8, ptr %i.rz, i64 6
  store i16 %i.rx, ptr %i.sa, align 2, !tbaa !199
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rf, i64 10600 ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !201
  %i.sd = add nsw i32 %i.sc, 1
  store i32 %i.sd, ptr %i.sb, align 4, !tbaa !201
  br label %_ZN5ImGui7MemFreeEPv.exit.i.i.i

_ZN5ImGui7MemFreeEPv.exit.i.i.i:                  ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i.i.i, %bb.cf, %bb.ce
  %i.se = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !191
  %i.sf = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  call void %i.se(ptr noundef %i.re, ptr noundef %i.sf), !inline_history !1330
  br label %bb.ci

bb.ci:                                            ; preds = %_ZN5ImGui7MemFreeEPv.exit.i.i.i, %_ZN5ImGui8MemAllocEm.exit.i.i.i
  store ptr %i.qa, ptr %.phi.trans.insert.i.i100, align 8, !tbaa !527
  store i32 %i.pv, ptr %i.ou, align 4, !tbaa !1328
  %.pre3.i.i = load i32, ptr %i.on, align 8, !tbaa !528
  br label %_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_.exit.i

_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_.exit.i: ; preds = %bb.ci, %._ZN8ImVectorIP13ImTextureDataE7reserveEi.exit_crit_edge.i.i
  %i.sg = phi i32 [ %i.pk, %._ZN8ImVectorIP13ImTextureDataE7reserveEi.exit_crit_edge.i.i ], [ %.pre3.i.i, %bb.ci ]
  %i.sh = phi ptr [ %.pre.i.i103, %._ZN8ImVectorIP13ImTextureDataE7reserveEi.exit_crit_edge.i.i ], [ %i.qa, %bb.ci ]
  %i.si = sext i32 %i.sg to i64
  %i.sj = getelementptr inbounds [8 x i8], ptr %i.sh, i64 %i.si
  store i64 %2, ptr %i.sj, align 8
  %i.sk = load i32, ptr %i.on, align 8, !tbaa !528
  %i.sl = add nsw i32 %i.sk, 1                    ; 2 uses
  store i32 %i.sl, ptr %i.on, align 8, !tbaa !528
  %i.sm = getelementptr inbounds nuw i8, ptr %.02530.i, i64 8 ; 2 uses
  %.not28.i = icmp eq ptr %i.sm, %i.ph
  br i1 %.not28.i, label %._crit_edge.i104, label %bb.by

.lr.ph39.i:                                       ; preds = %._crit_edge35.i, %.lr.ph39.i
  %.037.i = phi ptr [ %i.so, %.lr.ph39.i ], [ %i.ox, %._crit_edge35.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.sn = load ptr, ptr %.037.i, align 8, !tbaa !485
  store ptr %i.sn, ptr %i.a, align 8, !tbaa !485
  call void @_ZN8ImVectorIP13ImTextureDataE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(16) %i.on, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  %i.so = getelementptr inbounds nuw i8, ptr %.037.i, i64 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.so, %i.pa
  br i1 %.not27.i, label %_ZN5ImGuiL22UpdateTexturesEndFrameEv.exit, label %.lr.ph39.i

_ZN5ImGuiL22UpdateTexturesEndFrameEv.exit:        ; preds = %.lr.ph39.i, %._crit_edge35.i
  %i.sp = getelementptr inbounds nuw i8, ptr %i.b, i64 4536
  %i.sq = getelementptr inbounds nuw i8, ptr %i.b, i64 4544
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !541 ; 3 uses
  %i.ss = load i32, ptr %i.sp, align 8, !tbaa !542 ; 2 uses
  %i.st = sext i32 %i.ss to i64
  %.idx120 = shl nsw i64 %i.st, 3                 ; 2 uses
  %i.su = getelementptr inbounds i8, ptr %i.sr, i64 %.idx120
  %.not91116 = icmp eq i32 %i.ss, 0
  br i1 %.not91116, label %._crit_edge119, label %.lr.ph118.preheader

.lr.ph118.preheader:                              ; preds = %_ZN5ImGuiL22UpdateTexturesEndFrameEv.exit
  %i.sv = add nsw i64 %.idx120, -8                ; 2 uses
  %i.sw = lshr exact i64 %i.sv, 3
  %i.sx = add nuw nsw i64 %i.sw, 1
  %xtraiter = and i64 %i.sx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol

.lr.ph118.prol:                                   ; preds = %.lr.ph118.preheader, %.lr.ph118.prol
  %.0117.prol = phi ptr [ %i.ta, %.lr.ph118.prol ], [ %i.sr, %.lr.ph118.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph118.prol ], [ 0, %.lr.ph118.preheader ]
  %i.sy = load ptr, ptr %.0117.prol, align 8, !tbaa !514
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sy, i64 80
  store i8 0, ptr %i.sz, align 8, !tbaa !550
  %i.ta = getelementptr inbounds nuw i8, ptr %.0117.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph118.prol.loopexit, label %.lr.ph118.prol, !llvm.loop !1331

.lr.ph118.prol.loopexit:                          ; preds = %.lr.ph118.prol, %.lr.ph118.preheader
  %.0117.unr = phi ptr [ %i.sr, %.lr.ph118.preheader ], [ %i.ta, %.lr.ph118.prol ]
  %i.tb = icmp ult i64 %i.sv, 56
  br i1 %i.tb, label %._crit_edge119, label %.lr.ph118

.lr.ph:                                           ; preds = %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit, %bb.cl
  %.080115 = phi ptr [ %i.tj, %bb.cl ], [ %i.ny, %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit ] ; 2 uses
  %i.tc = load ptr, ptr %.080115, align 8, !tbaa !705 ; 3 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 204
  %i.te = load i8, ptr %i.td, align 4, !tbaa !886, !range !64, !noundef !204
  %i.tf = trunc nuw i8 %i.te to i1
  br i1 %i.tf, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.lr.ph
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 20
  %i.th = load i32, ptr %i.tg, align 4, !tbaa !722
  %i.ti = and i32 %i.th, 16777216
  %.not92 = icmp eq i32 %i.ti, 0
  br i1 %.not92, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj, %.lr.ph
  call fastcc void @_ZL21AddWindowToSortBufferP8ImVectorIP11ImGuiWindowES1_(ptr noundef nonnull %i.lf, ptr noundef nonnull %i.tc)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ck
  %i.tj = getelementptr inbounds nuw i8, ptr %.080115, i64 8 ; 2 uses
  %.not90 = icmp eq ptr %i.tj, %i.oa
  br i1 %.not90, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge119:                                   ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118, %_ZN5ImGuiL22UpdateTexturesEndFrameEv.exit
  %i.tk = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.tl = getelementptr inbounds nuw i8, ptr %i.b, i64 2792
  %i.tm = load i64, ptr %i.tk, align 8
  store i64 %i.tm, ptr %i.tl, align 8
  %i.tn = getelementptr inbounds nuw i8, ptr %i.b, i64 3036
  store i8 0, ptr %i.tn, align 4, !tbaa !223
  %i.to = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store <2 x float> zeroinitializer, ptr %i.to, align 8, !tbaa !8
  %i.tp = getelementptr inbounds nuw i8, ptr %i.b, i64 3040
  call void @_ZN8ImVectorItE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.tp, i32 noundef 0)
  %i.tq = load ptr, ptr %i.m, align 8, !tbaa !554 ; 2 uses
  %i.tr = load i32, ptr %i.l, align 8, !tbaa !555 ; 2 uses
  %i.ts = sext i32 %i.tr to i64
  %.idx.i107 = shl nsw i64 %i.ts, 5
  %i.tt = getelementptr inbounds i8, ptr %i.tq, i64 %.idx.i107
  %.not12.i108 = icmp eq i32 %i.tr, 0
  br i1 %.not12.i108, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit113, label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %._crit_edge119, %bb.cn
  %.013.i110 = phi ptr [ %i.tz, %bb.cn ], [ %i.tq, %._crit_edge119 ] ; 4 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.013.i110, i64 4
  %i.tv = load i32, ptr %i.tu, align 4, !tbaa !556
  %i.tw = icmp eq i32 %i.tv, 3
  br i1 %i.tw, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.lr.ph.i109
  %i.tx = getelementptr inbounds nuw i8, ptr %.013.i110, i64 16
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !559
  call void %i.ty(ptr noundef %i.b, ptr noundef nonnull %.013.i110), !inline_history !560
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %.lr.ph.i109
  %i.tz = getelementptr inbounds nuw i8, ptr %.013.i110, i64 32 ; 2 uses
  %.not.i111 = icmp eq ptr %i.tz, %i.tt
  br i1 %.not.i111, label %_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit113, label %.lr.ph.i109

.lr.ph118:                                        ; preds = %.lr.ph118.prol.loopexit, %.lr.ph118
  %.0117 = phi ptr [ %i.ux, %.lr.ph118 ], [ %.0117.unr, %.lr.ph118.prol.loopexit ] ; 9 uses
  %i.ua = load ptr, ptr %.0117, align 8, !tbaa !514
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 80
  store i8 0, ptr %i.ub, align 8, !tbaa !550
  %i.uc = getelementptr inbounds nuw i8, ptr %.0117, i64 8
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !514
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 80
  store i8 0, ptr %i.ue, align 8, !tbaa !550
  %i.uf = getelementptr inbounds nuw i8, ptr %.0117, i64 16
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !514
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ug, i64 80
  store i8 0, ptr %i.uh, align 8, !tbaa !550
  %i.ui = getelementptr inbounds nuw i8, ptr %.0117, i64 24
  %i.uj = load ptr, ptr %i.ui, align 8, !tbaa !514
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 80
  store i8 0, ptr %i.uk, align 8, !tbaa !550
  %i.ul = getelementptr inbounds nuw i8, ptr %.0117, i64 32
  %i.um = load ptr, ptr %i.ul, align 8, !tbaa !514
  %i.un = getelementptr inbounds nuw i8, ptr %i.um, i64 80
  store i8 0, ptr %i.un, align 8, !tbaa !550
  %i.uo = getelementptr inbounds nuw i8, ptr %.0117, i64 40
  %i.up = load ptr, ptr %i.uo, align 8, !tbaa !514
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 80
  store i8 0, ptr %i.uq, align 8, !tbaa !550
  %i.ur = getelementptr inbounds nuw i8, ptr %.0117, i64 48
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !514
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 80
  store i8 0, ptr %i.ut, align 8, !tbaa !550
  %i.uu = getelementptr inbounds nuw i8, ptr %.0117, i64 56
  %i.uv = load ptr, ptr %i.uu, align 8, !tbaa !514
  %i.uw = getelementptr inbounds nuw i8, ptr %i.uv, i64 80
  store i8 0, ptr %i.uw, align 8, !tbaa !550
  %i.ux = getelementptr inbounds nuw i8, ptr %.0117, i64 64 ; 2 uses
  %.not91.7 = icmp eq ptr %i.ux, %i.su
  br i1 %.not91.7, label %._crit_edge119, label %.lr.ph118

_ZN5ImGui16CallContextHooksEP12ImGuiContext20ImGuiContextHookType.exit113: ; preds = %bb.cn, %._crit_edge119, %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui30ErrorRecoveryTryToRecoverStateEPK23ImGuiErrorRecoveryState(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5264 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !1149 ; 2 uses
  %i.d = load i16, ptr %0, align 2, !tbaa !1150
  %i.e = sext i16 %i.d to i32                     ; 2 uses
  %i.f = icmp sgt i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8984
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !298  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i32, ptr %i.j, align 4, !tbaa !722
  %i.l = and i32 %i.k, 16777216
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !338  ; 2 uses
  %.not12 = icmp eq ptr %i.m, null
  br i1 %.not12, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 392
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1332
  %i.p = icmp eq ptr %i.o, %i.i
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.125) ; 0 uses
  tail call void @_ZN5ImGui8EndTableEv()
  br label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.d
  %i.r = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.126) ; 0 uses
  tail call void @_ZN5ImGui8EndChildEv()
  br label %bb.h
end_hunk_6
begin_hunk_7_@_ZN5ImGui38ErrorCheckEndFrameFinalizeErrorTooltipEv:bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bv, i64 344
  store i8 1, ptr %i.cj, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit13

_ZN5ImGui8SameLineEff.exit13:                     ; preds = %_ZN5ImGui8SameLineEff.exit12, %bb.m
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.155)
  tail call void @_ZN5ImGui3EndEv(), !inline_history !439
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %_ZN5ImGui8SameLineEff.exit13, %bb.e, %bb.d
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 10364
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !434
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.cn = tail call noundef zeroext i1 @_ZN5ImGui17BeginErrorTooltipEv()
  br i1 %i.cn, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN5ImGui9SeparatorEv()
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.152)
  %i.co = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 5312
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !298 ; 8 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 209
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %_ZN5ImGui8SameLineEff.exit14, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 280
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cq, i64 288
  %i.cw = load <2 x float>, ptr %i.cv, align 8, !tbaa !8
  %i.cx = fadd <2 x float> %i.cw, <float 0.000000e+00, float -0.000000e+00>
  store <2 x float> %i.cx, ptr %i.cu, align 8, !tbaa !8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cq, i64 328
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cq, i64 320
  %i.da = load i64, ptr %i.cy, align 8
  store i64 %i.da, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.cq, i64 340
  %i.dc = load float, ptr %i.db, align 4, !tbaa !1335
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 336
  store float %i.dc, ptr %i.dd, align 8, !tbaa !1336
  %i.de = getelementptr inbounds nuw i8, ptr %i.cq, i64 344
  store i8 1, ptr %i.de, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit14

_ZN5ImGui8SameLineEff.exit14:                     ; preds = %bb.p, %bb.q
  %i.df = tail call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.156)
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN5ImGui8SameLineEff.exit14
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 173
  store i8 1, ptr %i.dg, align 1, !tbaa !430
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZN5ImGui8SameLineEff.exit14
  %i.dh = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 5312
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !298 ; 8 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 209
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %_ZN5ImGui8SameLineEff.exit15, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 280
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 288
  %i.dp = load <2 x float>, ptr %i.do, align 8, !tbaa !8
  %i.dq = fadd <2 x float> %i.dp, <float 0.000000e+00, float -0.000000e+00>
  store <2 x float> %i.dq, ptr %i.dn, align 8, !tbaa !8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dj, i64 328
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dj, i64 320
  %i.dt = load i64, ptr %i.dr, align 8
  store i64 %i.dt, ptr %i.ds, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dj, i64 340
  %i.dv = load float, ptr %i.du, align 4, !tbaa !1335
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dj, i64 336
  store float %i.dv, ptr %i.dw, align 8, !tbaa !1336
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dj, i64 344
  store i8 1, ptr %i.dx, align 8, !tbaa !1337
  br label %_ZN5ImGui8SameLineEff.exit15

_ZN5ImGui8SameLineEff.exit15:                     ; preds = %bb.s, %bb.t
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.155)
  tail call void @_ZN5ImGui3EndEv(), !inline_history !439
  br label %bb.u

bb.u:                                             ; preds = %_ZN5ImGui8SameLineEff.exit15, %bb.o, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5ImGui15GetMainViewportEv() local_unnamed_addr #24 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !437
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !438
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui3EndEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !298  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 5264 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1149 ; 2 uses
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.h = load i8, ptr %i.g, align 2, !tbaa !1147, !range !64, !noundef !204
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.98) ; 0 uses
  br label %_ZL16SetCurrentWindowP11ImGuiWindow.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 5272 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !565
  %i.m = sext i32 %i.e to i64
  %i.n = getelementptr [120 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !722  ; 3 uses
  %i.q = and i32 %i.p, 67108864
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 5164
  %i.s = load i32, ptr %i.r, align 4, !tbaa !1338
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !726
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.99) ; 0 uses
  %.pre = load i32, ptr %i.o, align 4, !tbaa !722
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.x = phi i32 [ %i.p, %bb.e ], [ %.pre, %bb.f ], [ %i.p, %bb.d ]
  %i.y = and i32 %i.x, 16777216
  %.not33 = icmp eq i32 %i.y, 0
  br i1 %.not33, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 5160
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !1339
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !726
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.100) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !333
  %.not34 = icmp eq ptr %i.ag, null
  br i1 %.not34, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_ZN5ImGui10EndColumnsEv()
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 210 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.aj = trunc nuw i8 %i.ai to i1
  %.pre40 = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  br i1 %i.aj, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.pre40, i64 5312
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !298 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 206
  store i8 1, ptr %i.am, align 2, !tbaa !854
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 712 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !452
  tail call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %i.ao)
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !452 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 168
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1265
  %i.at = load i32, ptr %i.aq, align 8, !tbaa !1266
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [16 x i8], ptr %i.as, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.al, i64 616
  %0 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !8
  store <4 x i32> %0, ptr %i.ax, align 8, !tbaa !8
  %.pre39 = load ptr, ptr @GImGui, align 8, !tbaa !193
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = phi ptr [ %.pre39, %bb.m ], [ %.pre40, %bb.l ] ; 4 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8104 ; 2 uses
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !1158 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 10392
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !680
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !1159
  %i.bf = sext i16 %i.be to i32
  %i.bg = icmp sgt i32 %i.ba, %i.bf
  br i1 %i.bg, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.105), !inline_history !1340 ; 0 uses
  br label %_ZN5ImGui13PopFocusScopeEv.exit

bb.p:                                             ; preds = %bb.n
  %i.bi = add nsw i32 %i.ba, -1                   ; 3 uses
  store i32 %i.bi, ptr %i.az, align 8, !tbaa !1341
  %.not.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 8112
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !702
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = getelementptr i8, ptr %i.bm, i64 -8
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !1202
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bp = phi i32 [ %i.bo, %bb.q ], [ 0, %bb.p ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 7780
  store i32 %i.bp, ptr %i.bq, align 4, !tbaa !1035
  br label %_ZN5ImGui13PopFocusScopeEv.exit

_ZN5ImGui13PopFocusScopeEv.exit:                  ; preds = %bb.o, %bb.r
  %i.br = getelementptr i8, ptr %i.n, i64 -10
  %i.bs = load i8, ptr %i.br, align 2, !tbaa !1194, !range !64, !noundef !204
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %bb.s, label %bb.u

bb.s:                                             ; preds = %_ZN5ImGui13PopFocusScopeEv.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 960
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !847
  %i.bw = icmp eq ptr %i.bv, %i.c
  br i1 %i.bw, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bx = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 7 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 9856 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 8, !tbaa !1165
  %i.ca = add i16 %i.bz, -1
  store i16 %i.ca, ptr %i.by, align 8, !tbaa !1165
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8120 ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !290
  %i.cd = add nsw i32 %i.cc, -1                   ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 8, !tbaa !290
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 8128
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !292
  %i.cg = sext i32 %i.cd to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !205
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bx, i64 7784
  store i32 %i.cj, ptr %i.ck, align 8, !tbaa !1036
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bx, i64 5264
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bx, i64 5272
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !565
  %i.co = load i32, ptr %i.cl, align 8, !tbaa !567
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr [120 x i8], ptr %i.cn, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 -8
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !1195
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bx, i64 3220
  store float %i.cs, ptr %i.ct, align 4, !tbaa !1218
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %_ZN5ImGui13PopFocusScopeEv.exit
  %i.cu = load i8, ptr %i.ah, align 2, !tbaa !1216, !range !64, !noundef !204
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.cx = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !452
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 10272
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1300
  %i.da = icmp eq ptr %i.cz, %i.c
  br i1 %i.da, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  tail call void @_ZN5ImGui9LogFinishEv()
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.db = getelementptr inbounds nuw i8, ptr %i.c, i64 345
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !1342, !range !64, !noundef !204
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.z, label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit

bb.z:                                             ; preds = %bb.y
  %i.de = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 5312
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !298 ; 6 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 280
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 345
  store i8 0, ptr %i.di, align 1, !tbaa !1342
  %i.dj = load float, ptr %i.dh, align 8, !tbaa !1343
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 304
  %i.dl = load float, ptr %i.dk, align 8, !tbaa !1344
  %i.dm = fcmp ugt float %i.dj, %i.dl
  br i1 %i.dm, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 284
  %i.do = load float, ptr %i.dn, align 4, !tbaa !328
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 308
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !329
  %i.dr = fcmp ugt float %i.do, %i.dq
  br i1 %i.dr, label %bb.ab, label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 209
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dv = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.124), !inline_history !1345 ; 0 uses
  br label %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit

_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit: ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.y
  %i.dw = getelementptr i8, ptr %i.n, i64 -112
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.dx, ptr noundef nonnull align 8 dereferenceable(80) %i.dw, i64 80, i1 false), !tbaa.struct !1193
  %i.dy = load i32, ptr %i.o, align 4, !tbaa !722 ; 2 uses
  %i.dz = and i32 %i.dy, 268435456
  %.not35 = icmp eq i32 %i.dz, 0
  br i1 %.not35, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 9716 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !1196
  %i.ec = add nsw i32 %i.eb, -1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !1196
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN5ImGui51ErrorCheckUsingSetCursorPosToExtendParentBoundariesEv.exit
  %i.ed = and i32 %i.dy, 67108864
  %.not36 = icmp eq i32 %i.ed, 0
  br i1 %.not36, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %i.a, i64 8168 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !580
  %i.eg = add nsw i32 %i.ef, -1
  store i32 %i.eg, ptr %i.ee, align 8, !tbaa !580
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %i.a, i64 172
  %i.ei = load i8, ptr %i.eh, align 4, !tbaa !1316, !range !64, !noundef !204
  %i.ej = trunc nuw i8 %i.ei to i1
  br i1 %i.ej, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ek = getelementptr i8, ptr %i.n, i64 -32
  tail call void @_ZN5ImGui36ErrorRecoveryTryToRecoverWindowStateEPK23ImGuiErrorRecoveryState(ptr noundef nonnull %i.ek)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.el = load i32, ptr %i.d, align 8, !tbaa !567
  %i.em = add nsw i32 %i.el, -1                   ; 3 uses
  store i32 %i.em, ptr %i.d, align 8, !tbaa !567
  %i.en = icmp eq i32 %i.em, 0
  br i1 %i.en, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.ai
  %i.eo = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 5312
  store ptr null, ptr %i.ep, align 8, !tbaa !298
  br label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eq = load ptr, ptr %i.k, align 8, !tbaa !565
  %i.er = sext i32 %i.em to i64
  %i.es = getelementptr [120 x i8], ptr %i.eq, i64 %i.er
  %i.et = getelementptr i8, ptr %i.es, i64 -120
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !1191 ; 5 uses
  %i.ev = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 11 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 5312
end_hunk_7
begin_hunk_8_@_ZN8ImVectorIP11ImGuiWindowE9push_backERKS1_:bb.a
  %i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 %i.e) ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3
  %i.l = load ptr, ptr @_ZL21GImAllocatorAllocFunc, align 8, !tbaa !191
  %i.m = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  %i.n = tail call noundef ptr %i.l(i64 noundef %i.k, ptr noundef %i.m), !inline_history !1325 ; 3 uses
  %i.o = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5ImGui8MemAllocEm.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 10596 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !194  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 10608 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 10604 ; 2 uses
  %i.u = load i16, ptr %i.t, align 4, !tbaa !195  ; 2 uses
  %i.v = sext i16 %i.u to i64                     ; 2 uses
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !196
  %.not.i.i.i = icmp eq i32 %i.x, %i.r
  br i1 %.not.i.i.i, label %._crit_edge.i, label %bb.e

._crit_edge.i:                                    ; preds = %bb.d
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.pre.i = load i16, ptr %.phi.trans.insert.i, align 4, !tbaa !198
  %i.y = add i16 %.pre.i, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = sext i16 %i.u to i32
  %i.aa = add nsw i32 %i.z, 1
  %i.ab = srem i32 %i.aa, 6                       ; 2 uses
  %i.ac = trunc nsw i32 %i.ab to i16
  store i16 %i.ac, ptr %i.t, align 4, !tbaa !195
  %i.ad = sext i32 %i.ab to i64                   ; 2 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ad ; 3 uses
  store i32 %i.r, ptr %i.ae, align 4, !tbaa !196
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  store i16 0, ptr %i.af, align 2, !tbaa !199
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i16 0, ptr %i.ag, align 4, !tbaa !198
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.ah = phi i16 [ 1, %bb.e ], [ %i.y, %._crit_edge.i ]
  %i.ai = phi i64 [ %i.ad, %bb.e ], [ %i.v, %._crit_edge.i ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  store i16 %i.ah, ptr %i.ak, align 4, !tbaa !198
  %i.al = load i32, ptr %i.p, align 4, !tbaa !200
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.p, align 4, !tbaa !200
  br label %_ZN5ImGui8MemAllocEm.exit.i

_ZN5ImGui8MemAllocEm.exit.i:                      ; preds = %bb.f, %_ZNK8ImVectorIP11ImGuiWindowE14_grow_capacityEi.exit
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !561 ; 2 uses
  %.not6.i = icmp eq ptr %i.ao, null
  br i1 %.not6.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui8MemAllocEm.exit.i
  %i.ap = load i32, ptr %0, align 8, !tbaa !563
  %i.aq = sext i32 %i.ap to i64
  %i.ar = shl nsw i64 %i.aq, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.n, ptr nonnull align 8 %i.ao, i64 %i.ar, i1 false)
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !561 ; 2 uses
  %.not.i7.i = icmp eq ptr %i.as, null
  br i1 %.not.i7.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 5 uses
  %.not7.i.i = icmp eq ptr %i.at, null
  br i1 %.not7.i.i, label %_ZN5ImGui7MemFreeEPv.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !194 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 10608 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 10604 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !195 ; 2 uses
  %i.az = sext i16 %i.ay to i64                   ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !196
  %.not.i.i8.i = icmp eq i32 %i.bb, %i.av
  br i1 %.not.i.i8.i, label %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i, label %bb.j

._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i: ; preds = %bb.i
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 6
  %.pre.i.i = load i16, ptr %.phi.trans.insert.i.i, align 2, !tbaa !199
  %i.bc = add i16 %.pre.i.i, 1
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

bb.j:                                             ; preds = %bb.i
  %i.bd = sext i16 %i.ay to i32
  %i.be = add nsw i32 %i.bd, 1
  %i.bf = srem i32 %i.be, 6                       ; 2 uses
  %i.bg = trunc nsw i32 %i.bf to i16
  store i16 %i.bg, ptr %i.ax, align 4, !tbaa !195
  %i.bh = sext i32 %i.bf to i64                   ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bh ; 3 uses
  store i32 %i.av, ptr %i.bi, align 4, !tbaa !196
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 6
  store i16 0, ptr %i.bj, align 2, !tbaa !199
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i16 0, ptr %i.bk, align 4, !tbaa !198
  br label %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i

_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i: ; preds = %bb.j, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i
  %i.bl = phi i16 [ 1, %bb.j ], [ %i.bc, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bm = phi i64 [ %i.bh, %bb.j ], [ %i.az, %._ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit_crit_edge.i.i ]
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 6
  store i16 %i.bl, ptr %i.bo, align 2, !tbaa !199
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 10600 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !201
  %i.br = add nsw i32 %i.bq, 1
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !201
  br label %_ZN5ImGui7MemFreeEPv.exit.i

_ZN5ImGui7MemFreeEPv.exit.i:                      ; preds = %_ZN5ImGui14DebugAllocHookEP19ImGuiDebugAllocInfoiPvm.exit.i.i, %bb.h, %bb.g
  %i.bs = load ptr, ptr @_ZL20GImAllocatorFreeFunc, align 8, !tbaa !191
  %i.bt = load ptr, ptr @_ZL20GImAllocatorUserData, align 8, !tbaa !191
  tail call void %i.bs(ptr noundef %i.as, ptr noundef %i.bt), !inline_history !1326
  br label %bb.k

bb.k:                                             ; preds = %_ZN5ImGui7MemFreeEPv.exit.i, %_ZN5ImGui8MemAllocEm.exit.i
  store ptr %i.n, ptr %i.an, align 8, !tbaa !561
  store i32 %i.i, ptr %i.b, align 4, !tbaa !562
  %.pre3 = load i32, ptr %0, align 8, !tbaa !563
  br label %_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit

_ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit:      ; preds = %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge, %bb.k
  %i.bu = phi i32 [ %i.a, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.k ]
  %i.bv = phi ptr [ %.pre, %._ZN8ImVectorIP11ImGuiWindowE7reserveEi.exit_crit_edge ], [ %i.n, %bb.k ]
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i64, ptr %1, align 8
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = load i32, ptr %0, align 8, !tbaa !563
  %i.ca = add nsw i32 %i.bz, 1
  store i32 %i.ca, ptr %0, align 8, !tbaa !563
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define <2 x float> @_ZN5ImGui25FindBestWindowPosForPopupEP11ImGuiWindow(ptr nofree noundef captures(none) %0) local_unnamed_addr #43 {
bb.a:
  %1 = alloca %struct.ImRect, align 8             ; 7 uses
  %2 = alloca %struct.ImRect, align 4             ; 7 uses
  %3 = alloca %struct.ImRect, align 8             ; 5 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImRect, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
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
  %i.q = fsub <2 x float> %i.h, %i.p              ; 2 uses
  %i.r = fadd <2 x float> %i.j, %i.p              ; 3 uses
  store <2 x float> %i.q, ptr %1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store <2 x float> %i.r, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !722  ; 3 uses
  %i.v = and i32 %i.u, 268435456
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 5264
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1149
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 5272
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !565
  %i.aa = sext i32 %i.x to i64
  %i.ab = getelementptr [120 x i8], ptr %i.z, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -240
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1191 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 3308
  %i.af = load float, ptr %i.ae, align 4, !tbaa !1304 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 379
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !1288, !range !64, !noundef !204
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 620
  %6 = load i32, ptr %i.aj, align 4, !tbaa !401
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 628
  %7 = load i32, ptr %i.ak, align 4, !tbaa !402
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.am = load float, ptr %i.al, align 8, !tbaa !870 ; 2 uses
  %i.an = fadd float %i.af, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !723
  %i.aq = fadd float %i.am, %i.ap
  %i.ar = fsub float %i.aq, %i.af
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 192
  %i.at = load float, ptr %i.as, align 8, !tbaa !1389
  %i.au = fsub float %i.ar, %i.at
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink109 = phi float [ f0xFF7FFFFF, %bb.c ], [ %i.an, %bb.d ]
  %.sink108 = phi i32 [ %6, %bb.c ], [ -8388609, %bb.d ]
  %.sink107 = phi float [ f0x7F7FFFFF, %bb.c ], [ %i.au, %bb.d ]
  %.sink = phi i32 [ %7, %bb.c ], [ 2139095039, %bb.d ]
  store float %.sink109, ptr %2, align 4, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %.sink108, ptr %i.av, align 4, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %.sink107, ptr %i.aw, align 4, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %.sink, ptr %i.ax, align 4, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.bb = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %i.ay, ptr noundef nonnull align 4 dereferenceable(8) %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br label %bb.r

bb.f:                                             ; preds = %bb.a
  %i.bc = and i32 %i.u, 67108864
  %.not38 = icmp eq i32 %i.bc, 0
  br i1 %.not38, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.bg = load i64, ptr %i.bd, align 4            ; 2 uses
  store i64 %i.bg, ptr %3, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.bg, ptr %i.bh, align 8
  %i.bi = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %i.bd, ptr noundef nonnull align 4 dereferenceable(8) %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.r

bb.h:                                             ; preds = %bb.f
  %i.bj = and i32 %i.u, 33554432
  %.not39 = icmp eq i32 %i.bj, 0
  br i1 %.not39, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 3516
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !1361 ; 2 uses
  %i.bm = tail call fastcc <2 x float> @_ZN5ImGuiL22NavCalcPreferredRefPosEi(i32 noundef 33554432) ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 296
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !1398
  %i.bp = icmp eq i32 %i.bo, 1
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8216
  %i.br = load i8, ptr %i.bq, align 8, !tbaa !474, !range !64 ; 3 uses
  br i1 %i.bp, label %.thread.i, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit

.thread.i:                                        ; preds = %bb.i
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.thread.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 8224
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !389
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !850, !range !64, !noundef !204
  %i.bx = trunc nuw i8 %i.bw to i1
  %i.by = icmp ne ptr %i.bu, null
  %or.cond3.i = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond3.i, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %.thread.i
  %i.bz = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, <float 0.000000e+00, float 2.000000e+01> ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cd = fadd <2 x float> %i.bm, %i.cb
  %i.ce = fsub <2 x float> %i.bm, %i.cb
  %i.cf = shufflevector <2 x float> %i.cd, <2 x float> %i.ce, <2 x i32> <i32 0, i32 3>
  %i.cg = load <2 x float>, ptr %i.cc, align 4, !tbaa !8 ; 2 uses
  %i.ch = fmul <2 x float> %i.cg, <float 5.000000e-01, float 1.000000e+00>
  %i.ci = fsub <2 x float> %i.cf, %i.ch           ; 3 uses
  %i.cj = fadd <2 x float> %i.cg, %i.ci           ; 2 uses
  %i.ck = fcmp oge <2 x float> %i.ci, %i.q        ; 2 uses
  %i.cl = extractelement <2 x i1> %i.ck, i64 0
  %i.cm = extractelement <2 x i1> %i.ck, i64 1
  %or.cond.not106 = select i1 %i.cl, i1 %i.cm, i1 false
  %i.cn = extractelement <2 x float> %i.r, i64 0
  %i.co = extractelement <2 x float> %i.cj, i64 0
  %i.cp = fcmp ole float %i.co, %i.cn
  %or.cond97.not103 = select i1 %or.cond.not106, i1 %i.cp, i1 false
  %i.cq = fcmp ole <2 x float> %i.cj, %i.r
  %i.cr = extractelement <2 x i1> %i.cq, i64 1
  %or.cond100 = select i1 %or.cond97.not103, i1 %i.cr, i1 false
  br i1 %or.cond100, label %bb.r, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit

_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit:  ; preds = %bb.i, %bb.k, %bb.j
  %i.cs = phi i8 [ 1, %bb.j ], [ %i.br, %bb.k ], [ %i.br, %bb.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ct = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.cu = shufflevector <2 x float> %i.ct, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cv = fmul <2 x float> %i.cu, <float 1.600000e+01, float 1.000000e+01>
  %i.cw = fadd <2 x float> %i.cv, %i.bm
  store <2 x float> %i.cw, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  %i.cx = trunc nuw i8 %i.cs to i1
  br i1 %i.cx, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.a, i64 8217
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !850, !range !64, !noundef !204
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 114
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !935, !range !64, !noundef !204
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.de = fadd <2 x float> %i.bm, <float 1.600000e+01, float 8.000000e+00>
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.l, %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> splat (float 2.400000e+01), <2 x float> %i.bm)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.dg = phi <2 x float> [ %i.df, %bb.o ], [ %i.de, %bb.n ]
  %i.dh = fadd <2 x float> %i.bm, <float -1.600000e+01, float -8.000000e+00>
  store <2 x float> %i.dh, ptr %5, align 8, !tbaa !8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.dg, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !8
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.dk = call <2 x float> @_ZN5ImGui27FindBestWindowPosForPopupExERK6ImVec2S2_P8ImGuiDirRK6ImRectS7_24ImGuiPopupPositionPolicy(ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.di, ptr noundef nonnull %i.dj, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dm = load <2 x float>, ptr %i.dl, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.k, %bb.p, %bb.q, %bb.g, %bb.e
  %.sroa.086.1 = phi <2 x float> [ %i.dm, %bb.q ], [ %i.bb, %bb.e ], [ %i.bi, %bb.g ], [ %i.ci, %bb.k ], [ %i.dk, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  ret <2 x float> %.sroa.086.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr nofree noundef readonly captures(none) %0) unnamed_addr #13 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load <2 x float>, ptr %i.a, align 8      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.f = load float, ptr %i.e, align 8, !tbaa !1264
  %i.g = load <2 x float>, ptr %i.c, align 8, !tbaa !8
  %i.h = load <2 x float>, ptr %i.d, align 8, !tbaa !8
  %i.i = fadd <2 x float> %i.g, %i.h              ; 2 uses
  %i.j = extractelement <2 x float> %i.i, i64 0
  %i.k = fadd float %i.j, %i.f                    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.m = load float, ptr %i.l, align 4, !tbaa !1258
  %i.n = extractelement <2 x float> %i.i, i64 1
  %i.o = fadd float %i.n, %i.m                    ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 207
  %i.r = load i8, ptr %i.q, align 1, !tbaa !721, !range !64, !noundef !204
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  br i1 %i.s, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.a
  %i.x = load float, ptr %i.p, align 8, !tbaa !8  ; 8 uses
  %i.y = fcmp olt float %i.x, f0x7F7FFFFF
  br i1 %i.y, label %bb.b, label %.split.us.1

bb.b:                                             ; preds = %.split.us.preheader
  %i.z = load float, ptr %i.t, align 8, !tbaa !8  ; 3 uses
  %i.aa = load float, ptr %i.u, align 8, !tbaa !8 ; 3 uses
  %i.ab = fcmp ogt float %i.aa, 0.000000e+00
  %.pre104 = load float, ptr %i.w, align 8, !tbaa !8 ; 2 uses
  br i1 %i.ab, label %bb.c, label %_ZL18CalcScrollEdgeSnapfffff.exit.us

bb.c:                                             ; preds = %bb.b
  %i.ac = load float, ptr %i.v, align 8, !tbaa !8
  %i.ad = fadd float %i.ac, %.pre104
  %i.ae = fsub float %i.ad, %i.k                  ; 2 uses
  %i.af = fcmp ugt float %i.x, %i.aa
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %i.x, float %i.z, float 0.000000e+00)
  br label %_ZL18CalcScrollEdgeSnapfffff.exit.us

bb.e:                                             ; preds = %bb.c
  %i.ah = fsub float %i.ae, %i.aa
  %i.ai = fcmp ult float %i.x, %i.ah
  br i1 %i.ai, label %_ZL18CalcScrollEdgeSnapfffff.exit.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = fsub float %i.ae, %i.x
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.z, float %i.x)
  br label %_ZL18CalcScrollEdgeSnapfffff.exit.us

_ZL18CalcScrollEdgeSnapfffff.exit.us:             ; preds = %bb.f, %bb.e, %bb.d, %bb.b
  %.041.us = phi float [ %i.x, %bb.b ], [ %i.ag, %bb.d ], [ %i.ak, %bb.f ], [ %i.x, %bb.e ]
end_hunk_8
begin_hunk_9_@_ZN5ImGuiL22NavCalcPreferredRefPosEi:bb.a
  %i.s = icmp ne ptr %i.c, null
  %or.cond3.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond3.i, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit, label %bb.e

bb.e:                                             ; preds = %.thread.i, %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 272 ; 2 uses
  %.sroa.0.0.copyload.i = load float, ptr %i.t, align 8, !tbaa !8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 276
  %.sroa.4.0.copyload.i = load float, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !8
  %i.u = fcmp oge float %.sroa.0.0.copyload.i, -2.560000e+05
  %i.v = fcmp oge float %.sroa.4.0.copyload.i, -2.560000e+05
  %i.w = select i1 %i.u, i1 %i.v, i1 false
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 9408
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.x
  %i.z = load <2 x float>, ptr %i.y, align 8, !tbaa !8
  %i.aa = fadd <2 x float> %i.z, <float 1.000000e+00, float -0.000000e+00>
  br label %bb.k

_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit:  ; preds = %bb.d
  br i1 %.not.i, label %.thread, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75

_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75: ; preds = %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 5448
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !tbaa !835, !range !64
  %i.ab = trunc nuw i8 %.pre to i1
  br i1 %i.ab, label %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75.thread, label %.thread

_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75.thread: ; preds = %bb.c, %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 7848
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !475
  %i.ae = icmp ne i32 %i.e, %i.ad
  %.not31 = icmp samesign ult i32 %0, 67108864
  %or.cond = select i1 %i.ae, i1 true, i1 %.not31
  br i1 %or.cond, label %.critedge, label %bb.f

.critedge:                                        ; preds = %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75.thread
  %cond = icmp eq ptr %i.c, null
  br i1 %cond, label %_Z7ImClampRK6ImVec2S1_S1_.exit, label %.thread

.thread:                                          ; preds = %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit, %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75, %.critedge
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 1016
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !895
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.af, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.am = load <2 x float>, ptr %i.ak, align 8, !tbaa !8 ; 2 uses
  %i.an = load <2 x float>, ptr %i.aj, align 4, !tbaa !8
  %i.ao = fadd <2 x float> %i.am, %i.an
  %i.ap = load <2 x float>, ptr %i.al, align 4, !tbaa !8
  %i.aq = fadd <2 x float> %i.am, %i.ap
  br label %bb.g

bb.f:                                             ; preds = %_ZN5ImGuiL28NavCalcPreferredRefPosSourceEi.exit.thread75.thread
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 7876
  %.sroa.053.0.copyload = load <2 x float>, ptr %i.ar, align 4 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 7884
  %.sroa.14.0.copyload = load <2 x float>, ptr %.sroa.14.0..sroa_idx, align 4 ; 2 uses
  %.not33 = icmp eq ptr %i.c, null
  br i1 %.not33, label %_Z7ImClampRK6ImVec2S1_S1_.exit, label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.14.181 = phi <2 x float> [ %i.aq, %.thread ], [ %.sroa.14.0.copyload, %bb.f ] ; 3 uses
  %.sroa.053.180 = phi <2 x float> [ %i.ao, %.thread ], [ %.sroa.053.0.copyload, %bb.f ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  %i.at = load i32, ptr %i.as, align 8, !tbaa !792
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !194
  %.not34 = icmp eq i32 %i.at, %i.av
  br i1 %.not34, label %_Z7ImClampRK6ImVec2S1_S1_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 168
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !1087
  %i.ay = fcmp une float %i.ax, f0x7F7FFFFF
  br i1 %i.ay, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 172
  %i.ba = load float, ptr %i.az, align 4, !tbaa !1078
  %i.bb = fcmp une float %i.ba, f0x7F7FFFFF
  br i1 %i.bb, label %bb.j, label %_Z7ImClampRK6ImVec2S1_S1_.exit

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bc = tail call fastcc <2 x float> @_ZL38CalcNextScrollFromScrollTargetAndClampP11ImGuiWindow(ptr noundef nonnull %i.c)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  %i.be = load <2 x float>, ptr %i.bd, align 8, !tbaa !8
  %i.bf = fsub <2 x float> %i.be, %i.bc           ; 2 uses
  %i.bg = fadd <2 x float> %.sroa.053.180, %i.bf
  %i.bh = fadd <2 x float> %.sroa.14.181, %i.bf
  br label %_Z7ImClampRK6ImVec2S1_S1_.exit

_Z7ImClampRK6ImVec2S1_S1_.exit:                   ; preds = %.critedge, %bb.j, %bb.i, %bb.g, %bb.f
  %.sroa.053.2 = phi <2 x float> [ zeroinitializer, %.critedge ], [ %.sroa.053.0.copyload, %bb.f ], [ %.sroa.053.180, %bb.g ], [ %i.bg, %bb.j ], [ %.sroa.053.180, %bb.i ] ; 2 uses
  %.sroa.14.2 = phi <2 x float> [ zeroinitializer, %.critedge ], [ %.sroa.14.0.copyload, %bb.f ], [ %.sroa.14.181, %bb.g ], [ %i.bh, %bb.j ], [ %.sroa.14.181, %bb.i ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 3284
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 8208
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !437
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !438 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bo = load <2 x float>, ptr %i.bi, align 4, !tbaa !8
  %i.bp = fmul <2 x float> %i.bo, <float 4.000000e+00, float 1.000000e+00> ; 2 uses
  %i.bq = fsub <2 x float> %.sroa.14.2, %.sroa.053.2 ; 2 uses
  %i.br = fcmp olt <2 x float> %i.bp, %i.bq
  %i.bs = select <2 x i1> %i.br, <2 x float> %i.bp, <2 x float> %i.bq ; 2 uses
  %i.bt = shufflevector <2 x float> %.sroa.053.2, <2 x float> %.sroa.14.2, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bu = fadd <2 x float> %i.bt, %i.bs
  %i.bv = fsub <2 x float> %i.bt, %i.bs
  %i.bw = shufflevector <2 x float> %i.bu, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.bx = load <2 x float>, ptr %i.bm, align 4, !tbaa !8 ; 3 uses
  %i.by = load <2 x float>, ptr %i.bn, align 4, !tbaa !8
  %i.bz = fadd <2 x float> %i.bx, %i.by           ; 2 uses
  %i.ca = fcmp olt <2 x float> %i.bw, %i.bx
  %i.cb = fcmp ogt <2 x float> %i.bw, %i.bz
  %i.cc = select <2 x i1> %i.cb, <2 x float> %i.bz, <2 x float> %i.bw
  %i.cd = select <2 x i1> %i.ca, <2 x float> %i.bx, <2 x float> %i.cc
  %i.ce = fptosi <2 x float> %i.cd to <2 x i32>
  %i.cf = sitofp <2 x i32> %i.ce to <2 x float>
  br label %bb.k

bb.k:                                             ; preds = %_Z7ImClampRK6ImVec2S1_S1_.exit, %bb.e
  %i.cg = phi <2 x float> [ %i.cf, %_Z7ImClampRK6ImVec2S1_S1_.exit ], [ %i.aa, %bb.e ]
  ret <2 x float> %i.cg
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui17ClosePopupToLevelEib(i32 noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 10404 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !221
  %i.d = and i32 %i.c, 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = zext i1 %1 to i32
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.166, i32 noundef %0, i32 noundef %i.e)
  %.pre = load i32, ptr %i.b, align 4, !tbaa !221
  %.pre52 = and i32 %.pre, 8
  %i.f = icmp eq i32 %.pre52, 0
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8152 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !883  ; 2 uses
  %i.i = icmp slt i32 %0, %i.h
  br i1 %i.i, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8160
  %i.k = sext i32 %0 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.g
  %i.l = phi i32 [ %i.h, %.lr.ph ], [ %i.w, %bb.g ]
  %indvars.iv = phi i64 [ %i.k, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 2 uses
  %i.m = load i32, ptr %i.b, align 4, !tbaa !221
  %i.n = and i32 %i.m, 8
  %.not34 = icmp eq i32 %i.n, 0
  br i1 %.not34, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !578
  %i.p = getelementptr inbounds [56 x i8], ptr %i.o, i64 %indvars.iv ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !907
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !884  ; 2 uses
  %.not35 = icmp eq ptr %i.s, null
  br i1 %.not35, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !299
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %i.u, %bb.e ], [ null, %bb.d ]
  tail call void (ptr, ...) @_ZN5ImGui8DebugLogEPKcz(ptr noundef nonnull @.str.167, i32 noundef %i.q, ptr noundef %i.v)
  %.pre51 = load i32, ptr %i.g, align 8, !tbaa !883
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f
  %i.w = phi i32 [ %i.l, %bb.c ], [ %.pre51, %bb.f ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp slt i64 %indvars.iv.next, %i.x
  br i1 %i.y, label %bb.c, label %.loopexit, !llvm.loop !1491

.loopexit:                                        ; preds = %bb.g, %bb.a, %.preheader, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 8160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !578
  %i.ac = sext i32 %0 to i64
  %i.ad = getelementptr inbounds [56 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !705 ; 5 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !705
  tail call void @_ZN8ImVectorI14ImGuiPopupDataE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i32 noundef %0)
  %i.ae = icmp ne ptr %.sroa.3.0.copyload, null
  %or.cond = select i1 %1, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.h, label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit

bb.h:                                             ; preds = %.loopexit
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 20
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !722 ; 2 uses
  %i.ah = and i32 %i.ag, 268435456
  %.not32 = icmp eq i32 %i.ah, 0
  br i1 %.not32, label %2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 944
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1043
  br label %bb.j

2:                                                ; preds = %bb.h
  %3 = inttoptr i64 %.sroa.5.0.copyload to ptr
  br label %bb.j

bb.j:                                             ; preds = %2, %bb.i
  %i.ak = phi ptr [ %i.aj, %bb.i ], [ %3, %2 ]    ; 3 uses
  %.not33 = icmp eq ptr %i.ak, null
  br i1 %.not33, label %.split, label %bb.k

.split:                                           ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.am = load i32, ptr %i.al, align 4, !tbaa !895
  %i.an = icmp eq i32 %i.am, 0
  %i.ao = zext i1 %i.an to i32
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef null, i32 noundef %i.ao)
  br label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit

bb.k:                                             ; preds = %bb.j
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 205
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !436, !range !64, !noundef !204
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.split29, label %bb.l

.split29:                                         ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8236
  %i.at = load i32, ptr %i.as, align 4, !tbaa !895
  %i.au = icmp eq i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.ak, i32 noundef %i.av)
  br label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit

bb.l:                                             ; preds = %bb.k
  %i.aw = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.ax = and i32 %i.ag, 16777216
  %.not25.i38 = icmp eq i32 %i.ax, 0
  br i1 %.not25.i38, label %._crit_edge, label %.lr.ph40

.lr.ph40:                                         ; preds = %bb.l, %.lr.ph40
  %.022.i39 = phi ptr [ %i.az, %.lr.ph40 ], [ %.sroa.3.0.copyload, %bb.l ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.022.i39, i64 944
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !1043 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !722
  %i.bc = and i32 %i.bb, 16777216
  %.not25.i = icmp eq i32 %i.bc, 0
  br i1 %.not25.i, label %._crit_edge, label %.lr.ph40, !llvm.loop !1176

._crit_edge:                                      ; preds = %.lr.ph40, %bb.l
  %.022.i.lcssa = phi ptr [ %.sroa.3.0.copyload, %bb.l ], [ %i.az, %.lr.ph40 ]
  %.020.i.lcssa = phi i32 [ -1, %bb.l ], [ 0, %.lr.ph40 ]
  %i.bd = getelementptr i8, ptr %.022.i.lcssa, i64 226
  %.022.val.i = load i16, ptr %i.bd, align 2, !tbaa !899
  %i.be = sext i16 %.022.val.i to i32
  %i.bf = add nsw i32 %.020.i.lcssa, %i.be        ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %.critedge.i, label %.lr.ph44

.lr.ph44:                                         ; preds = %._crit_edge
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aw, i64 5240
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !561
  %i.bj = zext nneg i32 %i.bf to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph44, %bb.p
  %indvars.iv48 = phi i64 [ %i.bj, %.lr.ph44 ], [ %indvars.iv.next49, %bb.p ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv48
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !705 ; 4 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 205
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !436, !range !64, !noundef !204
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bl, i64 20
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !722
  %i.bs = and i32 %i.br, 66048
  %.not26.i = icmp eq i32 %i.bs, 66048
  br i1 %.not26.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.m, %bb.n, %bb.o
  %indvars.iv.next49 = add nsw i64 %indvars.iv48, -1
  %i.bt = icmp slt i64 %indvars.iv48, 1
  br i1 %i.bt, label %.critedge.i, label %bb.m, !llvm.loop !1126

bb.q:                                             ; preds = %bb.o
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef nonnull %i.bl, i32 noundef 1), !inline_history !1127
  br label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit

.critedge.i:                                      ; preds = %bb.p, %._crit_edge
  tail call void @_ZN5ImGui11FocusWindowEP11ImGuiWindowi(ptr noundef null, i32 noundef 1), !inline_history !1127
  br label %_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit

_ZN5ImGui26FocusTopMostWindowUnderOneEP11ImGuiWindowS1_P13ImGuiViewporti.exit: ; preds = %.critedge.i, %bb.q, %.split29, %.split, %.loopexit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23ClosePopupsExceptModalsEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  %i.c = load i32, ptr %i.b, align 8, !tbaa !883  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8160
  %smin = tail call i32 @llvm.smin.i32(i32 %i.c, i32 0) ; 2 uses
  %i.e = icmp sgt i32 %i.c, 0
  br i1 %i.e, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %i.f = zext nneg i32 %i.c to i64
  %i.g = load ptr, ptr %i.d, align 8, !tbaa !578
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %i.h = trunc nuw i64 %i.k to i32                ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.thread, !llvm.loop !1492

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.j = phi i32 [ %i.c, %.lr.ph ], [ %i.h, %bb.b ] ; 2 uses
  %indvars.iv16 = phi i64 [ %i.f, %.lr.ph ], [ %i.k, %bb.b ]
  %i.k = add nsw i64 %indvars.iv16, -1            ; 3 uses
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %i.g, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !884  ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !722
  %i.q = and i32 %i.p, 134217728
  %.not12 = icmp eq i32 %i.q, 0
  br i1 %.not12, label %bb.b, label %..thread_crit_edge, !llvm.loop !1492

..thread_crit_edge:                               ; preds = %bb.d
  br label %.thread, !llvm.loop !1492

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
define void @_ZN5ImGui17CloseCurrentPopupEv() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !914  ; 4 uses
  %i.d = add nsw i32 %i.c, -1                     ; 3 uses
  %i.e = icmp slt i32 %i.c, 1
  br i1 %i.e, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8152
  %i.g = load i32, ptr %i.f, align 8, !tbaa !883
  %.not.not = icmp sgt i32 %i.c, %i.g
  br i1 %.not.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8176
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !578
  %i.j = zext nneg i32 %i.d to i64                ; 2 uses
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %i.i, i64 %i.j
  %i.l = load i32, ptr %i.k, align 8, !tbaa !907
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !578  ; 3 uses
  %i.o = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.j
  %i.p = load i32, ptr %i.o, align 8, !tbaa !907
  %.not = icmp eq i32 %i.l, %i.p
  br i1 %.not, label %.critedge.preheader, label %bb.i

.critedge.preheader:                              ; preds = %bb.c
  %.not50 = icmp eq i32 %i.c, 1
  br i1 %.not50, label %.critedge.thread, label %.lr.ph

.critedge:                                        ; preds = %bb.e
  %i.q = icmp sgt i32 %.02844, 1
  br i1 %i.q, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %.critedge.preheader, %.critedge
  %.02844 = phi i32 [ %i.v, %.critedge ], [ %i.d, %.critedge.preheader ] ; 6 uses
  %i.r = zext nneg i32 %.02844 to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !884  ; 2 uses
  %i.v = add nsw i32 %.02844, -1                  ; 2 uses
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !884  ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph
end_hunk_9
begin_hunk_10_@_ZN5ImGui17ShowMetricsWindowEPb:bb.a
_ZNK15ImGuiPackedDate6UnpackEv.exit:              ; preds = %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit, %bb.fn, %bb.fo, %bb.fp
  %i.axe = phi i32 [ %i.axd, %bb.fp ], [ 0, %bb.fo ], [ 0, %bb.fn ], [ 0, %_ZN15ImGuiPackedDate14SubtractMonthsEi.exit ]
  %i.axf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 2 uses
  %i.axg = getelementptr inbounds nuw i8, ptr %i.axf, i64 5312
  %i.axh = load ptr, ptr %i.axg, align 8, !tbaa !298 ; 10 uses
  %i.axi = getelementptr inbounds nuw i8, ptr %i.axh, i64 209
  %i.axj = load i8, ptr %i.axi, align 1, !tbaa !1231, !range !64, !noundef !204
  %i.axk = trunc nuw i8 %i.axj to i1
  br i1 %i.axk, label %_ZN5ImGui8SameLineEff.exit682, label %bb.fq

bb.fq:                                            ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit
  %i.axl = getelementptr inbounds nuw i8, ptr %i.axf, i64 3300
  %i.axm = load float, ptr %i.axl, align 4, !tbaa !1374
  %i.axn = getelementptr inbounds nuw i8, ptr %i.axh, i64 280
  %i.axo = getelementptr inbounds nuw i8, ptr %i.axh, i64 288
  %i.axp = load float, ptr %i.axo, align 8, !tbaa !1373
  %i.axq = fadd float %i.axm, %i.axp
  store float %i.axq, ptr %i.axn, align 8, !tbaa !1343
  %i.axr = getelementptr inbounds nuw i8, ptr %i.axh, i64 292
  %i.axs = load float, ptr %i.axr, align 4, !tbaa !331
  %i.axt = getelementptr inbounds nuw i8, ptr %i.axh, i64 284
  store float %i.axs, ptr %i.axt, align 4, !tbaa !328
  %i.axu = getelementptr inbounds nuw i8, ptr %i.axh, i64 328
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axh, i64 320
  %i.axw = load i64, ptr %i.axu, align 8
  store i64 %i.axw, ptr %i.axv, align 8
  %i.axx = getelementptr inbounds nuw i8, ptr %i.axh, i64 340
  %i.axy = load float, ptr %i.axx, align 4, !tbaa !1335
  %i.axz = getelementptr inbounds nuw i8, ptr %i.axh, i64 336
  store float %i.axy, ptr %i.axz, align 8, !tbaa !1336
  %i.aya = getelementptr inbounds nuw i8, ptr %i.axh, i64 344
  store i8 1, ptr %i.aya, align 8, !tbaa !1337
  %.pre1241 = load i32, ptr %i.auz, align 8, !tbaa !631
  br label %_ZN5ImGui8SameLineEff.exit682

_ZN5ImGui8SameLineEff.exit682:                    ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit, %bb.fq
  %i.ayb = phi i32 [ %i.avd, %_ZNK15ImGuiPackedDate6UnpackEv.exit ], [ %.pre1241, %bb.fq ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %15, i8 0, i64 16, i1 false)
  %i.ayc = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.ayb, ptr %i.ayc, align 4, !tbaa !1524
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  store <2 x float> zeroinitializer, ptr %16, align 8, !tbaa !8
  %i.ayd = call noundef zeroext i1 @_ZN5ImGui6ButtonEPKcRK6ImVec2(ptr noundef nonnull @.str.353, ptr noundef nonnull align 4 dereferenceable(8) %16)
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  br i1 %i.ayd, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %_ZN5ImGui8SameLineEff.exit682
  call void @_ZN5ImGui18CleanupIniSettingsEP24ImGuiSettingsCleanupArgs(ptr noundef nonnull %15)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %_ZN5ImGui8SameLineEff.exit682
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fs, %bb.fm, %_ZN5ImGui8SameLineEff.exit678
  %.0501 = phi i32 [ %i.axe, %bb.fs ], [ 0, %bb.fm ], [ 0, %_ZN5ImGui8SameLineEff.exit678 ] ; 4 uses
  %i.aye = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 6 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 9856 ; 2 uses
  %i.ayg = load i16, ptr %i.ayf, align 8, !tbaa !1165 ; 2 uses
  %i.ayh = icmp sgt i16 %i.ayg, 0
  br i1 %i.ayh, label %bb.fv, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %i.ayi = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.102), !inline_history !1418 ; 0 uses
  br label %_ZN5ImGui11EndDisabledEv.exit

bb.fv:                                            ; preds = %bb.ft
  %i.ayj = add nsw i16 %i.ayg, -1
  store i16 %i.ayj, ptr %i.ayf, align 8, !tbaa !1165
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.aye, i64 7784 ; 2 uses
  %i.ayl = load i32, ptr %i.ayk, align 8, !tbaa !1036
  %i.aym = and i32 %i.ayl, 64
  %.not.i683 = icmp ne i32 %i.aym, 0
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.aye, i64 8120 ; 2 uses
  %i.ayo = load i32, ptr %i.ayn, align 8, !tbaa !290
  %i.ayp = add nsw i32 %i.ayo, -1                 ; 2 uses
  store i32 %i.ayp, ptr %i.ayn, align 8, !tbaa !290
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.aye, i64 8128
  %i.ayr = load ptr, ptr %i.ayq, align 8, !tbaa !292
  %i.ays = sext i32 %i.ayp to i64
  %i.ayt = getelementptr [4 x i8], ptr %i.ayr, i64 %i.ays
  %i.ayu = getelementptr i8, ptr %i.ayt, i64 -4
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !205 ; 2 uses
  store i32 %i.ayv, ptr %i.ayk, align 8, !tbaa !1036
  %i.ayw = and i32 %i.ayv, 64
  %i.ayx = icmp eq i32 %i.ayw, 0
  %or.cond.i684 = select i1 %.not.i683, i1 %i.ayx, i1 false
  br i1 %or.cond.i684, label %bb.fw, label %_ZN5ImGui11EndDisabledEv.exit

bb.fw:                                            ; preds = %bb.fv
  %i.ayy = getelementptr inbounds nuw i8, ptr %i.aye, i64 9852
  %i.ayz = load float, ptr %i.ayy, align 4, !tbaa !1219
  %i.aza = getelementptr inbounds nuw i8, ptr %i.aye, i64 3220
  store float %i.ayz, ptr %i.aza, align 4, !tbaa !1218
  br label %_ZN5ImGui11EndDisabledEv.exit

_ZN5ImGui11EndDisabledEv.exit:                    ; preds = %bb.fu, %bb.fv, %bb.fw
  %i.azb = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  %i.azc = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.354, ptr noundef nonnull %i.azb) ; 0 uses
  %i.azd = getelementptr inbounds nuw i8, ptr %i.g, i64 10088 ; 2 uses
  %i.aze = load i32, ptr %i.azd, align 8, !tbaa !1668
  %i.azf = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.355, ptr noundef nonnull @.str.356, i32 noundef %i.aze)
  br i1 %i.azf, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %_ZN5ImGui11EndDisabledEv.exit
  %i.azg = getelementptr inbounds nuw i8, ptr %i.g, i64 10096
  %i.azh = load ptr, ptr %i.azg, align 8, !tbaa !613 ; 2 uses
  %i.azi = load i32, ptr %i.azd, align 8, !tbaa !615 ; 2 uses
  %i.azj = sext i32 %i.azi to i64
  %.idx1161 = mul nsw i64 %i.azj, 80
  %i.azk = getelementptr inbounds i8, ptr %i.azh, i64 %.idx1161
  %.not5501114 = icmp eq i32 %i.azi, 0
  br i1 %.not5501114, label %._crit_edge1118, label %.lr.ph1117

._crit_edge1118:                                  ; preds = %.lr.ph1117, %bb.fx
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.fy

.lr.ph1117:                                       ; preds = %bb.fx, %.lr.ph1117
  %.05001115 = phi ptr [ %i.azm, %.lr.ph1117 ], [ %i.azh, %bb.fx ] ; 2 uses
  %i.azl = load ptr, ptr %.05001115, align 8, !tbaa !490
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.348, ptr noundef %i.azl)
  %i.azm = getelementptr inbounds nuw i8, ptr %.05001115, i64 80 ; 2 uses
  %.not550 = icmp eq ptr %i.azm, %i.azk
  br i1 %.not550, label %._crit_edge1118, label %.lr.ph1117

bb.fy:                                            ; preds = %._crit_edge1118, %_ZN5ImGui11EndDisabledEv.exit
  %i.azn = getelementptr inbounds nuw i8, ptr %i.g, i64 10104 ; 2 uses
  %i.azo = load i32, ptr %i.azn, align 8, !tbaa !714
  %i.azp = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.358, i32 noundef %i.azo)
  br i1 %i.azp, label %bb.fz, label %bb.go

bb.fz:                                            ; preds = %bb.fy
  %i.azq = getelementptr inbounds nuw i8, ptr %i.g, i64 10112 ; 2 uses
  %i.azr = load ptr, ptr %i.azq, align 8, !tbaa !708 ; 2 uses
  %.not.i685 = icmp eq ptr %i.azr, null
  br i1 %.not.i685, label %select.unfold._crit_edge, label %.lr.ph1121

.lr.ph1121:                                       ; preds = %bb.fz
  %i.azs = getelementptr inbounds nuw i8, ptr %i.azr, i64 4
  %.not.i687 = icmp eq i32 %.0501, 0
  %i.azt = getelementptr inbounds nuw i8, ptr %4, i64 4
  br label %bb.ga

select.unfold._crit_edge:                         ; preds = %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit, %bb.fz
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.go

bb.ga:                                            ; preds = %.lr.ph1121, %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit
  %.04991119 = phi ptr [ %i.azs, %.lr.ph1121 ], [ %i.bbn, %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit ] ; 4 uses
  %i.azu = getelementptr inbounds nuw i8, ptr %.04991119, i64 12
  %.sroa.0137.0.copyload = load i16, ptr %i.azu, align 4, !tbaa !187 ; 3 uses
  br i1 %.not.i687, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.azv = and i16 %.sroa.0137.0.copyload, 127    ; 2 uses
  %.not.i.i688 = icmp eq i16 %i.azv, 0
  br i1 %.not.i.i688, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.azw = lshr i16 %.sroa.0137.0.copyload, 7
  %i.azx = and i16 %i.azw, 15                     ; 2 uses
  %.not3.i.i = icmp eq i16 %i.azx, 0
  br i1 %.not3.i.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.azy = lshr i16 %.sroa.0137.0.copyload, 11    ; 2 uses
  %.not4.i.i = icmp eq i16 %i.azy, 0
  br i1 %.not4.i.i, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %narrow.i.i = add nuw nsw i16 %i.azv, 2000
  %i.azz = zext nneg i16 %narrow.i.i to i32
  %i.baa = mul nuw nsw i32 %i.azz, 10000
  %narrow5.i.i = mul nuw nsw i16 %i.azx, 100
  %narrow6.i.i = add nuw nsw i16 %narrow5.i.i, %i.azy
  %i.bab = zext nneg i16 %narrow6.i.i to i32
  %i.bac = add nuw nsw i32 %i.baa, %i.bab
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i

_ZNK15ImGuiPackedDate6UnpackEv.exit.i:            ; preds = %bb.ge, %bb.gd, %bb.gc, %bb.gb
  %i.bad = phi i32 [ %i.bac, %bb.ge ], [ 0, %bb.gd ], [ 0, %bb.gc ], [ 0, %bb.gb ]
  %i.bae = icmp slt i32 %i.bad, %.0501
  br i1 %i.bae, label %bb.gf, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit

bb.gf:                                            ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit.i
  %i.baf = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store i32 0, ptr %4, align 4, !tbaa !417
  %i.bag = getelementptr inbounds nuw i8, ptr %i.baf, i64 3532 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.azt, ptr noundef nonnull align 4 dereferenceable(16) %i.bag, i64 16, i1 false), !tbaa.struct !419
  %i.bah = getelementptr inbounds nuw i8, ptr %i.baf, i64 8056
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bah, ptr noundef nonnull align 4 dereferenceable(20) %4)
  %i.bai = getelementptr inbounds nuw i8, ptr %i.baf, i64 8052
  %i.baj = load i32, ptr %i.bai, align 4, !tbaa !420
  %.not.i2.i = icmp eq i32 %i.baj, 0
  br i1 %.not.i2.i, label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  store <4 x i32> <i32 1065353216, i32 1053609165, i32 1053609165, i32 1065353216>, ptr %i.bag, align 4, !tbaa !8
  br label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i

_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i:      ; preds = %bb.gg, %bb.gf
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit

_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit: ; preds = %bb.ga, %_ZNK15ImGuiPackedDate6UnpackEv.exit.i, %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i
  %.sroa.0963.0 = phi i8 [ 0, %_ZNK15ImGuiPackedDate6UnpackEv.exit.i ], [ 1, %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i ], [ 0, %bb.ga ] ; 2 uses
  invoke void @_ZN5ImGui23DebugNodeWindowSettingsEP19ImGuiWindowSettings(ptr noundef nonnull %.04991119)
          to label %bb.gh unwind label %bb.gn

bb.gh:                                            ; preds = %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit
  %i.bak = trunc nuw i8 %.sroa.0963.0 to i1
  br i1 %i.bak, label %bb.gi, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit

bb.gi:                                            ; preds = %bb.gh
  %i.bal = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.bam = getelementptr inbounds nuw i8, ptr %i.bal, i64 8056 ; 4 uses
  %i.ban = load i32, ptr %i.bam, align 8, !tbaa !426 ; 2 uses
  %i.bao = icmp slt i32 %i.ban, 1
  br i1 %i.bao, label %bb.gj, label %.lr.ph.i.i

bb.gj:                                            ; preds = %bb.gi
  %i.bap = invoke noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.11)
          to label %bb.gk unwind label %bb.gm, !inline_history !1369 ; 0 uses

bb.gk:                                            ; preds = %bb.gj
  %i.baq = load i32, ptr %i.bam, align 8, !tbaa !426 ; 3 uses
  %i.bar = icmp sgt i32 %i.baq, 0
  br i1 %i.bar, label %.lr.ph.i.i, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit

.lr.ph.i.i:                                       ; preds = %bb.gk, %bb.gi
  %.0.i2.i = phi i32 [ %i.baq, %bb.gk ], [ 1, %bb.gi ]
  %i.bas = phi i32 [ %i.baq, %bb.gk ], [ %i.ban, %bb.gi ]
  %i.bat = getelementptr inbounds nuw i8, ptr %i.bal, i64 8064
  %i.bau = getelementptr inbounds nuw i8, ptr %i.bal, i64 3532
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gl, %.lr.ph.i.i
  %i.bav = phi i32 [ %i.bas, %.lr.ph.i.i ], [ %i.bbf, %bb.gl ]
  %.110.i.i = phi i32 [ %.0.i2.i, %.lr.ph.i.i ], [ %i.bbg, %bb.gl ] ; 2 uses
  %i.baw = load ptr, ptr %i.bat, align 8, !tbaa !423
  %i.bax = sext i32 %i.bav to i64
  %i.bay = getelementptr [20 x i8], ptr %i.baw, i64 %i.bax ; 2 uses
  %i.baz = getelementptr i8, ptr %i.bay, i64 -20
  %i.bba = getelementptr i8, ptr %i.bay, i64 -16
  %i.bbb = load i32, ptr %i.baz, align 4, !tbaa !417
  %i.bbc = sext i32 %i.bbb to i64
  %i.bbd = getelementptr inbounds [16 x i8], ptr %i.bau, i64 %i.bbc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bbd, ptr noundef nonnull align 4 dereferenceable(16) %i.bba, i64 16, i1 false), !tbaa.struct !419
  %i.bbe = load i32, ptr %i.bam, align 8, !tbaa !421
  %i.bbf = add nsw i32 %i.bbe, -1                 ; 2 uses
  store i32 %i.bbf, ptr %i.bam, align 8, !tbaa !421
  %i.bbg = add nsw i32 %.110.i.i, -1
  %i.bbh = icmp samesign ugt i32 %.110.i.i, 1
  br i1 %i.bbh, label %bb.gl, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit, !llvm.loop !427

bb.gm:                                            ; preds = %bb.gj
  %i.bbi = landingpad { ptr, i32 }
          catch ptr null
  %i.bbj = extractvalue { ptr, i32 } %i.bbi, 0
  call void @__clang_call_terminate(ptr %i.bbj) #58
  unreachable

_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit: ; preds = %bb.gl, %bb.gh, %bb.gk
  %i.bbk = getelementptr inbounds i8, ptr %.04991119, i64 -4
  %i.bbl = load i32, ptr %i.bbk, align 4, !tbaa !205
  %i.bbm = sext i32 %i.bbl to i64
  %i.bbn = getelementptr inbounds i8, ptr %.04991119, i64 %i.bbm ; 2 uses
  %i.bbo = load ptr, ptr %i.azq, align 8, !tbaa !708
  %i.bbp = load i32, ptr %i.azn, align 8, !tbaa !714
  %i.bbq = sext i32 %i.bbp to i64
  %i.bbr = getelementptr inbounds i8, ptr %i.bbo, i64 %i.bbq
  %i.bbs = getelementptr inbounds nuw i8, ptr %i.bbr, i64 4
  %i.bbt = icmp eq ptr %i.bbn, %i.bbs
  br i1 %i.bbt, label %select.unfold._crit_edge, label %bb.ga

bb.gn:                                            ; preds = %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit
  %i.bbu = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.go:                                            ; preds = %select.unfold._crit_edge, %bb.fy
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.g, i64 10120 ; 2 uses
  %i.bbw = load i32, ptr %i.bbv, align 8, !tbaa !1669
  %i.bbx = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.359, ptr noundef nonnull @.str.360, i32 noundef %i.bbw)
  br i1 %i.bbx, label %bb.gp, label %bb.he

bb.gp:                                            ; preds = %bb.go
  %i.bby = getelementptr inbounds nuw i8, ptr %i.g, i64 10128 ; 2 uses
  %i.bbz = load ptr, ptr %i.bby, align 8, !tbaa !1670 ; 2 uses
  %.not.i690 = icmp eq ptr %i.bbz, null
  br i1 %.not.i690, label %select.unfold1028._crit_edge, label %.lr.ph1124

.lr.ph1124:                                       ; preds = %bb.gp
  %i.bca = getelementptr inbounds nuw i8, ptr %i.bbz, i64 4
  %.not.i692 = icmp eq i32 %.0501, 0
  %i.bcb = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.gq

select.unfold1028._crit_edge:                     ; preds = %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit710, %bb.gp
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.he

bb.gq:                                            ; preds = %.lr.ph1124, %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit710
  %.04951122 = phi ptr [ %i.bca, %.lr.ph1124 ], [ %i.bdv, %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit710 ] ; 4 uses
  %i.bcc = getelementptr inbounds nuw i8, ptr %.04951122, i64 16
  %.sroa.0.0.copyload = load i16, ptr %i.bcc, align 4, !tbaa !187 ; 3 uses
  br i1 %.not.i692, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit706, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.bcd = and i16 %.sroa.0.0.copyload, 127       ; 2 uses
  %.not.i.i693 = icmp eq i16 %i.bcd, 0
  br i1 %.not.i.i693, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i699, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.bce = lshr i16 %.sroa.0.0.copyload, 7
  %i.bcf = and i16 %i.bce, 15                     ; 2 uses
  %.not3.i.i694 = icmp eq i16 %i.bcf, 0
  br i1 %.not3.i.i694, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i699, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.bcg = lshr i16 %.sroa.0.0.copyload, 11       ; 2 uses
  %.not4.i.i695 = icmp eq i16 %i.bcg, 0
  br i1 %.not4.i.i695, label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i699, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %narrow.i.i696 = add nuw nsw i16 %i.bcd, 2000
  %i.bch = zext nneg i16 %narrow.i.i696 to i32
  %i.bci = mul nuw nsw i32 %i.bch, 10000
  %narrow5.i.i697 = mul nuw nsw i16 %i.bcf, 100
  %narrow6.i.i698 = add nuw nsw i16 %narrow5.i.i697, %i.bcg
  %i.bcj = zext nneg i16 %narrow6.i.i698 to i32
  %i.bck = add nuw nsw i32 %i.bci, %i.bcj
  br label %_ZNK15ImGuiPackedDate6UnpackEv.exit.i699

_ZNK15ImGuiPackedDate6UnpackEv.exit.i699:         ; preds = %bb.gu, %bb.gt, %bb.gs, %bb.gr
  %i.bcl = phi i32 [ %i.bck, %bb.gu ], [ 0, %bb.gt ], [ 0, %bb.gs ], [ 0, %bb.gr ]
  %i.bcm = icmp slt i32 %i.bcl, %.0501
  br i1 %i.bcm, label %bb.gv, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit706

bb.gv:                                            ; preds = %_ZNK15ImGuiPackedDate6UnpackEv.exit.i699
  %i.bcn = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store i32 0, ptr %3, align 4, !tbaa !417
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 3532 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bcb, ptr noundef nonnull align 4 dereferenceable(16) %i.bco, i64 16, i1 false), !tbaa.struct !419
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 8056
  call void @_ZN8ImVectorI13ImGuiColorModE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.bcp, ptr noundef nonnull align 4 dereferenceable(20) %3)
  %i.bcq = getelementptr inbounds nuw i8, ptr %i.bcn, i64 8052
  %i.bcr = load i32, ptr %i.bcq, align 4, !tbaa !420
  %.not.i2.i700 = icmp eq i32 %i.bcr, 0
  br i1 %.not.i2.i700, label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i704, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  store <4 x i32> <i32 1065353216, i32 1053609165, i32 1053609165, i32 1065353216>, ptr %i.bco, align 4, !tbaa !8
  br label %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i704

_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i704:   ; preds = %bb.gw, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit706

_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit706: ; preds = %bb.gq, %_ZNK15ImGuiPackedDate6UnpackEv.exit.i699, %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i704
  %.sroa.0961.0 = phi i8 [ 0, %_ZNK15ImGuiPackedDate6UnpackEv.exit.i699 ], [ 1, %_ZN5ImGui14PushStyleColorEiRK6ImVec4.exit.i704 ], [ 0, %bb.gq ] ; 2 uses
  invoke void @_ZN5ImGui22DebugNodeTableSettingsEP18ImGuiTableSettingsP10ImGuiTable(ptr noundef nonnull %.04951122, ptr noundef null)
          to label %bb.gx unwind label %bb.hd

bb.gx:                                            ; preds = %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit706
  %i.bcs = trunc nuw i8 %.sroa.0961.0 to i1
  br i1 %i.bcs, label %bb.gy, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit710

bb.gy:                                            ; preds = %bb.gx
  %i.bct = load ptr, ptr @GImGui, align 8, !tbaa !193 ; 3 uses
  %i.bcu = getelementptr inbounds nuw i8, ptr %i.bct, i64 8056 ; 4 uses
  %i.bcv = load i32, ptr %i.bcu, align 8, !tbaa !426 ; 2 uses
  %i.bcw = icmp slt i32 %i.bcv, 1
  br i1 %i.bcw, label %bb.gz, label %.lr.ph.i.i707

bb.gz:                                            ; preds = %bb.gy
  %i.bcx = invoke noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.11)
          to label %bb.ha unwind label %bb.hc, !inline_history !1369 ; 0 uses

bb.ha:                                            ; preds = %bb.gz
  %i.bcy = load i32, ptr %i.bcu, align 8, !tbaa !426 ; 3 uses
  %i.bcz = icmp sgt i32 %i.bcy, 0
  br i1 %i.bcz, label %.lr.ph.i.i707, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit710

.lr.ph.i.i707:                                    ; preds = %bb.ha, %bb.gy
  %.0.i2.i708 = phi i32 [ %i.bcy, %bb.ha ], [ 1, %bb.gy ]
  %i.bda = phi i32 [ %i.bcy, %bb.ha ], [ %i.bcv, %bb.gy ]
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bct, i64 8064
  %i.bdc = getelementptr inbounds nuw i8, ptr %i.bct, i64 3532
  br label %bb.hb

bb.hb:                                            ; preds = %bb.hb, %.lr.ph.i.i707
  %i.bdd = phi i32 [ %i.bda, %.lr.ph.i.i707 ], [ %i.bdn, %bb.hb ]
  %.110.i.i709 = phi i32 [ %.0.i2.i708, %.lr.ph.i.i707 ], [ %i.bdo, %bb.hb ] ; 2 uses
  %i.bde = load ptr, ptr %i.bdb, align 8, !tbaa !423
  %i.bdf = sext i32 %i.bdd to i64
  %i.bdg = getelementptr [20 x i8], ptr %i.bde, i64 %i.bdf ; 2 uses
  %i.bdh = getelementptr i8, ptr %i.bdg, i64 -20
  %i.bdi = getelementptr i8, ptr %i.bdg, i64 -16
  %i.bdj = load i32, ptr %i.bdh, align 4, !tbaa !417
  %i.bdk = sext i32 %i.bdj to i64
  %i.bdl = getelementptr inbounds [16 x i8], ptr %i.bdc, i64 %i.bdk
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bdl, ptr noundef nonnull align 4 dereferenceable(16) %i.bdi, i64 16, i1 false), !tbaa.struct !419
  %i.bdm = load i32, ptr %i.bcu, align 8, !tbaa !421
  %i.bdn = add nsw i32 %i.bdm, -1                 ; 2 uses
  store i32 %i.bdn, ptr %i.bcu, align 8, !tbaa !421
  %i.bdo = add nsw i32 %.110.i.i709, -1
  %i.bdp = icmp samesign ugt i32 %.110.i.i709, 1
  br i1 %i.bdp, label %bb.hb, label %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit710, !llvm.loop !427

bb.hc:                                            ; preds = %bb.gz
  %i.bdq = landingpad { ptr, i32 }
          catch ptr null
  %i.bdr = extractvalue { ptr, i32 } %i.bdq, 0
  call void @__clang_call_terminate(ptr %i.bdr) #58
  unreachable

_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev.exit710: ; preds = %bb.hb, %bb.gx, %bb.ha
  %i.bds = getelementptr inbounds i8, ptr %.04951122, i64 -4
  %i.bdt = load i32, ptr %i.bds, align 4, !tbaa !205
  %i.bdu = sext i32 %i.bdt to i64
  %i.bdv = getelementptr inbounds i8, ptr %.04951122, i64 %i.bdu ; 2 uses
  %i.bdw = load ptr, ptr %i.bby, align 8, !tbaa !1670
  %i.bdx = load i32, ptr %i.bbv, align 8, !tbaa !1669
  %i.bdy = sext i32 %i.bdx to i64
  %i.bdz = getelementptr inbounds i8, ptr %i.bdw, i64 %i.bdy
  %i.bea = getelementptr inbounds nuw i8, ptr %i.bdz, i64 4
  %i.beb = icmp eq ptr %i.bdv, %i.bea
  br i1 %i.beb, label %select.unfold1028._crit_edge, label %bb.gq

bb.hd:                                            ; preds = %_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanC2Ei15ImGuiPackedDate.exit706
  %i.bec = landingpad { ptr, i32 }
          cleanup
  br label %bb.hh

bb.he:                                            ; preds = %select.unfold1028._crit_edge, %bb.go
  %i.bed = getelementptr inbounds nuw i8, ptr %i.g, i64 10072 ; 2 uses
  %i.bee = load i32, ptr %i.bed, align 8, !tbaa !284
  %spec.select.i = call noundef i32 @llvm.usub.sat.i32(i32 %i.bee, i32 1)
  %i.bef = call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef nonnull @.str.361, ptr noundef nonnull @.str.362, i32 noundef %spec.select.i)
  br i1 %i.bef, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  %i.beg = getelementptr inbounds nuw i8, ptr %i.g, i64 10080
  %i.beh = load ptr, ptr %i.beg, align 8, !tbaa !744 ; 2 uses
  %.not.i712 = icmp eq ptr %i.beh, null
  %spec.select.i713 = select i1 %.not.i712, ptr @_ZN15ImGuiTextBuffer11EmptyStringE, ptr %i.beh
  %i.bei = load i32, ptr %i.bed, align 8, !tbaa !1671
  %i.bej = sext i32 %i.bei to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #41
  %i.bek = load ptr, ptr @GImGui, align 8, !tbaa !193
  %i.bel = getelementptr inbounds nuw i8, ptr %i.bek, i64 4568
  %i.bem = load float, ptr %i.bel, align 8, !tbaa !454
  %i.ben = fmul float %i.bem, 2.000000e+01
  store float f0x80800000, ptr %17, align 4, !tbaa !227
  %i.beo = getelementptr inbounds nuw i8, ptr %17, i64 4
  store float %i.ben, ptr %i.beo, align 4, !tbaa !228
  %i.bep = call noundef zeroext i1 @_ZN5ImGui18InputTextMultilineEPKcPcmRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef nonnull @.str.363, ptr noundef nonnull %spec.select.i713, i64 noundef %i.bej, ptr noundef nonnull align 4 dereferenceable(8) %17, i32 noundef 512, ptr noundef null, ptr noundef null) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.hg

bb.hg:                                            ; preds = %bb.hf, %bb.he
  call void @_ZN5ImGui7TreePopEv()
  br label %bb.hi

bb.hh:                                            ; preds = %bb.hd, %bb.gn
  %.sroa.0961.0.lcssa.sink = phi i8 [ %.sroa.0961.0, %bb.hd ], [ %.sroa.0963.0, %bb.gn ]
  %.pn = phi { ptr, i32 } [ %i.bec, %bb.hd ], [ %i.bbu, %bb.gn ]
  call fastcc void @_ZZN5ImGui17ShowMetricsWindowEPbEN24ScopedHighlightOlderThanD2Ev(i8 %.sroa.0961.0.lcssa.sink) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  resume { ptr, i32 } %.pn

bb.hi:                                            ; preds = %bb.hg, %bb.ee
  %i.beq = call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.364)
  br i1 %i.beq, label %bb.hj, label %bb.ho

bb.hj:                                            ; preds = %bb.hi
  %i.ber = load i32, ptr %i.bi, align 4, !tbaa !200
  %i.bes = load i32, ptr %i.bk, align 8, !tbaa !201
  %i.bet = sub nsw i32 %i.ber, %i.bes
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.365, i32 noundef %i.bet)
  %i.beu = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.bev = load float, ptr %i.beu, align 8, !tbaa !948
  %i.bew = fpext float %i.bev to double
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.366, double noundef %i.bew)
  %i.bex = call noundef zeroext i1 @_ZN5ImGui11SmallButtonEPKc(ptr noundef nonnull @.str.367)
  br i1 %i.bex, label %bb.hk, label %bb.hl

bb.hk:                                            ; preds = %bb.hj
  %i.bey = getelementptr inbounds nuw i8, ptr %i.g, i64 8049
  store i8 1, ptr %i.bey, align 1, !tbaa !652
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hj, %bb.hk
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.368)
  %i.bez = getelementptr inbounds nuw i8, ptr %i.g, i64 10608 ; 6 uses
  %i.bfa = getelementptr inbounds nuw i8, ptr %i.g, i64 10604 ; 6 uses
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.bfc = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bfd = sext i16 %i.bfc to i32
  %i.bfe = add nsw i32 %i.bfd, 1
  %i.bff = srem i32 %i.bfe, 6
  %i.bfg = sext i32 %i.bff to i64
  %i.bfh = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bfg ; 3 uses
  %i.bfi = load i32, ptr %i.bfh, align 4, !tbaa !196
  %i.bfj = getelementptr inbounds nuw i8, ptr %i.bfh, i64 4
  %i.bfk = load i16, ptr %i.bfj, align 4, !tbaa !198
  %i.bfl = sext i16 %i.bfk to i32                 ; 2 uses
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.bfh, i64 6
  %i.bfn = load i16, ptr %i.bfm, align 2, !tbaa !199
  %i.bfo = sext i16 %i.bfn to i32                 ; 2 uses
  %i.bfp = sub nsw i32 %i.bfl, %i.bfo
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bfi, i32 noundef %i.bfp, i32 noundef %i.bfl, i32 noundef %i.bfo)
  %.pre1243 = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bfq = sext i16 %.pre1243 to i32
  %i.bfr = add nsw i32 %i.bfq, 2
  %i.bfs = srem i32 %i.bfr, 6
  %i.bft = sext i32 %i.bfs to i64
  %i.bfu = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bft ; 3 uses
  %i.bfv = load i32, ptr %i.bfu, align 4, !tbaa !196
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfu, i64 4
  %i.bfx = load i16, ptr %i.bfw, align 4, !tbaa !198
  %i.bfy = sext i16 %i.bfx to i32                 ; 2 uses
  %i.bfz = getelementptr inbounds nuw i8, ptr %i.bfu, i64 6
  %i.bga = load i16, ptr %i.bfz, align 2, !tbaa !199
  %i.bgb = sext i16 %i.bga to i32                 ; 2 uses
  %i.bgc = sub nsw i32 %i.bfy, %i.bgb
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bfv, i32 noundef %i.bgc, i32 noundef %i.bfy, i32 noundef %i.bgb)
  %.pre1245 = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bgd = sext i16 %.pre1245 to i32
  %i.bge = add nsw i32 %i.bgd, 3
  %i.bgf = srem i32 %i.bge, 6
  %i.bgg = sext i32 %i.bgf to i64
  %i.bgh = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bgg ; 3 uses
  %i.bgi = load i32, ptr %i.bgh, align 4, !tbaa !196
  %i.bgj = getelementptr inbounds nuw i8, ptr %i.bgh, i64 4
  %i.bgk = load i16, ptr %i.bgj, align 4, !tbaa !198
  %i.bgl = sext i16 %i.bgk to i32                 ; 2 uses
  %i.bgm = getelementptr inbounds nuw i8, ptr %i.bgh, i64 6
  %i.bgn = load i16, ptr %i.bgm, align 2, !tbaa !199
  %i.bgo = sext i16 %i.bgn to i32                 ; 2 uses
  %i.bgp = sub nsw i32 %i.bgl, %i.bgo
  call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.369, i32 noundef %i.bgi, i32 noundef %i.bgp, i32 noundef %i.bgl, i32 noundef %i.bgo)
  %.pre1247 = load i16, ptr %i.bfa, align 4, !tbaa !195
  %i.bgq = sext i16 %.pre1247 to i32
  %i.bgr = add nsw i32 %i.bgq, 4
  %i.bgs = srem i32 %i.bgr, 6
  %i.bgt = sext i32 %i.bgs to i64
  %i.bgu = getelementptr inbounds [8 x i8], ptr %i.bez, i64 %i.bgt ; 3 uses
  %i.bgv = load i32, ptr %i.bgu, align 4, !tbaa !196
  %i.bgw = getelementptr inbounds nuw i8, ptr %i.bgu, i64 4
end_hunk_10
