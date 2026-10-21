Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot_items?download=true
inline.NumInlined: 15730
inline.NumDeleted: 1729
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN6ImPlot13BustItemCacheEv:bb.a
  %i.x = load i32, ptr %i.a, align 8, !tbaa !3153
  %i.y = sext i32 %i.x to i64
  %i.z = icmp slt i64 %indvars.iv.next, %i.y
  br i1 %i.z, label %bb.b, label %.preheader, !llvm.loop !3151

._crit_edge:                                      ; preds = %_ZN15ImPlotItemGroup5ResetEv.exit15, %.preheader
  ret void

bb.e:                                             ; preds = %.lr.ph18, %_ZN15ImPlotItemGroup5ResetEv.exit15
  %indvars.iv20 = phi i64 [ 0, %.lr.ph18 ], [ %indvars.iv.next21, %_ZN15ImPlotItemGroup5ResetEv.exit15 ] ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !1470
  %i.ab = getelementptr inbounds nuw [336 x i8], ptr %i.aa, i64 %indvars.iv20 ; 11 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 144 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1462 ; 2 uses
  %.not.i.i.i.i12 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i12, label %_ZN12ImGuiStorage5ClearEv.exit.i.i13, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 140
  store i32 0, ptr %i.ag, align 4, !tbaa !1463
  store i32 0, ptr %i.af, align 8, !tbaa !1464
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ae) #16
  store ptr null, ptr %i.ad, align 8, !tbaa !1462
  br label %_ZN12ImGuiStorage5ClearEv.exit.i.i13

_ZN12ImGuiStorage5ClearEv.exit.i.i13:             ; preds = %bb.f, %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !878 ; 2 uses
  %.not.i.i.i14 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i14, label %_ZN15ImPlotItemGroup5ResetEv.exit15, label %bb.g

bb.g:                                             ; preds = %_ZN12ImGuiStorage5ClearEv.exit.i.i13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  store i32 0, ptr %i.aj, align 4, !tbaa !1465
  store i32 0, ptr %i.ac, align 8, !tbaa !1466
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ai) #16
  store ptr null, ptr %i.ah, align 8, !tbaa !878
  br label %_ZN15ImPlotItemGroup5ResetEv.exit15

_ZN15ImPlotItemGroup5ResetEv.exit15:              ; preds = %_ZN12ImGuiStorage5ClearEv.exit.i.i13, %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 156
  store i32 0, ptr %i.ak, align 4, !tbaa !1467
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  store i32 0, ptr %i.al, align 8, !tbaa !1454
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 48
  store i32 0, ptr %i.am, align 8, !tbaa !1457
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  store i32 0, ptr %i.an, align 8, !tbaa !1468
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 160
  store i32 0, ptr %i.ao, align 8, !tbaa !1469
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %i.ap = load i32, ptr %i.e, align 8, !tbaa !3154
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next21, %i.aq
  br i1 %i.ar, label %bb.e, label %._crit_edge, !llvm.loop !3152
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot14BustColorCacheEPKc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 4 uses
  %i.b = icmp eq ptr %0, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6ImPlot13BustItemCacheEv()
  br label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit.thread

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !3155
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3246 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !3257
  %i.g = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef nonnull %0, ptr noundef null) #16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i32 noundef %i.g, i32 noundef -1) #16 ; 2 uses
  %.not.i = icmp eq i32 %i.i, -1
  br i1 %.not.i, label %_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit.thread, label %_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit

_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit:         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1461 ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit
  %i.l = sext i32 %i.i to i64
  %i.m = getelementptr inbounds [2560 x i8], ptr %i.k, i64 %i.l ; 11 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2400
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 2424 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !1462 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i, label %_ZN12ImGuiStorage5ClearEv.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 2416
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 2420
  store i32 0, ptr %i.r, align 4, !tbaa !1463
  store i32 0, ptr %i.q, align 8, !tbaa !1464
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.p) #16
  store ptr null, ptr %i.o, align 8, !tbaa !1462
  br label %_ZN12ImGuiStorage5ClearEv.exit.i.i

_ZN12ImGuiStorage5ClearEv.exit.i.i:               ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 2408 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !878  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i, label %_ZN15ImPlotItemGroup5ResetEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN12ImGuiStorage5ClearEv.exit.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 2404
  store i32 0, ptr %i.u, align 4, !tbaa !1465
  store i32 0, ptr %i.n, align 8, !tbaa !1466
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.t) #16
  store ptr null, ptr %i.s, align 8, !tbaa !878
  br label %_ZN15ImPlotItemGroup5ResetEv.exit

_ZN15ImPlotItemGroup5ResetEv.exit:                ; preds = %_ZN12ImGuiStorage5ClearEv.exit.i.i, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 2436
  store i32 0, ptr %i.v, align 4, !tbaa !1467
  %i.w = getelementptr inbounds nuw i8, ptr %i.m, i64 2432
  store i32 0, ptr %i.w, align 8, !tbaa !1454
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 2328
  store i32 0, ptr %i.x, align 8, !tbaa !1457
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 2344
  store i32 0, ptr %i.y, align 8, !tbaa !1468
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 2440
  store i32 0, ptr %i.z, align 8, !tbaa !1469
  br label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit.thread

