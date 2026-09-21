Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/implot?download=true
inline.NumInlined: 2055
inline.NumDeleted: 380
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 76
begin_hunk_0_@_ZN6ImPlot5TagXVEdRK6ImVec4PKcP13__va_list_tag:bb.a
bb.a:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.165) #32 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !217
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2448
  %i.g = load i32, ptr %i.f, align 8, !tbaa !418
  tail call void @_ZN6ImPlot4TagVEidRK6ImVec4PKcP13__va_list_tag(i32 noundef %i.g, double noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot4TagYEdRK6ImVec4b(double noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i1 noundef zeroext %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  %i.b = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217  ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.166) #32 ; 0 uses
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !217
  %.pre4 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre4, i64 80
  %.pre5 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !217
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %.pre5, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %i.g = phi ptr [ %.pre4, %bb.b ], [ %i.b, %bb.a ]
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2452
  %i.j = load i32, ptr %i.i, align 4, !tbaa !419  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 2550
  %i.l = load i8, ptr %i.k, align 2, !tbaa !384, !range !263, !noundef !264
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %_ZN6ImPlot3TagEidRK6ImVec4b.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  tail call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i = load ptr, ptr %i.n, align 8, !tbaa !217
  br label %_ZN6ImPlot3TagEidRK6ImVec4b.exit

_ZN6ImPlot3TagEidRK6ImVec4b.exit:                 ; preds = %bb.c, %bb.d
  %i.o = phi ptr [ %.pre.i.i, %bb.d ], [ %i.f, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 2550
  store i8 1, ptr %i.p, align 2, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.r = sext i32 %i.j to i64
  %i.s = getelementptr inbounds [376 x i8], ptr %i.q, i64 %i.r
  call void @_ZN6ImPlot14LabelAxisValueERK10ImPlotAxisdPcib(ptr noundef nonnull align 8 dereferenceable(372) %i.s, double noundef %0, ptr noundef nonnull %i.a, i32 noundef 32, i1 noundef zeroext %2)
  call void (i32, double, ptr, ptr, ...) @_ZN6ImPlot3TagEidRK6ImVec4PKcz(i32 noundef %i.j, double noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot4TagYEdRK6ImVec4PKcz(double noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ...) local_unnamed_addr #1 {
bb.a:
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.166) #32 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2452
  %i.g = load i32, ptr %i.f, align 4, !tbaa !419
  call void @_ZN6ImPlot4TagVEidRK6ImVec4PKcP13__va_list_tag(i32 noundef %i.g, double noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef nonnull %3)
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN6ImPlot5TagYVEdRK6ImVec4PKcP13__va_list_tag(double noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217  ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.166) #32 ; 0 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !217
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2452
  %i.g = load i32, ptr %i.f, align 4, !tbaa !419
  tail call void @_ZN6ImPlot4TagVEidRK6ImVec4PKcP13__va_list_tag(i32 noundef %i.g, double noundef %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot9DragPointEiPdS0_RK6ImVec4fiPbS4_S4_(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, float noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef writeonly captures(address_is_null) %8) local_unnamed_addr #4 {
bb.a:
  %9 = alloca %struct.ImRect, align 4             ; 5 uses
  %10 = alloca %struct.ImVec4, align 4            ; 4 uses
  %11 = alloca %struct.ImVec2, align 8            ; 5 uses
  %12 = alloca %struct.ImRect, align 16           ; 4 uses
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.167) #32
  %i.c = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !217  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.168) #32 ; 0 uses
  %.pre = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %.pre69 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !217
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi ptr [ %.pre69, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 2550
  %i.j = load i8, ptr %i.i, align 2, !tbaa !384, !range !263, !noundef !264
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN6ImPlotL9SetupLockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  tail call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i = load ptr, ptr %i.l, align 8, !tbaa !217
  br label %_ZN6ImPlotL9SetupLockEv.exit

_ZN6ImPlotL9SetupLockEv.exit:                     ; preds = %bb.c, %bb.d
  %i.m = phi ptr [ %.pre.i, %bb.d ], [ %i.g, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 2550
  store i8 1, ptr %i.n, align 2, !tbaa !384
  %i.o = and i32 %5, 2
  %.not65 = icmp eq i32 %i.o, 0
  br i1 %.not65, label %bb.e, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

bb.e:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.p = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 80
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !217  ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2551
  %i.t = load i8, ptr %i.s, align 1, !tbaa !362, !range !263, !noundef !264
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %bb.f, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

bb.f:                                             ; preds = %bb.e
  %i.v = load double, ptr %1, align 8, !tbaa !266 ; 10 uses
  %i.w = load double, ptr %2, align 8, !tbaa !266 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 2448
  %i.z = load i32, ptr %i.y, align 8, !tbaa !418
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [376 x i8], ptr %i.x, i64 %i.aa ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 2452
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !419
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [376 x i8], ptr %i.x, i64 %i.ae ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !300
  %i.ai = and i32 %i.ah, 4096
  %.not12.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not12.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !269
  %i.al = fcmp ult double %i.w, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp ugt double %i.w, %i.an
  %.not15.i.i = select i1 %i.al, i1 true, i1 %i.ao
  %i.ap = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond.i.i.i = fcmp ugt double %i.ap, f0x7FEFFFFFFFFFFFFF
  %or.cond.i.i = or i1 %or.cond.i.i.i, %.not15.i.i
  br i1 %or.cond.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %13

bb.h:                                             ; preds = %bb.f
  %.old.i.i = tail call double @llvm.fabs.f64(double %i.v)
  %or.cond.i.old.i.i = fcmp ugt double %.old.i.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %13

13:                                               ; preds = %bb.h, %bb.g
  %14 = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %15 = load double, ptr %14, align 8, !tbaa !303
  %16 = fcmp ult double %i.v, %15
  br i1 %16, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.i

bb.i:                                             ; preds = %13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !313
  %i.as = fcmp ugt double %i.v, %i.ar
  br i1 %i.as, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 40 ; 2 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !479 ; 2 uses
  %i.av = fcmp olt double %i.v, %i.au
  %..i.i = select i1 %i.av, double %i.v, double %i.au
  store double %..i.i, ptr %i.at, align 8, !tbaa !479
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !480 ; 2 uses
  %i.ay = fcmp ogt double %i.v, %i.ax
  %i.az = select i1 %i.ay, double %i.v, double %i.ax
  store double %i.az, ptr %i.aw, align 8, !tbaa !480
  br label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i

_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i:      ; preds = %bb.j, %bb.i, %13, %bb.h, %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !300
  %i.bc = and i32 %i.bb, 4096
  %.not12.i12.i = icmp eq i32 %i.bc, 0
  br i1 %.not12.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.be = load double, ptr %i.bd, align 8, !tbaa !269
  %i.bf = fcmp ult double %i.v, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.bh = load double, ptr %i.bg, align 8
  %i.bi = fcmp ugt double %i.v, %i.bh
  %.not15.i13.i = select i1 %i.bf, i1 true, i1 %i.bi
  %i.bj = tail call double @llvm.fabs.f64(double %i.w)
  %or.cond.i.i14.i = fcmp ugt double %i.bj, f0x7FEFFFFFFFFFFFFF
  %or.cond.i15.i = or i1 %or.cond.i.i14.i, %.not15.i13.i
  br i1 %or.cond.i15.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %17

bb.l:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %.old.i17.i = tail call double @llvm.fabs.f64(double %i.w)
  %or.cond.i.old.i18.i = fcmp ugt double %.old.i17.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i18.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %17

17:                                               ; preds = %bb.l, %bb.k
  %18 = getelementptr inbounds nuw i8, ptr %i.af, i64 64
  %19 = load double, ptr %18, align 8, !tbaa !303
  %20 = fcmp ult double %i.w, %19
  br i1 %20, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.m

bb.m:                                             ; preds = %17
  %i.bk = getelementptr inbounds nuw i8, ptr %i.af, i64 72
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !313
  %i.bm = fcmp ugt double %i.w, %i.bl
  br i1 %i.bm, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = getelementptr inbounds nuw i8, ptr %i.af, i64 40 ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !479 ; 2 uses
  %i.bp = fcmp olt double %i.w, %i.bo
  %..i16.i = select i1 %i.bp, double %i.w, double %i.bo
  store double %..i16.i, ptr %i.bn, align 8, !tbaa !479
  %i.bq = getelementptr inbounds nuw i8, ptr %i.af, i64 48 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !480 ; 2 uses
  %i.bs = fcmp ogt double %i.w, %i.br
  %i.bt = select i1 %i.bs, double %i.w, double %i.br
  store double %i.bt, ptr %i.bq, align 8, !tbaa !480
  br label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit:        ; preds = %bb.n, %bb.m, %17, %bb.l, %bb.k, %bb.e, %_ZN6ImPlotL9SetupLockEv.exit
  %i.bu = and i32 %5, 4
  %.not66 = icmp eq i32 %i.bu, 0
  %i.bv = and i32 %5, 1
  %.not67 = icmp eq i32 %i.bv, 0
  %i.bw = and i32 %5, 8
  %.not68 = icmp eq i32 %i.bw, 0
  %i.bx = fcmp ole float %4, 4.000000e+00
  %i.by = select i1 %i.bx, float 4.000000e+00, float %4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val = load float, ptr %i.bz, align 4, !tbaa !46
  %i.ca = fcmp oeq float %.val, -1.000000e+00
  br i1 %i.ca, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit
  %i.cb = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 0) #32
  br label %bb.p

bb.p:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, %bb.o
  %i.cc = phi ptr [ %i.cb, %bb.o ], [ %3, %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %i.cc, i64 16, i1 false), !tbaa.struct !314
  %i.cd = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.ce = load double, ptr %1, align 8, !tbaa !266
  %i.cf = load double, ptr %2, align 8, !tbaa !266
  %i.cg = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ce, double noundef %i.cf, i32 noundef -1, i32 noundef -1) ; 2 uses
  store <2 x float> %i.cg, ptr %11, align 8
  %i.ch = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 5184
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !228 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 206
  store i8 1, ptr %i.ck, align 2, !tbaa !445
  %i.cl = call noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077) %i.cj, i32 noundef %0) #32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.cm = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.cn = insertelement <4 x float> poison, float %i.by, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>
  %i.cp = shufflevector <4 x float> %i.cm, <4 x float> %i.co, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 3 uses
  %i.cq = shufflevector <4 x float> %i.cm, <4 x float> %i.cp, <4 x i32> <i32 6, i32 6, i32 0, i32 1> ; 2 uses
  %i.cr = fsub <4 x float> %i.cp, %i.cq
  %i.cs = fadd <4 x float> %i.cp, %i.cq
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ct, ptr %12, align 16, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 0, ptr %i.a, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i8 0, ptr %i.b, align 1, !tbaa !262
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.cl) #32
  br i1 %.not66, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.cu = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %12, i32 noundef %i.cl, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0) #32
  %.not46 = icmp eq ptr %6, null
  br i1 %.not46, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %6, align 1, !tbaa !262
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.not47 = icmp eq ptr %7, null
  br i1 %.not47, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = load i8, ptr %i.a, align 1, !tbaa !262, !range !263, !noundef !264
  store i8 %i.cw, ptr %7, align 1, !tbaa !262
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.not48 = icmp eq ptr %8, null
  %.pre70 = load i8, ptr %i.b, align 1, !tbaa !262, !range !263 ; 2 uses
  br i1 %.not48, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 %.pre70, ptr %8, align 1, !tbaa !262
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.cx = trunc nuw i8 %.pre70 to i1
  br i1 %i.cx, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.cy = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.cy, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  %i.cz = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 80
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !217 ; 2 uses
  %.not.i = icmp eq ptr %i.db, null
  br i1 %.not.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dc = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i51 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i51, i64 80
  %.pre2.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !217
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.dd = phi ptr [ %.pre2.i, %bb.z ], [ %i.db, %bb.y ] ; 2 uses
  %i.de = phi ptr [ %.pre.i51, %bb.z ], [ %i.cz, %bb.y ]
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 2550
  %i.dg = load i8, ptr %i.df, align 2, !tbaa !384, !range !263, !noundef !264
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %_ZN6ImPlot15GetPlotMousePosEii.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i = load ptr, ptr %i.di, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit

