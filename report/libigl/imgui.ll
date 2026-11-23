Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui?download=true
inline.NumInlined: 2414
inline.NumDeleted: 435
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_ZN5ImGui11PopStyleVarEi:bb.a
  %i.l = getelementptr inbounds [12 x i8], ptr @_ZL13GStyleVarInfo, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !286
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.o ; 3 uses
  %i.q = shl nuw i64 1, %i.k                      ; 2 uses
  %i.r = and i64 %i.q, 8206235
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.h, i64 -8
  %i.t = load float, ptr %i.s, align 4, !tbaa !80
  store float %i.t, ptr %i.p, align 4, !tbaa !75
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.u = and i64 %i.q, 25348196
  %.not16 = icmp eq i64 %i.u, 0
  br i1 %.not16, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.h, i64 -8
  %i.w = load float, ptr %i.v, align 4, !tbaa !80
  store float %i.w, ptr %i.p, align 4, !tbaa !75
  %i.x = getelementptr i8, ptr %i.h, i64 -4
  %i.y = load float, ptr %i.x, align 4, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store float %i.y, ptr %i.z, align 4, !tbaa !75
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.aa = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.aa, ptr %i.c, align 8, !tbaa !287
  %i.ab = add nsw i32 %.017, -1
  %i.ac = icmp sgt i32 %.017, 1
  br i1 %i.ac, label %bb.b, label %._crit_edge, !llvm.loop !814

._crit_edge:                                      ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui17GetStyleColorNameEi(i32 noundef %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp ult i32 %0, 53
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5ImGui17GetStyleColorNameEi, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.56, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #15 {
bb.a:
  %.not = icmp eq ptr %1, null
  %spec.store.select = select i1 %.not, ptr inttoptr (i64 -1 to ptr), ptr %1 ; 3 uses
  %i.a = icmp ult ptr %0, %spec.store.select
  br i1 %i.a, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %spec.store.select20 = ptrtoaddr ptr %spec.store.select to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = sub i64 %spec.store.select20, %i.b
  %scevgep = getelementptr i8, ptr %0, i64 %i.c
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.015 = phi ptr [ %i.g, %.critedge2 ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.d = load i8, ptr %.015, align 1, !tbaa !80
  switch i8 %i.d, label %.critedge2 [
    i8 0, label %.critedge
    i8 35, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !80
  %.not14 = icmp eq i8 %i.f, 35
  br i1 %.not14, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.g, %spec.store.select
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !19

.critedge:                                        ; preds = %bb.b, %.critedge2, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.015, %.lr.ph ], [ %scevgep, %.critedge2 ], [ %.015, %bb.b ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #10 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 3 uses
  store <2 x float> %0, ptr %4, align 8
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214
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
  %i.g = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.g, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.i, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.j, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.e, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #56
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.d, %bb.e
  %.0 = phi ptr [ %i.l, %bb.e ], [ %2, %bb.d ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ], [ %.015.i, %bb.c ] ; 3 uses
  %.not20 = icmp eq ptr %1, %.0
  br i1 %.not20, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !292
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6520
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !293
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.r = load float, ptr %i.q, align 8, !tbaa !294
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 5672
  %i.u = load float, ptr %i.s, align 8, !tbaa !278
  %i.v = load <4 x float>, ptr %i.t, align 8, !tbaa !75 ; 2 uses
  %i.w = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.u, i64 3
  %i.x = fmul <4 x float> %i.v, %i.w              ; 2 uses
  %i.y = fcmp olt <4 x float> %i.x, zeroinitializer
  %i.z = shufflevector <4 x float> %i.v, <4 x float> %i.x, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.aa = fcmp ogt <4 x float> %i.z, splat (float 1.000000e+00)
  %i.ab = select <4 x i1> %i.aa, <4 x float> splat (float 1.000000e+00), <4 x float> %i.z
  %i.ac = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ab, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ad = select <4 x i1> %i.y, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ac
  %i.ae = fptosi <4 x float> %i.ad to <4 x i32>
  %i.af = shl <4 x i32> %i.ae, <i32 0, i32 8, i32 16, i32 24>
  %i.ag = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.af)
  call void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196) %i.n, ptr noundef %i.p, float noundef %i.r, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ag, ptr noundef %1, ptr noundef %.0, float noundef 0.000000e+00, ptr noundef null)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 12524
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !215, !range !216, !noundef !217
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %.0)
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread: ; preds = %bb.b, %bb.f, %bb.g, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  ret void
}

declare void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196), ptr noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not65 = icmp eq ptr %0, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.o, %bb.a
  %.tr70 = phi ptr [ %1, %bb.a ], [ %i.h, %bb.o ] ; 6 uses
  %.tr71 = phi ptr [ %2, %bb.a ], [ %i.az, %bb.o ] ; 2 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 7184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 12560 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !295  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12568
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !296  ; 4 uses
  %.not = icmp eq ptr %.tr71, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.b, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.b:                                             ; preds = %tailrecurse
  %.not69 = icmp eq ptr %.tr70, inttoptr (i64 -1 to ptr)
  br i1 %.not69, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.i = ptrtoaddr ptr %.tr70 to i64
  %i.j = xor i64 %i.i, -1
  %scevgep.i = getelementptr i8, ptr %.tr70, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.n, %.critedge2.i ], [ %.tr70, %.lr.ph.preheader.i ] ; 5 uses
  %i.k = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.k, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.m, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.n, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.b, %tailrecurse
  %.056 = phi ptr [ %.tr71, %tailrecurse ], [ %.tr70, %bb.b ], [ %.015.i, %bb.c ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ] ; 3 uses
  br i1 %.not65, label %.thread68, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.o = load float, ptr %i.a, align 4, !tbaa !188 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 12576 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !297
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 5536
  %i.s = load float, ptr %i.r, align 8, !tbaa !298
  %i.t = fadd float %i.q, %i.s
  %i.u = fadd float %i.t, 1.000000e+00
  %i.v = fcmp ogt float %i.o, %i.u
  store float %i.o, ptr %i.p, align 8, !tbaa !297
  br i1 %i.v, label %bb.e, label %.thread68

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.88)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12580
  store i8 1, ptr %i.w, align 4, !tbaa !299
  br label %.thread68

.thread68:                                        ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, %bb.e, %bb.d
  %.not66 = icmp eq ptr %i.f, null
  br i1 %.not66, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread68
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #56
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.x
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.y)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread68
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 12584 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !300 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 344
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !301 ; 4 uses
  %i.ad = icmp sgt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !300
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i32 [ %i.ac, %bb.h ], [ %i.aa, %bb.g ]
  %i.af = sub nsw i32 %i.ac, %i.ae
  %i.ag = ptrtoint ptr %.056 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 12580 ; 3 uses
  %i.ai = shl nsw i32 %i.af, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.055 = phi ptr [ %.tr70, %bb.i ], [ %i.ax, %bb.m ] ; 4 uses
  %i.aj = ptrtoint ptr %.055 to i64               ; 2 uses
  %i.ak = sub i64 %i.ag, %i.aj
  %i.al = tail call noundef ptr @memchr(ptr noundef %.055, i32 noundef 10, i64 noundef %i.ak) #56 ; 2 uses
  %.not.i = icmp eq ptr %i.al, null
  %i.am = select i1 %.not.i, ptr %.056, ptr %i.al ; 5 uses
  %i.an = icmp eq ptr %i.am, %.056                ; 2 uses
  %i.ao = icmp eq ptr %.055, %i.am
  %or.cond = and i1 %i.ao, %i.an
  br i1 %or.cond, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = sub i64 %i.ap, %i.aj
  %i.ar = trunc i64 %i.aq to i32
  %i.as = load i8, ptr %i.ah, align 4, !tbaa !299, !range !216, !noundef !217
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = select i1 %i.at, i32 %i.ai, i32 1
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.89, i32 noundef %i.au, ptr noundef nonnull @.str.2, i32 noundef %i.ar, ptr noundef %.055)
  store i8 0, ptr %i.ah, align 4, !tbaa !299
  %i.av = load i8, ptr %i.am, align 1, !tbaa !80
  %i.aw = icmp eq i8 %i.av, 10
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.88)
  store i8 1, ptr %i.ah, align 4, !tbaa !299
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  br i1 %i.an, label %bb.n, label %bb.j

bb.n:                                             ; preds = %bb.m
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #56
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ay
  br label %tailrecurse