_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit.thread:  ; preds = %bb.c, %_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.ab = tail call noundef i32 @_ZNK12ImGuiStorage6GetIntEji(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i32 noundef %i.g, i32 noundef -1) #16 ; 2 uses
  %.not.i12 = icmp eq i32 %i.ab, -1
  br i1 %.not.i12, label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit.thread, label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit

_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit:      ; preds = %_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit.thread
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !1470 ; 2 uses
  %.not11 = icmp eq ptr %i.ad, null
  br i1 %.not11, label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit.thread, label %bb.g

bb.g:                                             ; preds = %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit
  %i.ae = sext i32 %i.ab to i64
  %i.af = getelementptr inbounds [336 x i8], ptr %i.ad, i64 %i.ae ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 120
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 144 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !1462 ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i13, label %_ZN12ImGuiStorage5ClearEv.exit.i.i14, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 136
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 140
  store i32 0, ptr %i.ak, align 4, !tbaa !1463
  store i32 0, ptr %i.aj, align 8, !tbaa !1464
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.ai) #16
  store ptr null, ptr %i.ah, align 8, !tbaa !1462
  br label %_ZN12ImGuiStorage5ClearEv.exit.i.i14

_ZN12ImGuiStorage5ClearEv.exit.i.i14:             ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 128 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !878 ; 2 uses
  %.not.i.i.i15 = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i15, label %_ZN15ImPlotItemGroup5ResetEv.exit16, label %bb.i

bb.i:                                             ; preds = %_ZN12ImGuiStorage5ClearEv.exit.i.i14
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 124
  store i32 0, ptr %i.an, align 4, !tbaa !1465
  store i32 0, ptr %i.ag, align 8, !tbaa !1466
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef nonnull %i.am) #16
  store ptr null, ptr %i.al, align 8, !tbaa !878
  br label %_ZN15ImPlotItemGroup5ResetEv.exit16

_ZN15ImPlotItemGroup5ResetEv.exit16:              ; preds = %_ZN12ImGuiStorage5ClearEv.exit.i.i14, %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 156
  store i32 0, ptr %i.ao, align 4, !tbaa !1467
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  store i32 0, ptr %i.ap, align 8, !tbaa !1454
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i32 0, ptr %i.aq, align 8, !tbaa !1457
  %i.ar = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  store i32 0, ptr %i.ar, align 8, !tbaa !1468
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 160
  store i32 0, ptr %i.as, align 8, !tbaa !1469
  br label %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit.thread

_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit.thread: ; preds = %_ZN6ImPoolI10ImPlotPlotE8GetByKeyEj.exit.thread, %_ZN15ImPlotItemGroup5ResetEv.exit, %_ZN15ImPlotItemGroup5ResetEv.exit16, %_ZN6ImPoolI13ImPlotSubplotE8GetByKeyEj.exit, %bb.b
  ret void
}

declare noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %3 = alloca %struct.ImVec4, align 8             ; 6 uses
  %i.b = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 54 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !151  ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.1) #16 ; 0 uses
  %.pre = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %.pre141 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !151
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre141, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = phi ptr [ %.pre, %bb.b ], [ %i.b, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 2550
  %i.i = load i8, ptr %i.h, align 2, !tbaa !872, !range !92, !noundef !93
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN6ImPlotL9SetupLockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  tail call void @_ZN6ImPlot11SetupFinishEv() #16
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !151
  br label %_ZN6ImPlotL9SetupLockEv.exit

_ZN6ImPlotL9SetupLockEv.exit:                     ; preds = %bb.c, %bb.d
  %i.l = phi ptr [ %.pre.i, %bb.d ], [ %i.f, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 2550
  store i8 1, ptr %i.m, align 2, !tbaa !872
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.n = call noundef ptr @_ZN6ImPlot17RegisterOrGetItemEPKciPb(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.a) ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !140
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1336 ; 6 uses
  %.not127 = icmp eq i32 %2, -1
  br i1 %.not127, label %bb.k, label %bb.e

bb.e:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.q = sext i32 %2 to i64                       ; 2 uses
  %i.r = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 12
  %.val133 = load float, ptr %i.s, align 4, !tbaa !1499
  %i.t = fcmp oeq float %.val133, -1.000000e+00
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %i.r) #16
  br label %.sink.split

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.w = getelementptr inbounds [16 x i8], ptr %i.v, i64 %i.q ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 12
  %.val132 = load float, ptr %i.x, align 4, !tbaa !1499
  %i.y = fcmp oeq float %.val132, -1.000000e+00
  br i1 %i.y, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %i.w) #16
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.aa = load i8, ptr %i.a, align 1, !tbaa !1453, !range !92, !noundef !93
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ac = call noundef i32 @_ZN6ImPlot20NextColormapColorU32Ev() #16
  br label %.sink.split