_ZN6ImPlot15GetPlotMousePosEii.exit:              ; preds = %bb.aa, %bb.ab
  %i.dj = phi ptr [ %.pre.i.i, %bb.ab ], [ %i.dd, %bb.aa ]
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 2550
  store i8 1, ptr %i.dk, align 2, !tbaa !384
  %i.dl = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.dl, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.dl, i64 1
  %i.dm = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i, float noundef %.sroa.0.4.vec.extract.i, i32 noundef -1, i32 noundef -1)
  %i.dn = extractvalue { double, double } %i.dm, 0
  store double %i.dn, ptr %1, align 8, !tbaa !266
  %i.do = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 80
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !217 ; 2 uses
  %.not.i52 = icmp eq ptr %i.dq, null
  br i1 %.not.i52, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.dr = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.155) #32 ; 0 uses
  %.pre.i56 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i57 = getelementptr inbounds nuw i8, ptr %.pre.i56, i64 80
  %.pre2.i58 = load ptr, ptr %.phi.trans.insert.i57, align 8, !tbaa !217
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN6ImPlot15GetPlotMousePosEii.exit
  %i.ds = phi ptr [ %.pre2.i58, %bb.ac ], [ %i.dq, %_ZN6ImPlot15GetPlotMousePosEii.exit ] ; 2 uses
  %i.dt = phi ptr [ %.pre.i56, %bb.ac ], [ %i.do, %_ZN6ImPlot15GetPlotMousePosEii.exit ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 2550
  %i.dv = load i8, ptr %i.du, align 2, !tbaa !384, !range !263, !noundef !264
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %_ZN6ImPlot15GetPlotMousePosEii.exit59, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i53 = load ptr, ptr %i.dx, align 8, !tbaa !217
  br label %_ZN6ImPlot15GetPlotMousePosEii.exit59

_ZN6ImPlot15GetPlotMousePosEii.exit59:            ; preds = %bb.ad, %bb.ae
  %i.dy = phi ptr [ %.pre.i.i53, %bb.ae ], [ %i.ds, %bb.ad ]
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 2550
  store i8 1, ptr %i.dz, align 2, !tbaa !384
  %i.ea = call <2 x float> @_ZN5ImGui11GetMousePosEv() #32 ; 2 uses
  %.sroa.0.0.vec.extract.i54 = extractelement <2 x float> %i.ea, i64 0
  %.sroa.0.4.vec.extract.i55 = extractelement <2 x float> %i.ea, i64 1
  %i.eb = call { double, double } @_ZN6ImPlot12PixelsToPlotEffii(float noundef %.sroa.0.0.vec.extract.i54, float noundef %.sroa.0.4.vec.extract.i55, i32 noundef -1, i32 noundef -1)
  %i.ec = extractvalue { double, double } %i.eb, 1
  store double %i.ec, ptr %2, align 8, !tbaa !266
  br label %.thread

.thread:                                          ; preds = %bb.p, %_ZN6ImPlot15GetPlotMousePosEii.exit59, %bb.x, %bb.w
  %.0 = phi i1 [ true, %_ZN6ImPlot15GetPlotMousePosEii.exit59 ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.p ] ; 2 uses
  %i.ed = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 80 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !217 ; 2 uses
  %.not.i60 = icmp eq ptr %i.ef, null
  br i1 %.not.i60, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread
  %i.eg = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.186) #32 ; 0 uses
  %.pre.i62 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %.pre.i62, i64 80
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !217
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread
  %i.eh = phi ptr [ %.pre3.i, %bb.af ], [ %i.ef, %.thread ] ; 2 uses
  %i.ei = phi ptr [ %.pre.i62, %bb.af ], [ %i.ed, %.thread ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 2550
  %i.ek = load i8, ptr %i.ej, align 2, !tbaa !384, !range !263, !noundef !264
  %i.el = trunc nuw i8 %i.ek to i1
  br i1 %i.el, label %_ZN6ImPlot16PushPlotClipRectEf.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i61 = load ptr, ptr %i.em, align 8, !tbaa !217
  br label %_ZN6ImPlot16PushPlotClipRectEf.exit

_ZN6ImPlot16PushPlotClipRectEf.exit:              ; preds = %bb.ag, %bb.ah
  %i.en = phi ptr [ %.pre.i.i61, %bb.ah ], [ %i.eh, %bb.ag ]
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 2550
  store i8 1, ptr %i.eo, align 2, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  %i.ep = load ptr, ptr %i.ee, align 8, !tbaa !217
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %i.eq, i64 16, i1 false), !tbaa.struct !314
end_hunk_0
begin_hunk_1_@_ZN6ImPlot9DragLineYEiPdRK6ImVec4fiPbS4_S4_:bb.a
bb.y:                                             ; preds = %bb.x
  %i.cy = call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.186) #32 ; 0 uses
  %.pre.i75 = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert.i76 = getelementptr inbounds nuw i8, ptr %.pre.i75, i64 80
  %.pre3.i = load ptr, ptr %.phi.trans.insert.i76, align 8, !tbaa !217
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.cz = phi ptr [ %.pre3.i, %bb.y ], [ %i.cx, %bb.x ] ; 2 uses
  %i.da = phi ptr [ %.pre.i75, %bb.y ], [ %i.cv, %bb.x ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 2550
  %i.dc = load i8, ptr %i.db, align 2, !tbaa !384, !range !263, !noundef !264
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %_ZN6ImPlot16PushPlotClipRectEf.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 80
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i74 = load ptr, ptr %i.de, align 8, !tbaa !217
  br label %_ZN6ImPlot16PushPlotClipRectEf.exit

_ZN6ImPlot16PushPlotClipRectEf.exit:              ; preds = %bb.z, %bb.aa
  %i.df = phi ptr [ %.pre.i.i74, %bb.aa ], [ %i.cz, %bb.z ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 2550
  store i8 1, ptr %i.dg, align 2, !tbaa !384
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  %i.dh = load ptr, ptr %i.cw, align 8, !tbaa !217
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 2488
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.di, i64 16, i1 false), !tbaa.struct !314
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.dk = load <2 x float>, ptr %i.dj, align 4, !tbaa !41
  %i.dl = fadd <2 x float> %i.dk, zeroinitializer
  store <2 x float> %i.dl, ptr %i.dj, align 4, !tbaa !41
  call void @_ZN5ImGui12PushClipRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 4 dereferenceable(8) %i.dj, i1 noundef zeroext true) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  %i.dm = call noundef ptr @_ZN5ImGui17GetWindowDrawListEv() #32 ; 3 uses
  %or.cond5 = and i1 %.not81, %.0
  br i1 %or.cond5, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %_ZN6ImPlot16PushPlotClipRectEf.exit
  %i.dn = load double, ptr %1, align 8, !tbaa !266
  %i.do = call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef 0.000000e+00, double noundef %i.dn, i32 noundef -1, i32 noundef -1)
  %.sroa.0.4.vec.extract = extractelement <2 x float> %i.do, i64 1
  %i.dp = fadd float %.sroa.0.4.vec.extract, 5.000000e-01
  %i.dq = fptosi float %i.dp to i32
  %i.dr = sitofp i32 %i.dq to float
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %_ZN6ImPlot16PushPlotClipRectEf.exit
  %.065 = phi float [ %i.dr, %bb.ab ], [ %i.be, %_ZN6ImPlot16PushPlotClipRectEf.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  store float %i.ax, ptr %11, align 4, !tbaa !172
  %i.ds = getelementptr inbounds nuw i8, ptr %11, i64 4
  store float %.065, ptr %i.ds, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  store float %i.az, ptr %12, align 4, !tbaa !172
  %i.dt = getelementptr inbounds nuw i8, ptr %12, i64 4
  store float %.065, ptr %i.dt, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %12, i32 noundef %i.cc, float noundef %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  store float %i.ax, ptr %13, align 4, !tbaa !172
  %i.du = getelementptr inbounds nuw i8, ptr %13, i64 4
  store float %.065, ptr %i.du, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.dv = fadd float %i.ax, %i.bx
  store float %i.dv, ptr %14, align 4, !tbaa !172
  %i.dw = getelementptr inbounds nuw i8, ptr %14, i64 4
  store float %.065, ptr %i.dw, align 4, !tbaa !173
  %i.dx = fmul float %3, 3.000000e+00             ; 2 uses
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %13, ptr noundef nonnull align 4 dereferenceable(8) %14, i32 noundef %i.cc, float noundef %i.dx) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  store float %i.az, ptr %15, align 4, !tbaa !172
  %i.dy = getelementptr inbounds nuw i8, ptr %15, i64 4
  store float %.065, ptr %i.dy, align 4, !tbaa !173
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #32
  %i.dz = fsub float %i.az, %i.bx
  store float %i.dz, ptr %16, align 4, !tbaa !172
  %i.ea = getelementptr inbounds nuw i8, ptr %16, i64 4
  store float %.065, ptr %i.ea, align 4, !tbaa !173
  call void @_ZN10ImDrawList7AddLineERK6ImVec2S2_jf(ptr noundef nonnull align 8 dereferenceable(224) %i.dm, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %16, i32 noundef %i.cc, float noundef %i.dx) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #32
  %i.eb = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 80 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !217 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 2550
  %i.ef = load i8, ptr %i.ee, align 2, !tbaa !384, !range !263, !noundef !264
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %_ZN6ImPlot15PopPlotClipRectEv.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i.i77 = load ptr, ptr %i.ec, align 8, !tbaa !217
  br label %_ZN6ImPlot15PopPlotClipRectEv.exit

