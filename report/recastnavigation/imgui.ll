Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/imgui?download=true
inline.NumInlined: 3240
inline.NumDeleted: 627
loop-unroll.NumCompletelyUnrolled: 47
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 90
begin_hunk_0_@_ZN5ImGui11PopStyleVarEi:bb.a
  %i.o = sext i32 %i.n to i64                     ; 3 uses
  %i.p = getelementptr inbounds [4 x i8], ptr @_ZL14GStyleVarsInfo, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4
  %i.r = lshr i32 %i.q, 16
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.s ; 3 uses
  %i.u = lshr i64 10468800411, %i.o
  %i.v = trunc i64 %i.u to i1
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %i.l, i64 -8
  %i.x = load float, ptr %i.w, align 4, !tbaa !93
  store float %i.x, ptr %i.t, align 4, !tbaa !86
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %i.y = lshr i64 58250676324, %i.o
  %i.z = trunc i64 %i.y to i1
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.l, i64 -8
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !93
  store float %i.ab, ptr %i.t, align 4, !tbaa !86
  %i.ac = getelementptr i8, ptr %i.l, i64 -4
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !93
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !86
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.af = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.af, ptr %i.b, align 8, !tbaa !420
  %i.ag = add nsw i32 %.123, -1
  %i.ah = icmp sgt i32 %.123, 1
  br i1 %i.ah, label %bb.d, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.h, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZN5ImGui17GetStyleColorNameEi(i32 noundef %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp ult i32 %0, 58
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN5ImGui17GetStyleColorNameEi, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.72, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr nofree noundef readonly captures(address, ret: address, provenance) %0, ptr nofree noundef readnone captures(address) %1) local_unnamed_addr #16 {
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
  %i.d = load i8, ptr %.015, align 1, !tbaa !93
  switch i8 %i.d, label %.critedge2 [
    i8 0, label %.critedge
    i8 35, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.015, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !93
  %.not14 = icmp eq i8 %i.f, 35
  br i1 %.not14, label %.critedge, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %.015, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.g, %spec.store.select
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !18

.critedge:                                        ; preds = %bb.b, %.critedge2, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %.015, %.lr.ph ], [ %scevgep, %.critedge2 ], [ %.015, %bb.b ]
  ret ptr %.0.lcssa
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui10RenderTextE6ImVec2PKcS2_b(<2 x float> %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 3 uses
  store <2 x float> %0, ptr %4, align 8
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309
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
  %i.g = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.g, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.i, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.j, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

bb.d:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.e, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #52
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.d, %bb.e
  %.0 = phi ptr [ %i.l, %bb.e ], [ %2, %bb.d ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ], [ %.015.i, %bb.c ] ; 3 uses
  %.not20 = icmp eq ptr %1, %.0
  br i1 %.not20, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !424
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4384
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !425
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.r = load float, ptr %i.q, align 8, !tbaa !426
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 3148
  %i.u = load float, ptr %i.t, align 4, !tbaa !399
  %i.v = load <4 x float>, ptr %i.s, align 4, !tbaa !86 ; 2 uses
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
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.n, ptr noundef %i.p, float noundef %i.r, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.ag, ptr noundef %1, ptr noundef %.0, float noundef 0.000000e+00, ptr noundef null) #35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !386, !range !120, !noundef !254
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.g, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %.0)
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread: ; preds = %bb.b, %bb.f, %bb.g, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  ret void
}

declare void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef, float noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not65 = icmp eq ptr %0, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.o, %bb.a
  %.tr70 = phi ptr [ %1, %bb.a ], [ %i.h, %bb.o ] ; 5 uses
  %.tr71 = phi ptr [ %2, %bb.a ], [ %i.az, %bb.o ] ; 2 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 5184
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !309
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 10048 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !427  ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 10056
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !428  ; 4 uses
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
  %i.k = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.k, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.m, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.n, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.b, %tailrecurse
  %.056 = phi ptr [ %.tr71, %tailrecurse ], [ inttoptr (i64 -1 to ptr), %bb.b ], [ %.015.i, %bb.c ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ] ; 3 uses
  br i1 %.not65, label %.thread68, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.o = load float, ptr %i.a, align 4, !tbaa !270 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 10064 ; 2 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !429
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 3216
  %i.s = load float, ptr %i.r, align 8, !tbaa !430
  %i.t = fadd float %i.q, %i.s
  %i.u = fadd float %i.t, 1.000000e+00
  %i.v = fcmp ogt float %i.o, %i.u
  store float %i.o, ptr %i.p, align 8, !tbaa !429
  br i1 %i.v, label %bb.e, label %.thread68

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.184)
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 10068
  store i8 1, ptr %i.w, align 4, !tbaa !431
  br label %.thread68

.thread68:                                        ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, %bb.e, %bb.d
  %.not66 = icmp eq ptr %i.f, null
  br i1 %.not66, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread68
  %i.x = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #52
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.x
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.y)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread68
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 10072 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !432 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 416
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !433 ; 4 uses
  %i.ad = icmp sgt i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 %i.ac, ptr %i.z, align 8, !tbaa !432
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = phi i32 [ %i.ac, %bb.h ], [ %i.aa, %bb.g ]
  %i.af = sub nsw i32 %i.ac, %i.ae
  %i.ag = ptrtoint ptr %.056 to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 10068 ; 3 uses
  %i.ai = shl nsw i32 %i.af, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.055 = phi ptr [ %.tr70, %bb.i ], [ %i.ax, %bb.m ] ; 4 uses
  %i.aj = ptrtoint ptr %.055 to i64               ; 2 uses
  %i.ak = sub i64 %i.ag, %i.aj
  %i.al = tail call noundef ptr @memchr(ptr noundef %.055, i32 noundef 10, i64 noundef %i.ak) #52 ; 2 uses
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
  %i.as = load i8, ptr %i.ah, align 4, !tbaa !431, !range !120, !noundef !254
  %i.at = trunc nuw i8 %i.as to i1
  %i.au = select i1 %i.at, i32 %i.ai, i32 1
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.185, i32 noundef %i.au, ptr noundef nonnull @.str.4, i32 noundef %i.ar, ptr noundef %.055)
  store i8 0, ptr %i.ah, align 4, !tbaa !431
  %i.av = load i8, ptr %i.am, align 1, !tbaa !93
  %i.aw = icmp eq i8 %i.av, 10
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @_ZN5ImGui7LogTextEPKcz(ptr noundef nonnull @.str.184)
  store i8 1, ptr %i.ah, align 4, !tbaa !431
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 1
  br i1 %i.an, label %bb.n, label %bb.j

bb.n:                                             ; preds = %bb.m
  %.not67 = icmp eq ptr %i.h, null
  br i1 %.not67, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.h) #52
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.ay
  br label %tailrecurse

bb.p:                                             ; preds = %bb.n
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui17RenderTextWrappedE6ImVec2PKcS2_f(<2 x float> %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 3 uses
  store <2 x float> %0, ptr %4, align 8
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #52
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %2, %bb.a ], [ %i.e, %bb.b ]    ; 3 uses
  %.not17 = icmp eq ptr %1, %.0
  br i1 %.not17, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !424
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4384
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !425
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.k = load float, ptr %i.j, align 8, !tbaa !426
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 3412
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 3148
  %i.n = load float, ptr %i.m, align 4, !tbaa !399
  %i.o = load <4 x float>, ptr %i.l, align 4, !tbaa !86 ; 2 uses
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
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.g, ptr noundef %i.i, float noundef %i.k, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.z, ptr noundef %1, ptr noundef nonnull %.0, float noundef %3, ptr noundef null) #35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 10008
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !386, !range !120, !noundef !254
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %4, ptr noundef %1, ptr noundef nonnull %.0)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #11 {
bb.a:
  %8 = alloca %struct.ImVec2, align 8             ; 7 uses
  %9 = alloca %struct.ImVec4, align 8             ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.a = load i64, ptr %1, align 4, !tbaa !86     ; 3 uses
  store i64 %i.a, ptr %8, align 8, !tbaa !86
  %.not = icmp eq ptr %5, null
  %i.b = trunc i64 %i.a to i32
  %i.c = bitcast i32 %i.b to float                ; 6 uses
  %i.d = lshr i64 %i.a, 32
  %i.e = trunc nuw i64 %i.d to i32
  %i.f = bitcast i32 %i.e to float                ; 6 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load <2 x float>, ptr %5, align 4, !tbaa !86
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4400
  %i.i = load float, ptr %i.h, align 8, !tbaa !426 ; 2 uses
  %i.j = icmp eq ptr %3, %4
  br i1 %i.j, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.i, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4384
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !425
  %i.m = tail call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.l, float noundef %i.i, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef %3, ptr noundef %4, ptr noundef null) #35 ; 2 uses
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
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 3412
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 3148
  %i.by = load float, ptr %i.bx, align 4, !tbaa !399
  %i.bz = load <4 x float>, ptr %i.bw, align 4, !tbaa !86 ; 2 uses
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
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef null, float noundef 0.000000e+00, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef %i.ck, ptr noundef %3, ptr noundef %4, float noundef 0.000000e+00, ptr noundef null) #35
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  br i1 %2, label %bb.b, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %1, null
  %spec.store.select.i = select i1 %.not.i, ptr inttoptr (i64 -1 to ptr), ptr %1 ; 3 uses
  %i.b = icmp ult ptr %0, %spec.store.select.i
  br i1 %i.b, label %.lr.ph.preheader.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread: ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.d = load float, ptr %i.c, align 8, !tbaa !426
  br label %bb.d

.lr.ph.preheader.i:                               ; preds = %bb.b
  %spec.store.select20.i = ptrtoaddr ptr %spec.store.select.i to i64
  %i.e = ptrtoaddr ptr %0 to i64
  %i.f = sub i64 %spec.store.select20.i, %i.e
  %scevgep.i = getelementptr i8, ptr %0, i64 %i.f
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.j, %.critedge2.i ], [ %0, %.lr.ph.preheader.i ] ; 5 uses
  %i.g = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.g, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.i, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.j, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.a
  %.0 = phi ptr [ %1, %bb.a ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ], [ %.015.i, %bb.c ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.l = load float, ptr %i.k, align 8, !tbaa !426 ; 2 uses
  %i.m = icmp eq ptr %0, %.0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.n = phi float [ %i.d, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread ], [ %i.l, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit ]
  %.sroa.0.4.vec.insert = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.n, i64 1
  br label %bb.f

bb.e:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4384
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !425
  %i.q = tail call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.p, float noundef %i.l, float noundef f0x7F7FFFFF, float noundef %3, ptr noundef %0, ptr noundef %.0, ptr noundef null) #35 ; 2 uses
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

; Function Attrs: mustprogress nounwind uwtable
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
  %i.d = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.d, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.f, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.b, %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.g, %spec.store.select.i
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.b, %.critedge2.i, %bb.a
  %.0.lcssa.i = phi ptr [ %2, %bb.a ], [ %.015.i, %bb.b ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ] ; 3 uses
  %i.h = ptrtoint ptr %.0.lcssa.i to i64
  %i.i = ptrtoint ptr %2 to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = and i64 %i.j, 4294967295
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.m = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 5184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !309
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 712
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !424
  tail call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.q, ptr noundef nonnull align 4 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %.0.lcssa.i, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef %6)
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 10008
  %i.s = load i8, ptr %i.r, align 8, !tbaa !386, !range !120, !noundef !254
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %.0.lcssa.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui18RenderTextEllipsisEP10ImDrawListRK6ImVec2S4_fPKcS6_PS3_(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(address_is_null) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, float noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(address_is_null) %6) local_unnamed_addr #11 {
bb.a:
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec4, align 16            ; 4 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.b = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.c = icmp eq ptr %5, null
  br i1 %i.c, label %bb.b, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit

bb.b:                                             ; preds = %bb.a
  %.not61 = icmp eq ptr %4, inttoptr (i64 -1 to ptr)
  br i1 %.not61, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.d = ptrtoaddr ptr %4 to i64
  %i.e = xor i64 %i.d, -1
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.e
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.i, %.critedge2.i ], [ %4, %.lr.ph.preheader.i ] ; 5 uses
  %i.f = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.f, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.h, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c, %.lr.ph.i
  %i.i = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.critedge2.i, %bb.c, %.lr.ph.i, %bb.b, %bb.a
  %.0 = phi ptr [ %5, %bb.a ], [ inttoptr (i64 -1 to ptr), %bb.b ], [ %.015.i, %bb.c ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %.not = icmp eq ptr %6, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.j = load i64, ptr %6, align 4, !tbaa !86
  br label %bb.h

bb.e:                                             ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 4400
  %i.l = load float, ptr %i.k, align 8, !tbaa !426 ; 2 uses
  %i.m = icmp eq ptr %4, %.0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.l, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4384
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !425
  %i.p = tail call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.o, float noundef %i.l, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef %4, ptr noundef %.0, ptr noundef null) #35 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.p, i64 0
  %i.q = fadd float %.sroa.0.0.vec.extract.i, f0x3F7FFF58
  %i.r = fptosi float %i.q to i32
  %i.s = sitofp i32 %i.r to float
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> %i.p, float %i.s, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit:            ; preds = %bb.f, %bb.g
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.f ], [ %.sroa.0.0.vec.insert.i, %bb.g ]
  %i.t = bitcast <2 x float> %.sroa.0.0.i to i64
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit, %bb.d
  %storemerge = phi i64 [ %i.j, %bb.d ], [ %i.t, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit ] ; 2 uses
  store i64 %storemerge, ptr %7, align 8
  %i.u = trunc i64 %storemerge to i32
  %i.v = bitcast i32 %i.u to float
  %i.w = load float, ptr %2, align 4, !tbaa !269
  %i.x = load float, ptr %1, align 4, !tbaa !269
  %i.y = fsub float %i.w, %i.x
  %i.z = fcmp olt float %i.y, %i.v
  br i1 %i.z, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1193 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1194 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.af = load float, ptr %i.ae, align 8, !tbaa !1195 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 36
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !1196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store ptr null, ptr %i.a, align 8, !tbaa !276
  %i.ai = tail call noundef ptr @_ZN6ImFont12GetFontBakedEff(ptr noundef nonnull align 8 dereferenceable(76) %i.ad, float noundef %i.af, float noundef -1.000000e+00) #35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !438
  %i.al = tail call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.ai, i16 noundef zeroext %i.ak) #35
  %i.am = fmul float %i.ah, %i.al
  %i.an = load float, ptr %2, align 4, !tbaa !269 ; 2 uses
  %i.ao = fcmp oge float %i.an, %3
  %i.ap = select i1 %i.ao, float %i.an, float %3
  %i.aq = fsub float %i.ap, %i.am
  %i.ar = load float, ptr %1, align 4, !tbaa !269
  %i.as = fsub float %i.aq, %i.ar                 ; 2 uses
  %i.at = fcmp oge float %i.as, 1.000000e+00
  %i.au = select i1 %i.at, float %i.as, float 1.000000e+00
  %i.av = call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.ad, float noundef %i.af, float noundef %i.au, float noundef 0.000000e+00, ptr noundef %4, ptr noundef %.0, ptr noundef nonnull %i.a) #35
  %.sroa.01.0.vec.extract = extractelement <2 x float> %i.av, i64 0 ; 2 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !276 ; 3 uses
  %i.ax = icmp ugt ptr %i.aw, %4
  br i1 %i.ax, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %i.ay = phi ptr [ %i.bd, %bb.j ], [ %i.aw, %bb.i ] ; 3 uses
  %.05462 = phi float [ %i.bc, %bb.j ], [ %.sroa.01.0.vec.extract, %bb.i ] ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 -1 ; 3 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !93
  switch i8 %i.ba, label %.critedge [
    i8 32, label %bb.j
    i8 9, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph, %.lr.ph
  store ptr %i.az, ptr %i.a, align 8, !tbaa !276
  %i.bb = call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.ad, float noundef %i.af, float noundef f0x7F7FFFFF, float noundef 0.000000e+00, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ay, ptr noundef null) #35
  %.sroa.0.0.vec.extract = extractelement <2 x float> %i.bb, i64 0
  %i.bc = fsub float %.05462, %.sroa.0.0.vec.extract ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !276 ; 3 uses
  %i.be = icmp ugt ptr %i.bd, %4
  br i1 %i.be, label %.lr.ph, label %.critedge, !llvm.loop !1192

.critedge:                                        ; preds = %bb.j, %.lr.ph, %bb.i
  %.054.lcssa = phi float [ %.sroa.01.0.vec.extract, %bb.i ], [ %.05462, %.lr.ph ], [ %i.bc, %bb.j ]
  %.lcssa = phi ptr [ %i.aw, %bb.i ], [ %i.ay, %.lr.ph ], [ %i.bd, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  store <2 x float> zeroinitializer, ptr %8, align 8, !tbaa !86
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef %4, ptr noundef %.lcssa, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bg = load <2 x float>, ptr %1, align 4, !tbaa !86 ; 2 uses
  %i.bh = load float, ptr %i.bf, align 4, !tbaa !270
  %i.bi = load <2 x float>, ptr %2, align 4, !tbaa !86
  %i.bj = shufflevector <2 x float> %i.bg, <2 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.bj, ptr %9, align 16, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  %i.bk = extractelement <2 x float> %i.bg, i64 0
  %i.bl = fadd float %.054.lcssa, %i.bk
  %i.bm = insertelement <2 x float> poison, float %i.bl, i64 0
  %i.bn = insertelement <2 x float> %i.bm, float %i.bh, i64 1
  %i.bo = fptosi <2 x float> %i.bn to <2 x i32>
  %i.bp = sitofp <2 x i32> %i.bo to <2 x float>
  store <2 x float> %i.bp, ptr %10, align 8
  %i.bq = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 3412
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 3148
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !399
  %i.bu = load <4 x float>, ptr %i.br, align 4, !tbaa !86 ; 2 uses
  %i.bv = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.bt, i64 3
  %i.bw = fmul <4 x float> %i.bu, %i.bv           ; 2 uses
  %i.bx = fcmp olt <4 x float> %i.bw, zeroinitializer
  %i.by = shufflevector <4 x float> %i.bu, <4 x float> %i.bw, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.bz = fcmp ogt <4 x float> %i.by, splat (float 1.000000e+00)
  %i.ca = select <4 x i1> %i.bz, <4 x float> splat (float 1.000000e+00), <4 x float> %i.by
  %i.cb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.cc = select <4 x i1> %i.bx, <4 x float> splat (float 5.000000e-01), <4 x float> %i.cb
  %i.cd = fptosi <4 x float> %i.cc to <4 x i32>
  %i.ce = shl <4 x i32> %i.cd, <i32 0, i32 8, i32 16, i32 24>
  %i.cf = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.ce)
  %i.cg = load i16, ptr %i.aj, align 8, !tbaa !438
  call void @_ZN6ImFont10RenderCharEP10ImDrawListfRK6ImVec2jtPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(76) %i.ad, ptr noundef %0, float noundef %i.af, ptr noundef nonnull align 4 dereferenceable(8) %10, i32 noundef %i.cf, i16 noundef zeroext %i.cg, ptr noundef nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  store <2 x float> zeroinitializer, ptr %11, align 8, !tbaa !86
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef %4, ptr noundef %.0, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 10008
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !386, !range !120, !noundef !254
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull %1, ptr noundef %4, ptr noundef %.0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  ret void
}

declare noundef ptr @_ZN6ImFont12GetFontBakedEff(ptr noundef nonnull align 8 dereferenceable(76), float noundef, float noundef) local_unnamed_addr #2

declare noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #2

declare <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76), float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN6ImFont10RenderCharEP10ImDrawListfRK6ImVec2jtPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %0, <2 x float> %1, i32 noundef %2, i1 noundef zeroext %3, float noundef %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  store <2 x float> %0, ptr %5, align 8
  store <2 x float> %1, ptr %6, align 8
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !309
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 712 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !424
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.e, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %2, float noundef %4, i32 noundef 0) #35
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3224
  %i.g = load float, ptr %i.f, align 8, !tbaa !439 ; 3 uses
  %i.h = fcmp ogt float %i.g, 0.000000e+00
  %or.cond = select i1 %3, i1 %i.h, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !424
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.j = load <2 x float>, ptr %5, align 8, !tbaa !86
  %i.k = fadd <2 x float> %i.j, splat (float 1.000000e+00)
  store <2 x float> %i.k, ptr %7, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.l = load <2 x float>, ptr %6, align 8, !tbaa !86
  %i.m = fadd <2 x float> %i.l, splat (float 1.000000e+00)
  store <2 x float> %i.m, ptr %8, align 8
end_hunk_1
begin_hunk_2_@_ZN5ImGui5BeginEPKcPbi:bb.a
    i8 35, label %bb.oy
  ]

bb.oy:                                            ; preds = %.lr.ph.i.i106.i
  %i.dbd = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1
  %i.dbe = load i8, ptr %i.dbd, align 1, !tbaa !93
  %.not14.i.i.i = icmp eq i8 %i.dbe, 35
  br i1 %.not14.i.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i, label %.critedge2.i.i.i

.critedge2.i.i.i:                                 ; preds = %bb.oy, %.lr.ph.i.i106.i
  %i.dbf = getelementptr inbounds nuw i8, ptr %.015.i.i.i, i64 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq ptr %i.dbf, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i, label %.lr.ph.i.i106.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i:   ; preds = %.critedge2.i.i.i, %bb.oy, %.lr.ph.i.i106.i
  %.0.i.i650 = phi ptr [ %.015.i.i.i, %bb.oy ], [ %scevgep.i.i.i, %.critedge2.i.i.i ], [ %.015.i.i.i, %.lr.ph.i.i106.i ] ; 2 uses
  %i.dbg = getelementptr inbounds nuw i8, ptr %i.dax, i64 4400
  %i.dbh = load float, ptr %i.dbg, align 8, !tbaa !426 ; 2 uses
  %i.dbi = icmp eq ptr %0, %.0.i.i650
  br i1 %i.dbi, label %bb.oz, label %bb.pa

bb.oz:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i.i
  %i.dbj = phi float [ %i.daz, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.thread.i.i ], [ %i.dbh, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i ]
  %.sroa.0.4.vec.insert.i.i667 = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.dbj, i64 1
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i