bb.p:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float> %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 3 uses
  store <2 x float> %0, ptr %4, align 8
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !214
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #56
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %2, %bb.a ], [ %i.e, %bb.b ]    ; 3 uses
  %.not17 = icmp eq ptr %1, %.0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 616
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !292
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 6520
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !293
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.k = load float, ptr %i.j, align 8, !tbaa !294
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 5472
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 5672
  %i.n = load float, ptr %i.l, align 8, !tbaa !278
  %i.o = load <4 x float>, ptr %i.m, align 8, !tbaa !75 ; 2 uses
  %i.p = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.n, i64 3
  %i.q = fmul <4 x float> %i.o, %i.p              ; 2 uses
  %i.r = fcmp olt <4 x float> %i.q, zeroinitializer
  %i.s = shufflevector <4 x float> %i.o, <4 x float> %i.q, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.t = fcmp ogt <4 x float> %i.s, splat (float 1.000000e+00)
  %i.u = select <4 x i1> %i.t, <4 x float> splat (float 1.000000e+00), <4 x float> %i.s
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.w = select <4 x i1> %i.r, <4 x float> splat (float 5.000000e-01), <4 x float> %i.v
  %i.x = fptosi <4 x float> %i.w to <4 x i32>
  %i.y = shl <4 x i32> %i.x, <i32 0, i32 8, i32 16, i32 24>
  %i.z = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.y)
  call void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196) %i.g, ptr noundef %i.i, float noundef %i.k, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.z, ptr noundef %1, ptr noundef nonnull %.0, float noundef %3, ptr noundef null)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 12524
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !215, !range !216, !noundef !217
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #10 {
bb.a:
  %8 = alloca %struct.ImVec2, align 8             ; 7 uses
  %9 = alloca %struct.ImVec4, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %i.a = load i64, ptr %1, align 4, !tbaa !75     ; 3 uses
  store i64 %i.a, ptr %8, align 8, !tbaa !75
  %.not = icmp eq ptr %5, null
  %i.b = trunc i64 %i.a to i32
  %i.c = bitcast i32 %i.b to float                ; 6 uses
  %i.d = lshr i64 %i.a, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <2 x float>, ptr %5, align 4, !tbaa !75
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 6528
  %i.i = load float, ptr %i.h, align 8, !tbaa !294 ; 2 uses
  %i.j = icmp eq ptr %3, %4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.i, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 6520
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !293
  %i.m = tail call <2 x float> @_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(110) %i.l, float noundef %i.i, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef null) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.m, i64 0
  %i.n = fadd float %.sroa.0.0.vec.extract.i, f0x3F7FFF58
  %i.o = fptosi float %i.n to i32
  %i.p = sitofp i32 %i.o to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.m, float %i.p, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit:            ; preds = %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.4.vec.insert.i, %bb.d ], [ %.sroa.0.0.vec.insert.i, %bb.e ] ; 3 uses
  %.not40 = icmp eq ptr %7, null                  ; 3 uses
  %i.q = select i1 %.not40, ptr %1, ptr %7
end_hunk_0
begin_hunk_1_@_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect:bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 5672
  %i.by = load float, ptr %i.bw, align 4, !tbaa !278
  %i.bz = load <4 x float>, ptr %i.bx, align 4, !tbaa !75 ; 2 uses
  %i.ca = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.by, i64 3
  %i.cb = fmul <4 x float> %i.bz, %i.ca           ; 2 uses
  %i.cc = fcmp olt <4 x float> %i.cb, zeroinitializer
  %i.cd = shufflevector <4 x float> %i.bz, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ce = fcmp ogt <4 x float> %i.cd, splat (float 1.000000e+00)
  %i.cf = select <4 x i1> %i.ce, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cd
  %i.cg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cf, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ch = select <4 x i1> %i.cc, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cg
  %i.ci = fptosi <4 x float> %i.ch to <4 x i32>
  %i.cj = shl <4 x i32> %i.ci, <i32 0, i32 8, i32 16, i32 24>
  %i.ck = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.cj)
  call void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196) %0, ptr noundef null, float noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.ck, ptr noundef %3, ptr noundef %4, float noundef 0.000000e+00, ptr noundef null)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, float noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 3 uses
  br i1 %2, label %bb.b, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %.not.i, ptr inttoptr (i64 -1 to ptr), ptr %1 ; 3 uses
  %i.b = icmp ult ptr %0, %spec.store.select.i
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.d = load float, ptr %i.c, align 8, !tbaa !294
  br label %bb.d

.lr.ph.preheader.i:                               ; preds = %bb.b
  %spec.store.select20.i = ptrtoaddr ptr %spec.store.select.i to i64
  %i.e = ptrtoaddr ptr %0 to i64
  %i.f = sub i64 %spec.store.select20.i, %i.e
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.j, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 5 uses
  %i.g = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.g, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.i, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.j, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ], [ %.015.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 6528
  %i.l = load float, ptr %i.k, align 8, !tbaa !294 ; 2 uses
  %i.m = icmp eq ptr %0, %.0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.n = phi float [ %i.d, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread ], [ %i.l, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit ]
  %.sroa.0.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.n, i64 1
  br label %bb.f

bb.e:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 6520
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !293
  %i.q = tail call <2 x float> @_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(110) %i.p, float noundef %i.l, float noundef f0x7F7FFFFF, float noundef %3, ptr noundef %0, ptr noundef %.0, ptr noundef null) ; 2 uses
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.q, i64 0
  %i.r = fadd float %.sroa.0.0.vec.extract, f0x3F7FFF58
  %i.s = fptosi float %i.r to i32
  %i.t = sitofp i32 %i.s to float
  %.sroa.0.0.vec.insert = insertelement <2 x float> %i.q, float %i.t, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0 = phi <2 x float> [ %.sroa.0.4.vec.insert, %bb.d ], [ %.sroa.0.0.vec.insert, %bb.e ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect(ptr nofree noundef nonnull readonly align 4 captures(address_is_null) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef %2, ptr nofree noundef readnone captures(address) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  %spec.store.select.i = select i1 %.not.i, ptr inttoptr (i64 -1 to ptr), ptr %3 ; 3 uses
  %i.a = icmp ult ptr %2, %spec.store.select.i
  br i1 %i.a, label %.lr.ph.preheader.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %spec.store.select20.i = ptrtoaddr ptr %spec.store.select.i to i64
  %i.b = ptrtoaddr ptr %2 to i64
  %i.c = sub i64 %spec.store.select20.i, %i.b
  %scevgep.i = getelementptr i8, ptr %2, i64 %i.c
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.g, %.critedge2.i ], [ %2, %.lr.ph.preheader.i ] ; 5 uses
  %i.d = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.d, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.f, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.g, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.b, %.critedge2.i, %bb.a
  %.0.lcssa.i = phi ptr [ %2, %bb.a ], [ %.015.i, %bb.b ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ] ; 3 uses
  %i.h = ptrtoint ptr %.0.lcssa.i to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 7184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !214
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 616
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !292
  tail call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %.0.lcssa.i, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef %6)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12524
  %i.s = load i8, ptr %i.r, align 4, !tbaa !215, !range !216, !noundef !217
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %.0.lcssa.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_ffPKcS6_PS3_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(address_is_null) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3, float noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %8 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 4            ; 5 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 3 uses
  %i.d = icmp eq ptr %6, null
  br i1 %i.d, label %bb.b, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not98 = icmp eq ptr %5, inttoptr (i64 -1 to ptr)
  br i1 %.not98, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.e = ptrtoaddr ptr %5 to i64
  %i.f = xor i64 %i.e, -1
  %scevgep.i = getelementptr i8, ptr %5, i64 %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.j, %.critedge2.i ], [ %5, %.lr.ph.preheader.i ] ; 5 uses
  %i.g = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.g, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.i, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.b, %bb.a
  %.080 = phi ptr [ %6, %bb.a ], [ %5, %bb.b ], [ %.015.i, %bb.c ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39
  %.not = icmp eq ptr %7, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.k = load i64, ptr %7, align 4, !tbaa !75
  br label %bb.h

bb.e:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 6528
  %i.m = load float, ptr %i.l, align 8, !tbaa !294 ; 2 uses
  %i.n = icmp eq ptr %5, %.080
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.m, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 6520
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !293
  %i.q = tail call <2 x float> @_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(110) %i.p, float noundef %i.m, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef %5, ptr noundef %.080, ptr noundef null) ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.q, i64 0
  %i.r = fadd float %.sroa.0.0.vec.extract.i, f0x3F7FFF58
  %i.s = fptosi float %i.r to i32
  %i.t = sitofp i32 %i.s to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.q, float %i.t, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit:            ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.f ], [ %.sroa.0.0.vec.insert.i, %bb.g ]
  %i.u = bitcast <2 x float> %.sroa.0.0.i to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit, %bb.d
  %storemerge = phi i64 [ %i.k, %bb.d ], [ %i.u, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit ] ; 2 uses
  store i64 %storemerge, ptr %8, align 8
  %i.v = trunc i64 %storemerge to i32
  %i.w = bitcast i32 %i.v to float
  %i.x = load float, ptr %2, align 4, !tbaa !187
  %i.y = load float, ptr %1, align 4, !tbaa !187
  %i.z = fsub float %i.x, %i.y
  %i.aa = fcmp olt float %i.z, %i.w
  br i1 %i.aa, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !303 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !818 ; 9 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ag = load float, ptr %i.af, align 8, !tbaa !819 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 84
  %i.ai = load i16, ptr %i.ah, align 4, !tbaa !304 ; 3 uses
  %i.aj = icmp eq i16 %i.ai, -1
  br i1 %i.aj, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = tail call noundef ptr @_ZNK6ImFont9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(110) %i.ae, i16 noundef zeroext %i.ai)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !306 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 86
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !820 ; 2 uses
  %i.ap = tail call noundef ptr @_ZNK6ImFont9FindGlyphEt(ptr noundef nonnull align 8 dereferenceable(110) %i.ae, i16 noundef zeroext %i.ao) ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !306
  %i.as = load ptr, ptr %i.ab, align 8, !tbaa !303
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load float, ptr %i.at, align 8, !tbaa !819
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %i.aw = load float, ptr %i.av, align 4, !tbaa !307
  %i.ax = fdiv float %i.au, %i.aw                 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = load float, ptr %i.ay, align 4, !tbaa !308
  %i.ba = fsub float %i.ar, %i.az
  %i.bb = fadd float %i.ax, %i.ba                 ; 2 uses
  %i.bc = fneg float %i.ax
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bb, float 3.000000e+00, float %i.bc)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.08496 = phi i32 [ 3, %bb.k ], [ 1, %bb.j ]
  %.08594 = phi i16 [ %i.ao, %bb.k ], [ %i.ai, %bb.j ]
  %.083 = phi float [ %i.bb, %bb.k ], [ %i.am, %bb.j ]
  %.082 = phi float [ %i.bd, %bb.k ], [ %i.am, %bb.j ] ; 2 uses
  %i.be = load float, ptr %2, align 4, !tbaa !187 ; 2 uses
  %i.bf = fcmp oge float %i.be, %4
  %i.bg = select i1 %i.bf, float %i.be, float %4
  %i.bh = fsub float %i.bg, %.082
  %i.bi = load float, ptr %1, align 4, !tbaa !187
  %i.bj = fsub float %i.bh, %i.bi                 ; 2 uses
  %i.bk = fcmp oge float %i.bj, 1.000000e+00
  %i.bl = select i1 %i.bk, float %i.bj, float 1.000000e+00
  %i.bm = call <2 x float> @_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(110) %i.ae, float noundef %i.ag, float noundef %i.bl, float noundef 0.000000e+00, ptr noundef %5, ptr noundef %.080, ptr noundef nonnull %i.b)
  %.sroa.05.0.vec.extract = extractelement <2 x float> %i.bm, i64 0
  %i.bn = load ptr, ptr %i.b, align 8, !tbaa !194 ; 3 uses
  %i.bo = icmp eq ptr %5, %i.bn
  %i.bp = icmp ult ptr %i.bn, %.080
  %or.cond = and i1 %i.bo, %i.bp
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.bq = call noundef range(i32 -128, 129) i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef readonly %5, ptr noundef nonnull readnone %.080)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %5, i64 %i.br ; 2 uses
  store ptr %i.bs, ptr %i.b, align 8, !tbaa !194
  %i.bt = call <2 x float> @_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(110) %i.ae, float noundef %i.ag, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef %5, ptr noundef %i.bs, ptr noundef null)
  %.sroa.04.0.vec.extract = extractelement <2 x float> %i.bt, i64 0
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !194
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bu = phi ptr [ %.pre, %bb.m ], [ %i.bn, %bb.l ] ; 3 uses
  %.081 = phi float [ %.sroa.04.0.vec.extract, %bb.m ], [ %.sroa.05.0.vec.extract, %bb.l ] ; 2 uses
  %i.bv = icmp ugt ptr %i.bu, %5
  br i1 %i.bv, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.n, %bb.o
  %i.bw = phi ptr [ %i.cb, %bb.o ], [ %i.bu, %bb.n ] ; 3 uses
  %.199 = phi float [ %i.ca, %bb.o ], [ %.081, %bb.n ] ; 2 uses
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 -1 ; 3 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !80
  switch i8 %i.by, label %.critedge [
    i8 32, label %bb.o
    i8 9, label %bb.o
  ]