_ZN6ImPlot15PopPlotClipRectEv.exit:               ; preds = %bb.ac, %bb.ad
  %i.eh = phi ptr [ %.pre.i.i77, %bb.ad ], [ %i.ed, %bb.ac ]
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 2550
  store i8 1, ptr %i.ei, align 2, !tbaa !384
  call void @_ZN5ImGui11PopClipRectEv() #32
  call void @_ZN5ImGui5PopIDEv() #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN6ImPlot8DragRectEiPdS0_S0_S0_RK6ImVec4iPbS4_S4_(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, i32 noundef %6, ptr nofree noundef captures(address_is_null) %7, ptr nofree noundef captures(address_is_null) %8, ptr nofree noundef captures(address_is_null) %9) local_unnamed_addr #4 {
bb.a:
  %10 = alloca %struct.ImRect, align 4            ; 5 uses
  %i.a = alloca [4 x ptr], align 16               ; 9 uses
  %i.b = alloca [4 x ptr], align 16               ; 9 uses
  %11 = alloca [4 x %struct.ImVec2], align 16     ; 11 uses
  %12 = alloca %struct.ImVec2, align 8            ; 5 uses
  %13 = alloca %struct.ImRect, align 8            ; 7 uses
  %i.c = alloca [4 x i32], align 16               ; 7 uses
  %14 = alloca %struct.ImVec4, align 4            ; 6 uses
  %i.d = alloca i8, align 1                       ; 13 uses
  %i.e = alloca i8, align 1                       ; 15 uses
  %15 = alloca %struct.ImRect, align 16           ; 8 uses
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef nonnull @.str.172) #32
  %i.f = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !217  ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.173) #32 ; 0 uses
  %.pre = load ptr, ptr @GImPlot, align 8, !tbaa !35 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 80
  %.pre377 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !217
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = phi ptr [ %.pre377, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %.pre, %bb.b ], [ %i.f, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2550
  %i.m = load i8, ptr %i.l, align 2, !tbaa !384, !range !263, !noundef !264
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN6ImPlotL9SetupLockEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  tail call void @_ZN6ImPlot11SetupFinishEv()
  %.pre.i = load ptr, ptr %i.o, align 8, !tbaa !217
  br label %_ZN6ImPlotL9SetupLockEv.exit

_ZN6ImPlotL9SetupLockEv.exit:                     ; preds = %bb.c, %bb.d
  %i.p = phi ptr [ %.pre.i, %bb.d ], [ %i.j, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 2550
  store i8 1, ptr %i.q, align 2, !tbaa !384
  %i.r = and i32 %6, 2
  %.not354 = icmp eq i32 %i.r, 0
  br i1 %.not354, label %bb.e, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267

bb.e:                                             ; preds = %_ZN6ImPlotL9SetupLockEv.exit
  %i.s = load ptr, ptr @GImPlot, align 8, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !217  ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2551
  %i.w = load i8, ptr %i.v, align 1, !tbaa !362, !range !263, !noundef !264
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.f, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267

bb.f:                                             ; preds = %bb.e
  %i.y = load double, ptr %1, align 8, !tbaa !266 ; 10 uses
  %i.z = load double, ptr %2, align 8, !tbaa !266 ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 2448
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !418
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [376 x i8], ptr %i.aa, i64 %i.ad ; 13 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 2452
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !419
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [376 x i8], ptr %i.aa, i64 %i.ah ; 13 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !300
  %i.al = and i32 %i.ak, 4096
  %.not12.i.i = icmp eq i32 %i.al, 0              ; 2 uses
  br i1 %.not12.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.an = load double, ptr %i.am, align 8, !tbaa !269
  %i.ao = fcmp ult double %i.z, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = fcmp ugt double %i.z, %i.aq
  %.not15.i.i = select i1 %i.ao, i1 true, i1 %i.ar
  %i.as = tail call double @llvm.fabs.f64(double %i.y)
  %or.cond.i.i.i = fcmp ugt double %i.as, f0x7FEFFFFFFFFFFFFF
  %or.cond.i.i = or i1 %or.cond.i.i.i, %.not15.i.i
  br i1 %or.cond.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %16

bb.h:                                             ; preds = %bb.f
  %.old.i.i = tail call double @llvm.fabs.f64(double %i.y)
  %or.cond.i.old.i.i = fcmp ugt double %.old.i.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i.i, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %16

16:                                               ; preds = %bb.h, %bb.g
  %17 = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %18 = load double, ptr %17, align 8, !tbaa !303
  %19 = fcmp ult double %i.y, %18
  br i1 %19, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.i

bb.i:                                             ; preds = %16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.au = load double, ptr %i.at, align 8, !tbaa !313
  %i.av = fcmp ugt double %i.y, %i.au
  br i1 %i.av, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !479 ; 2 uses
  %i.ay = fcmp olt double %i.y, %i.ax
  %..i.i = select i1 %i.ay, double %i.y, double %i.ax
  store double %..i.i, ptr %i.aw, align 8, !tbaa !479
  %i.az = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !480 ; 2 uses
  %i.bb = fcmp ogt double %i.y, %i.ba
  %i.bc = select i1 %i.bb, double %i.y, double %i.ba
  store double %i.bc, ptr %i.az, align 8, !tbaa !480
  br label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i

_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i:      ; preds = %bb.j, %bb.i, %16, %bb.h, %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !300
  %i.bf = and i32 %i.be, 4096
  %.not12.i12.i = icmp eq i32 %i.bf, 0            ; 2 uses
  br i1 %.not12.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !269
  %i.bi = fcmp ult double %i.y, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.bk = load double, ptr %i.bj, align 8
  %i.bl = fcmp ugt double %i.y, %i.bk
  %.not15.i13.i = select i1 %i.bi, i1 true, i1 %i.bl
  %i.bm = tail call double @llvm.fabs.f64(double %i.z)
  %or.cond.i.i14.i = fcmp ugt double %i.bm, f0x7FEFFFFFFFFFFFFF
  %or.cond.i15.i = or i1 %or.cond.i.i14.i, %.not15.i13.i
  br i1 %or.cond.i15.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %20

bb.l:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i
  %.old.i17.i = tail call double @llvm.fabs.f64(double %i.z)
  %or.cond.i.old.i18.i = fcmp ugt double %.old.i17.i, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i18.i, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %20

20:                                               ; preds = %bb.l, %bb.k
  %21 = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %22 = load double, ptr %21, align 8, !tbaa !303
  %23 = fcmp ult double %i.z, %22
  br i1 %23, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.m

bb.m:                                             ; preds = %20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !313
  %i.bp = fcmp ugt double %i.z, %i.bo
  br i1 %i.bp, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.br = load double, ptr %i.bq, align 8, !tbaa !479 ; 2 uses
  %i.bs = fcmp olt double %i.z, %i.br
  %..i16.i = select i1 %i.bs, double %i.z, double %i.br
  store double %..i16.i, ptr %i.bq, align 8, !tbaa !479
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !480 ; 2 uses
  %i.bv = fcmp ogt double %i.z, %i.bu
  %i.bw = select i1 %i.bv, double %i.z, double %i.bu
  store double %i.bw, ptr %i.bt, align 8, !tbaa !480
  br label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit

_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit:        ; preds = %bb.k, %bb.l, %20, %bb.m, %bb.n
  %i.bx = load double, ptr %3, align 8, !tbaa !266 ; 10 uses
  %i.by = load double, ptr %4, align 8, !tbaa !266 ; 10 uses
  br i1 %.not12.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !269
  %i.cb = fcmp ult double %i.by, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.cd = load double, ptr %i.cc, align 8
  %i.ce = fcmp ugt double %i.by, %i.cd
  %.not15.i.i253 = select i1 %i.cb, i1 true, i1 %i.ce
  %i.cf = tail call double @llvm.fabs.f64(double %i.bx)
  %or.cond.i.i.i254 = fcmp ugt double %i.cf, f0x7FEFFFFFFFFFFFFF
  %or.cond.i.i255 = or i1 %or.cond.i.i.i254, %.not15.i.i253
  br i1 %or.cond.i.i255, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257, label %24

bb.p:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit
  %.old.i.i265 = tail call double @llvm.fabs.f64(double %i.bx)
  %or.cond.i.old.i.i266 = fcmp ugt double %.old.i.i265, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i.i266, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257, label %24

24:                                               ; preds = %bb.p, %bb.o
  %25 = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %26 = load double, ptr %25, align 8, !tbaa !303
  %27 = fcmp ult double %i.bx, %26
  br i1 %27, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257, label %bb.q

bb.q:                                             ; preds = %24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !313
  %i.ci = fcmp ugt double %i.bx, %i.ch
  br i1 %i.ci, label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ae, i64 40 ; 2 uses
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !479 ; 2 uses
  %i.cl = fcmp olt double %i.bx, %i.ck
  %..i.i256 = select i1 %i.cl, double %i.bx, double %i.ck
  store double %..i.i256, ptr %i.cj, align 8, !tbaa !479
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ae, i64 48 ; 2 uses
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !480 ; 2 uses
  %i.co = fcmp ogt double %i.bx, %i.cn
  %i.cp = select i1 %i.co, double %i.bx, double %i.cn
  store double %i.cp, ptr %i.cm, align 8, !tbaa !480
  br label %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257

_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257:   ; preds = %bb.r, %bb.q, %24, %bb.p, %bb.o
  br i1 %.not12.i12.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !269
  %i.cs = fcmp ult double %i.bx, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.cu = load double, ptr %i.ct, align 8
  %i.cv = fcmp ugt double %i.bx, %i.cu
  %.not15.i13.i259 = select i1 %i.cs, i1 true, i1 %i.cv
  %i.cw = tail call double @llvm.fabs.f64(double %i.by)
  %or.cond.i.i14.i260 = fcmp ugt double %i.cw, f0x7FEFFFFFFFFFFFFF
  %or.cond.i15.i261 = or i1 %or.cond.i.i14.i260, %.not15.i13.i259
  br i1 %or.cond.i15.i261, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267, label %28

bb.t:                                             ; preds = %_ZN10ImPlotAxis13ExtendFitWithERS_dd.exit.i257
  %.old.i17.i263 = tail call double @llvm.fabs.f64(double %i.by)
  %or.cond.i.old.i18.i264 = fcmp ugt double %.old.i17.i263, f0x7FEFFFFFFFFFFFFF
  br i1 %or.cond.i.old.i18.i264, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267, label %28

28:                                               ; preds = %bb.t, %bb.s
  %29 = getelementptr inbounds nuw i8, ptr %i.ai, i64 64
  %30 = load double, ptr %29, align 8, !tbaa !303
  %31 = fcmp ult double %i.by, %30
  br i1 %31, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267, label %bb.u

bb.u:                                             ; preds = %28
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ai, i64 72
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !313
  %i.cz = fcmp ugt double %i.by, %i.cy
  br i1 %i.cz, label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %i.ai, i64 40 ; 2 uses
  %i.db = load double, ptr %i.da, align 8, !tbaa !479 ; 2 uses
  %i.dc = fcmp olt double %i.by, %i.db
  %..i16.i262 = select i1 %i.dc, double %i.by, double %i.db
  store double %..i16.i262, ptr %i.da, align 8, !tbaa !479
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !480 ; 2 uses
  %i.df = fcmp ogt double %i.by, %i.de
  %i.dg = select i1 %i.df, double %i.by, double %i.de
  store double %i.dg, ptr %i.dd, align 8, !tbaa !480
  br label %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267

_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267:     ; preds = %bb.v, %bb.u, %28, %bb.t, %bb.s, %bb.e, %_ZN6ImPlotL9SetupLockEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store ptr %1, ptr %i.a, align 16, !tbaa !379
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.dh, align 8, !tbaa !379
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.di, align 16, !tbaa !379
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.dj, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store ptr %2, ptr %i.b, align 16, !tbaa !379
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.dk, align 8, !tbaa !379
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %4, ptr %i.dl, align 16, !tbaa !379
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %4, ptr %i.dm, align 8, !tbaa !379
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  %i.dn = load double, ptr %1, align 8, !tbaa !266
  %i.do = load double, ptr %2, align 8, !tbaa !266
  %i.dp = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.dn, double noundef %i.do, i32 noundef -1, i32 noundef -1) ; 7 uses
  store <2 x float> %i.dp, ptr %11, align 16
  %i.dq = load double, ptr %3, align 8, !tbaa !266
  %i.dr = load double, ptr %2, align 8, !tbaa !266
  %i.ds = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.dq, double noundef %i.dr, i32 noundef -1, i32 noundef -1) ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store <2 x float> %i.ds, ptr %i.dt, align 8
  %i.du = load double, ptr %3, align 8, !tbaa !266
  %i.dv = load double, ptr %4, align 8, !tbaa !266
  %i.dw = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.du, double noundef %i.dv, i32 noundef -1, i32 noundef -1) ; 6 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store <2 x float> %i.dw, ptr %i.dx, align 16
  %i.dy = load double, ptr %1, align 8, !tbaa !266
  %i.dz = load double, ptr %4, align 8, !tbaa !266
  %i.ea = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.dy, double noundef %i.dz, i32 noundef -1, i32 noundef -1) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store <2 x float> %i.ea, ptr %i.eb, align 8
  %i.ec = and i32 %6, 4
  %.not355 = icmp eq i32 %i.ec, 0                 ; 5 uses
  %i.ed = and i32 %6, 1
  %.not356 = icmp eq i32 %i.ed, 0                 ; 4 uses
  %i.ee = and i32 %6, 8
  %.not357 = icmp eq i32 %i.ee, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  %i.ef = load double, ptr %1, align 8, !tbaa !266
  %i.eg = load double, ptr %3, align 8, !tbaa !266
  %i.eh = fadd double %i.ef, %i.eg
  %i.ei = fmul double %i.eh, 5.000000e-01
  %i.ej = load double, ptr %2, align 8, !tbaa !266
  %i.ek = load double, ptr %4, align 8, !tbaa !266
  %i.el = fadd double %i.ej, %i.ek
  %i.em = fmul double %i.el, 5.000000e-01
  %i.en = tail call <2 x float> @_ZN6ImPlot12PlotToPixelsEddii(double noundef %i.ei, double noundef %i.em, i32 noundef -1, i32 noundef -1) ; 2 uses
  store <2 x float> %i.en, ptr %12, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #32
  %i.eo = extractelement <2 x float> %i.dp, i64 0 ; 3 uses
  %i.ep = extractelement <2 x float> %i.dp, i64 1 ; 3 uses
  %i.eq = extractelement <2 x float> %i.dw, i64 0
  %i.er = fcmp olt <2 x float> %i.dp, %i.dw
  %i.es = select <2 x i1> %i.er, <2 x float> %i.dp, <2 x float> %i.dw ; 3 uses
  %i.et = fcmp oge <2 x float> %i.dp, %i.dw
  %i.eu = select <2 x i1> %i.et, <2 x float> %i.dp, <2 x float> %i.dw ; 3 uses
  store <2 x float> %i.es, ptr %13, align 8
  %i.ev = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  store <2 x float> %i.eu, ptr %i.ev, align 8
  %i.ew = extractelement <2 x float> %i.es, i64 0 ; 2 uses
  %i.ex = fadd float %i.ew, -4.000000e+00
  %i.ey = extractelement <2 x float> %i.es, i64 1 ; 2 uses
  %i.ez = fadd float %i.ey, -4.000000e+00
  %i.fa = extractelement <2 x float> %i.eu, i64 0 ; 2 uses
  %i.fb = fadd float %i.fa, 4.000000e+00
  %i.fc = extractelement <2 x float> %i.eu, i64 1 ; 2 uses
  %i.fd = fadd float %i.fc, 4.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  %i.fe = shufflevector <2 x float> %i.en, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ff = extractelement <2 x float> %i.ds, i64 0
  %i.fg = extractelement <2 x float> %i.ds, i64 1
  %i.fh = extractelement <2 x float> %i.ea, i64 0
  %i.fi = extractelement <2 x float> %i.ea, i64 1
  br i1 %.not356, label %bb.w, label %bb.y