bb.pa:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i.i
  %i.dbk = getelementptr inbounds nuw i8, ptr %i.dax, i64 4384
  %i.dbl = load ptr, ptr %i.dbk, align 8, !tbaa !425
  %i.dbm = call <2 x float> @_ZN6ImFont13CalcTextSizeAEfffPKcS1_PS1_(ptr noundef nonnull align 8 dereferenceable(76) %i.dbl, float noundef %i.dbh, float noundef f0x7F7FFFFF, float noundef -1.000000e+00, ptr noundef nonnull %0, ptr noundef %.0.i.i650, ptr noundef null) #35 ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.dbm, i64 0
  %i.dbn = fadd float %.sroa.0.0.vec.extract.i.i, f0x3F7FFF58
  %i.dbo = fptosi float %i.dbn to i32
  %i.dbp = sitofp i32 %i.dbo to float
  %.sroa.0.0.vec.insert.i.i651 = insertelement <2 x float> %i.dbm, float %i.dbp, i64 0
  br label %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i:          ; preds = %bb.pa, %bb.oz
  %.sroa.0.0.i.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i667, %bb.oz ], [ %.sroa.0.0.vec.insert.i.i651, %bb.pa ]
  %i.dbq = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.daw, i64 0
  %i.dbr = fadd <2 x float> %i.dbq, %.sroa.0.0.i.i ; 3 uses
  store <2 x float> %i.dbr, ptr %7, align 8
  %i.dbs = load float, ptr %i.cqt, align 4, !tbaa !1442 ; 2 uses
  %i.dbt = fcmp ogt float %.089153.i, %i.dbs
  br i1 %i.dbt, label %bb.pb, label %bb.pc

bb.pb:                                            ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i
  %i.dbu = getelementptr inbounds nuw i8, ptr %i.cqh, i64 3236
  %i.dbv = load float, ptr %i.dbu, align 4, !tbaa !957
  %i.dbw = fadd float %.089153.i, %i.dbv
  br label %bb.pc

bb.pc:                                            ; preds = %bb.pb, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i
  %.190.i = phi float [ %i.dbw, %bb.pb ], [ %.089153.i, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit.i ] ; 6 uses
  %i.dbx = fcmp ogt float %.1145151.i, %i.dbs
  br i1 %i.dbx, label %bb.pd, label %bb.pe

bb.pd:                                            ; preds = %bb.pc
  %i.dby = getelementptr inbounds nuw i8, ptr %i.cqh, i64 3236
  %i.dbz = load float, ptr %i.dby, align 4, !tbaa !957
  %i.dca = fadd float %.1145151.i, %i.dbz
  br label %bb.pe

bb.pe:                                            ; preds = %bb.pd, %bb.pc
  %.2.i652 = phi float [ %i.dca, %bb.pd ], [ %.1145151.i, %bb.pc ] ; 6 uses
  %i.dcb = getelementptr inbounds nuw i8, ptr %i.cqh, i64 3184 ; 2 uses
  %i.dcc = load float, ptr %i.dcb, align 8, !tbaa !1444 ; 4 uses
  %i.dcd = fcmp ogt float %i.dcc, 0.000000e+00
  %i.dce = fcmp olt float %i.dcc, 1.000000e+00
  %or.cond.i653 = and i1 %i.dcd, %i.dce
  br i1 %or.cond.i653, label %bb.pf, label %._crit_edge.i655

bb.pf:                                            ; preds = %bb.pe
  %i.dcf = fadd float %i.dcc, -5.000000e-01
  %i.dcg = call float @llvm.fabs.f32(float %i.dcf)
  %i.dch = fneg float %i.dcg
  %i.dci = call float @llvm.fmuladd.f32(float %i.dch, float 2.000000e+00, float 1.000000e+00) ; 3 uses
  %i.dcj = fcmp olt float %i.dci, 0.000000e+00
  %i.dck = fcmp ogt float %i.dci, 1.000000e+00
  %i.dcl = select i1 %i.dck, float 1.000000e+00, float %i.dci
  %i.dcm = select i1 %i.dcj, float 0.000000e+00, float %i.dcl
  %i.dcn = fcmp oge float %.190.i, %.2.i652
  %i.dco = select i1 %i.dcn, float %.190.i, float %.2.i652 ; 2 uses
  %i.dcp = fsub float %i.cqe, %i.cqa
  %i.dcq = fsub float %i.dcp, %.190.i
  %i.dcr = fsub float %i.dcq, %.2.i652
  %i.dcs = extractelement <2 x float> %i.dbr, i64 0
  %i.dct = fsub float %i.dcr, %i.dcs              ; 2 uses
  %i.dcu = fcmp olt float %i.dco, %i.dct
  %i.dcv = select i1 %i.dcu, float %i.dco, float %i.dct
  %i.dcw = fmul float %i.dcv, %i.dcm              ; 4 uses
  %i.dcx = fcmp oge float %.190.i, %i.dcw
  %i.dcy = select i1 %i.dcx, float %.190.i, float %i.dcw
  %i.dcz = fcmp oge float %.2.i652, %i.dcw
  %i.dda = select i1 %i.dcz, float %.2.i652, float %i.dcw
  br label %._crit_edge.i655

._crit_edge.i655:                                 ; preds = %bb.pe, %bb.pf
  %.291.i = phi float [ %i.dcy, %bb.pf ], [ %.190.i, %bb.pe ]
  %.3.i657 = phi float [ %i.dda, %bb.pf ], [ %.2.i652, %bb.pe ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.ddb = fadd float %i.cqa, %.291.i             ; 7 uses
  %i.ddc = fsub float %i.cqe, %.3.i657            ; 5 uses
  store float %i.ddb, ptr %8, align 4, !tbaa !269
  %i.ddd = getelementptr inbounds nuw i8, ptr %8, i64 4
  store float %i.cqc, ptr %i.ddd, align 4, !tbaa !270
  %i.dde = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store float %i.ddc, ptr %i.dde, align 4, !tbaa !269
  %i.ddf = getelementptr inbounds nuw i8, ptr %8, i64 12
  store float %i.cqg, ptr %i.ddf, align 4, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  %i.ddg = getelementptr inbounds nuw i8, ptr %i.cqh, i64 3236
  %i.ddh = load float, ptr %i.ddg, align 4, !tbaa !957
  %i.ddi = fadd float %i.ddc, %i.ddh              ; 2 uses
  %i.ddj = fcmp olt float %i.ddi, %i.cqe
  %i.ddk = select i1 %i.ddj, float %i.ddi, float %i.cqe ; 3 uses
  store float %i.ddb, ptr %9, align 4, !tbaa !269
  %i.ddl = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.cqc, ptr %i.ddl, align 4, !tbaa !270
  %i.ddm = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  store float %i.ddk, ptr %i.ddm, align 4, !tbaa !269
  %i.ddn = getelementptr inbounds nuw i8, ptr %9, i64 12
  store float %i.cqg, ptr %i.ddn, align 4, !tbaa !270
  br i1 %.not95.i, label %bb.pi, label %bb.pg

bb.pg:                                            ; preds = %._crit_edge.i655
  %i.ddo = fsub float %i.ddc, %i.ddb
  %i.ddp = extractelement <2 x float> %i.dbr, i64 0 ; 2 uses
  %i.ddq = fsub float %i.ddo, %i.ddp
  %i.ddr = call float @llvm.fmuladd.f32(float %i.ddq, float %i.dcc, float %i.ddb)
  %i.dds = fadd float %i.ddp, %i.ddr              ; 3 uses
  %i.ddt = fcmp olt float %i.dds, %i.ddb
  %i.ddu = fcmp ogt float %i.dds, %i.ddc
  %i.ddv = select i1 %i.ddu, float %i.ddc, float %i.dds
  %i.ddw = select i1 %i.ddt, float %i.ddb, float %i.ddv ; 3 uses
  %i.ddx = fcmp ogt float %i.ddw, %i.ddb
  br i1 %i.ddx, label %bb.ph, label %bb.pi

bb.ph:                                            ; preds = %bb.pg
  %.sroa.0.0.vec.insert.i658 = insertelement <2 x float> poison, float %i.ddw, i64 0
  %i.ddy = fadd float %i.cqc, %i.cqg
  %i.ddz = fmul float %i.ddy, 5.000000e-01
  %.sroa.0.4.vec.insert.i659 = insertelement <2 x float> %.sroa.0.0.vec.insert.i658, float %i.ddz, i64 1
  %i.dea = getelementptr inbounds nuw i8, ptr %.pre1063, i64 712
  %i.deb = load ptr, ptr %i.dea, align 8, !tbaa !424
  %i.dec = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.ded = getelementptr inbounds nuw i8, ptr %i.dec, i64 3412
  %i.dee = getelementptr inbounds nuw i8, ptr %i.dec, i64 3148
  %i.def = load float, ptr %i.dee, align 4, !tbaa !399
  %i.deg = load <4 x float>, ptr %i.ded, align 4, !tbaa !86 ; 2 uses
  %i.deh = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.def, i64 3
  %i.dei = fmul <4 x float> %i.deg, %i.deh        ; 2 uses
  %i.dej = fcmp olt <4 x float> %i.dei, zeroinitializer
  %i.dek = shufflevector <4 x float> %i.deg, <4 x float> %i.dei, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.del = fcmp ogt <4 x float> %i.dek, splat (float 1.000000e+00)
  %i.dem = select <4 x i1> %i.del, <4 x float> splat (float 1.000000e+00), <4 x float> %i.dek
  %i.den = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dem, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.deo = select <4 x i1> %i.dej, <4 x float> splat (float 5.000000e-01), <4 x float> %i.den
  %i.dep = fptosi <4 x float> %i.deo to <4 x i32>
  %i.deq = shl <4 x i32> %i.dep, <i32 0, i32 8, i32 16, i32 24>
  %i.der = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.deq)
  call void @_ZN5ImGui12RenderBulletEP10ImDrawList6ImVec2j(ptr noundef %i.deb, <2 x float> %.sroa.0.4.vec.insert.i659, i32 noundef %i.der) #35
  %i.des = fmul float %i.dav, 5.000000e-01
  %i.det = fptosi float %i.des to i32
  %i.deu = sitofp i32 %i.det to float
  %i.dev = fsub float %i.ddw, %i.deu              ; 2 uses
  %i.dew = fcmp olt float %i.ddk, %i.dev
  %i.dex = select i1 %i.dew, float %i.ddk, float %i.dev
  store float %i.dex, ptr %i.ddm, align 4, !tbaa !700
  br label %bb.pi

bb.pi:                                            ; preds = %bb.ph, %bb.pg, %._crit_edge.i655
  br i1 %.not155.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.lr.ph.preheader.i.i110.i

.lr.ph.preheader.i.i110.i:                        ; preds = %bb.pi
  %i.dey = ptrtoaddr ptr %0 to i64
  %i.dez = xor i64 %i.dey, -1
  %scevgep.i.i111.i = getelementptr i8, ptr %0, i64 %i.dez
  br label %.lr.ph.i.i112.i

.lr.ph.i.i112.i:                                  ; preds = %.critedge2.i.i115.i, %.lr.ph.preheader.i.i110.i
  %.015.i.i113.i = phi ptr [ %i.dfd, %.critedge2.i.i115.i ], [ %0, %.lr.ph.preheader.i.i110.i ] ; 5 uses
  %i.dfa = load i8, ptr %.015.i.i113.i, align 1, !tbaa !93
  switch i8 %i.dfa, label %.critedge2.i.i115.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i
    i8 35, label %bb.pj
  ]

bb.pj:                                            ; preds = %.lr.ph.i.i112.i
  %i.dfb = getelementptr inbounds nuw i8, ptr %.015.i.i113.i, i64 1
  %i.dfc = load i8, ptr %i.dfb, align 1, !tbaa !93
  %.not14.i.i114.i = icmp eq i8 %i.dfc, 35
  br i1 %.not14.i.i114.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.critedge2.i.i115.i