bb.k:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.ad = load i8, ptr %i.a, align 1, !tbaa !1453, !range !92, !noundef !93
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = call noundef i32 @_ZN6ImPlot20NextColormapColorU32Ev() #16
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.j, %bb.f, %bb.l
  %.sink = phi i32 [ %i.af, %bb.l ], [ %i.u, %bb.f ], [ %i.ac, %bb.j ], [ %i.z, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %.sink, ptr %i.ag, align 4, !tbaa !1250
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.k, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 1456 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !3258, !range !92, !noundef !93
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ak = load i8, ptr %i.a, align 1, !tbaa !1453, !range !92, !noundef !93
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 1460
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3259
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 1457
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !3260, !range !92, !noundef !93
  %i.ar = xor i8 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  store i8 %i.ar, ptr %i.as, align 4, !tbaa !880
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.au = load i8, ptr %i.at, align 4, !tbaa !880, !range !92, !noundef !93
  %i.av = trunc nuw i8 %i.au to i1                ; 2 uses
  br i1 %i.av, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.p, align 8, !tbaa !98
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.aw, align 8, !tbaa !98
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ax, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ay, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.az, align 8, !tbaa !98
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 1448
  store float -1.000000e+00, ptr %i.ba, align 8, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.bb, align 8, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.bc, align 8, !tbaa !98
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 1416
  store float -1.000000e+00, ptr %i.bd, align 8, !tbaa !101
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 1420
  store i32 -1, ptr %i.be, align 4, !tbaa !102
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 1457
  store i8 0, ptr %i.bf, align 1, !tbaa !103
  store i8 0, ptr %i.ah, align 8, !tbaa !104
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.n, ptr %i.bg, align 8, !tbaa !141
  store ptr null, ptr %i.o, align 8, !tbaa !140
  br label %bb.bg

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 4 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !1250
  %i.bj = call { <2 x float>, <2 x float> } @_ZN5ImGui23ColorConvertU32ToFloat4Ej(i32 noundef %i.bi) #16 ; 2 uses
  %i.bk = extractvalue { <2 x float>, <2 x float> } %i.bj, 0
  store <2 x float> %i.bk, ptr %3, align 8
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %5 = extractvalue { <2 x float>, <2 x float> } %i.bj, 1
  store <2 x float> %5, ptr %4, align 8
  %i.bl = getelementptr i8, ptr %i.b, i64 1348    ; 2 uses
  %.val131 = load float, ptr %i.bl, align 4, !tbaa !1499
  %i.bm = fcmp oeq float %.val131, -1.000000e+00
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bn = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.bo = getelementptr i8, ptr %i.bn, i64 440
  %.val.i = load float, ptr %i.bo, align 4, !tbaa !1499
  %i.bp = fcmp oeq float %.val.i, -1.000000e+00
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 428
  %i.br = select i1 %i.bp, ptr %3, ptr %i.bq
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.bs = phi ptr [ %i.br, %bb.t ], [ %i.p, %bb.s ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 4 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !1460
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1352 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.b, i64 1364    ; 3 uses
  %.val130 = load float, ptr %i.bu, align 4, !tbaa !1499
  %i.bv = fcmp oeq float %.val130, -1.000000e+00
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bw = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.bx = getelementptr i8, ptr %i.bw, i64 456
  %.val.i134 = load float, ptr %i.bx, align 4, !tbaa !1499
  %i.by = fcmp oeq float %.val.i134, -1.000000e+00
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 444
  %i.ca = select i1 %i.by, ptr %3, ptr %i.bz
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cb = phi ptr [ %i.ca, %bb.v ], [ %i.bt, %bb.u ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 4 dereferenceable(16) %i.cb, i64 16, i1 false), !tbaa.struct !1460
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 1368 ; 2 uses
  %i.cd = getelementptr i8, ptr %i.b, i64 1380    ; 2 uses
  %.val129 = load float, ptr %i.cd, align 4, !tbaa !1499
  %i.ce = fcmp oeq float %.val129, -1.000000e+00
  br i1 %i.ce, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cf = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.cg = getelementptr i8, ptr %i.cf, i64 472
  %.val.i135 = load float, ptr %i.cg, align 4, !tbaa !1499
  %i.ch = fcmp oeq float %.val.i135, -1.000000e+00
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 460
  %i.cj = select i1 %i.ch, ptr %i.p, ptr %i.ci
  br label %bb.y

bb.y:                                             ; preds = %bb.w, %bb.x
  %i.ck = phi ptr [ %i.cj, %bb.x ], [ %i.cc, %bb.w ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, ptr noundef nonnull align 4 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !1460
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 1384 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.b, i64 1396    ; 3 uses
  %.val128 = load float, ptr %i.cm, align 4, !tbaa !1499
  %i.cn = fcmp oeq float %.val128, -1.000000e+00
  br i1 %i.cn, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.co = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.cp = getelementptr i8, ptr %i.co, i64 488
  %.val.i136 = load float, ptr %i.cp, align 4, !tbaa !1499
  %i.cq = fcmp oeq float %.val.i136, -1.000000e+00
  %i.cr = getelementptr inbounds nuw i8, ptr %i.b, i64 476
  %i.cs = select i1 %i.cq, ptr %i.p, ptr %i.cr
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.ct = phi ptr [ %i.cs, %bb.z ], [ %i.cl, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 4 dereferenceable(16) %i.ct, i64 16, i1 false), !tbaa.struct !1460
  %i.cu = getelementptr inbounds nuw i8, ptr %i.b, i64 1400 ; 2 uses
  %i.cv = getelementptr i8, ptr %i.b, i64 1412
  %.val = load float, ptr %i.cv, align 4, !tbaa !1499
  %i.cw = fcmp oeq float %.val, -1.000000e+00
  br i1 %i.cw, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.cx = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 3 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 504
  %.val.i.i = load float, ptr %i.cy, align 4, !tbaa !1499
  %i.cz = fcmp oeq float %.val.i.i, -1.000000e+00
  br i1 %i.cz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.da = call { <2 x float>, <2 x float> } @_ZN6ImPlot12GetAutoColorEi(i32 noundef 4) #16
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit

bb.ad:                                            ; preds = %bb.ab
  %i.db = getelementptr inbounds nuw i8, ptr %i.cx, i64 492
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.db, align 4, !tbaa !98
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cx, i64 500
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !98
  %i.dc = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %i.dd = insertvalue { <2 x float>, <2 x float> } %i.dc, <2 x float> %.sroa.3.0.copyload.i, 1
  br label %_ZN6ImPlotL17GetStyleColorVec4Ei.exit

_ZN6ImPlotL17GetStyleColorVec4Ei.exit:            ; preds = %bb.ac, %bb.ad
  %.fca.1.insert.merged.i = phi { <2 x float>, <2 x float> } [ %i.da, %bb.ac ], [ %i.dd, %bb.ad ] ; 2 uses
  %i.de = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 0
  %i.df = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i, 1
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.cu, align 8, !tbaa !98
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1408
  %.sroa.5.0.copyload = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !98
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN6ImPlotL17GetStyleColorVec4Ei.exit
  %.sroa.5.0 = phi <2 x float> [ %i.df, %_ZN6ImPlotL17GetStyleColorVec4Ei.exit ], [ %.sroa.5.0.copyload, %bb.ae ]
  %.sroa.0.0 = phi <2 x float> [ %i.de, %_ZN6ImPlotL17GetStyleColorVec4Ei.exit ], [ %.sroa.0.0.copyload, %bb.ae ]
  store <2 x float> %.sroa.0.0, ptr %i.cu, align 8, !tbaa !98
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.b, i64 1408
  store <2 x float> %.sroa.5.0, ptr %.sroa.5.0..sroa_idx2, align 8, !tbaa !98
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 1416 ; 3 uses
  %i.dh = load float, ptr %i.dg, align 8, !tbaa !101 ; 2 uses
  %i.di = fcmp olt float %i.dh, 0.000000e+00
  br i1 %i.di, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !3261
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %i.dl = phi float [ %i.dk, %bb.ag ], [ %i.dh, %bb.af ] ; 2 uses
  store float %i.dl, ptr %i.dg, align 8, !tbaa !101
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 1420 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !102 ; 2 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 260
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3262
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.dr = phi i32 [ %i.dq, %bb.ai ], [ %i.dn, %bb.ah ]
  store i32 %i.dr, ptr %i.dm, align 4, !tbaa !102
  %i.ds = getelementptr inbounds nuw i8, ptr %i.b, i64 1424 ; 3 uses
  %i.dt = load float, ptr %i.ds, align 8, !tbaa !171 ; 2 uses
  %i.du = fcmp olt float %i.dt, 0.000000e+00
  br i1 %i.du, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.dw = load float, ptr %i.dv, align 8, !tbaa !3263
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %i.dx = phi float [ %i.dw, %bb.ak ], [ %i.dt, %bb.aj ] ; 2 uses
  store float %i.dx, ptr %i.ds, align 8, !tbaa !171
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 1428 ; 3 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !174 ; 2 uses
  %i.ea = fcmp olt float %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !3264
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  %i.ed = phi float [ %i.ec, %bb.am ], [ %i.dz, %bb.al ] ; 2 uses
  store float %i.ed, ptr %i.dy, align 4, !tbaa !174
  %i.ee = getelementptr inbounds nuw i8, ptr %i.b, i64 1432 ; 2 uses
  %i.ef = load float, ptr %i.ee, align 8, !tbaa !3265 ; 2 uses
  %i.eg = fcmp olt float %i.ef, 0.000000e+00
  br i1 %i.eg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %i.ei = load float, ptr %i.eh, align 8, !tbaa !3266
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.ej = phi float [ %i.ei, %bb.ao ], [ %i.ef, %bb.an ] ; 2 uses
  store float %i.ej, ptr %i.ee, align 8, !tbaa !3265
  %i.ek = getelementptr inbounds nuw i8, ptr %i.b, i64 1436 ; 2 uses
  %i.el = load float, ptr %i.ek, align 4, !tbaa !914 ; 2 uses
  %i.em = fcmp olt float %i.el, 0.000000e+00
  br i1 %i.em, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.en = getelementptr inbounds nuw i8, ptr %i.b, i64 276
  %i.eo = load float, ptr %i.en, align 4, !tbaa !3267
  br label %bb.ar

bb.ar:                                            ; preds = %bb.ap, %bb.aq
  %i.ep = phi float [ %i.eo, %bb.aq ], [ %i.el, %bb.ap ]
  store float %i.ep, ptr %i.ek, align 4, !tbaa !914
  %i.eq = getelementptr inbounds nuw i8, ptr %i.b, i64 1440 ; 2 uses
  %i.er = load float, ptr %i.eq, align 8, !tbaa !920 ; 2 uses
  %i.es = fcmp olt float %i.er, 0.000000e+00
  br i1 %i.es, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.et = getelementptr inbounds nuw i8, ptr %i.b, i64 280
end_hunk_0
begin_hunk_1_@_ZN6ImPlot13PlotDigitalExINS_13GetterFuncPtrEEEvPKcT_i:bb.a
bb.t:                                             ; preds = %bb.s
  %i.do = load float, ptr %i.ai, align 4, !tbaa !1447 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 2492
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !1451
  %i.dr = fcmp oge float %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dk, i64 2496
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = fcmp olt float %i.df, %i.dt
  %or.cond.i58 = select i1 %i.dr, i1 %i.du, i1 false
  br i1 %or.cond.i58, label %_ZNK6ImRect8ContainsERK6ImVec2.exit, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit:              ; preds = %bb.t
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 2500
  %i.dw = load float, ptr %i.dv, align 4, !tbaa !1452
  %i.dx = fcmp olt float %i.do, %i.dw
  br i1 %i.dx, label %bb.v, label %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit.thread:       ; preds = %bb.s, %bb.t, %_ZNK6ImRect8ContainsERK6ImVec2.exit
  %i.dy = fcmp ult float %i.di, %i.dm
  br i1 %i.dy, label %_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread, label %bb.u

bb.u:                                             ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread
  %i.dz = load float, ptr %i.aj, align 4, !tbaa !1447 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dk, i64 2492
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !1451
  %i.ec = fcmp oge float %i.dz, %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dk, i64 2496
  %i.ee = load float, ptr %i.ed, align 4
  %i.ef = fcmp olt float %i.di, %i.ee
  %or.cond.i59 = select i1 %i.ec, i1 %i.ef, i1 false
  br i1 %or.cond.i59, label %_ZNK6ImRect8ContainsERK6ImVec2.exit60, label %_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit60:            ; preds = %bb.u
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dk, i64 2500
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !1452
  %i.ei = fcmp olt float %i.dz, %i.eh
  br i1 %i.ei, label %bb.v, label %_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread

bb.v:                                             ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit60, %_ZNK6ImRect8ContainsERK6ImVec2.exit
  %i.ej = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %i.am) #16
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.c, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.ej, float noundef 0.000000e+00, i32 noundef 0) #16
  br label %_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread

_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread:     ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit.thread, %bb.u, %bb.v, %_ZNK6ImRect8ContainsERK6ImVec2.exit60, %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1254
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  br label %bb.w

bb.w:                                             ; preds = %_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread, %bb.f
  %.149 = phi i32 [ %.04866, %bb.f ], [ %i.bq, %_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread ] ; 2 uses
  %.4 = phi i32 [ %.04767, %bb.f ], [ %.1.lcssa, %_ZNK6ImRect8ContainsERK6ImVec2.exit60.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  %i.ek = add nsw i32 %.4, 1                      ; 2 uses
  %i.el = icmp slt i32 %i.ek, %i.f
  br i1 %i.el, label %bb.e, label %bb.d, !llvm.loop !3276

bb.x:                                             ; preds = %bb.d, %bb.b
  %i.em = phi ptr [ %.pre, %bb.d ], [ %i.d, %bb.b ] ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.en, align 4, !tbaa !98
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.eo, align 4, !tbaa !98
  %i.ep = getelementptr inbounds nuw i8, ptr %i.em, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ep, align 4, !tbaa !98
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.eq, align 4, !tbaa !98
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.er, align 4, !tbaa !98
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 1448
  store float -1.000000e+00, ptr %i.es, align 4, !tbaa !100
  %i.et = getelementptr inbounds nuw i8, ptr %i.em, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.et, align 4, !tbaa !98
  %i.eu = getelementptr inbounds nuw i8, ptr %i.em, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.eu, align 4, !tbaa !98
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 1416
  store float -1.000000e+00, ptr %i.ev, align 4, !tbaa !101
  %i.ew = getelementptr inbounds nuw i8, ptr %i.em, i64 1420
  store i32 -1, ptr %i.ew, align 4, !tbaa !102
  %i.ex = getelementptr inbounds nuw i8, ptr %i.em, i64 1457
  store i8 0, ptr %i.ex, align 1, !tbaa !103
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 1456
  store i8 0, ptr %i.ey, align 4, !tbaa !104
  %i.ez = getelementptr inbounds nuw i8, ptr %i.em, i64 104 ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !140
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 112
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !141
  store ptr null, ptr %i.ez, align 8, !tbaa !140
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot9PlotImageEPKc12ImTextureRefRK11ImPlotPointS5_RK6ImVec2S8_RK6ImVec4i(ptr noundef %0, ptr %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, i32 noundef %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %"struct.ImPlot::FitterRect", align 8 ; 6 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !1254
  %i.a = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !1254
  %i.b = tail call noundef zeroext i1 @_ZN6ImPlot9BeginItemEPKcii(ptr noundef %0, i32 noundef 0, i32 noundef -1)
  br i1 %i.b, label %bb.b, label %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 2551
  %i.e = load i8, ptr %i.d, align 1, !tbaa !91, !range !92, !noundef !93
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 2448
  %i.i = load i32, ptr %i.h, align 8, !tbaa !94
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2452
  %i.m = load i32, ptr %i.l, align 4, !tbaa !95
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [376 x i8], ptr %i.g, i64 %i.n
  call void @_ZNK6ImPlot10FitterRect3FitER10ImPlotAxisS2_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(372) %i.k, ptr noundef nonnull align 8 dereferenceable(372) %i.o)
  br label %bb.d

_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  %i.p = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %7) #16 ; 2 uses
  %i.q = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 %i.p, ptr %i.t, align 4, !tbaa !1250
  %i.u = call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #16
  %i.v = load double, ptr %3, align 8, !tbaa !1252
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.x = load double, ptr %i.w, align 8, !tbaa !1253
  %i.y = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.v, double noundef %i.x, i32 noundef -1, i32 noundef -1) #16
  store <2 x float> %i.y, ptr %10, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16
  %i.z = load double, ptr %4, align 8, !tbaa !1252
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !1253
  %i.ac = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.z, double noundef %i.ab, i32 noundef -1, i32 noundef -1) #16
  store <2 x float> %i.ac, ptr %11, align 8
  call void @_ZN6ImPlot16PushPlotClipRectEf(float noundef 0.000000e+00) #16
  call void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224) %i.u, ptr %1, i64 %2, ptr noundef nonnull align 4 dereferenceable(8) %10, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.p) #16
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.ad = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 14 uses
  call void @_ZN6ImPlot15PopPlotClipRectEv() #16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1336
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ae, align 4, !tbaa !98
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 1352
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.af, align 4, !tbaa !98
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 1368
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ag, align 4, !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 1384
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ah, align 4, !tbaa !98
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 1400
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00>, ptr %i.ai, align 4, !tbaa !98
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 1448
  store float -1.000000e+00, ptr %i.aj, align 4, !tbaa !100
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 1440
  store <2 x float> splat (float -1.000000e+00), ptr %i.ak, align 4, !tbaa !98
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 1424
  store <4 x float> splat (float -1.000000e+00), ptr %i.al, align 4, !tbaa !98
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 1416
  store float -1.000000e+00, ptr %i.am, align 4, !tbaa !101
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 1420
  store i32 -1, ptr %i.an, align 4, !tbaa !102
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 1457
  store i8 0, ptr %i.ao, align 1, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 1456
  store i8 0, ptr %i.ap, align 4, !tbaa !104
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ad, i64 104 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !140
  %i.as = getelementptr inbounds nuw i8, ptr %i.ad, i64 112
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !141
  store ptr null, ptr %i.aq, align 8, !tbaa !140
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16
  br label %bb.e