bb.w:                                             ; preds = %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267
  %i.fj = fcmp oeq float %i.ew, %i.eo
  %i.fk = fcmp oeq float %i.ey, %i.ep
  %or.cond352 = select i1 %i.fj, i1 %i.fk, i1 false
  br i1 %or.cond352, label %.thread348, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fl = fcmp oeq float %i.fa, %i.eo
  %i.fm = fcmp oeq float %i.fc, %i.ep
  %i.fn = select i1 %i.fl, i1 %i.fm, i1 false
  %cond.fr346 = freeze i1 %i.fn                   ; 2 uses
  %. = select i1 %cond.fr346, i32 6, i32 5
  %.449 = select i1 %cond.fr346, i32 5, i32 6
  br label %.thread348

.thread348:                                       ; preds = %bb.x, %bb.w
  %.sink = phi i32 [ 6, %bb.w ], [ %., %bb.x ]    ; 2 uses
  %i.fo = phi i32 [ 5, %bb.w ], [ %.449, %bb.x ]  ; 2 uses
  store i32 %.sink, ptr %i.c, align 16, !tbaa !29
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !29
  %i.fq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i32 %.sink, ptr %i.fq, align 8, !tbaa !29
  %i.fr = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 %i.fo, ptr %i.fr, align 4, !tbaa !29
  br label %bb.y