.critedge2.i.i115.i:                              ; preds = %bb.pj, %.lr.ph.i.i112.i
  %i.dfd = getelementptr inbounds nuw i8, ptr %.015.i.i113.i, i64 1 ; 2 uses
  %exitcond.not.i.i116.i = icmp eq ptr %i.dfd, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i116.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, label %.lr.ph.i.i112.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i: ; preds = %.critedge2.i.i115.i, %bb.pj, %.lr.ph.i.i112.i, %bb.pi
  %.0.lcssa.i.i.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.pi ], [ %.015.i.i113.i, %.lr.ph.i.i112.i ], [ %scevgep.i.i111.i, %.critedge2.i.i115.i ], [ %.015.i.i113.i, %bb.pj ] ; 3 uses
  %i.dfe = ptrtoint ptr %.0.lcssa.i.i.i to i64
  %i.dff = ptrtoint ptr %0 to i64
  %i.dfg = sub i64 %i.dfe, %i.dff
  %i.dfh = and i64 %i.dfg, 4294967295
  %i.dfi = icmp eq i64 %i.dfh, 0
  br i1 %i.dfi, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, label %bb.pk

bb.pk:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i
  %i.dfj = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.dfk = getelementptr inbounds nuw i8, ptr %i.dfj, i64 5184
  %i.dfl = load ptr, ptr %i.dfk, align 8, !tbaa !309
  %i.dfm = getelementptr inbounds nuw i8, ptr %i.dfl, i64 712
  %i.dfn = load ptr, ptr %i.dfm, align 8, !tbaa !424
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.dfn, ptr noundef nonnull readonly align 4 dereferenceable(8) %8, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.dde, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i, ptr noundef nonnull readonly %7, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.dcb, ptr noundef nonnull readonly %9)
  %i.dfo = getelementptr inbounds nuw i8, ptr %i.dfj, i64 10008
  %i.dfp = load i8, ptr %i.dfo, align 8, !tbaa !386, !range !120, !noundef !254
  %i.dfq = trunc nuw i8 %i.dfp to i1
  br i1 %i.dfq, label %bb.pl, label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

bb.pl:                                            ; preds = %bb.pk
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %8, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i.i)
  br label %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit

_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit: ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i109.i, %bb.pk, %bb.pl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  %.pre1062 = load ptr, ptr %i.g, align 8, !tbaa !595
  br label %bb.pm

bb.pm:                                            ; preds = %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit, %_ZN5ImGui14LogToClipboardEi.exit
  %i.dfr = phi ptr [ %.pre1062, %_ZN5ImGuiL28RenderWindowTitleBarContentsEP11ImGuiWindowRK6ImRectPKcPb.exit ], [ %.pre1063, %_ZN5ImGui14LogToClipboardEi.exit ] ; 8 uses
  %i.dfs = getelementptr inbounds nuw i8, ptr %i.dfr, i64 642
  store i16 0, ptr %i.dfs, align 2, !tbaa !745
  %i.dft = getelementptr inbounds nuw i8, ptr %i.dfr, i64 640
  store i16 0, ptr %i.dft, align 8, !tbaa !743
  br i1 %.not417, label %bb.po, label %bb.pn

bb.pn:                                            ; preds = %bb.pm
  %i.dfu = getelementptr inbounds nuw i8, ptr %i.j, i64 9632
  store ptr %i.dfr, ptr %i.dfu, align 8, !tbaa !576
  br label %bb.po

bb.po:                                            ; preds = %bb.pn, %bb.pm
  %i.dfv = getelementptr inbounds nuw i8, ptr %i.dfr, i64 480
  %i.dfw = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 10 uses
  %i.dfx = load <2 x float>, ptr %37, align 8, !tbaa !86 ; 2 uses
  %i.dfy = load <2 x float>, ptr %i.bhk, align 8, !tbaa !86 ; 2 uses
  %i.dfz = getelementptr inbounds nuw i8, ptr %i.dfw, i64 224
  %i.dga = getelementptr inbounds nuw i8, ptr %i.dfw, i64 3252
  %i.dgb = load float, ptr %i.dfz, align 4, !tbaa !269 ; 2 uses
  %.sroa.0.0.vec.extract8.i = extractelement <2 x float> %i.dfx, i64 0
  %i.dgc = load float, ptr %i.dga, align 4, !tbaa !269 ; 2 uses
  %i.dgd = fsub float %.sroa.0.0.vec.extract8.i, %i.dgc
  %i.dge = fcmp ult float %i.dgb, %i.dgd
  br i1 %i.dge, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit, label %bb.pp

bb.pp:                                            ; preds = %bb.po
  %i.dgf = getelementptr inbounds nuw i8, ptr %i.dfw, i64 228
  %i.dgg = load float, ptr %i.dgf, align 4, !tbaa !270 ; 2 uses
  %.sroa.0.4.vec.extract10.i = extractelement <2 x float> %i.dfx, i64 1
  %i.dgh = getelementptr inbounds nuw i8, ptr %i.dfw, i64 3256
  %i.dgi = load float, ptr %i.dgh, align 4, !tbaa !270 ; 2 uses
  %i.dgj = fsub float %.sroa.0.4.vec.extract10.i, %i.dgi
  %i.dgk = fcmp oge float %i.dgg, %i.dgj
  %.sroa.8.8.vec.extract13.i = extractelement <2 x float> %i.dfy, i64 0
  %i.dgl = fadd float %.sroa.8.8.vec.extract13.i, %i.dgc
  %i.dgm = fcmp olt float %i.dgb, %i.dgl
  %or.cond.i670 = select i1 %i.dgk, i1 %i.dgm, i1 false
  br i1 %or.cond.i670, label %bb.pq, label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

bb.pq:                                            ; preds = %bb.pp
  %.sroa.8.12.vec.extract15.i = extractelement <2 x float> %i.dfy, i64 1
  %i.dgn = fadd float %.sroa.8.12.vec.extract15.i, %i.dgi
  %i.dgo = fcmp olt float %i.dgg, %i.dgn
  %i.dgp = zext i1 %i.dgo to i32
  br label %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit

_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit: ; preds = %bb.po, %bb.pp, %bb.pq
  %i.dgq = phi i32 [ %i.dgp, %bb.pq ], [ 0, %bb.pp ], [ 0, %bb.po ] ; 2 uses
  store i32 %i.dgq, ptr %i.dfv, align 8, !tbaa !1445
  %i.dgr = getelementptr i8, ptr %i.dfr, i64 140  ; 2 uses
  %.val506 = load i32, ptr %i.dgr, align 4, !tbaa !645
  %i.dgs = getelementptr inbounds nuw i8, ptr %i.dfw, i64 7640
  %i.dgt = load i32, ptr %i.dgs, align 8, !tbaa !807
  %i.dgu = getelementptr inbounds nuw i8, ptr %i.dfw, i64 7704
  store i32 %.val506, ptr %i.dgu, align 8, !tbaa !441
  %i.dgv = getelementptr inbounds nuw i8, ptr %i.dfw, i64 7708
  store i32 %i.dgt, ptr %i.dgv, align 4, !tbaa !442
  %i.dgw = getelementptr inbounds nuw i8, ptr %i.dfw, i64 7712
  store i32 %i.dgq, ptr %i.dgw, align 8, !tbaa !682
  %i.dgx = getelementptr inbounds nuw i8, ptr %i.dfw, i64 7732
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dgx, ptr noundef nonnull readonly align 8 dereferenceable(16) %37, i64 16, i1 false), !tbaa.struct !402
  %i.dgy = getelementptr inbounds nuw i8, ptr %i.dfw, i64 7716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dgy, ptr noundef nonnull readonly align 8 dereferenceable(16) %37, i64 16, i1 false)
  %i.dgz = getelementptr inbounds nuw i8, ptr %i.j, i64 7644
  %i.dha = load i32, ptr %i.dgz, align 4, !tbaa !858 ; 3 uses
  %.not453 = icmp eq i32 %i.dha, 0
  br i1 %.not453, label %bb.pu, label %bb.pr

bb.pr:                                            ; preds = %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %i.dhb = getelementptr inbounds nuw i8, ptr %i.dfr, i64 16
  %i.dhc = load i32, ptr %i.dhb, align 8, !tbaa !609
  %i.dhd = icmp eq i32 %i.dhc, %i.dha
  br i1 %i.dhd, label %bb.pt, label %bb.ps

bb.ps:                                            ; preds = %bb.pr
  %i.dhe = load i32, ptr %i.dgr, align 4, !tbaa !645
  %i.dhf = icmp eq i32 %i.dhe, %i.dha
  br i1 %i.dhf, label %bb.pt, label %bb.pu

bb.pt:                                            ; preds = %bb.ps, %bb.pr
  call void @_ZN5ImGui34DebugLocateItemResolveWithLastItemEv()
  %.pre1069.pre = load ptr, ptr %i.g, align 8, !tbaa !595
  br label %bb.pu