bb.e:                                             ; preds = %_ZN6ImPlot11BeginItemExINS_10FitterRectEEEbPKcRKT_ii.exit, %bb.d
  ret void
}

declare void @_ZN10ImDrawList8AddImageE12ImTextureRefRK6ImVec2S3_S3_S3_j(ptr noundef nonnull align 8 dereferenceable(224), ptr, i64, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot8PlotTextEPKcddRK6ImVec2i(ptr noundef %0, double noundef %1, double noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3, i32 noundef %4) local_unnamed_addr #4 {
bb.a:
  %5 = alloca %struct.ImVec4, align 8             ; 5 uses
  %6 = alloca %struct.ImVec2, align 8             ; 7 uses
  %7 = alloca %struct.ImPlotPoint, align 8        ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 6 uses
  %9 = alloca %struct.ImPlotPoint, align 8        ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !151  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.2) #16 ; 0 uses
  %.pre = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %.pre125 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !151
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre125, %bb.b ], [ %i.c, %bb.a ] ; 2 uses
  %i.f = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2550
  %i.h = load i8, ptr %i.g, align 2, !tbaa !872, !range !92, !noundef !93
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN6ImPlotL9SetupLockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  tail call void @_ZN6ImPlot11SetupFinishEv() #16
  %.pre.i = load ptr, ptr %i.j, align 8, !tbaa !151
  br label %_ZN6ImPlotL9SetupLockEv.exit