bb.y:                                             ; preds = %.thread348, %_ZN6ImPlotL8FitPointERK11ImPlotPoint.exit267
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #32
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 12
  %.val = load float, ptr %i.fs, align 4, !tbaa !46
  %i.ft = fcmp oeq float %.val, -1.000000e+00
  br i1 %i.ft, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.fu = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN5ImGui17GetStyleColorVec4Ei(i32 noundef 0) #32
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z
  %i.fv = phi ptr [ %i.fu, %bb.z ], [ %5, %bb.y ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %14, ptr noundef nonnull align 4 dereferenceable(16) %i.fv, i64 16, i1 false), !tbaa.struct !314
  %i.fw = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14) #32 ; 6 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %14, i64 12 ; 2 uses
  %i.fy = load float, ptr %i.fx, align 4, !tbaa !46
  %i.fz = fmul float %i.fy, 2.500000e-01
  store float %i.fz, ptr %i.fx, align 4, !tbaa !46
  %i.ga = call noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %14) #32
  %i.gb = load ptr, ptr @GImGui, align 8, !tbaa !48
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 5184
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !228 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 206
  store i8 1, ptr %i.ge, align 2, !tbaa !445
  %i.gf = call noundef i32 @_ZN11ImGuiWindow5GetIDEi(ptr noundef nonnull align 8 dereferenceable(1077) %i.gd, i32 noundef %0) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i8 0, ptr %i.d, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.e, align 1, !tbaa !262
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #32
  %i.gg = fadd <4 x float> %i.fe, <float -4.000000e+00, float -4.000000e+00, float 4.000000e+00, float 4.000000e+00>
  store <4 x float> %i.gg, ptr %15, align 16, !tbaa !41
  call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.gf) #32
  br i1 %.not355, label %bb.ab, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre378 = load i8, ptr %i.e, align 1, !range !263
  br label %bb.ah