bb.o:                                             ; preds = %.lr.ph, %.lr.ph
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !194
  %i.bz = call <2 x float> @_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(110) %i.ae, float noundef %i.ag, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bw, ptr noundef null)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.bz, i64 0
  %i.ca = fsub float %.199, %.sroa.0.0.vec.extract ; 2 uses
  %i.cb = load ptr, ptr %i.b, align 8, !tbaa !194 ; 3 uses
  %i.cc = icmp ugt ptr %i.cb, %5
  br i1 %i.cc, label %.lr.ph, label %.critedge, !llvm.loop !816

.critedge:                                        ; preds = %bb.o, %.lr.ph, %bb.n
  %.1.lcssa = phi float [ %.081, %bb.n ], [ %.199, %.lr.ph ], [ %i.ca, %bb.o ]
  %.lcssa = phi ptr [ %i.bu, %bb.n ], [ %i.bw, %.lr.ph ], [ %i.cb, %bb.o ]
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #39
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !188
  store float %3, ptr %9, align 4, !tbaa !187
  %i.cf = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.ce, ptr %i.cf, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39
  store <2 x float> zeroinitializer, ptr %10, align 8, !tbaa !75
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef %5, ptr noundef %.lcssa, ptr noundef nonnull %8, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #39
  %i.cg = load float, ptr %1, align 4, !tbaa !187
  %i.ch = fadd float %.1.lcssa, %i.cg             ; 2 uses
  %i.ci = fadd float %.082, %i.ch
  %i.cj = fcmp ugt float %i.ci, %4
  br i1 %i.cj, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %bb.p
  %.0105 = phi i32 [ 0, %.preheader ], [ %i.dd, %bb.p ]
  %.079104 = phi float [ %i.ch, %.preheader ], [ %i.dc, %bb.p ] ; 2 uses
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !188
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %.079104, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.cl, i64 1
  %i.cm = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 5472
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 5672
  %i.cp = load float, ptr %i.cn, align 4, !tbaa !278
  %i.cq = load <4 x float>, ptr %i.co, align 4, !tbaa !75 ; 2 uses
  %i.cr = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.cp, i64 3
  %i.cs = fmul <4 x float> %i.cq, %i.cr           ; 2 uses
  %i.ct = fcmp olt <4 x float> %i.cs, zeroinitializer
  %i.cu = shufflevector <4 x float> %i.cq, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.cv = fcmp ogt <4 x float> %i.cu, splat (float 1.000000e+00)
  %i.cw = select <4 x i1> %i.cv, <4 x float> splat (float 1.000000e+00), <4 x float> %i.cu
  %i.cx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cy = select <4 x i1> %i.ct, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cx
  %i.cz = fptosi <4 x float> %i.cy to <4 x i32>
  %i.da = shl <4 x i32> %i.cz, <i32 0, i32 8, i32 16, i32 24>
  %i.db = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.da)
  call void @_ZNK6ImFont10RenderCharEP10ImDrawListf6ImVec2jt(ptr noundef nonnull align 8 dereferenceable(110) %i.ae, ptr noundef %0, float noundef %i.ag, <2 x float> %.sroa.0.4.vec.insert, i32 noundef %i.db, i16 noundef zeroext %.08594)
  %i.dc = fadd float %.083, %.079104
  %i.dd = add nuw nsw i32 %.0105, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.dd, %.08496
  br i1 %exitcond.not, label %.loopexit, label %bb.p, !llvm.loop !817

.loopexit:                                        ; preds = %bb.p, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %bb.r

bb.q:                                             ; preds = %bb.h
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i
    i8 35, label %bb.pa
  ]

bb.pa:                                            ; preds = %.lr.ph.i.i103.i
  %i.cxo = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  %i.cxp = load i8, ptr %i.cxo, align 1, !tbaa !80
  %.not14.i.i.i = icmp eq i8 %i.cxp, 35
  br i1 %.not14.i.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.pa, %.lr.ph.i.i103.i
  %i.cxq = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.cxq, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i, label %.lr.ph.i.i103.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i:   ; preds = %.critedge2.i.i.i, %bb.pa, %.lr.ph.i.i103.i
  %.0.i.i725 = phi ptr [ %.015.i.i.i, %bb.pa ], [ %scevgep.i.i.i, %.critedge2.i.i.i ], [ %.015.i.i.i, %.lr.ph.i.i103.i ] ; 2 uses
  %i.cxr = getelementptr inbounds nuw i8, ptr %i.cxi, i64 6528
  %i.cxs = load float, ptr %i.cxr, align 8, !tbaa !294 ; 2 uses
  %i.cxt = icmp eq ptr %0, %.0.i.i725
  br i1 %i.cxt, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i.i
  %i.cxu = phi float [ %i.cxk, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i.i ], [ %i.cxs, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i ]
  %.sroa.0.4.vec.insert.i.i741 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cxu, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i

bb.pc:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i
  %i.cxv = getelementptr inbounds nuw i8, ptr %i.cxi, i64 6520
  %i.cxw = load ptr, ptr %i.cxv, align 8, !tbaa !293
  %i.cxx = call <2 x float> @_ZNK6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(110) %i.cxw, float noundef %i.cxs, float noundef f0x7F7FFFFF, float noundef -1.000000e+00, ptr noundef nonnull %0, ptr noundef %.0.i.i725, ptr noundef null) ; 2 uses
  %.sroa.0.0.vec.extract.i.i726 = extractelement <2 x float> %i.cxx, i64 0
  %i.cxy = fadd float %.sroa.0.0.vec.extract.i.i726, f0x3F7FFF58
  %i.cxz = fptosi float %i.cxy to i32
  %i.cya = sitofp i32 %i.cxz to float
  %.sroa.0.0.vec.insert.i.i727 = insertelement <2 x float> %i.cxx, float %i.cya, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i:          ; preds = %bb.pc, %bb.pb
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i741, %bb.pb ], [ %.sroa.0.0.vec.insert.i.i727, %bb.pc ]
  %i.cyb = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cxh, i64 0
  %i.cyc = fadd <2 x float> %i.cyb, %.sroa.0.0.i.i ; 3 uses
  store <2 x float> %i.cyc, ptr %5, align 8
  %i.cyd = load float, ptr %i.cqw, align 4, !tbaa !1034 ; 2 uses
  %i.cye = fcmp ogt float %.082142.i, %i.cyd
  br i1 %i.cye, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i
  %i.cyf = getelementptr inbounds nuw i8, ptr %.pre1141, i64 5556
  %i.cyg = load float, ptr %i.cyf, align 4, !tbaa !665
  %i.cyh = fadd float %.082142.i, %i.cyg
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i
  %.183.i = phi float [ %i.cyh, %bb.pd ], [ %.082142.i, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i ] ; 6 uses
  %i.cyi = fcmp ogt float %.1134140.i, %i.cyd
  br i1 %i.cyi, label %bb.pf, label %bb.pg