_ZN6ImPlotL9SetupLockEv.exit:                     ; preds = %bb.c, %bb.d
  %i.k = phi ptr [ %.pre.i, %bb.d ], [ %i.e, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 2550
  store i8 1, ptr %i.l, align 2, !tbaa !872
  %i.m = tail call noundef ptr @_ZN6ImPlot15GetPlotDrawListEv() #16 ; 2 uses
  tail call void @_ZN6ImPlot16PushPlotClipRectEf(float noundef 0.000000e+00) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.n = load ptr, ptr @GImPlot, align 8, !tbaa !97 ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 632
  %.val.i.i.i = load float, ptr %i.o, align 4, !tbaa !1499
  %i.p = fcmp oeq float %.val.i.i.i, -1.000000e+00
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.q = tail call { <2 x float>, <2 x float> } @_ZN6ImPlot12GetAutoColorEi(i32 noundef 12) #16
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

bb.f:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 620
  %.sroa.0.0.copyload.i.i = load <2 x float>, ptr %i.r, align 4, !tbaa !98
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 628
  %.sroa.3.0.copyload.i.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !98
  %i.s = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i.i, 0
  %i.t = insertvalue { <2 x float>, <2 x float> } %i.s, <2 x float> %.sroa.3.0.copyload.i.i, 1
  br label %_ZN6ImPlotL16GetStyleColorU32Ei.exit

_ZN6ImPlotL16GetStyleColorU32Ei.exit:             ; preds = %bb.e, %bb.f
  %.fca.1.insert.merged.i.i = phi { <2 x float>, <2 x float> } [ %i.q, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %i.u = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i.i, 0
  store <2 x float> %i.u, ptr %5, align 8
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %12 = extractvalue { <2 x float>, <2 x float> } %.fca.1.insert.merged.i.i, 1
  store <2 x float> %12, ptr %11, align 8
  %i.v = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %5) #16 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  %i.w = and i32 %4, 1024
  %.not122 = icmp eq i32 %i.w, 0
  %i.x = call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00) #16 ; 3 uses
  br i1 %.not122, label %bb.y, label %bb.g