bb.ab:                                            ; preds = %bb.aa
  %i.gh = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %15, i32 noundef %i.gf, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef 0) #32
  %.not210 = icmp eq ptr %7, null
  br i1 %.not210, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gi = zext i1 %i.gh to i8
  store i8 %i.gi, ptr %7, align 1, !tbaa !262
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.not211 = icmp eq ptr %8, null
  br i1 %.not211, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gj = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  store i8 %i.gj, ptr %8, align 1, !tbaa !262
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.not212 = icmp eq ptr %9, null
  %.pre379 = load i8, ptr %i.e, align 1, !range !263 ; 3 uses
  br i1 %.not212, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i8 %.pre379, ptr %9, align 1, !tbaa !262
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge, %bb.af, %bb.ag
  %i.gk = phi i8 [ %.pre378, %._crit_edge ], [ %.pre379, %bb.af ], [ %.pre379, %bb.ag ] ; 2 uses
  %i.gl = load i8, ptr %i.d, align 1, !tbaa !262, !range !263, !noundef !264
  %i.gm = trunc nuw i8 %i.gl to i1
  %i.gn = trunc nuw i8 %i.gk to i1
  %or.cond = select i1 %i.gm, i1 true, i1 %i.gn
  %or.cond3 = and i1 %.not356, %or.cond
  br i1 %or.cond3, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @_ZN5ImGui14SetMouseCursorEi(i32 noundef 2) #32
  %.pre380 = load i8, ptr %i.e, align 1, !tbaa !262, !range !263
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %i.go = phi i8 [ %i.gk, %bb.ah ], [ %.pre380, %bb.ai ]
  %i.gp = trunc nuw i8 %i.go to i1
  br i1 %i.gp, label %bb.ak, label %.loopexit359

bb.ak:                                            ; preds = %bb.aj
  %i.gq = call noundef zeroext i1 @_ZN5ImGui15IsMouseDraggingEif(i32 noundef 0, float noundef -1.000000e+00) #32
  br i1 %i.gq, label %.preheader358.preheader, label %.loopexit359

.preheader358.preheader:                          ; preds = %bb.ak
  %i.gr = call noundef nonnull align 8 dereferenceable(3032) ptr @_ZN5ImGui5GetIOEv() #32 ; 2 uses
end_hunk_1