bb.pu:                                            ; preds = %bb.pt, %bb.ps, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit
  %.pre1069 = phi ptr [ %.pre1069.pre, %bb.pt ], [ %i.dfr, %bb.ps ], [ %i.dfr, %_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #35
  br label %bb.qd

bb.pv:                                            ; preds = %bb.cv
  br i1 %i.vx, label %.thread1189, label %.thread982

.thread1189:                                      ; preds = %bb.cw, %bb.pv
  call fastcc void @_ZL29SetWindowActiveForSkipRefreshP11ImGuiWindow(ptr noundef nonnull %.pre1064)
  %.pr = load ptr, ptr %i.g, align 8, !tbaa !595, !nonnull !254, !noundef !254
  br label %.thread982

.thread982:                                       ; preds = %bb.pv, %.thread1189
  %.pr.sink = phi ptr [ %.pr, %.thread1189 ], [ %.pre1064, %bb.pv ] ; 4 uses
  %i.dhg = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 10 uses
  %i.dhh = getelementptr inbounds nuw i8, ptr %i.dhg, i64 5184
  store ptr %.pr.sink, ptr %i.dhh, align 8, !tbaa !309
  %i.dhi = getelementptr inbounds nuw i8, ptr %i.dhg, i64 5136
  %i.dhj = getelementptr inbounds nuw i8, ptr %i.dhg, i64 5144
  %i.dhk = load ptr, ptr %i.dhj, align 8, !tbaa !503
  %i.dhl = load i32, ptr %i.dhi, align 8, !tbaa !505
  %i.dhm = sext i32 %i.dhl to i64
  %i.dhn = getelementptr [120 x i8], ptr %i.dhk, i64 %i.dhm
  %i.dho = getelementptr i8, ptr %i.dhn, i64 -32
  %i.dhp = getelementptr inbounds nuw i8, ptr %i.dhg, i64 10144
  store ptr %i.dho, ptr %i.dhp, align 8, !tbaa !581
  %i.dhq = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 464
  %i.dhr = load i32, ptr %i.dhq, align 8, !tbaa !912 ; 2 uses
  %.not23.i672 = icmp eq i32 %i.dhr, -1
  br i1 %.not23.i672, label %bb.px, label %bb.pw

bb.pw:                                            ; preds = %.thread982
  %i.dhs = getelementptr inbounds nuw i8, ptr %i.dhg, i64 8856
  %i.dht = load ptr, ptr %i.dhs, align 8, !tbaa !627
  %i.dhu = sext i32 %i.dhr to i64
  %i.dhv = getelementptr inbounds [592 x i8], ptr %i.dht, i64 %i.dhu
  br label %bb.px

bb.px:                                            ; preds = %bb.pw, %.thread982
  %.ph.i673 = phi ptr [ null, %.thread982 ], [ %i.dhv, %bb.pw ]
  %i.dhw = getelementptr inbounds nuw i8, ptr %i.dhg, i64 8816
  store ptr %.ph.i673, ptr %i.dhw, align 8, !tbaa !348
  %i.dhx = getelementptr inbounds nuw i8, ptr %i.dhg, i64 4416
  store float 1.000000e+00, ptr %i.dhx, align 8, !tbaa !918
  %i.dhy = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 209 ; 3 uses
  %i.dhz = load i8, ptr %i.dhy, align 1, !tbaa !919, !range !120, !noundef !254
  store i8 0, ptr %i.dhy, align 1, !tbaa !919
  %i.dia = getelementptr inbounds nuw i8, ptr %i.dhg, i64 12
  %i.dib = load i32, ptr %i.dia, align 4, !tbaa !753
  %i.dic = and i32 %i.dib, 16
  %.not24.i674 = icmp eq i32 %i.dic, 0
  br i1 %.not24.i674, label %bb.qb, label %bb.py

bb.py:                                            ; preds = %bb.px
  %i.did = getelementptr inbounds nuw i8, ptr %.pr.sink, i64 32
  %i.die = load ptr, ptr %i.did, align 8, !tbaa !917
  %i.dif = getelementptr inbounds nuw i8, ptr %i.die, i64 24
  %i.dig = load float, ptr %i.dif, align 8, !tbaa !920 ; 2 uses
  %i.dih = fcmp une float %i.dig, 0.000000e+00
  br i1 %i.dih, label %bb.qa, label %bb.pz

bb.pz:                                            ; preds = %bb.py
  %i.dii = getelementptr inbounds nuw i8, ptr %i.dhg, i64 24
  %i.dij = load float, ptr %i.dii, align 8, !tbaa !921
  br label %bb.qa

bb.qa:                                            ; preds = %bb.pz, %bb.py
  %i.dik = phi float [ %i.dij, %bb.pz ], [ %i.dig, %bb.py ]
  %i.dil = getelementptr inbounds nuw i8, ptr %i.dhg, i64 4412
  store float %i.dik, ptr %i.dil, align 4, !tbaa !922
  br label %bb.qb

bb.qb:                                            ; preds = %bb.qa, %bb.px
  call void @_ZN5ImGui21UpdateCurrentFontSizeEf(float noundef 0.000000e+00)
  store i8 %i.dhz, ptr %i.dhy, align 1, !tbaa !919
  %i.dim = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 10 uses
  %i.din = getelementptr inbounds nuw i8, ptr %i.dim, i64 5184
  %i.dio = load ptr, ptr %i.din, align 8, !tbaa !309 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5ImGui28DebugRenderViewportThumbnailEP10ImDrawListP14ImGuiViewportPRK6ImRect:bb.a
  %i.at = load float, ptr %i.as, align 4, !tbaa !399
  %i.au = load <4 x float>, ptr %i.ar, align 4, !tbaa !86 ; 2 uses
  %i.av = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.at, i64 3
  %i.aw = fmul <4 x float> %i.au, %i.av           ; 2 uses
  %i.ax = fcmp olt <4 x float> %i.aw, zeroinitializer
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.az = fcmp ogt <4 x float> %i.ay, splat (float 1.000000e+00)
  %i.ba = select <4 x i1> %i.az, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ay
  %i.bb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ba, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.bc = select <4 x i1> %i.ax, <4 x float> splat (float 5.000000e-01), <4 x float> %i.bb
  %i.bd = fptosi <4 x float> %i.bc to <4 x i32>
  %i.be = shl <4 x i32> %i.bd, <i32 0, i32 8, i32 16, i32 24>
  %i.bf = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.be)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef %i.bf, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  %i.bg = load i32, ptr %1, align 8, !tbaa !467
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 10268
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !1053
  %i.bj = icmp eq i32 %i.bg, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.j

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.0195 = phi ptr [ %i.ah, %.lr.ph ], [ %i.hp, %bb.h ] ; 2 uses
  %i.bk = load ptr, ptr %.0195, align 8, !tbaa !595 ; 8 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 205
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !414, !range !120, !noundef !254
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !608
  %i.bq = and i32 %i.bp, 16777216
  %.not47 = icmp eq i32 %i.bq, 0
  br i1 %.not47, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  %i.bu = load float, ptr %i.bt, align 8, !tbaa !737
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !736
  %i.bx = load <2 x float>, ptr %i.br, align 8, !tbaa !86 ; 6 uses
  %i.by = extractelement <2 x float> %i.bx, i64 1
  %i.bz = fmul <2 x float> %i.k, %i.bx
  %i.ca = fadd <2 x float> %i.n, %i.bz
  %i.cb = fptosi <2 x float> %i.ca to <2 x i32>
  %i.cc = sitofp <2 x i32> %i.cb to <2 x float>   ; 3 uses
  %i.cd = load <2 x float>, ptr %2, align 4       ; 8 uses
  %i.ce = load <2 x float>, ptr %i.d, align 4     ; 8 uses
  %i.cf = fcmp ogt <2 x float> %i.cd, %i.cc
  %i.cg = fcmp olt <2 x float> %i.ce, %i.cc
  %i.ch = select <2 x i1> %i.cg, <2 x float> %i.ce, <2 x float> %i.cc
  %i.ci = select <2 x i1> %i.cf, <2 x float> %i.cd, <2 x float> %i.ch
  store <2 x float> %i.ci, ptr %3, align 8, !tbaa !86
  %i.cj = load <2 x float>, ptr %i.bs, align 8, !tbaa !86
  %i.ck = fadd <2 x float> %i.bx, %i.cj
  %i.cl = fmul <2 x float> %i.k, %i.ck
  %i.cm = fadd <2 x float> %i.n, %i.cl
  %i.cn = fptosi <2 x float> %i.cm to <2 x i32>
  %i.co = sitofp <2 x i32> %i.cn to <2 x float>   ; 3 uses
  %i.cp = fcmp ogt <2 x float> %i.cd, %i.co
  %i.cq = fcmp olt <2 x float> %i.ce, %i.co
  %i.cr = select <2 x i1> %i.cq, <2 x float> %i.ce, <2 x float> %i.co
  %i.cs = select <2 x i1> %i.cp, <2 x float> %i.cd, <2 x float> %i.cr
  store <2 x float> %i.cs, ptr %i.al, align 8, !tbaa !86
  %i.ct = fmul <2 x float> %i.k, %i.bx
  %i.cu = fadd <2 x float> %i.n, %i.ct
  %i.cv = fptosi <2 x float> %i.cu to <2 x i32>
  %i.cw = sitofp <2 x i32> %i.cv to <2 x float>   ; 3 uses
  %i.cx = fcmp ogt <2 x float> %i.cd, %i.cw
  %i.cy = fcmp olt <2 x float> %i.ce, %i.cw
  %i.cz = select <2 x i1> %i.cy, <2 x float> %i.ce, <2 x float> %i.cw
  %i.da = select <2 x i1> %i.cx, <2 x float> %i.cd, <2 x float> %i.cz
  store <2 x float> %i.da, ptr %4, align 8, !tbaa !86
  %i.db = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.dc = insertelement <2 x float> %i.db, float %i.bw, i64 1
  %i.dd = fadd <2 x float> %i.bx, %i.dc           ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.dd, %i.bx
  %i.de = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.df = call float @llvm.fmuladd.f32(float %i.de, float 3.000000e+00, float %i.by)
  %i.dg = insertelement <2 x float> %i.dd, float %i.df, i64 1
  %i.dh = fmul <2 x float> %i.k, %i.dg
  %i.di = fadd <2 x float> %i.n, %i.dh
  %i.dj = fptosi <2 x float> %i.di to <2 x i32>
  %i.dk = sitofp <2 x i32> %i.dj to <2 x float>   ; 3 uses
  %i.dl = fcmp ogt <2 x float> %i.cd, %i.dk
  %i.dm = fcmp olt <2 x float> %i.ce, %i.dk
  %i.dn = select <2 x i1> %i.dm, <2 x float> %i.ce, <2 x float> %i.dk
  %i.do = select <2 x i1> %i.dl, <2 x float> %i.cd, <2 x float> %i.dn
  store <2 x float> %i.do, ptr %i.am, align 8, !tbaa !86
  %i.dp = load ptr, ptr %i.an, align 8, !tbaa !388 ; 2 uses
  %.not48 = icmp eq ptr %i.dp, null
  br i1 %.not48, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bk, i64 976
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !892
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 976
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !892
  %i.du = icmp eq ptr %i.dr, %i.dt
  %i.dv = select i1 %i.du, i64 11, i64 10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.dw = phi i64 [ 10, %bb.d ], [ %i.dv, %bb.e ]
  %i.dx = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.dy = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 3444
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dy, i64 3148
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !399
  %i.ec = load <4 x float>, ptr %i.dz, align 4, !tbaa !86 ; 2 uses
  %i.ed = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.eb, i64 3
  %i.ee = fmul <4 x float> %i.ec, %i.ed           ; 2 uses
  %i.ef = fcmp olt <4 x float> %i.ee, zeroinitializer
  %i.eg = shufflevector <4 x float> %i.ec, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.eh = fcmp ogt <4 x float> %i.eg, splat (float 1.000000e+00)
  %i.ei = select <4 x i1> %i.eh, <4 x float> splat (float 1.000000e+00), <4 x float> %i.eg
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ek = select <4 x i1> %i.ef, <4 x float> splat (float 5.000000e-01), <4 x float> %i.ej
  %i.el = fptosi <4 x float> %i.ek to <4 x i32>
  %i.em = shl <4 x i32> %i.el, <i32 0, i32 8, i32 16, i32 24>
  %i.en = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.em)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.dx, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.al, i32 noundef %i.en, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.eo = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.ep = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 3412
  %i.er = getelementptr inbounds nuw [16 x i8], ptr %i.eq, i64 %i.dw
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 3148
  %i.et = load float, ptr %i.es, align 4, !tbaa !399
  %i.eu = load <4 x float>, ptr %i.er, align 4, !tbaa !86 ; 2 uses
  %i.ev = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.et, i64 3
  %i.ew = fmul <4 x float> %i.eu, %i.ev           ; 2 uses
  %i.ex = fcmp olt <4 x float> %i.ew, zeroinitializer
  %i.ey = shufflevector <4 x float> %i.eu, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ez = fcmp ogt <4 x float> %i.ey, splat (float 1.000000e+00)
  %i.fa = select <4 x i1> %i.ez, <4 x float> splat (float 1.000000e+00), <4 x float> %i.ey
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fc = select <4 x i1> %i.ex, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fb
  %i.fd = fptosi <4 x float> %i.fc to <4 x i32>
  %i.fe = shl <4 x i32> %i.fd, <i32 0, i32 8, i32 16, i32 24>
  %i.ff = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fe)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.eo, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %i.am, i32 noundef %i.ff, float noundef 0.000000e+00, i32 noundef 0) #35
  %i.fg = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.fh = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 3492
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 3148
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !399
  %i.fl = load <4 x float>, ptr %i.fi, align 4, !tbaa !86 ; 2 uses
  %i.fm = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.fk, i64 3
  %i.fn = fmul <4 x float> %i.fl, %i.fm           ; 2 uses
  %i.fo = fcmp olt <4 x float> %i.fn, zeroinitializer
  %i.fp = shufflevector <4 x float> %i.fl, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.fq = fcmp ogt <4 x float> %i.fp, splat (float 1.000000e+00)
  %i.fr = select <4 x i1> %i.fq, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fp
  %i.fs = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fr, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.ft = select <4 x i1> %i.fo, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fs
  %i.fu = fptosi <4 x float> %i.ft to <4 x i32>
  %i.fv = shl <4 x i32> %i.fu, <i32 0, i32 8, i32 16, i32 24>
  %i.fw = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fv)
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.fg, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %i.al, i32 noundef %i.fw, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  %i.fx = load ptr, ptr %i.o, align 8, !tbaa !424
  %i.fy = load ptr, ptr %i.ao, align 8, !tbaa !425
  %i.fz = load float, ptr %i.ap, align 8, !tbaa !426
  %i.ga = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 3412
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 3148
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !399
  %i.ge = load <4 x float>, ptr %i.gb, align 4, !tbaa !86 ; 2 uses
  %i.gf = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %i.gd, i64 3
  %i.gg = fmul <4 x float> %i.ge, %i.gf           ; 5 uses
  %i.gh = extractelement <4 x float> %i.gg, i64 0
  %i.gi = fcmp olt float %i.gh, 0.000000e+00
  %i.gj = fcmp ogt <4 x float> %i.gg, splat (float 1.000000e+00)
  %i.gk = shufflevector <4 x float> %i.ge, <4 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.gl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gk, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.gm = select <4 x i1> %i.gj, <4 x float> splat (float 2.555000e+02), <4 x float> %i.gl ; 3 uses
  %i.gn = extractelement <4 x float> %i.gm, i64 0
  %i.go = select i1 %i.gi, float 5.000000e-01, float %i.gn
  %i.gp = fptosi float %i.go to i32
  %i.gq = extractelement <4 x float> %i.gg, i64 1
  %i.gr = fcmp olt float %i.gq, 0.000000e+00
  %i.gs = extractelement <4 x float> %i.gm, i64 1
  %i.gt = select i1 %i.gr, float 5.000000e-01, float %i.gs
  %i.gu = fptosi float %i.gt to i32
  %i.gv = shl i32 %i.gu, 8
  %i.gw = or i32 %i.gv, %i.gp
  %i.gx = shufflevector <4 x float> %i.gg, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gy = fcmp olt <2 x float> %i.gx, zeroinitializer
  %i.gz = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ha = select <2 x i1> %i.gy, <2 x float> splat (float 5.000000e-01), <2 x float> %i.gz
  %i.hb = fptosi <2 x float> %i.ha to <2 x i32>
  %i.hc = shl <2 x i32> %i.hb, <i32 16, i32 24>   ; 2 uses
  %i.hd = extractelement <2 x i32> %i.hc, i64 0
  %i.he = or i32 %i.gw, %i.hd
  %i.hf = extractelement <2 x i32> %i.hc, i64 1
  %i.hg = or i32 %i.he, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !333 ; 5 uses
  %.not193 = icmp eq ptr %i.hi, inttoptr (i64 -1 to ptr)
  br i1 %.not193, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.f
  %i.hj = ptrtoaddr ptr %i.hi to i64
  %i.hk = xor i64 %i.hj, -1
  %scevgep.i = getelementptr i8, ptr %i.hi, i64 %i.hk
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge2.i, %.lr.ph.preheader.i
  %.015.i = phi ptr [ %i.ho, %.critedge2.i ], [ %i.hi, %.lr.ph.preheader.i ] ; 5 uses
  %i.hl = load i8, ptr %.015.i, align 1, !tbaa !93
  switch i8 %i.hl, label %.critedge2.i [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
    i8 35, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.i
  %i.hm = getelementptr inbounds nuw i8, ptr %.015.i, i64 1
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !93
  %.not14.i = icmp eq i8 %i.hn, 35
  br i1 %.not14.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.g, %.lr.ph.i
  %i.ho = getelementptr inbounds nuw i8, ptr %.015.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.ho, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit, label %.lr.ph.i, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit:       ; preds = %.lr.ph.i, %bb.g, %.critedge2.i, %bb.f
  %.0.lcssa.i = phi ptr [ inttoptr (i64 -1 to ptr), %bb.f ], [ %.015.i, %bb.g ], [ %scevgep.i, %.critedge2.i ], [ %.015.i, %.lr.ph.i ]
  call void @_ZN10ImDrawList7AddTextEP6ImFontfRK6ImVec2jPKcS6_fPK6ImVec4(ptr noundef nonnull align 8 dereferenceable(224) %i.fx, ptr noundef %i.fy, float noundef %i.fz, ptr noundef nonnull align 4 dereferenceable(8) %4, i32 noundef %i.hg, ptr noundef %i.hi, ptr noundef %.0.lcssa.i, float noundef 0.000000e+00, ptr noundef null) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %bb.c, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit
  %i.hp = getelementptr inbounds nuw i8, ptr %.0195, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.hp, %i.ak
  br i1 %.not, label %._crit_edge, label %bb.b

bb.i:                                             ; preds = %._crit_edge
  %i.hq = load ptr, ptr %i.o, align 8, !tbaa !424
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %i.hq, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef -16711681, float noundef 0.000000e+00, i32 noundef 0, float noundef 1.000000e+00) #35
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList(ptr noundef %0) local_unnamed_addr #11 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 8 uses
  %5 = alloca %struct.ImVec2, align 8             ; 6 uses
  %6 = alloca %struct.ImVec2, align 8             ; 5 uses
  %7 = alloca %struct.ImVec2, align 8             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4400
  %i.c = load float, ptr %i.b, align 8, !tbaa !426
  %i.d = fdiv float %i.c, 1.300000e+01            ; 3 uses
  %i.e = insertelement <2 x float> poison, float %i.d, i64 0
  %i.f = shufflevector <2 x float> %i.e, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.g = fmul <2 x float> %i.f, <float 5.000000e+00, float 3.000000e+00> ; 2 uses
  %i.h = fmul float %i.d, 2.000000e+00            ; 2 uses
  %i.i = fmul <2 x float> %i.f, <float 7.000000e+00, float 4.000000e+00>
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 5184
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !309
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 280
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.l, align 8, !tbaa !86 ; 5 uses
  store <2 x float> %.sroa.0.0.copyload.i, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.m = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0 ; 2 uses
  %i.n = fmul <2 x float> %i.f, <float 9.000000e+00, float 3.500000e+01> ; 3 uses
  %i.o = fadd <2 x float> %i.n, <float -0.000000e+00, float -1.000000e+00> ; 3 uses
  %i.p = extractelement <2 x float> %i.o, i64 1   ; 3 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float 3.000000e+00, float %i.m)
  %i.r = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.q, i64 0
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> <float 2.000000e+00, float 3.000000e+00>, <2 x float> %i.r)
  %i.t = fadd <2 x float> %i.s, splat (float 1.000000e+01) ; 2 uses
  store <2 x float> %i.t, ptr %2, align 8, !tbaa !86
  %i.u = fadd float %i.m, 5.000000e+00
  %i.v = fsub float %i.u, %i.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  %i.w = fsub <2 x float> %i.t, %.sroa.0.0.copyload.i
  store <2 x float> %i.w, ptr %3, align 8
  call void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.x = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 7712
  %i.z = load i32, ptr %i.y, align 8, !tbaa !682
  %i.aa = and i32 %i.z, 256
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = fmul float %i.d, 2.500000e+01
  call void @_ZN10ImDrawList12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, i1 noundef zeroext true) #35
  %i.ac = extractelement <2 x float> %i.g, i64 1  ; 3 uses
  %i.ad = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = shufflevector <2 x float> %i.n, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %i.ag = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  br label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i