bb.g:                                             ; preds = %_ZN6ImPlotL16GetStyleColorU32Ei.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  store double %1, ptr %7, align 8, !tbaa !1252
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %2, ptr %i.y, align 8, !tbaa !1253
  %i.z = call <2 x float> @_ZN6ImPlot12PlotToPixelsERK11ImPlotPointii(ptr noundef nonnull align 8 dereferenceable(16) %7, i32 noundef -1, i32 noundef -1) #16 ; 2 uses
  %i.aa = fmul <2 x float> %i.x, splat (float 5.000000e-01) ; 3 uses
  %i.ab = fmul <2 x float> %i.aa, splat (float 5.000000e-01)
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ad = fsub <2 x float> %i.z, %i.ac
  %i.ae = fadd <2 x float> %i.z, %i.ac
  %i.af = shufflevector <2 x float> %i.ad, <2 x float> %i.ae, <2 x i32> <i32 0, i32 3>
  %i.ag = load <2 x float>, ptr %3, align 4, !tbaa !98
  %i.ah = fadd <2 x float> %i.ag, %i.af
  store <2 x float> %i.ah, ptr %6, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %i.ai = load ptr, ptr @GImPlot, align 8, !tbaa !97
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !151
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 2551
  %i.am = load i8, ptr %i.al, align 1, !tbaa !91, !range !92, !noundef !93
  %i.an = trunc nuw i8 %i.am to i1
  %i.ao = and i32 %4, 2
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond.not = and i1 %i.ap, %i.an
  br i1 %or.cond.not, label %bb.h, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit48