bb.pf:                                            ; preds = %bb.pe
  %i.cyj = getelementptr inbounds nuw i8, ptr %.pre1141, i64 5556
  %i.cyk = load float, ptr %i.cyj, align 4, !tbaa !665
  %i.cyl = fadd float %.1134140.i, %i.cyk
  br label %bb.pg

bb.pg:                                            ; preds = %bb.pf, %bb.pe
  %.2.i = phi float [ %i.cyl, %bb.pf ], [ %.1134140.i, %bb.pe ] ; 6 uses
  %i.cym = getelementptr inbounds nuw i8, ptr %.pre1141, i64 5504 ; 2 uses
  %i.cyn = load float, ptr %i.cym, align 8, !tbaa !1035 ; 4 uses
  %i.cyo = fcmp ogt float %i.cyn, 0.000000e+00
  %i.cyp = fcmp olt float %i.cyn, 1.000000e+00
  %or.cond.i728 = and i1 %i.cyo, %i.cyp
  br i1 %or.cond.i728, label %bb.ph, label %._crit_edge.i730

bb.ph:                                            ; preds = %bb.pg
  %i.cyq = fadd float %i.cyn, -5.000000e-01
  %i.cyr = call float @llvm.fabs.f32(float %i.cyq)
  %i.cys = fneg float %i.cyr
  %i.cyt = call float @llvm.fmuladd.f32(float %i.cys, float 2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.cyu = fcmp olt float %i.cyt, 0.000000e+00
  %i.cyv = fcmp ogt float %i.cyt, 1.000000e+00
  %i.cyw = select i1 %i.cyv, float 1.000000e+00, float %i.cyt
  %i.cyx = select i1 %i.cyu, float 0.000000e+00, float %i.cyw
  %i.cyy = fcmp oge float %.183.i, %.2.i
  %i.cyz = select i1 %i.cyy, float %.183.i, float %.2.i ; 2 uses
  %i.cza = fsub float %i.cqk, %i.cqg
  %i.czb = fsub float %i.cza, %.183.i
  %i.czc = fsub float %i.czb, %.2.i
  %i.czd = extractelement <2 x float> %i.cyc, i64 0
  %i.cze = fsub float %i.czc, %i.czd              ; 2 uses
  %i.czf = fcmp olt float %i.cyz, %i.cze
  %i.czg = select i1 %i.czf, float %i.cyz, float %i.cze
  %i.czh = fmul float %i.czg, %i.cyx              ; 4 uses
  %i.czi = fcmp oge float %.183.i, %i.czh
  %i.czj = select i1 %i.czi, float %.183.i, float %i.czh
  %i.czk = fcmp oge float %.2.i, %i.czh
  %i.czl = select i1 %i.czk, float %.2.i, float %i.czh
  br label %._crit_edge.i730

._crit_edge.i730:                                 ; preds = %bb.pg, %bb.ph
  %.284.i = phi float [ %i.czj, %bb.ph ], [ %.183.i, %bb.pg ]
  %.3.i = phi float [ %i.czl, %bb.ph ], [ %.2.i, %bb.pg ]
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39
  %i.czm = fadd float %i.cqg, %.284.i             ; 7 uses
  %i.czn = fsub float %i.cqk, %.3.i               ; 5 uses
  store float %i.czm, ptr %6, align 4, !tbaa !187
  %i.czo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.cqi, ptr %i.czo, align 4, !tbaa !188
  %i.czp = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store float %i.czn, ptr %i.czp, align 4, !tbaa !187
  %i.czq = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float %i.cqm, ptr %i.czq, align 4, !tbaa !188
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #39
  %i.czr = getelementptr inbounds nuw i8, ptr %.pre1141, i64 5556
  %i.czs = load float, ptr %i.czr, align 4, !tbaa !665
  %i.czt = fadd float %i.czn, %i.czs              ; 2 uses
  %i.czu = fcmp olt float %i.czt, %i.cqk
  %i.czv = select i1 %i.czu, float %i.czt, float %i.cqk ; 3 uses
  store float %i.czm, ptr %7, align 4, !tbaa !187
  %i.czw = getelementptr inbounds nuw i8, ptr %7, i64 4
  store float %i.cqi, ptr %i.czw, align 4, !tbaa !188
  %i.czx = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store float %i.czv, ptr %i.czx, align 4, !tbaa !187
  %i.czy = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.cqm, ptr %i.czy, align 4, !tbaa !188
  br i1 %.not88.i, label %bb.pk, label %bb.pi

bb.pi:                                            ; preds = %._crit_edge.i730
  %i.czz = fsub float %i.czn, %i.czm
  %i.daa = extractelement <2 x float> %i.cyc, i64 0 ; 2 uses
  %i.dab = fsub float %i.czz, %i.daa
  %i.dac = call float @llvm.fmuladd.f32(float %i.dab, float %i.cyn, float %i.czm)
  %i.dad = fadd float %i.daa, %i.dac              ; 3 uses
  %i.dae = fcmp olt float %i.dad, %i.czm
  %i.daf = fcmp ogt float %i.dad, %i.czn
  %i.dag = select i1 %i.daf, float %i.czn, float %i.dad
  %i.dah = select i1 %i.dae, float %i.czm, float %i.dag ; 3 uses
  %i.dai = fcmp ogt float %i.dah, %i.czm
  br i1 %i.dai, label %bb.pj, label %bb.pk

bb.pj:                                            ; preds = %bb.pi
  %.sroa.0.0.vec.insert.i732 = insertelement <2 x float> poison, float %i.dah, i64 0
  %i.daj = fadd float %i.cqi, %i.cqm
  %i.dak = fmul float %i.daj, 5.000000e-01
  %.sroa.0.4.vec.insert.i733 = insertelement <2 x float> %.sroa.0.0.vec.insert.i732, float %i.dak, i64 1
  %i.dal = load ptr, ptr %i.vj, align 8, !tbaa !292
  %i.dam = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.dan = getelementptr inbounds nuw i8, ptr %i.dam, i64 5472
  %i.dao = getelementptr inbounds nuw i8, ptr %i.dam, i64 5672
  %i.dap = load float, ptr %i.dan, align 4, !tbaa !278
  %i.daq = load <4 x float>, ptr %i.dao, align 4, !tbaa !75 ; 2 uses
  %i.dar = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.dap, i64 3
  %i.das = fmul <4 x float> %i.daq, %i.dar        ; 2 uses
  %i.dat = fcmp olt <4 x float> %i.das, zeroinitializer
  %i.dau = shufflevector <4 x float> %i.daq, <4 x float> %i.das, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.dav = fcmp ogt <4 x float> %i.dau, splat (float 1.000000e+00)
  %i.daw = select <4 x i1> %i.dav, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dau
  %i.dax = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.daw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.day = select <4 x i1> %i.dat, <4 x float> splat (float 5.000000e-01), <4 x float> %i.dax
  %i.daz = fptosi <4 x float> %i.day to <4 x i32>
  %i.dba = shl <4 x i32> %i.daz, <i32 0, i32 8, i32 16, i32 24>
  %i.dbb = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.dba)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.dal, <2 x float> %.sroa.0.4.vec.insert.i733, i32 noundef %i.dbb)
  %i.dbc = fmul float %i.cxg, 5.000000e-01
  %i.dbd = fptosi float %i.dbc to i32
  %i.dbe = sitofp i32 %i.dbd to float
  %i.dbf = fsub float %i.dah, %i.dbe              ; 2 uses
  %i.dbg = fcmp olt float %i.czv, %i.dbf
  %i.dbh = select i1 %i.dbg, float %i.czv, float %i.dbf
  store float %i.dbh, ptr %i.czx, align 4, !tbaa !401
  br label %bb.pk

bb.pk:                                            ; preds = %bb.pj, %bb.pi, %._crit_edge.i730
  br i1 %.not144.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i106.i, label %.lr.ph.preheader.i.i107.i

.lr.ph.preheader.i.i107.i:                        ; preds = %bb.pk
  %i.dbi = ptrtoaddr ptr %0 to i64
  %i.dbj = xor i64 %i.dbi, -1
  %scevgep.i.i108.i = getelementptr i8, ptr %0, i64 %i.dbj
  br label %.lr.ph.i.i109.i