bb.c:                                             ; preds = %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  call void @_ZN10ImDrawList11PopClipRectEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #35
  br label %bb.e

_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i:         ; preds = %bb.b, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr @__const._ZN5ImGui26DebugRenderKeyboardPreviewEP10ImDrawList.keys_to_display, i64 %indvars.iv ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.ai = load <2 x i32>, ptr %i.ah, align 8, !tbaa !255
  %i.aj = sitofp <2 x i32> %i.ai to <2 x float>   ; 2 uses
  %i.ak = extractelement <2 x float> %i.aj, i64 1
  %i.al = call float @llvm.fmuladd.f32(float %i.ak, float %i.p, float %i.v)
  %i.am = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = insertelement <2 x float> %.sroa.0.0.copyload.i, float %i.al, i64 0
  %i.ao = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.af, <2 x float> %i.an) ; 2 uses
  store <2 x float> %i.ao, ptr %4, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.ap = fadd <2 x float> %i.ag, %i.ao
  store <2 x float> %i.ap, ptr %5, align 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -3355444, float noundef %i.ac, i32 noundef 0) #35
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -15198184, float noundef %i.ac, i32 noundef 0, float noundef 1.000000e+00) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  %i.aq = load <2 x float>, ptr %4, align 8, !tbaa !86
  %i.ar = fadd <2 x float> %i.g, %i.aq            ; 2 uses
  store <2 x float> %i.ar, ptr %6, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  %i.as = fadd <2 x float> %i.ae, %i.ar
  store <2 x float> %i.as, ptr %7, align 8, !tbaa !86
  call void @_ZN10ImDrawList7AddRectERK6ImVec2S2_jfif(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -4079167, float noundef %i.h, i32 noundef 0, float noundef 2.000000e+00) #35
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(8) %7, i32 noundef -197380, float noundef %i.h, i32 noundef 0) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.at = load <2 x float>, ptr %4, align 8, !tbaa !86
  %i.au = fadd <2 x float> %i.i, %i.at
  store <2 x float> %i.au, ptr %8, align 8, !tbaa !86
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1556
  call void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %8, i32 noundef -12566464, ptr noundef %i.aw, ptr noundef null) #35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !1557 ; 4 uses
  %i.az = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.ba = call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ay)
  %i.bb = icmp eq i32 %i.ba, 1
  %i.bc = sext i32 %i.ay to i64                   ; 2 uses
  %i.bd = getelementptr [16 x i8], ptr %i.az, i64 %i.bc
  %i.be = getelementptr i8, ptr %i.bd, i64 -7932
  %i.bf = load i8, ptr %i.be, align 4, !tbaa !257, !range !120, !noundef !254
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.d, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

bb.d:                                             ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i
  %i.bh = add i32 %i.ay, -512
  %or.cond.i.i4.i.i = icmp ult i32 %i.bh, 155
  br i1 %or.cond.i.i4.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %switch.early.test.i.i.i.i

switch.early.test.i.i.i.i:                        ; preds = %bb.d
  br i1 %i.bb, label %switch.early.test.split.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

switch.early.test.split.i.i.i.i:                  ; preds = %switch.early.test.i.i.i.i
  %i.bi = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ay, i1 true)
  %i.bj = and i32 %i.bi, 28
  %switch.i.i.i.i = icmp eq i32 %i.bj, 12
  br i1 %switch.i.i.i.i, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit:               ; preds = %bb.d, %switch.early.test.split.i.i.i.i
  %i.bk = getelementptr [12 x i8], ptr %i.az, i64 %i.bc
  %i.bl = getelementptr i8, ptr %i.bk, i64 -716
  %i.bm = load i8, ptr %i.bl, align 4, !tbaa !536, !range !120, !noundef !254
  %i.bn = icmp eq i8 %i.bm, 0
  br i1 %i.bn, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread:        ; preds = %switch.early.test.split.i.i.i.i, %switch.early.test.i.i.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, i32 noundef -2147483393, float noundef %i.ac, i32 noundef 0) #35
  br label %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59