bb.h:                                             ; preds = %bb.g
  %i.aq = call { double, double } @_ZN6ImPlot12PixelsToPlotERK6ImVec2ii(ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef -1, i32 noundef -1) #16 ; 2 uses
  %i.ar = extractvalue { double, double } %i.aq, 0 ; 10 uses
  %i.as = extractvalue { double, double } %i.aq, 1 ; 10 uses
  %i.at = call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 2448
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !94
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [376 x i8], ptr %i.au, i64 %i.ax ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.at, i64 2452
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !95
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [376 x i8], ptr %i.au, i64 %i.bb ; 7 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !1539
  %i.bf = and i32 %i.be, 4096
  %.not16.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not16.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !1540
  %i.bi = fcmp ult double %i.as, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fcmp ugt double %i.as, %i.bk
  %.not19.i.i = select i1 %i.bi, i1 true, i1 %i.bl
  %i.bm = call double @llvm.fabs.f64(double %i.ar)
  %or.cond.i.i.i = fcmp ugt double %i.bm, f0x7FEFFFFFFFFFFFFF
  %or.cond.i.i = or i1 %or.cond.i.i.i, %.not19.i.i
  br i1 %or.cond.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.k

bb.j:                                             ; preds = %bb.h
  %.old.i.i = call double @llvm.fabs.f64(double %i.ar)
  %or.cond.i.old.i.i = fcmp ugt double %.old.i.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !1541
  %i.bp = fcmp ult double %i.ar, %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.br = load double, ptr %i.bq, align 8
  %i.bs = fcmp ugt double %i.ar, %i.br
  %or.cond15.i.i = select i1 %i.bp, i1 true, i1 %i.bs
  br i1 %or.cond15.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ay, i64 40 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !1542 ; 2 uses
  %i.bv = fcmp olt double %i.ar, %i.bu
  %..i.i = select i1 %i.bv, double %i.ar, double %i.bu
  store double %..i.i, ptr %i.bt, align 8, !tbaa !1542
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ay, i64 48 ; 2 uses
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !1543 ; 2 uses
  %i.by = fcmp ogt double %i.ar, %i.bx
  %i.bz = select i1 %i.by, double %i.ar, double %i.bx
  store double %i.bz, ptr %i.bw, align 8, !tbaa !1543
  br label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i