.lr.ph.i.i109.i:                                  ; preds = %.critedge2.i.i112.i, %.lr.ph.preheader.i.i107.i
  %.015.i.i110.i = phi ptr [ %i.dbn, %.critedge2.i.i112.i ], [ %0, %.lr.ph.preheader.i.i107.i ] ; 5 uses
  %i.dbk = load i8, ptr %.015.i.i110.i, align 1, !tbaa !80
  switch i8 %i.dbk, label %.critedge2.i.i112.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i106.i
    i8 35, label %bb.pl
  ]

bb.pl:                                            ; preds = %.lr.ph.i.i109.i
  %i.dbl = getelementptr inbounds nuw i8, ptr %.015.i.i110.i, i64 1
  %i.dbm = load i8, ptr %i.dbl, align 1, !tbaa !80
  %.not14.i.i111.i = icmp eq i8 %i.dbm, 35
  br i1 %.not14.i.i111.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i106.i, label %.critedge2.i.i112.i

.critedge2.i.i112.i:                              ; preds = %bb.pl, %.lr.ph.i.i109.i
  %i.dbn = getelementptr inbounds nuw i8, ptr %.015.i.i110.i, i64 1 ; 2 uses
  %exitcond.not.i.i113.i = icmp eq ptr %i.dbn, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i113.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i106.i, label %.lr.ph.i.i109.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i106.i: ; preds = %.critedge2.i.i112.i, %bb.pl, %.lr.ph.i.i109.i, %bb.pk
  %.0.lcssa.i.i.i = phi ptr [ %0, %bb.pk ], [ %.015.i.i110.i, %bb.pl ], [ %scevgep.i.i108.i, %.critedge2.i.i112.i ], [ %.015.i.i110.i, %.lr.ph.i.i109.i ] ; 3 uses
  %i.dbo = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dbp = ptrtoint ptr %0 to i64
  %i.dbq = sub i64 %i.dbo, %i.dbp
  %i.dbr = and i64 %i.dbq, 4294967295
  %i.dbs = icmp eq i64 %i.dbr, 0
  br i1 %i.dbs, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, label %bb.pm

bb.pm:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i106.i
  %i.dbt = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.dbt, i64 7184
  %i.dbv = load ptr, ptr %i.dbu, align 8, !tbaa !214
  %i.dbw = getelementptr inbounds nuw i8, ptr %i.dbv, i64 616
  %i.dbx = load ptr, ptr %i.dbw, align 8, !tbaa !292
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.dbx, ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.czp, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i, ptr noundef nonnull readonly %5, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.cym, ptr noundef nonnull readonly %7)
  %i.dby = getelementptr inbounds nuw i8, ptr %i.dbt, i64 12524
  %i.dbz = load i8, ptr %i.dby, align 4, !tbaa !215, !range !216, !noundef !217
  %i.dca = trunc nuw i8 %i.dbz to i1
  br i1 %i.dca, label %bb.pn, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

bb.pn:                                            ; preds = %bb.pm
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %6, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i)
  br label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit: ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i106.i, %bb.pm, %bb.pn
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pre1140 = load ptr, ptr @GImGui, align 8, !tbaa !99
  br label %bb.po

bb.po:                                            ; preds = %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, %_ZN5ImGui13NavInitWindowEP11ImGuiWindowb.exit
  %i.dcb = phi ptr [ %.pre1140, %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit ], [ %.pre1141, %_ZN5ImGui13NavInitWindowEP11ImGuiWindowb.exit ] ; 5 uses
  %i.dcc = getelementptr inbounds nuw i8, ptr %.01058, i64 554
  store i16 0, ptr %i.dcc, align 2, !tbaa !523
  %i.dcd = getelementptr inbounds nuw i8, ptr %.01058, i64 552
  store i16 0, ptr %i.dcd, align 8, !tbaa !522
  %i.dce = getelementptr inbounds nuw i8, ptr %.01058, i64 84
  %i.dcf = load i32, ptr %i.dce, align 4, !tbaa !324
  store i32 %i.dcf, ptr %i.ks, align 8, !tbaa !387
  %i.dcg = getelementptr inbounds nuw i8, ptr %i.g, i64 7344
  %i.dch = load i32, ptr %i.dcg, align 8, !tbaa !664
  %i.dci = getelementptr inbounds nuw i8, ptr %i.g, i64 7372
  store i32 %i.dch, ptr %i.dci, align 4, !tbaa !386
  %i.dcj = load <2 x float>, ptr %25, align 8, !tbaa !75 ; 2 uses
  %i.dck = getelementptr inbounds nuw i8, ptr %i.dcb, i64 5572
  %.sroa.018.0.vec.extract.i = extractelement <2 x float> %i.dcj, i64 0
  %.val8.i744 = load float, ptr %i.dck, align 4, !tbaa !187 ; 2 uses
  %i.dcl = fsub float %.sroa.018.0.vec.extract.i, %.val8.i744
  %i.dcm = getelementptr inbounds nuw i8, ptr %i.dcb, i64 296
  %i.dcn = load float, ptr %i.dcm, align 4, !tbaa !187 ; 2 uses
  %i.dco = fcmp ult float %i.dcn, %i.dcl
  br i1 %i.dco, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.dcp = load <2 x float>, ptr %i.bek, align 8, !tbaa !75 ; 2 uses
  %.sroa.8.12.vec.extract.i = extractelement <2 x float> %i.dcp, i64 1
  %i.dcq = getelementptr i8, ptr %i.dcb, i64 5576
  %.val9.i745 = load float, ptr %i.dcq, align 4, !tbaa !188 ; 2 uses
  %i.dcr = fadd float %.sroa.8.12.vec.extract.i, %.val9.i745
  %.sroa.8.8.vec.extract.i = extractelement <2 x float> %i.dcp, i64 0
  %i.dcs = fadd float %.val8.i744, %.sroa.8.8.vec.extract.i
  %.sroa.018.4.vec.extract.i = extractelement <2 x float> %i.dcj, i64 1
  %i.dct = fsub float %.sroa.018.4.vec.extract.i, %.val9.i745
  %i.dcu = getelementptr inbounds nuw i8, ptr %i.dcb, i64 300
  %i.dcv = load float, ptr %i.dcu, align 4, !tbaa !188 ; 2 uses
  %i.dcw = fcmp oge float %i.dcv, %i.dct
  %i.dcx = fcmp olt float %i.dcn, %i.dcs
  %or.cond.i.i = select i1 %i.dcw, i1 %i.dcx, i1 false
  %i.dcy = fcmp olt float %i.dcv, %i.dcr
  %spec.select.i746 = select i1 %or.cond.i.i, i1 %i.dcy, i1 false
  %i.dcz = zext i1 %spec.select.i746 to i32
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.po, %bb.pp
  %i.dda = phi i32 [ 0, %bb.po ], [ %i.dcz, %bb.pp ]
  %i.ddb = getelementptr inbounds nuw i8, ptr %i.g, i64 7376
  store i32 %i.dda, ptr %i.ddb, align 8, !tbaa !384
  %i.ddc = getelementptr inbounds nuw i8, ptr %i.g, i64 7380
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ddc, ptr noundef nonnull align 8 dereferenceable(16) %25, i64 16, i1 false), !tbaa.struct !282
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #39
  br label %bb.pu

bb.pq:                                            ; preds = %bb.cu
  %i.ddd = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 7 uses
  %i.dde = getelementptr inbounds nuw i8, ptr %i.ddd, i64 7184
  store ptr %.01058, ptr %i.dde, align 8, !tbaa !214
  %i.ddf = getelementptr inbounds nuw i8, ptr %.01058, i64 384
  %i.ddg = load i32, ptr %i.ddf, align 8, !tbaa !635 ; 2 uses
  %.not12.i748 = icmp eq i32 %i.ddg, -1
  br i1 %.not12.i748, label %bb.ps, label %bb.pr

bb.pr:                                            ; preds = %bb.pq
  %i.ddh = getelementptr inbounds nuw i8, ptr %i.ddd, i64 8248
  %i.ddi = load ptr, ptr %i.ddh, align 8, !tbaa !598
  %i.ddj = sext i32 %i.ddg to i64
  %i.ddk = getelementptr inbounds [520 x i8], ptr %i.ddi, i64 %i.ddj
  br label %bb.ps

bb.ps:                                            ; preds = %bb.pr, %bb.pq
  %i.ddl = phi ptr [ %i.ddk, %bb.pr ], [ null, %bb.pq ]
  %i.ddm = getelementptr inbounds nuw i8, ptr %i.ddd, i64 8224
  store ptr %i.ddl, ptr %i.ddm, align 8, !tbaa !218
  %i.ddn = getelementptr inbounds nuw i8, ptr %i.ddd, i64 6532
  %i.ddo = load float, ptr %i.ddn, align 4, !tbaa !517
  %i.ddp = getelementptr inbounds nuw i8, ptr %.01058, i64 608
  %i.ddq = load float, ptr %i.ddp, align 8, !tbaa !330
  %i.ddr = fmul float %i.ddo, %i.ddq              ; 2 uses
  %i.dds = getelementptr inbounds nuw i8, ptr %.01058, i64 824
  %i.ddt = load ptr, ptr %i.dds, align 8, !tbaa !518 ; 2 uses
  %.not.i.i749 = icmp eq ptr %i.ddt, null
  br i1 %.not.i.i749, label %_ZL16SetCurrentWindowP11ImGuiWindow.exit753, label %bb.pt