_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread59:      ; preds = %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit.thread, %_ZN5ImGui9IsKeyDownE8ImGuiKey.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 15
  br i1 %exitcond.not, label %bb.c, label %_ZN5ImGui10GetKeyDataE8ImGuiKey.exit.i.i, !llvm.loop !1554

bb.e:                                             ; preds = %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  ret void
}

declare void @_ZN5ImGui5DummyERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN10ImDrawList7AddTextERK6ImVec2jPKcS4_(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui17DebugTextEncodingEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.207, ptr noundef %0) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !86
  %i.b = call noundef zeroext i1 @_ZN5ImGui10BeginTableEPKciiRK6ImVec2f(ptr noundef nonnull @.str.208, i32 noundef 4, i32 noundef 10177, ptr noundef nonnull align 4 dereferenceable(8) %1, float noundef 0.000000e+00) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #35
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.209, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0) #35
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.210, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0) #35
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.211, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0) #35
  call void @_ZN5ImGui16TableSetupColumnEPKcifj(ptr noundef nonnull @.str.212, i32 noundef 0, float noundef 0.000000e+00, i32 noundef 0) #35
  call void @_ZN5ImGui15TableHeadersRowEv() #35
  %i.c = load i8, ptr %0, align 1, !tbaa !93
  %.not21 = icmp eq i8 %i.c, 0
  br i1 %.not21, label %._crit_edge25, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.b
  %i.d = ptrtoint ptr %0 to i64
  br label %bb.c

._crit_edge25:                                    ; preds = %bb.g, %bb.b
end_hunk_3
begin_hunk_4_@_ZN5ImGui16DebugBreakButtonEPKcS1_:bb.a

_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit:            ; preds = %bb.p, %bb.q
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i, %bb.p ], [ %.sroa.0.0.vec.insert.i, %bb.q ] ; 4 uses
  store <2 x float> %.sroa.0.0.i, ptr %3, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !977
  %i.cs = load <2 x float>, ptr %i.cp, align 8, !tbaa !86
  %i.ct = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.cr, i64 1
  %i.cu = fadd <2 x float> %i.cs, %i.ct           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.cv = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.cw = getelementptr inbounds nuw i8, ptr %i.a, i64 3212
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !1703
  %i.cy = call float @llvm.fmuladd.f32(float %i.cx, float 2.000000e+00, float %i.cv) ; 2 uses
  %i.cz = extractelement <2 x float> %.sroa.0.0.i, i64 1
  store float %i.cy, ptr %4, align 4, !tbaa !269
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.cz, ptr %i.da, align 4, !tbaa !270
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.db = insertelement <2 x float> %.sroa.0.0.i, float %i.cy, i64 0
  %i.dc = fadd <2 x float> %i.cu, %i.db
  store <2 x float> %i.cu, ptr %5, align 8, !tbaa !86
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store <2 x float> %i.dc, ptr %i.dd, align 8, !tbaa !86
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef 0.000000e+00)
  %i.de = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.5.i.i, ptr noundef null, i32 noundef 0)
  br i1 %i.de, label %bb.r, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

bb.r:                                             ; preds = %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 7640
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !807
  %i.dh = call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.5.i.i, i32 noundef %i.dg)
  br i1 %i.dh, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 10212
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !591
  %i.dk = call noundef zeroext i1 @_ZN5ImGui17IsKeyChordPressedEi(i32 noundef %i.dj)
  br i1 %i.dk, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dl = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 232
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !261, !range !120, !noundef !254
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.u, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dl, i64 2924
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !86
  %i.dr = fcmp oeq float %i.dq, 0.000000e+00
  br i1 %i.dr, label %.critedge.i, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

.critedge.i:                                      ; preds = %bb.u
  %i.ds = getelementptr i8, ptr %i.dl, i64 7156
  %i.dt = load i8, ptr %i.ds, align 4, !tbaa !536, !range !120, !noundef !254
  %i.du = icmp eq i8 %i.dt, 0
  br i1 %i.du, label %bb.v, label %_ZN5ImGui14IsMouseClickedEiij.exit.thread

_ZN5ImGui14IsMouseClickedEiij.exit.thread:        ; preds = %bb.u, %bb.t, %.critedge.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8096
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !675
  %i.dx = icmp eq i32 %i.dw, %.5.i.i
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %.critedge.i, %_ZN5ImGui14IsMouseClickedEiij.exit.thread, %bb.r
  %i.dy = phi i64 [ 21, %bb.r ], [ 22, %.critedge.i ], [ 22, %bb.s ], [ 22, %_ZN5ImGui14IsMouseClickedEiij.exit.thread ]
  %i.dz = phi i1 [ false, %bb.r ], [ true, %.critedge.i ], [ true, %bb.s ], [ %i.dx, %_ZN5ImGui14IsMouseClickedEiij.exit.thread ] ; 3 uses
  call void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext false, ptr noundef %1)
  %i.ea = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 3412
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.eb, i64 %i.dy ; 4 uses
  %.sroa.036.0.copyload = load float, ptr %i.ec, align 4, !tbaa !86 ; 3 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 4
  %.sroa.12.0.copyload = load float, ptr %.sroa.12.0..sroa_idx, align 4, !tbaa !86 ; 3 uses
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %.sroa.21.0.copyload = load float, ptr %.sroa.21.0..sroa_idx, align 4, !tbaa !86 ; 3 uses
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 12
  %.sroa.30.0.copyload = load float, ptr %.sroa.30.0..sroa_idx, align 4, !tbaa !86
  %i.ed = fcmp olt float %.sroa.12.0.copyload, %.sroa.21.0.copyload ; 3 uses
  %.017.i = select i1 %i.ed, float %.sroa.21.0.copyload, float %.sroa.12.0.copyload ; 3 uses
  %.016.i = select i1 %i.ed, float %.sroa.12.0.copyload, float %.sroa.21.0.copyload ; 3 uses
  %i.ee = fcmp olt float %.sroa.036.0.copyload, %.017.i ; 3 uses
  %.019.i = select i1 %i.ee, float %.017.i, float %.sroa.036.0.copyload ; 14 uses
  %.118.i = select i1 %i.ee, float %.sroa.036.0.copyload, float %.017.i ; 3 uses
  %i.ef = fcmp olt float %.118.i, %.016.i
  %i.eg = select i1 %i.ef, float %.118.i, float %.016.i
  %i.eh = fsub float %.019.i, %i.eg               ; 2 uses
  %i.ei = fadd float %.019.i, f0x1E3CE508
  %i.ej = fdiv float %i.eh, %i.ei                 ; 3 uses
  %i.ek = fcmp oeq float %i.ej, 0.000000e+00
  br i1 %i.ek, label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.0.i27 = select i1 %i.ed, float -1.000000e+00, float 0.000000e+00 ; 2 uses
  %i.el = fsub float f0xBEAAAAAB, %.0.i27
  %.1.i = select i1 %i.ee, float %i.el, float %.0.i27
  %i.em = fsub float %.118.i, %.016.i
  %i.en = call float @llvm.fmuladd.f32(float %i.eh, float 6.000000e+00, float f0x1E3CE508)
  %i.eo = fdiv float %i.em, %i.en
  %i.ep = fadd float %.1.i, %i.eo
  %i.eq = call float @llvm.fabs.f32(float %i.ep)
  %i.er = fadd float %i.eq, 2.000000e-01
  %i.es = call float @fmodf(float noundef %i.er, float noundef 1.000000e+00) #35
  %i.et = fdiv float %i.es, f0x3E2AAAAB           ; 2 uses
  %i.eu = fptosi float %i.et to i32               ; 2 uses
  %i.ev = sitofp i32 %i.eu to float
  %i.ew = fsub float %i.et, %i.ev                 ; 2 uses
  %i.ex = fsub float 1.000000e+00, %i.ej
  %i.ey = fmul float %.019.i, %i.ex               ; 6 uses
  %i.ez = fneg float %i.ej
  %i.fa = fsub float 1.000000e+00, %i.ew
  %i.fb = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = insertelement <2 x float> poison, float %i.ew, i64 0
  %i.fe = insertelement <2 x float> %i.fd, float %i.fa, i64 1
  %i.ff = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fe, <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.fg = extractelement <2 x float> %i.ff, i64 0
  %i.fh = fmul float %.019.i, %i.fg               ; 3 uses
  %i.fi = extractelement <2 x float> %i.ff, i64 1
  %i.fj = fmul float %.019.i, %i.fi               ; 3 uses
  switch i32 %i.eu, label %bb.ab [
    i32 0, label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit
    i32 1, label %bb.x
    i32 2, label %bb.y
    i32 3, label %bb.z
    i32 4, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.y:                                             ; preds = %bb.w
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.z:                                             ; preds = %bb.w
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.aa:                                            ; preds = %bb.w
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

bb.ab:                                            ; preds = %bb.w
  br label %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit

_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit: ; preds = %bb.w, %bb.v, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.sroa.21.0 = phi float [ %.019.i, %bb.aa ], [ %i.fh, %bb.ab ], [ %.019.i, %bb.v ], [ %i.ey, %bb.x ], [ %i.fj, %bb.y ], [ %.019.i, %bb.z ], [ %i.ey, %bb.w ]
  %.sroa.12.0 = phi float [ %i.ey, %bb.aa ], [ %i.ey, %bb.ab ], [ %.019.i, %bb.v ], [ %.019.i, %bb.x ], [ %.019.i, %bb.y ], [ %i.fh, %bb.z ], [ %i.fj, %bb.w ]
  %.sroa.036.0 = phi float [ %i.fj, %bb.aa ], [ %.019.i, %bb.ab ], [ %.019.i, %bb.v ], [ %i.fh, %bb.x ], [ %i.ey, %bb.y ], [ %i.ey, %bb.z ], [ %.019.i, %bb.w ]
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectji(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %.5.i.i, i32 noundef 0)
  %.sroa.01.0.copyload = load <2 x float>, ptr %5, align 8, !tbaa !86
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.dd, align 8, !tbaa !86
  %i.fk = load ptr, ptr @GImGui, align 8, !tbaa !245
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 3148
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !399
  %i.fn = fmul float %.sroa.30.0.copyload, %i.fm
  %i.fo = insertelement <4 x float> poison, float %.sroa.036.0, i64 0
  %i.fp = insertelement <4 x float> %i.fo, float %.sroa.12.0, i64 1
  %i.fq = insertelement <4 x float> %i.fp, float %.sroa.21.0, i64 2
  %i.fr = insertelement <4 x float> %i.fq, float %i.fn, i64 3 ; 3 uses
  %i.fs = fcmp olt <4 x float> %i.fr, zeroinitializer
  %i.ft = fcmp ogt <4 x float> %i.fr, splat (float 1.000000e+00)
  %i.fu = select <4 x i1> %i.ft, <4 x float> splat (float 1.000000e+00), <4 x float> %i.fr
  %i.fv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> splat (float 2.550000e+02), <4 x float> splat (float 5.000000e-01))
  %i.fw = select <4 x i1> %i.fs, <4 x float> splat (float 5.000000e-01), <4 x float> %i.fv
  %i.fx = fptosi <4 x float> %i.fw to <4 x i32>
  %i.fy = shl <4 x i32> %i.fx, <i32 0, i32 8, i32 16, i32 24>
  %i.fz = call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %i.fy)
  %i.ga = getelementptr inbounds nuw i8, ptr %i.a, i64 3220
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !444
  call void @_ZN5ImGui11RenderFrameE6ImVec2S0_jbf(<2 x float> %.sroa.01.0.copyload, <2 x float> %.sroa.0.0.copyload, i32 noundef %i.fz, i1 noundef zeroext true, float noundef %i.gb)
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 3344
  br i1 %.not, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, label %.lr.ph.i.i31