_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i:      ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !1539
  %i.cc = and i32 %i.cb, 4096
  %.not16.i12.i = icmp eq i32 %i.cc, 0
  br i1 %.not16.i12.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !1540
  %i.cf = fcmp ult double %i.ar, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ch = load double, ptr %i.cg, align 8
  %i.ci = fcmp ugt double %i.ar, %i.ch
  %.not19.i13.i = select i1 %i.cf, i1 true, i1 %i.ci
  %i.cj = call double @llvm.fabs.f64(double %i.as)
  %or.cond.i.i14.i = fcmp ugt double %i.cj, f0x7FEFFFFFFFFFFFFF
  %or.cond.i15.i = or i1 %or.cond.i.i14.i, %.not19.i13.i
  br i1 %or.cond.i15.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.o

bb.n:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %.old.i18.i = call double @llvm.fabs.f64(double %i.as)
  %or.cond.i.old.i19.i = fcmp ugt double %.old.i18.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i19.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bc, i64 64
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !1541
  %i.cm = fcmp ult double %i.as, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bc, i64 72
  %i.co = load double, ptr %i.cn, align 8
  %i.cp = fcmp ugt double %i.as, %i.co
  %or.cond15.i16.i = select i1 %i.cm, i1 true, i1 %i.cp
  br i1 %or.cond15.i16.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bc, i64 40 ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !1542 ; 2 uses
  %i.cs = fcmp olt double %i.as, %i.cr
  %..i17.i = select i1 %i.cs, double %i.as, double %i.cr
  store double %..i17.i, ptr %i.cq, align 8, !tbaa !1542
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bc, i64 48 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !1543 ; 2 uses
  %i.cv = fcmp ogt double %i.as, %i.cu
  %i.cw = select i1 %i.cv, double %i.as, double %i.cu
  store double %i.cw, ptr %i.ct, align 8, !tbaa !1543
  br label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit:        ; preds = %bb.m, %bb.n, %bb.o, %bb.p
  %i.cx = load float, ptr %6, align 8, !tbaa !1448
  %i.cy = extractelement <2 x float> %i.aa, i64 1
  %i.cz = fadd float %i.cy, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.db = load float, ptr %i.da, align 4, !tbaa !1447
  %i.dc = extractelement <2 x float> %i.aa, i64 0
  %i.dd = fsub float %i.db, %i.dc
  %i.de = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %i.cz, float noundef %i.dd, i32 noundef -1, i32 noundef -1) #16 ; 2 uses
  %i.df = extractvalue { double, double } %i.de, 0 ; 10 uses
  %i.dg = extractvalue { double, double } %i.de, 1 ; 10 uses
  %i.dh = call noundef ptr @_ZN6ImPlot14GetCurrentPlotEv() #16 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 2448
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !94
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds [376 x i8], ptr %i.di, i64 %i.dl ; 7 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 2452
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !95
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [376 x i8], ptr %i.di, i64 %i.dp ; 7 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dm, i64 4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !1539
  %i.dt = and i32 %i.ds, 4096
  %.not16.i.i31 = icmp eq i32 %i.dt, 0
  br i1 %.not16.i.i31, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = load double, ptr %i.du, align 8, !tbaa !1540
  %i.dw = fcmp ult double %i.dg, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dy = load double, ptr %i.dx, align 8
  %i.dz = fcmp ugt double %i.dg, %i.dy
  %.not19.i.i32 = select i1 %i.dw, i1 true, i1 %i.dz
  %i.ea = call double @llvm.fabs.f64(double %i.df)
  %or.cond.i.i.i33 = fcmp ugt double %i.ea, f0x7FEFFFFFFFFFFFFF
  %or.cond.i.i34 = or i1 %or.cond.i.i.i33, %.not19.i.i32
  br i1 %or.cond.i.i34, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i37, label %bb.s

bb.r:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit
  %.old.i.i46 = call double @llvm.fabs.f64(double %i.df)
  %or.cond.i.old.i.i47 = fcmp ugt double %.old.i.i46, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i.i47, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i37, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 64
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !1541
  %i.ed = fcmp ult double %i.df, %i.ec
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dm, i64 72
  %i.ef = load double, ptr %i.ee, align 8
  %i.eg = fcmp ugt double %i.df, %i.ef
  %or.cond15.i.i35 = select i1 %i.ed, i1 true, i1 %i.eg
  br i1 %or.cond15.i.i35, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i37, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_1