bb.pt:                                            ; preds = %bb.ps
  %i.ddu = getelementptr inbounds nuw i8, ptr %i.ddt, i64 608
  %i.ddv = load float, ptr %i.ddu, align 8, !tbaa !330
  %i.ddw = fmul float %i.ddr, %i.ddv
  br label %_ZL16SetCurrentWindowP11ImGuiWindow.exit753

_ZL16SetCurrentWindowP11ImGuiWindow.exit753:      ; preds = %bb.ps, %bb.pt
  %.0.i.i751 = phi float [ %i.ddw, %bb.pt ], [ %i.ddr, %bb.ps ] ; 2 uses
  %i.ddx = getelementptr inbounds nuw i8, ptr %i.ddd, i64 6552
  store float %.0.i.i751, ptr %i.ddx, align 8, !tbaa !545
  %i.ddy = getelementptr inbounds nuw i8, ptr %i.ddd, i64 6528
  store float %.0.i.i751, ptr %i.ddy, align 8, !tbaa !294
  %.pre1150 = and i32 %.1, 16777216
  br label %bb.pu

bb.pu:                                            ; preds = %_ZL16SetCurrentWindowP11ImGuiWindow.exit753, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %.pre-phi1151 = phi i32 [ %.pre1150, %_ZL16SetCurrentWindowP11ImGuiWindow.exit753 ], [ %i.ub, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ]
  %i.ddz = phi ptr [ %i.ddd, %_ZL16SetCurrentWindowP11ImGuiWindow.exit753 ], [ %i.dcb, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ] ; 7 uses
  %.not381 = icmp eq i32 %.pre-phi1151, 0         ; 2 uses
  br i1 %.not381, label %_Z9ImHashStrPKcmj.exit.i756, label %bb.pv

bb.pv:                                            ; preds = %bb.pu
  %i.dea = getelementptr inbounds nuw i8, ptr %i.ji, i64 300
  %i.deb = load i32, ptr %i.dea, align 4, !tbaa !666
  br label %_ZN11ImGuiWindow5GetIDEPKcS1_.exit

_Z9ImHashStrPKcmj.exit.i756:                      ; preds = %bb.pu
  %i.dec = getelementptr inbounds nuw i8, ptr %.01058, i64 208
  %i.ded = load ptr, ptr %i.dec, align 8, !tbaa !318
  %i.dee = load i32, ptr %i.jj, align 8, !tbaa !316
  %i.def = sext i32 %i.dee to i64
  %i.deg = getelementptr [4 x i8], ptr %i.ded, i64 %i.def
  %i.deh = getelementptr i8, ptr %i.deg, i64 -4
  %i.dei = load i32, ptr %i.deh, align 4, !tbaa !94 ; 2 uses
  %i.dej = xor i32 %i.dei, -1
  %i.dek = lshr i32 %i.dej, 8
  %i.del = and i32 %i.dei, 255
  %i.dem = xor i32 %i.del, 220
  %i.den = zext nneg i32 %i.dem to i64
  %i.deo = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.den
  %i.dep = load i32, ptr %i.deo, align 4, !tbaa !94
  %i.deq = xor i32 %i.dek, %i.dep                 ; 2 uses
  %i.der = lshr i32 %i.deq, 8
  %i.des = and i32 %i.deq, 255
  %i.det = xor i32 %i.des, 70
  %i.deu = zext nneg i32 %i.det to i64
  %i.dev = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.deu
  %i.dew = load i32, ptr %i.dev, align 4, !tbaa !94
  %i.dex = xor i32 %i.der, %i.dew                 ; 2 uses
  %i.dey = lshr i32 %i.dex, 8
  %i.dez = and i32 %i.dex, 255
  %i.dfa = xor i32 %i.dez, 79
  %i.dfb = zext nneg i32 %i.dfa to i64
  %i.dfc = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.dfb
  %i.dfd = load i32, ptr %i.dfc, align 4, !tbaa !94
  %i.dfe = xor i32 %i.dey, %i.dfd                 ; 2 uses
  %i.dff = lshr i32 %i.dfe, 8
  %i.dfg = and i32 %i.dfe, 255
  %i.dfh = xor i32 %i.dfg, 67
  %i.dfi = zext nneg i32 %i.dfh to i64
  %i.dfj = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.dfi
  %i.dfk = load i32, ptr %i.dfj, align 4, !tbaa !94
  %i.dfl = xor i32 %i.dff, %i.dfk                 ; 2 uses
  %i.dfm = lshr i32 %i.dfl, 8
  %i.dfn = and i32 %i.dfl, 255
  %i.dfo = xor i32 %i.dfn, 85
  %i.dfp = zext nneg i32 %i.dfo to i64
  %i.dfq = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.dfp
  %i.dfr = load i32, ptr %i.dfq, align 4, !tbaa !94
  %i.dfs = xor i32 %i.dfm, %i.dfr                 ; 2 uses
  %i.dft = lshr i32 %i.dfs, 8
  %i.dfu = and i32 %i.dfs, 255
  %i.dfv = xor i32 %i.dfu, 83
  %i.dfw = zext nneg i32 %i.dfv to i64
  %i.dfx = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.dfw
  %i.dfy = load i32, ptr %i.dfx, align 4, !tbaa !94
  %i.dfz = xor i32 %i.dft, %i.dfy                 ; 2 uses
  %i.dga = lshr i32 %i.dfz, 8
  %i.dgb = and i32 %i.dfz, 255
  %i.dgc = xor i32 %i.dgb, 83
  %i.dgd = zext nneg i32 %i.dgc to i64
  %i.dge = getelementptr inbounds nuw [4 x i8], ptr @_ZL17GCrc32LookupTable, i64 %i.dgd
  %i.dgf = load i32, ptr %i.dge, align 4, !tbaa !94
end_hunk_2
begin_hunk_3_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a
  %i.cj = sitofp i32 %i.ci to float               ; 3 uses
  %i.ck = fmul float %i.ao, %i.bx
  %i.cl = fadd float %i.an, %i.ck
  %i.cm = fptosi float %i.cl to i32
  %i.cn = sitofp i32 %i.cm to float               ; 3 uses
  %.sroa.02.0.copyload.i = load <2 x float>, ptr %i.d, align 4, !tbaa !75 ; 5 uses
  %i.co = shufflevector <2 x float> %i.bt, <2 x float> %i.by, <2 x i32> <i32 0, i32 3>
  %i.cp = fmul <2 x float> %i.k, %i.co
  %i.cq = fadd <2 x float> %i.n, %i.cp
  %i.cr = fptosi <2 x float> %i.cq to <2 x i32>
  %i.cs = sitofp <2 x i32> %i.cr to <2 x float>   ; 3 uses
  %i.ct = extractelement <2 x float> %i.cs, i64 1 ; 3 uses
  %i.cu = fadd float %i.ct, 5.000000e+00          ; 3 uses
  %i.cv = load <2 x float>, ptr %2, align 4, !tbaa !75 ; 4 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 1 ; 6 uses
  %i.cx = fcmp ogt float %i.cw, %i.cb
  br i1 %i.cx, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.cy = fcmp olt float %.sroa.0.4.vec.extract.i.i, %i.cb
  %.sroa.0.4.vec.extract..i.i = select i1 %i.cy, float %.sroa.0.4.vec.extract.i.i, float %i.cb
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i

_ZL7ImClampRK6ImVec2S1_S_.exit.i:                 ; preds = %bb.d, %_ZNK11ImGuiWindow12TitleBarRectEv.exit
  %i.cz = phi float [ %i.cw, %_ZNK11ImGuiWindow12TitleBarRectEv.exit ], [ %.sroa.0.4.vec.extract..i.i, %bb.d ]
  %i.da = extractelement <2 x float> %i.cv, i64 0 ; 6 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 0 ; 8 uses
  %i.db = extractelement <2 x float> %i.cg, i64 0 ; 2 uses
  %i.dc = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.db
  %.sroa.0.0.vec.extract..i.i = select i1 %i.dc, float %.sroa.0.0.vec.extract.i.i, float %i.db
  %i.dd = fcmp ogt <2 x float> %i.cv, %i.cg       ; 2 uses
  %i.de = extractelement <2 x i1> %i.dd, i64 0
  %i.df = select i1 %i.de, float %i.da, float %.sroa.0.0.vec.extract..i.i
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.df, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.cz, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %3, align 8, !tbaa !75
  %i.dg = extractelement <2 x i1> %i.dd, i64 1
  br i1 %i.dg, label %_ZN6ImRect12ClipWithFullERKS_.exit, label %bb.e

bb.e:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i
  %.sroa.0.4.vec.extract.i15.i = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.dh = extractelement <2 x float> %i.cg, i64 1 ; 2 uses
  %i.di = fcmp olt float %.sroa.0.4.vec.extract.i15.i, %i.dh
  %.sroa.0.4.vec.extract..i16.i = select i1 %i.di, float %.sroa.0.4.vec.extract.i15.i, float %i.dh
  br label %_ZN6ImRect12ClipWithFullERKS_.exit