.lr.ph.i.i31:                                     ; preds = %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit, %.critedge2.i.i34
  %.015.i.i32 = phi ptr [ %i.gg, %.critedge2.i.i34 ], [ %0, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ] ; 5 uses
  %i.gd = load i8, ptr %.015.i.i32, align 1, !tbaa !93
  switch i8 %i.gd, label %.critedge2.i.i34 [
    i8 0, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit
    i8 35, label %bb.ac
  ]

bb.ac:                                            ; preds = %.lr.ph.i.i31
  %i.ge = getelementptr inbounds nuw i8, ptr %.015.i.i32, i64 1
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !93
  %.not14.i.i33 = icmp eq i8 %i.gf, 35
  br i1 %.not14.i.i33, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit, label %.critedge2.i.i34

.critedge2.i.i34:                                 ; preds = %bb.ac, %.lr.ph.i.i31
  %i.gg = getelementptr inbounds nuw i8, ptr %.015.i.i32, i64 1 ; 2 uses
  %exitcond.not.i.i35 = icmp eq ptr %i.gg, inttoptr (i64 -1 to ptr)
  br i1 %exitcond.not.i.i35, label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit, label %.lr.ph.i.i31, !llvm.loop !18

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit: ; preds = %.lr.ph.i.i31, %bb.ac, %.critedge2.i.i34
  %.0.lcssa.i.i.ph = phi ptr [ %.015.i.i32, %bb.ac ], [ inttoptr (i64 -1 to ptr), %.critedge2.i.i34 ], [ %.015.i.i32, %.lr.ph.i.i31 ] ; 2 uses
  %.pre = ptrtoint ptr %.0.lcssa.i.i.ph to i64
  br label %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28

_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28:   ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit
  %.pre-phi = phi i64 [ %.pre, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit ], [ %i.p, %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ]
  %.0.lcssa.i.i = phi ptr [ %.0.lcssa.i.i.ph, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28.loopexit ], [ inttoptr (i64 -1 to ptr), %_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_.exit ] ; 2 uses
  %i.gh = sub i64 %.pre-phi, %i.p
  %i.gi = and i64 %i.gh, 4294967295
  %i.gj = icmp eq i64 %i.gi, 0
  br i1 %i.gj, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28
  %i.gk = load ptr, ptr @GImGui, align 8, !tbaa !245 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 5184
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !309
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 712
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !424
  call void @_ZN5ImGui19RenderTextClippedExEP10ImDrawListRK6ImVec2S4_PKcS6_PS3_S4_PK6ImRect(ptr noundef %i.go, ptr noundef nonnull readonly align 4 dereferenceable(8) %5, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.dd, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i, ptr noundef nonnull readonly %3, ptr noundef nonnull readonly align 4 dereferenceable(8) %i.gc, ptr noundef nonnull readonly %5)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gk, i64 10008
  %i.gq = load i8, ptr %i.gp, align 8, !tbaa !386, !range !120, !noundef !254
  %i.gr = trunc nuw i8 %i.gq to i1
  br i1 %i.gr, label %bb.ae, label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

bb.ae:                                            ; preds = %bb.ad
  call void @_ZN5ImGui15LogRenderedTextEPK6ImVec2PKcS4_(ptr noundef nonnull readonly align 4 dereferenceable(8) %5, ptr noundef nonnull %0, ptr noundef %.0.lcssa.i.i)
  br label %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit

_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit: ; preds = %bb.ae, %bb.ad, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit
  %.0 = phi i1 [ false, %_ZN5ImGui12CalcTextSizeEPKcS1_bf.exit ], [ %i.dz, %_ZN5ImGui19FindRenderedTextEndEPKcS1_.exit.i28 ], [ %i.dz, %bb.ad ], [ %i.dz, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  br label %bb.af

bb.af:                                            ; preds = %bb.a, %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit
  %.1 = phi i1 [ %.0, %_ZN5ImGui17RenderTextClippedERK6ImVec2S2_PKcS4_PS1_S2_PK6ImRect.exit ], [ false, %bb.a ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui23DebugBreakButtonTooltipEbPKc(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN5ImGui13IsItemHoveredEi(i32 noundef 4096)
  br i1 %i.a, label %bb.b, label %_ZN5ImGui16BeginItemTooltipEv.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 0, i32 noundef 0) ; 0 uses
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.432, ptr noundef %1) #35
  tail call void @_ZN5ImGui9SeparatorEv() #35
  %i.c = select i1 %0, ptr @.str.433, ptr @.str.434
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull %i.c, ptr noundef null) #35
  tail call void @_ZN5ImGui9SeparatorEv() #35
  tail call void @_ZN5ImGui15TextUnformattedEPKcS1_(ptr noundef nonnull @.str.435, ptr noundef null) #35
  tail call void @_ZN5ImGui3EndEv()
  br label %_ZN5ImGui16BeginItemTooltipEv.exit

_ZN5ImGui16BeginItemTooltipEv.exit:               ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui16DebugNodeColumnsEP15ImGuiOldColumns(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !1704   ; 2 uses
  %i.b = zext i32 %i.a to i64
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1705
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !1706
  %i.h = tail call noundef zeroext i1 (ptr, ptr, ...) @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %i.c, ptr noundef nonnull @.str.436, i32 noundef %i.a, i32 noundef %i.e, i32 noundef %i.g) #35
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load float, ptr %i.i, align 8, !tbaa !1707 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.l = load float, ptr %i.k, align 4, !tbaa !1708 ; 2 uses
  %i.m = fsub float %i.j, %i.l
  %i.n = fpext float %i.m to double
  %i.o = fpext float %i.l to double
  %i.p = fpext float %i.j to double
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.437, double noundef %i.n, double noundef %i.o, double noundef %i.p) #35
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !655  ; 2 uses
  %i.t = load i32, ptr %i.q, align 8, !tbaa !1709 ; 2 uses
  %i.u = sext i32 %i.t to i64
  %.idx = mul nsw i64 %i.u, 28
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %.idx
  %.not20 = icmp eq i32 %i.t, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  tail call void @_ZN5ImGui7TreePopEv() #35
  br label %bb.c

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.021 = phi ptr [ %i.ag, %.lr.ph ], [ %i.s, %bb.b ] ; 3 uses
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !655
  %i.x = ptrtoint ptr %.021 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 28
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = load float, ptr %.021, align 4, !tbaa !1711 ; 2 uses
  %i.ad = fpext float %i.ac to double
  %i.ae = tail call noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef nonnull %0, float noundef %i.ac) #35
  %i.af = fpext float %i.ae to double
  tail call void (ptr, ...) @_ZN5ImGui10BulletTextEPKcz(ptr noundef nonnull @.str.438, i32 noundef %i.ab, double noundef %i.ad, double noundef %i.af) #35
  %i.ag = getelementptr inbounds nuw i8, ptr %.021, i64 28 ; 2 uses
  %.not = icmp eq ptr %i.ag, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

declare noundef float @_ZN5ImGui23GetColumnOffsetFromNormEPK15ImGuiOldColumnsf(ptr noundef, float noundef) local_unnamed_addr #2

declare void @_ZN5ImGui11TextColoredERK6ImVec4PKcz(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ...) local_unnamed_addr #2

declare void @_ZN5ImGui12TextDisabledEPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN5ImGui38DebugNodeDrawCmdShowMeshAndBoundingBoxEP10ImDrawListPKS0_PK9ImDrawCmdbb(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i1 noundef zeroext %3, i1 noundef zeroext %4) local_unnamed_addr #11 {
bb.a:
  %5 = alloca [3 x %struct.ImVec2], align 16      ; 13 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load <2 x float>, ptr %2, align 4, !tbaa !86
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load <2 x float>, ptr %i.b, align 4, !tbaa !86
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !1101 ; 2 uses
  %i.f = and i32 %i.e, -2
  store i32 %i.f, ptr %i.d, align 8, !tbaa !1101
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.h = load i32, ptr %i.g, align 4, !tbaa !1100 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = load i32, ptr %i.i, align 8, !tbaa !944
  %i.k = add i32 %i.j, %i.h                       ; 4 uses
  %i.l = icmp ult i32 %i.h, %i.k
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  br i1 %3, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN6ImRect3AddERK6ImVec2.exit.us.2
  %.02755.us = phi i32 [ %i.by, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ %i.h, %.lr.ph.split.us.preheader ] ; 6 uses
  %i.s = phi <4 x float> [ %i.bx, %_ZN6ImRect3AddERK6ImVec2.exit.us.2 ], [ <float f0xFF7FFFFF, float f0xFF7FFFFF, float f0x7F7FFFFF, float f0x7F7FFFFF>, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.t = load i32, ptr %i.m, align 8, !tbaa !1096
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.preheader.us, label %.preheader.us.thread

.preheader.us.thread:                             ; preds = %.lr.ph.split.us
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !1098
  %i.w = load i32, ptr %i.p, align 8, !tbaa !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !86
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [20 x i8], ptr %i.v, i64 %i.x
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

.preheader.us:                                    ; preds = %.lr.ph.split.us
  %i.z = load ptr, ptr %i.n, align 8, !tbaa !1097 ; 3 uses
  %i.aa = load ptr, ptr %i.o, align 8, !tbaa !1098
  %i.ab = load i32, ptr %i.p, align 8, !tbaa !1099
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false), !tbaa !86
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [20 x i8], ptr %i.aa, i64 %i.ac ; 2 uses
  %.not.us = icmp eq ptr %i.z, null
  br i1 %.not.us, label %_ZN6ImRect3AddERK6ImVec2.exit.us, label %bb.b

bb.b:                                             ; preds = %.preheader.us
  %i.ae = zext i32 %.02755.us to i64
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.z, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !275
  %i.ah = zext i16 %i.ag to i32
  br label %_ZN6ImRect3AddERK6ImVec2.exit.us

_ZN6ImRect3AddERK6ImVec2.exit.us:                 ; preds = %.preheader.us.thread, %bb.b, %.preheader.us
  %.not.us116 = phi i1 [ false, %bb.b ], [ true, %.preheader.us ], [ true, %.preheader.us.thread ] ; 2 uses
  %i.ai = phi ptr [ %i.ad, %bb.b ], [ %i.ad, %.preheader.us ], [ %i.y, %.preheader.us.thread ] ; 3 uses
  %i.aj = phi ptr [ %i.z, %bb.b ], [ null, %.preheader.us ], [ null, %.preheader.us.thread ] ; 2 uses
  %i.ak = phi i32 [ %i.ah, %bb.b ], [ %.02755.us, %.preheader.us ], [ %.02755.us, %.preheader.us.thread ]
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [20 x i8], ptr %i.ai, i64 %i.al
  %i.an = load i64, ptr %i.am, align 4, !tbaa !86 ; 2 uses
  store i64 %i.an, ptr %5, align 16, !tbaa !86
  %i.ao = bitcast i64 %i.an to <2 x float>
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0> ; 3 uses
  %i.aq = fcmp olt <4 x float> %i.s, %i.ap
  %i.ar = fcmp ogt <4 x float> %i.s, %i.ap
end_hunk_4