_ZN6ImRect12ClipWithFullERKS_.exit:               ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i, %bb.e
  %i.dj = phi float [ %i.cw, %_ZL7ImClampRK6ImVec2S1_S_.exit.i ], [ %.sroa.0.4.vec.extract..i16.i, %bb.e ]
  %i.dk = fcmp ogt <2 x float> %i.cv, %i.cs       ; 2 uses
  %i.dl = extractelement <2 x float> %i.cs, i64 0 ; 2 uses
  %i.dm = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.dl
  %.sroa.0.0.vec.extract..i18.i = select i1 %i.dm, float %.sroa.0.0.vec.extract.i.i, float %i.dl
  %i.dn = extractelement <2 x i1> %i.dk, i64 0
  %i.do = select i1 %i.dn, float %i.da, float %.sroa.0.0.vec.extract..i18.i
  %.sroa.0.0.vec.insert.i19.i = insertelement <2 x float> poison, float %i.do, i64 0
  %.sroa.0.4.vec.insert.i20.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i, float %i.dj, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i20.i, ptr %i.ai, align 8, !tbaa !75
  %i.dp = extractelement <2 x i1> %i.dk, i64 1
  br i1 %i.dp, label %_ZL7ImClampRK6ImVec2S1_S_.exit.i148, label %bb.f

bb.f:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit
  %.sroa.0.4.vec.extract.i.i146 = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.dq = fcmp olt float %.sroa.0.4.vec.extract.i.i146, %i.ct
  %.sroa.0.4.vec.extract..i.i147 = select i1 %i.dq, float %.sroa.0.4.vec.extract.i.i146, float %i.ct
  br label %_ZL7ImClampRK6ImVec2S1_S_.exit.i148

_ZL7ImClampRK6ImVec2S1_S_.exit.i148:              ; preds = %bb.f, %_ZN6ImRect12ClipWithFullERKS_.exit
  %i.dr = phi float [ %i.cw, %_ZN6ImRect12ClipWithFullERKS_.exit ], [ %.sroa.0.4.vec.extract..i.i147, %bb.f ]
  %i.ds = fcmp ogt float %i.da, %i.cj
  %i.dt = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.cj
  %.sroa.0.0.vec.extract..i.i150 = select i1 %i.dt, float %.sroa.0.0.vec.extract.i.i, float %i.cj
  %i.du = select i1 %i.ds, float %i.da, float %.sroa.0.0.vec.extract..i.i150
  %.sroa.0.0.vec.insert.i.i151 = insertelement <2 x float> poison, float %i.du, i64 0
  %.sroa.0.4.vec.insert.i.i152 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i151, float %i.dr, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i.i152, ptr %4, align 8, !tbaa !75
  %i.dv = fcmp olt float %i.cu, %i.cw
  br i1 %i.dv, label %_ZN6ImRect12ClipWithFullERKS_.exit164, label %bb.g

bb.g:                                             ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i148
  %.sroa.0.4.vec.extract.i15.i158 = extractelement <2 x float> %.sroa.02.0.copyload.i, i64 1 ; 2 uses
  %i.dw = fcmp ogt float %i.cu, %.sroa.0.4.vec.extract.i15.i158
  %.sroa.0.4.vec.extract..i16.i159 = select i1 %i.dw, float %.sroa.0.4.vec.extract.i15.i158, float %i.cu
  br label %_ZN6ImRect12ClipWithFullERKS_.exit164

_ZN6ImRect12ClipWithFullERKS_.exit164:            ; preds = %_ZL7ImClampRK6ImVec2S1_S_.exit.i148, %bb.g
  %i.dx = phi float [ %i.cw, %_ZL7ImClampRK6ImVec2S1_S_.exit.i148 ], [ %.sroa.0.4.vec.extract..i16.i159, %bb.g ]
  %i.dy = fcmp ogt float %i.da, %i.cn
  %i.dz = fcmp olt float %.sroa.0.0.vec.extract.i.i, %i.cn
  %.sroa.0.0.vec.extract..i18.i161 = select i1 %i.dz, float %.sroa.0.0.vec.extract.i.i, float %i.cn
  %i.ea = select i1 %i.dy, float %i.da, float %.sroa.0.0.vec.extract..i18.i161
  %.sroa.0.0.vec.insert.i19.i162 = insertelement <2 x float> poison, float %i.ea, i64 0
  %.sroa.0.4.vec.insert.i20.i163 = insertelement <2 x float> %.sroa.0.0.vec.insert.i19.i162, float %i.dx, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i20.i163, ptr %i.aj, align 8, !tbaa !75
  %i.eb = load ptr, ptr %i.ak, align 8, !tbaa !389 ; 2 uses
  %.not41 = icmp eq ptr %i.eb, null
  br i1 %.not41, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZN6ImRect12ClipWithFullERKS_.exit164
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bi, i64 848
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !630
  %i.ee = getelementptr inbounds nuw i8, ptr %i.eb, i64 848
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !630
  %i.eg = icmp eq ptr %i.ed, %i.ef
  %i.eh = select i1 %i.eg, i64 11, i64 10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN6ImRect12ClipWithFullERKS_.exit164
  %i.ei = phi i64 [ 10, %_ZN6ImRect12ClipWithFullERKS_.exit164 ], [ %i.eh, %bb.h ]
  %i.ej = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.ek = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 5472
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 5704
  %i.en = load float, ptr %i.el, align 4, !tbaa !278
  %i.eo = load <4 x float>, ptr %i.em, align 4, !tbaa !75 ; 2 uses
  %i.ep = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.en, i64 3
  %i.eq = fmul <4 x float> %i.eo, %i.ep           ; 2 uses
  %i.er = fcmp olt <4 x float> %i.eq, zeroinitializer
  %i.es = shufflevector <4 x float> %i.eo, <4 x float> %i.eq, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.et = fcmp ogt <4 x float> %i.es, splat (float 1.000000e+00)
  %i.eu = select <4 x i1> %i.et, <4 x float> splat (float 1.000000e+00), <4 x float> %i.es
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ew = select <4 x i1> %i.er, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ev
  %i.ex = fptosi <4 x float> %i.ew to <4 x i32>
  %i.ey = shl <4 x i32> %i.ex, <i32 0, i32 8, i32 16, i32 24>
  %i.ez = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ey)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.ej, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, i32 noundef %i.ez, float noundef 0.000000e+00, i32 noundef 0)
  %i.fa = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.fb = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 5472
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 5672
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.fd, i64 %i.ei
  %i.ff = load float, ptr %i.fc, align 4, !tbaa !278
  %i.fg = load <4 x float>, ptr %i.fe, align 4, !tbaa !75 ; 2 uses
  %i.fh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.ff, i64 3
  %i.fi = fmul <4 x float> %i.fg, %i.fh           ; 2 uses
  %i.fj = fcmp olt <4 x float> %i.fi, zeroinitializer
  %i.fk = shufflevector <4 x float> %i.fg, <4 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fl = fcmp ogt <4 x float> %i.fk, splat (float 1.000000e+00)
  %i.fm = select <4 x i1> %i.fl, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fk
  %i.fn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fo = select <4 x i1> %i.fj, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fn
  %i.fp = fptosi <4 x float> %i.fo to <4 x i32>
  %i.fq = shl <4 x i32> %i.fp, <i32 0, i32 8, i32 16, i32 24>
  %i.fr = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fq)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(196) %i.fa, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.aj, i32 noundef %i.fr, float noundef 0.000000e+00, i32 noundef 0)
  %i.fs = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.ft = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 5472
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 5752
  %i.fw = load float, ptr %i.fu, align 4, !tbaa !278
  %i.fx = load <4 x float>, ptr %i.fv, align 4, !tbaa !75 ; 2 uses
  %i.fy = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fw, i64 3
  %i.fz = fmul <4 x float> %i.fx, %i.fy           ; 2 uses
  %i.ga = fcmp olt <4 x float> %i.fz, zeroinitializer
  %i.gb = shufflevector <4 x float> %i.fx, <4 x float> %i.fz, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.gc = fcmp ogt <4 x float> %i.gb, splat (float 1.000000e+00)
  %i.gd = select <4 x i1> %i.gc, <4 x float> splat (float 1.000000e+00), <4 x float> %i.gb
  %i.ge = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gd, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gf = select <4 x i1> %i.ga, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ge
  %i.gg = fptosi <4 x float> %i.gf to <4 x i32>
  %i.gh = shl <4 x i32> %i.gg, <i32 0, i32 8, i32 16, i32 24>
  %i.gi = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.gh)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(196) %i.fs, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.ai, i32 noundef %i.gi, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00)
  %i.gj = load ptr, ptr %i.o, align 8, !tbaa !292
  %i.gk = load ptr, ptr %i.al, align 8, !tbaa !293
  %i.gl = load float, ptr %i.am, align 8, !tbaa !294
  %i.gm = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 5472
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 5672
  %i.gp = load float, ptr %i.gn, align 4, !tbaa !278
  %i.gq = load <4 x float>, ptr %i.go, align 4, !tbaa !75 ; 2 uses
  %i.gr = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gp, i64 3
  %i.gs = fmul <4 x float> %i.gq, %i.gr           ; 5 uses
  %i.gt = extractelement <4 x float> %i.gs, i64 0
  %i.gu = fcmp olt float %i.gt, 0.000000e+00
  %i.gv = fcmp ogt <4 x float> %i.gs, splat (float 1.000000e+00)
  %i.gw = shufflevector <4 x float> %i.gq, <4 x float> %i.gs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gw, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gy = select <4 x i1> %i.gv, <4 x float> splat (float 2.555000e+02), <4 x float> %i.gx ; 3 uses
  %i.gz = extractelement <4 x float> %i.gy, i64 0
  %i.ha = select i1 %i.gu, float 5.000000e-01, float %i.gz
  %i.hb = fptosi float %i.ha to i32
  %i.hc = extractelement <4 x float> %i.gs, i64 1
  %i.hd = fcmp olt float %i.hc, 0.000000e+00
  %i.he = extractelement <4 x float> %i.gy, i64 1
  %i.hf = select i1 %i.hd, float 5.000000e-01, float %i.he
  %i.hg = fptosi float %i.hf to i32
  %i.hh = shl i32 %i.hg, 8
  %i.hi = or i32 %i.hh, %i.hb
  %i.hj = shufflevector <4 x float> %i.gs, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hk = fcmp olt <2 x float> %i.hj, zeroinitializer
  %i.hl = shufflevector <4 x float> %i.gy, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.hm = select <2 x i1> %i.hk, <2 x float> splat (float 5.000000e-01), <2 x float> %i.hl
  %i.hn = fptosi <2 x float> %i.hm to <2 x i32>
  %i.ho = shl <2 x i32> %i.hn, <i32 16, i32 24>   ; 2 uses
  %i.hp = extractelement <2 x i32> %i.ho, i64 0
  %i.hq = or i32 %i.hi, %i.hp
  %i.hr = extractelement <2 x i32> %i.ho, i64 1
  %i.hs = or i32 %i.hq, %i.hr
  %i.ht = load ptr, ptr %i.bi, align 8, !tbaa !313 ; 6 uses
  %.not243 = icmp eq ptr %i.ht, inttoptr (i64 -1 to ptr)
  br i1 %.not243, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = xor i64 %i.hu, -1
  %scevgep.i = getelementptr i8, ptr %i.ht, i64 %i.hv
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.hz, %.critedge2.i ], [ %i.ht, %.lr.ph.preheader.i ] ; 5 uses
  %i.hw = load i8, ptr %.015.i, align 1, !tbaa !80
  switch i8 %i.hw, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.hy = load i8, ptr %i.hx, align 1, !tbaa !80
  %.not14.i = icmp eq i8 %i.hy, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.j, %.lr.ph.i
  %i.hz = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.hz, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.j, %.critedge2.i, %bb.i
  %.0.lcssa.i = phi ptr [ %i.ht, %bb.i ], [ %.015.i, %bb.j ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEPK6ImFontfRK6ImVec2jPKcS7_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(196) %i.gj, ptr noundef %i.gk, float noundef %i.gl, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.hs, ptr noundef %i.ht, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  %.pre = load i32, ptr %i.af, align 8, !tbaa !504
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.ia = phi i32 [ %i.bf, %bb.b ], [ %i.bf, %bb.c ], [ %.pre, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ib = zext i32 %i.ia to i64
  %.not = icmp eq i64 %indvars.iv.next, %i.ib
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !1156
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5ImGui17ShowMetricsWindowEPb(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %1 = alloca %struct.ImRect, align 8             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = alloca [8 x ptr], align 16               ; 5 uses
  %i.c = alloca [13 x ptr], align 16              ; 6 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.d = alloca [128 x i8], align 16              ; 6 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %12 = alloca %struct.ImVec2, align 4            ; 5 uses
  %13 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.e = alloca [32 x i8], align 16               ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImRect, align 8            ; 5 uses
  %16 = alloca %struct.ImRect, align 8            ; 5 uses
  %i.f = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 91 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12604 ; 3 uses
  %i.h = load i8, ptr %i.g, align 4, !tbaa !1176, !range !216, !noundef !217
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui19ShowStackToolWindowEPb(ptr noundef nonnull %i.g)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui5BeginEPKcPbi(ptr noundef nonnull @.str.99, ptr noundef %0, i32 noundef 0)
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr @GImGui, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7184
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !214  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 144
  store i8 1, ptr %i.n, align 8, !tbaa !393
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 154
  %i.p = load i16, ptr %i.o, align 2, !tbaa !597
  %i.q = icmp sgt i16 %i.p, 1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN5ImGui3EndEv()
  br label %bb.fk

bb.f:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.58)
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 924
  %i.s = load float, ptr %i.r, align 4, !tbaa !1177 ; 2 uses
  %i.t = fdiv float 1.000000e+03, %i.s
  %i.u = fpext float %i.t to double
  %i.v = fpext float %i.s to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.101, double noundef %i.u, double noundef %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 928
  %i.x = load i32, ptr %i.w, align 8, !tbaa !1178
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 932
  %i.z = load i32, ptr %i.y, align 4, !tbaa !1179 ; 2 uses
  %i.aa = sdiv i32 %i.z, 3
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.102, i32 noundef %i.x, i32 noundef %i.z, i32 noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 936
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !1180
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 944
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1181
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.103, i32 noundef %i.ac, i32 noundef %i.ae)
  tail call void @_ZN5ImGui9SeparatorEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) @__const._ZN5ImGui17ShowMetricsWindowEPb.wrt_rects_names, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #39
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) %i.c, ptr noundef nonnull align 16 dereferenceable(104) @__const._ZN5ImGui17ShowMetricsWindowEPb.trt_rects_names, i64 104, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 12612 ; 4 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !421
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 4, ptr %i.af, align 4, !tbaa !421
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 12616 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !422
  %i.ak = icmp slt i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 2, ptr %i.ai, align 8, !tbaa !422
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = tail call noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef nonnull @.str.121)
  br i1 %i.al, label %bb.k, label %bb.bw

bb.k:                                             ; preds = %bb.j
  %i.am = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.122, ptr noundef nonnull %i.g) ; 0 uses
  %i.an = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 7184
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !214 ; 10 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 144
  store i8 1, ptr %i.aq, align 8, !tbaa !393
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 147
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !652, !range !216, !noundef !217
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %_ZN5ImGui8SameLineEff.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 5548
  %i.av = load float, ptr %i.au, align 4, !tbaa !704
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 216
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 224
  %i.ay = load float, ptr %i.ax, align 8, !tbaa !702
  %i.az = fadd float %i.av, %i.ay
  store float %i.az, ptr %i.aw, align 8, !tbaa !700
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 228
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !268
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 220
  store float %i.bb, ptr %i.bc, align 4, !tbaa !260
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.bf = load i64, ptr %i.bd, align 8, !tbaa !75
  store i64 %i.bf, ptr %i.be, align 8, !tbaa !75
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 276
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !703
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ap, i64 272
  store float %i.bh, ptr %i.bi, align 8, !tbaa !698
  br label %_ZN5ImGui8SameLineEff.exit

_ZN5ImGui8SameLineEff.exit:                       ; preds = %bb.k, %bb.l
  tail call fastcc void @_ZL17MetricsHelpMarkerPKc(ptr noundef nonnull @.str.123)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 12606
  %i.bk = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.124, ptr noundef nonnull %i.bj) ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 12605 ; 3 uses
  %i.bm = tail call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.125, ptr noundef nonnull %i.bl) ; 0 uses
  %i.bn = load ptr, ptr @GImGui, align 8, !tbaa !99 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 7184
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !214 ; 10 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 144
  store i8 1, ptr %i.bq, align 8, !tbaa !393
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 147
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !652, !range !216, !noundef !217
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %_ZN5ImGui8SameLineEff.exit330, label %bb.m

bb.m:                                             ; preds = %_ZN5ImGui8SameLineEff.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 5548
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !704
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 216
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 224
  %i.by = load float, ptr %i.bx, align 8, !tbaa !702
  %i.bz = fadd float %i.bv, %i.by
  store float %i.bz, ptr %i.bw, align 8, !tbaa !700
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bp, i64 228
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !268
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bp, i64 220
  store float %i.cb, ptr %i.cc, align 4, !tbaa !260
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 264
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bp, i64 256
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !75
  store i64 %i.cf, ptr %i.ce, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bp, i64 276
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !703
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bp, i64 272
  store float %i.ch, ptr %i.ci, align 8, !tbaa !698
  br label %_ZN5ImGui8SameLineEff.exit330

_ZN5ImGui8SameLineEff.exit330:                    ; preds = %_ZN5ImGui8SameLineEff.exit, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bn, i64 6528
  %i.ck = load float, ptr %i.cj, align 8, !tbaa !294
  %i.cl = fmul float %i.ck, 1.200000e+01
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bn, i64 7348 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !211
  %i.co = or i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 4, !tbaa !211
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bn, i64 7352
  store float %i.cl, ptr %i.cp, align 8, !tbaa !212
  %i.cq = call noundef zeroext i1 @_ZN5ImGui5ComboEPKcPiPKS1_ii(ptr noundef nonnull @.str.126, ptr noundef nonnull %i.af, ptr noundef nonnull %i.b, i32 noundef 8, i32 noundef 8)
  %i.cr = load i8, ptr %i.bl, align 1, !tbaa !1182, !range !216, !noundef !217
  %i.cs = zext i1 %i.cq to i8
  %i.ct = or i8 %i.cr, %i.cs                      ; 2 uses
end_hunk_3
