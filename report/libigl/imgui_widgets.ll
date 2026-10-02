Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/imgui_widgets?download=true
inline.NumInlined: 1519
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 28
begin_hunk_0_@_Z28ImParseFormatTrimDecorationsPKcPcm:bb.a
  %i.v = ptrtoint ptr %.2.i.ph to i64
  %i.w = ptrtoint ptr %.01025.i to i64
  %reass.sub = sub i64 %i.v, %i.w
  %i.x = add i64 %reass.sub, 1
  %i.y = tail call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %2)
  tail call void @_Z9ImStrncpyPcPKcm(ptr noundef %1, ptr noundef nonnull %.01025.i, i64 noundef %i.y)
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

_Z22ImParseFormatFindStartPKc.exit.thread:        ; preds = %bb.c, %.thread.i, %bb.a, %bb.g, %_Z20ImParseFormatFindEndPKc.exit
  %.1 = phi ptr [ %.01025.i, %.thread.i ], [ %1, %bb.g ], [ %.01025.i, %_Z20ImParseFormatFindEndPKc.exit ], [ %0, %bb.a ], [ %0, %bb.c ]
  ret ptr %.1
}

declare void @_Z9ImStrncpyPcPKcm(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z22ImParseFormatPrecisionPKci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !148     ; 2 uses
  %.not24.i = icmp eq i8 %i.a, 0
  br i1 %.not24.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.pr = phi i8 [ %i.f, %bb.c ], [ %i.a, %bb.a ]
  %.01025.i = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.b = icmp eq i8 %.pr, 37                      ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.c = getelementptr inbounds nuw i8, ptr %.01025.i, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !148
  %.not15.i = icmp eq i8 %i.d, 37
  br i1 %.not15.i, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %spec.select.idx.i = zext i1 %i.b to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.01025.i, i64 %spec.select.idx.i
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 1 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !148   ; 2 uses
  %.not.i = icmp eq i8 %i.f, 0
  br i1 %.not.i, label %_Z22ImParseFormatFindStartPKc.exit.thread, label %.lr.ph.i

.preheader:                                       ; preds = %bb.b, %.preheader
  %.pn = phi ptr [ %.018, %.preheader ], [ %.01025.i, %bb.b ] ; 2 uses
  %.018 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 2 uses
  %i.g = load i8, ptr %.018, align 1, !tbaa !148  ; 3 uses
  %i.h = add i8 %i.g, -48
  %or.cond23 = icmp ult i8 %i.h, 10
  br i1 %or.cond23, label %.preheader, label %.critedge, !llvm.loop !1

.critedge:                                        ; preds = %.preheader
  %i.i = icmp eq i8 %i.g, 46
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge
  %i.j = getelementptr inbounds nuw i8, ptr %.pn, i64 2 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !148
  %.not.i24 = icmp eq i8 %i.k, 45                 ; 2 uses
  %spec.select.idx.i25 = zext i1 %.not.i24 to i64
  %spec.select.i26 = getelementptr inbounds nuw i8, ptr %i.j, i64 %spec.select.idx.i25 ; 2 uses
  %i.l = load i8, ptr %spec.select.i26, align 1, !tbaa !148
  %i.m = icmp eq i8 %i.l, 43
  %.1.idx.i = zext i1 %i.m to i64
  %.1.i = getelementptr inbounds nuw i8, ptr %spec.select.i26, i64 %.1.idx.i ; 2 uses
  %i.n = load i8, ptr %.1.i, align 1, !tbaa !148  ; 3 uses
  %i.o = add i8 %i.n, -48
  %or.cond15.i = icmp ult i8 %i.o, 10
  br i1 %or.cond15.i, label %.lr.ph.i27, label %_ZL6ImAtoiIiEPKcS1_PT_.exit

.lr.ph.i27:                                       ; preds = %bb.d, %.lr.ph.i27
  %i.p = phi i8 [ %i.u, %.lr.ph.i27 ], [ %i.n, %bb.d ]
  %.017.i = phi i32 [ %i.t, %.lr.ph.i27 ], [ 0, %bb.d ]
  %.216.i = phi ptr [ %i.r, %.lr.ph.i27 ], [ %.1.i, %bb.d ]
  %i.q = mul nsw i32 %.017.i, 10
  %i.r = getelementptr inbounds nuw i8, ptr %.216.i, i64 1 ; 2 uses
  %narrow.i = add nsw i8 %i.p, -48
  %i.s = zext nneg i8 %narrow.i to i32
  %i.t = add nsw i32 %i.q, %i.s                   ; 2 uses
  %i.u = load i8, ptr %i.r, align 1, !tbaa !148   ; 3 uses
  %i.v = add i8 %i.u, -48
  %or.cond.i = icmp ult i8 %i.v, 10
  br i1 %or.cond.i, label %.lr.ph.i27, label %_ZL6ImAtoiIiEPKcS1_PT_.exit, !llvm.loop !2

_ZL6ImAtoiIiEPKcS1_PT_.exit:                      ; preds = %.lr.ph.i27, %bb.d
  %i.w = phi i8 [ %i.n, %bb.d ], [ %i.u, %.lr.ph.i27 ]
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.t, %.lr.ph.i27 ] ; 2 uses
  %i.x = sub nsw i32 0, %.0.lcssa.i
  %i.y = select i1 %.not.i24, i32 %i.x, i32 %.0.lcssa.i ; 2 uses
  %or.cond = icmp ugt i32 %i.y, 99
  %spec.select = select i1 %or.cond, i32 %1, i32 %i.y
  %i.z = freeze i32 %spec.select
  br label %bb.e

bb.e:                                             ; preds = %_ZL6ImAtoiIiEPKcS1_PT_.exit, %.critedge
  %i.aa = phi i8 [ %i.g, %.critedge ], [ %i.w, %_ZL6ImAtoiIiEPKcS1_PT_.exit ] ; 2 uses
  %.031 = phi i32 [ 2147483647, %.critedge ], [ %i.z, %_ZL6ImAtoiIiEPKcS1_PT_.exit ] ; 4 uses
  switch i8 %i.aa, label %bb.f [
    i8 101, label %_Z22ImParseFormatFindStartPKc.exit.thread
    i8 69, label %_Z22ImParseFormatFindStartPKc.exit.thread
    i8 103, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.ab = icmp eq i8 %i.aa, 71
  %i.ac = icmp eq i32 %.031, 2147483647           ; 2 uses
  %or.cond3 = and i1 %i.ac, %i.ab
  br i1 %or.cond3, label %bb.h, label %bb.i

bb.g:                                             ; preds = %bb.e
  %.old2 = icmp eq i32 %.031, 2147483647
  br i1 %.old2, label %bb.h, label %_Z22ImParseFormatFindStartPKc.exit.thread

bb.h:                                             ; preds = %bb.f, %bb.g
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

bb.i:                                             ; preds = %bb.f
  %spec.select43 = select i1 %i.ac, i32 %1, i32 %.031
  br label %_Z22ImParseFormatFindStartPKc.exit.thread

_Z22ImParseFormatFindStartPKc.exit.thread:        ; preds = %bb.c, %bb.i, %bb.e, %bb.e, %bb.g, %bb.h, %bb.a
  %.0 = phi i32 [ -1, %bb.e ], [ %.031, %bb.g ], [ -1, %bb.e ], [ %spec.select43, %bb.i ], [ %1, %bb.a ], [ -1, %bb.h ], [ %1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui13TempInputTextERK6ImRectjPKcPcii(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12264 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !230
  %.not = icmp eq i32 %i.c, %1                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5ImGui13ClearActiveIDEv()
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 7184
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  %i.g = load i64, ptr %0, align 4, !tbaa !141
  store i64 %i.g, ptr %i.f, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <2 x float>, ptr %i.h, align 4, !tbaa !141
  %i.j = load <2 x float>, ptr %0, align 4, !tbaa !141
  %i.k = fsub <2 x float> %i.i, %i.j
  store <2 x float> %i.k, ptr %6, align 8
  %i.l = or i32 %5, 268435456
  %i.m = call noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %2, ptr noundef null, ptr noundef %3, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.l, ptr noundef null, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 7260
  %i.o = load i32, ptr %i.n, align 4, !tbaa !165
  store i32 %i.o, ptr %i.b, align 8, !tbaa !230
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i1 %i.m
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %struct.ImRect, align 8             ; 5 uses
  %9 = alloca %struct.ImRect, align 8             ; 14 uses
  %10 = alloca %struct.ImRect, align 8            ; 8 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %12 = alloca %struct.ImVector.5, align 8        ; 10 uses
  %13 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 15 uses
  %14 = alloca %struct.ImGuiInputTextCallbackData, align 8 ; 10 uses
  %15 = alloca %struct.ImVec4, align 16           ; 10 uses
  %16 = alloca %struct.ImVec2, align 8            ; 13 uses
  %17 = alloca %struct.ImRect, align 8            ; 5 uses
  %18 = alloca %struct.ImVec2, align 8            ; 4 uses
  %19 = alloca %struct.ImRect, align 16           ; 5 uses
  %20 = alloca %struct.ImVec2, align 8            ; 4 uses
  %21 = alloca %struct.ImVec2, align 4            ; 5 uses
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 115 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 7184 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  store i8 1, ptr %i.j, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 147
  %i.l = load i8, ptr %i.k, align 1, !tbaa !134, !range !135, !noundef !136
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.lv, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = and i32 %5, 67108864                     ; 2 uses
  %i.o = icmp ne i32 %i.n, 0                      ; 29 uses
  %i.p = and i32 %5, 16384
  %i.q = icmp ne i32 %i.p, 0                      ; 19 uses
  %i.r = and i32 %5, 32768
  %i.s = icmp eq i32 %i.r, 0                      ; 5 uses
  %i.t = and i32 %5, 65536
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  %i.v = and i32 %5, 262144
  %i.w = icmp ne i32 %i.v, 0                      ; 2 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5ImGui10BeginGroupEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(921) %i.i, ptr noundef %0, ptr noundef null) ; 24 uses
  %i.y = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef null, i1 noundef zeroext true, float noundef -1.000000e+00) ; 2 uses
  %.sroa.0597.0.copyload = load <2 x float>, ptr %4, align 4, !tbaa !141
  %i.z = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 6528
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !152
  %i.ac = fmul float %i.ab, 8.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %.sroa.0598.4.vec.extract = extractelement <2 x float> %i.y, i64 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = phi float [ %i.ac, %bb.e ], [ %.sroa.0598.4.vec.extract, %bb.f ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 5532 ; 4 uses
  %i.af = getelementptr i8, ptr %i.g, i64 5536    ; 6 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !150
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 2.000000e+00, float %i.ad)
  %i.ai = tail call <2 x float> @_ZN5ImGui12CalcItemSizeE6ImVec2ff(<2 x float> %.sroa.0597.0.copyload, float noundef %i.z, float noundef %i.ah) ; 5 uses
  %.sroa.01287.0.vec.extract1289 = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %.sroa.0598.0.vec.extract = extractelement <2 x float> %i.y, i64 0 ; 2 uses
  %i.aj = fcmp ogt float %.sroa.0598.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.aj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 5556
  %i.al = load float, ptr %i.ak, align 4, !tbaa !151
  %i.am = fadd float %.sroa.0598.0.vec.extract, %i.al
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.an = phi float [ %i.am, %bb.h ], [ 0.000000e+00, %bb.g ]
  %i.ao = fadd float %.sroa.01287.0.vec.extract1289, %i.an
  %.sroa.01287.4.vec.extract1293 = extractelement <2 x float> %i.ai, i64 1 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 216 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ap, align 8, !tbaa !141 ; 5 uses
  %i.ar = fadd <2 x float> %i.ai, %i.aq
  store <2 x float> %i.aq, ptr %9, align 8, !tbaa !141
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store <2 x float> %i.ar, ptr %i.as, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.au = insertelement <2 x float> %i.ai, float %i.ao, i64 0
  %i.av = fadd <2 x float> %i.au, %i.aq
  store <2 x float> %i.aq, ptr %10, align 8, !tbaa !141
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %i.av, ptr %i.aw, align 8, !tbaa !141
  %i.ax = load float, ptr %i.af, align 8, !tbaa !150
  call void @_ZN5ImGui8ItemSizeERK6ImRectf(ptr noundef nonnull align 4 dereferenceable(16) %10, float noundef %i.ax)
  br i1 %i.o, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ay = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %i.x, ptr noundef nonnull %9, i32 noundef 256)
  br i1 %i.ay, label %bb.k, label %.critedge1019

.critedge1019:                                    ; preds = %bb.j
  call void @_ZN5ImGui8EndGroupEv()
  br label %bb.lu

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 7376
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !198
  store <2 x float> %i.aq, ptr %i.ap, align 8, !tbaa !141
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 5784
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(16) %i.bb)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 5540
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !173
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 7, float noundef %i.bd)
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 5544
  %i.bf = load float, ptr %i.be, align 8, !tbaa !191
  call void @_ZN5ImGui12PushStyleVarEif(i32 noundef 8, float noundef %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  %i.bg = load <2 x float>, ptr %i.as, align 8, !tbaa !141
  %i.bh = load <2 x float>, ptr %9, align 8, !tbaa !141
  %i.bi = fsub <2 x float> %i.bg, %i.bh
  store <2 x float> %i.bi, ptr %11, align 8
  %i.bj = call noundef zeroext i1 @_ZN5ImGui12BeginChildExEPKcjRK6ImVec2bi(ptr noundef %0, i32 noundef %i.x, ptr noundef nonnull align 4 dereferenceable(8) %11, i1 noundef zeroext true, i32 noundef 4)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 2)
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 1)
  br i1 %i.bj, label %.thread, label %bb.l

.thread:                                          ; preds = %bb.k
  %i.bk = load ptr, ptr %i.h, align 8, !tbaa !111 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 216 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 292
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !218
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 298 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !451
  %i.br = trunc i32 %i.bo to i16
  %i.bs = or i16 %i.bq, %i.br
  store i16 %i.bs, ptr %i.bp, align 2, !tbaa !451
  %i.bt = load <2 x float>, ptr %i.ae, align 4, !tbaa !141
  %i.bu = load <2 x float>, ptr %i.bl, align 4, !tbaa !141
  %i.bv = fadd <2 x float> %i.bt, %i.bu
  store <2 x float> %i.bv, ptr %i.bl, align 4, !tbaa !141
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bk, i64 132
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !452
  %i.by = fsub float %.sroa.01287.0.vec.extract1289, %i.bx ; 2 uses
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  call void @_ZN5ImGui8EndChildEv()
  call void @_ZN5ImGui8EndGroupEv()
  br label %bb.lu

bb.m:                                             ; preds = %bb.i
  %i.bz = and i32 %5, 268435456
  %.not985 = icmp eq i32 %i.bz, 0
  br i1 %.not985, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %10, i32 noundef %i.x, ptr noundef nonnull %9, i32 noundef 256)
  br i1 %i.ca, label %bb.o, label %bb.lu

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 7376
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !198
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o
  %.sroa.01279.0 = phi float [ %i.by, %.thread ], [ 0.000000e+00, %bb.o ] ; 2 uses
  %.2962 = phi ptr [ %i.bk, %.thread ], [ %i.i, %bb.o ] ; 14 uses
  %.sroa.0568.2 = phi float [ %i.by, %.thread ], [ %.sroa.01287.0.vec.extract1289, %bb.o ] ; 5 uses
  %.1959 = phi i32 [ %i.ba, %.thread ], [ %i.cc, %bb.o ]
  %i.cd = call noundef zeroext i1 @_ZN5ImGui13ItemHoverableERK6ImRectj(ptr noundef nonnull align 4 dereferenceable(16) %9, i32 noundef %i.x) ; 5 uses
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 8056
  store i32 1, ptr %i.ce, align 8, !tbaa !453
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cf = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8416 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !454
  %i.ci = icmp eq i32 %i.ch, %i.x                 ; 3 uses
  %i.cj = select i1 %i.ci, ptr %i.cg, ptr null
  %i.ck = and i32 %.1959, 256
  %i.cl = icmp ne i32 %i.ck, 0                    ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.g, i64 7260 ; 12 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !165 ; 3 uses
  %.not986 = icmp eq i32 %i.cn, %i.x
  br i1 %.not986, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.co = getelementptr inbounds nuw i8, ptr %i.g, i64 7716
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !231
  %i.cq = icmp eq i32 %i.cp, %i.x
  br i1 %i.cq, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 7704
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !169
  %i.ct = icmp eq i32 %i.cs, %i.x
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 7748
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !455
  %i.cw = icmp eq i32 %i.cv, 2
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.u, %bb.t, %bb.r
  %i.cx = phi i1 [ false, %bb.r ], [ true, %bb.s ], [ false, %bb.t ], [ %i.cw, %bb.u ] ; 4 uses
  br i1 %i.cd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cy = getelementptr inbounds nuw i8, ptr %i.g, i64 1056
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !164, !range !135, !noundef !136
  %i.da = trunc nuw i8 %i.cz to i1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.db = phi i1 [ false, %bb.v ], [ %i.da, %bb.w ] ; 3 uses
  %or.cond = and i1 %i.o, %i.ci
  br i1 %or.cond, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dc = icmp eq i32 %i.cn, 0
  br i1 %i.dc, label %bb.z, label %.thread1303

bb.z:                                             ; preds = %bb.y
  %i.dd = getelementptr inbounds nuw i8, ptr %i.g, i64 7320
end_hunk_0
begin_hunk_1_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  br i1 %i.qa, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %_ZNK8ImVectorItE8containsERKt.exit
  %i.qb = load i32, ptr %i.c, align 4, !tbaa !188
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(3736) %.095715601681, i32 noundef %i.qb)
  br label %bb.di

bb.di:                                            ; preds = %bb.dh, %_ZNK8ImVectorItE8containsERKt.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit.thread

_ZN5ImGui15IsKeyPressedMapEib.exit.thread:        ; preds = %bb.dg, %bb.dc, %bb.di, %bb.dd, %_ZN5ImGui15IsKeyPressedMapEib.exit, %bb.db
  %i.qc = getelementptr inbounds nuw i8, ptr %i.g, i64 5456 ; 4 uses
  %i.qd = load i32, ptr %i.qc, align 8, !tbaa !494
  %i.qe = icmp sgt i32 %i.qd, 0
  br i1 %i.qe, label %bb.dj, label %bb.ds

bb.dj:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit.thread
  %or.cond57 = or i1 %i.q, %i.pg
  %or.cond60 = select i1 %or.cond57, i1 true, i1 %i.cx
  br i1 %or.cond60, label %.loopexit1428, label %.lr.ph

.lr.ph:                                           ; preds = %bb.dj
  %i.qf = getelementptr inbounds nuw i8, ptr %i.g, i64 5464
  %i.qg = getelementptr inbounds nuw i8, ptr %i.g, i64 321
  br label %bb.dk

bb.dk:                                            ; preds = %.lr.ph, %bb.do
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.do ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.qh = load ptr, ptr %i.qf, align 8, !tbaa !246
  %i.qi = getelementptr inbounds nuw [2 x i8], ptr %i.qh, i64 %indvars.iv
  %i.qj = load i16, ptr %i.qi, align 2, !tbaa !220 ; 2 uses
  %i.qk = zext i16 %i.qj to i32
  store i32 %i.qk, ptr %i.d, align 4, !tbaa !188
  %i.ql = icmp eq i16 %i.qj, 9
  br i1 %i.ql, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.qm = load i8, ptr %i.qg, align 1, !tbaa !493, !range !135, !noundef !136
  %i.qn = trunc nuw i8 %i.qm to i1
  br i1 %i.qn, label %bb.do, label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.qo = call fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterPjiPFiP26ImGuiInputTextCallbackDataEPv16ImGuiInputSource(ptr noundef %i.d, i32 noundef %5, ptr noundef %6, ptr noundef %7, i32 noundef 2)
  br i1 %i.qo, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.qp = load i32, ptr %i.d, align 4, !tbaa !188
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(3736) %.095715601681, i32 noundef %i.qp)
  br label %bb.do

bb.do:                                            ; preds = %bb.dm, %bb.dn, %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.qq = load i32, ptr %i.qc, align 8, !tbaa !494
  %i.qr = sext i32 %i.qq to i64
  %i.qs = icmp slt i64 %indvars.iv.next, %i.qr
  br i1 %i.qs, label %bb.dk, label %.loopexit1428, !llvm.loop !442

.loopexit1428:                                    ; preds = %bb.do, %bb.dj
  %i.qt = getelementptr inbounds nuw i8, ptr %i.g, i64 5460 ; 2 uses
  %i.qu = load i32, ptr %i.qt, align 4, !tbaa !245
  %i.qv = icmp slt i32 %i.qu, 0
  br i1 %i.qv, label %bb.dp, label %_ZN8ImVectorItE6resizeEi.exit1129

bb.dp:                                            ; preds = %.loopexit1428
  %i.qw = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.g, i64 5464 ; 3 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !246 ; 2 uses
  %.not6.i.i1128 = icmp eq ptr %i.qy, null
  br i1 %.not6.i.i1128, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.qz = load i32, ptr %i.qc, align 8, !tbaa !247
  %i.ra = sext i32 %i.qz to i64
  %i.rb = shl nsw i64 %i.ra, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %i.qw, ptr nonnull align 2 %i.qy, i64 %i.rb, i1 false)
  %i.rc = load ptr, ptr %i.qx, align 8, !tbaa !246
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.rc)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  store ptr %i.qw, ptr %i.qx, align 8, !tbaa !246
  store i32 0, ptr %i.qt, align 4, !tbaa !245
  br label %_ZN8ImVectorItE6resizeEi.exit1129

_ZN8ImVectorItE6resizeEi.exit1129:                ; preds = %.loopexit1428, %bb.dr
  store i32 0, ptr %i.qc, align 8, !tbaa !247
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit.thread, %_ZN8ImVectorItE6resizeEi.exit1129, %bb.cb
  %.0938 = phi i32 [ 0, %bb.cb ], [ %i.lx, %_ZN8ImVectorItE6resizeEi.exit1129 ], [ %i.lx, %_ZN5ImGui15IsKeyPressedMapEib.exit.thread ] ; 2 uses
  %i.rd = load i32, ptr %i.cm, align 4, !tbaa !165
  %i.re = icmp eq i32 %i.rd, %i.x
  br i1 %i.re, label %bb.dt, label %.thread1599

bb.dt:                                            ; preds = %bb.ds
  %i.rf = getelementptr inbounds nuw i8, ptr %i.g, i64 7272
  %i.rg = load i8, ptr %i.rf, align 8, !tbaa !171, !range !135, !noundef !136
  %i.rh = or i8 %i.rg, %.0953
  %or.cond63.not = icmp eq i8 %i.rh, 0
  br i1 %or.cond63.not, label %bb.du, label %.critedge1056

bb.du:                                            ; preds = %bb.dt
  %i.ri = load float, ptr %i.af, align 8, !tbaa !150
  %i.rj = fsub float %.sroa.01287.4.vec.extract1293, %i.ri
  %i.rk = getelementptr inbounds nuw i8, ptr %i.g, i64 6528 ; 5 uses
  %i.rl = load float, ptr %i.rk, align 8, !tbaa !152
  %i.rm = fdiv float %i.rj, %i.rl
  %i.rn = fptosi float %i.rm to i32
  %i.ro = call noundef i32 @llvm.smax.i32(i32 %i.rn, i32 1) ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %.095715601681, i64 76 ; 5 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %.095715601681, i64 92
  store i32 %i.ro, ptr %i.rq, align 4, !tbaa !495
  %i.rr = getelementptr inbounds nuw i8, ptr %i.g, i64 321
  %i.rs = load i8, ptr %i.rr, align 1, !tbaa !493, !range !135, !noundef !136
  %i.rt = zext nneg i8 %i.rs to i32
  %i.ru = shl nuw nsw i32 %i.rt, 22               ; 10 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.g, i64 201
  %i.rw = load i8, ptr %i.rv, align 1, !tbaa !486, !range !135, !noundef !136
  %i.rx = trunc nuw i8 %i.rw to i1                ; 2 uses
  br i1 %i.rx, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.ry = getelementptr inbounds nuw i8, ptr %i.g, i64 322
  %i.rz = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 2 uses
  %.in = load i8, ptr %i.rz, align 8, !tbaa !164, !range !135, !noundef !136
  %.phi.trans.insert1453 = getelementptr inbounds nuw i8, ptr %i.g, i64 960
  %.pre1454 = load i32, ptr %.phi.trans.insert1453, align 8, !tbaa !496
  br label %bb.dz

bb.dw:                                            ; preds = %bb.du
  %i.sa = getelementptr inbounds nuw i8, ptr %i.g, i64 960
  %i.sb = load i32, ptr %i.sa, align 8, !tbaa !496 ; 4 uses
  %i.sc = icmp eq i32 %i.sb, 10                   ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.g, i64 322 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.g, i64 320 ; 4 uses
  %.in1319 = load i8, ptr %i.sd, align 2, !tbaa !164, !range !135, !noundef !136 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.g, i64 323
  %i.sg = load i8, ptr %i.sf, align 1, !tbaa !492, !range !135, !noundef !136
  %i.sh = trunc nuw i8 %i.sg to i1
  br i1 %i.sh, label %bb.dx, label %bb.dz

bb.dx:                                            ; preds = %bb.dw
  %i.si = load i8, ptr %i.se, align 8, !tbaa !472, !range !135, !noundef !136
  %i.sj = trunc nuw i8 %i.si to i1
  br i1 %i.sj, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.sk = trunc nuw i8 %.in1319 to i1
  %i.sl = xor i1 %i.sk, true
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dv, %bb.dy, %bb.dx, %bb.dw
  %i.sm = phi i32 [ %i.sb, %bb.dx ], [ %i.sb, %bb.dw ], [ %.pre1454, %bb.dv ], [ %i.sb, %bb.dy ] ; 3 uses
  %.v1417 = phi i32 [ 8, %bb.dx ], [ 8, %bb.dw ], [ 1, %bb.dv ], [ 8, %bb.dy ]
  %.in1416 = phi i8 [ %.in1319, %bb.dx ], [ %.in1319, %bb.dw ], [ %.in, %bb.dv ], [ %.in1319, %bb.dy ]
  %i.sn = phi ptr [ %i.se, %bb.dx ], [ %i.se, %bb.dw ], [ %i.rz, %bb.dv ], [ %i.se, %bb.dy ] ; 6 uses
  %i.so = phi ptr [ %i.sd, %bb.dx ], [ %i.sd, %bb.dw ], [ %i.ry, %bb.dv ], [ %i.sd, %bb.dy ]
  %i.sp = phi i1 [ %i.sc, %bb.dx ], [ %i.sc, %bb.dw ], [ false, %bb.dv ], [ %i.sc, %bb.dy ]
  %i.sq = phi i1 [ false, %bb.dx ], [ false, %bb.dw ], [ false, %bb.dv ], [ %i.sl, %bb.dy ] ; 4 uses
  %i.sr = trunc nuw i8 %.in1416 to i1             ; 3 uses
  %i.ss = icmp eq i32 %i.sm, 1
  %i.st = icmp eq i32 %i.sm, 2                    ; 2 uses
  %i.su = icmp eq i32 %i.sm, %.v1417              ; 5 uses
  br i1 %i.su, label %bb.ea, label %_ZN5ImGui15IsKeyPressedMapEib.exit1130.thread

bb.ea:                                            ; preds = %bb.dz
  %i.sv = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 136
  %i.sx = load i32, ptr %i.sw, align 4, !tbaa !188 ; 2 uses
  %i.sy = icmp sgt i32 %i.sx, -1
  br i1 %i.sy, label %_ZN5ImGui15IsKeyPressedMapEib.exit1130, label %_ZN5ImGui15IsKeyPressedMapEib.exit1130.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1130:           ; preds = %bb.ea
  %i.sz = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.sx, i1 noundef zeroext true)
  br i1 %i.sz, label %bb.ec, label %_ZN5ImGui15IsKeyPressedMapEib.exit1130.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1130.thread:    ; preds = %bb.ea, %_ZN5ImGui15IsKeyPressedMapEib.exit1130, %bb.dz
  br i1 %i.st, label %bb.eb, label %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread

bb.eb:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1130.thread
  %i.ta = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.tb = getelementptr inbounds nuw i8, ptr %i.ta, i64 100
  %i.tc = load i32, ptr %i.tb, align 4, !tbaa !188 ; 2 uses
  %i.td = icmp sgt i32 %i.tc, -1
  br i1 %i.td, label %_ZN5ImGui15IsKeyPressedMapEib.exit1131, label %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1131:           ; preds = %bb.eb
  %i.te = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.tc, i1 noundef zeroext true)
  %i.tf = and i1 %i.te, %i.s
  %i.tg = xor i1 %i.tf, true
  %brmerge1033 = or i1 %i.q, %i.tg                ; 2 uses
  %.not1039 = xor i1 %i.o, true
  %brmerge1040 = or i1 %brmerge1033, %.not1039
  %not.brmerge1033 = xor i1 %brmerge1033, true
  br i1 %brmerge1040, label %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread, label %bb.ed

bb.ec:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1130
  %.not1034 = xor i1 %i.s, true
  %brmerge1035 = or i1 %i.q, %.not1034            ; 2 uses
  %.not1036 = xor i1 %i.o, true
  %brmerge1037 = or i1 %brmerge1035, %.not1036
  %not.brmerge1035 = xor i1 %brmerge1035, true
  br i1 %brmerge1037, label %.thread1320, label %bb.ed

bb.ed:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1131, %bb.ec
  %i.th = getelementptr inbounds nuw i8, ptr %.095715601681, i64 80
  %i.ti = load i32, ptr %i.th, align 4, !tbaa !463
  %i.tj = getelementptr inbounds nuw i8, ptr %.095715601681, i64 84
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !464
  %i.tl = icmp ne i32 %i.ti, %i.tk
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread:    ; preds = %bb.eb, %_ZN5ImGui15IsKeyPressedMapEib.exit1131, %bb.ed, %_ZN5ImGui15IsKeyPressedMapEib.exit1130.thread
  %i.tm = phi i1 [ %i.tl, %bb.ed ], [ false, %_ZN5ImGui15IsKeyPressedMapEib.exit1130.thread ], [ %not.brmerge1033, %_ZN5ImGui15IsKeyPressedMapEib.exit1131 ], [ false, %bb.eb ] ; 2 uses
  br i1 %i.su, label %.thread1320, label %_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread

.thread1320:                                      ; preds = %bb.ec, %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread
  %i.tn = phi i1 [ %i.tm, %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread ], [ %not.brmerge1035, %bb.ec ] ; 5 uses
  %i.to = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 128
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !188 ; 2 uses
  %i.tr = icmp sgt i32 %i.tq, -1
  br i1 %i.tr, label %_ZN5ImGui15IsKeyPressedMapEib.exit1132, label %_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1132:           ; preds = %.thread1320
  %i.ts = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.tq, i1 noundef zeroext true)
  br i1 %i.ts, label %bb.ef, label %_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread:    ; preds = %.thread1320, %_ZN5ImGui15IsKeyPressedMapEib.exit1132, %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread
  %i.tt = phi i1 [ %i.tn, %_ZN5ImGui15IsKeyPressedMapEib.exit1132 ], [ %i.tm, %_ZN5ImGui15IsKeyPressedMapEib.exit1131.thread ], [ %i.tn, %.thread1320 ] ; 7 uses
  br i1 %i.ss, label %bb.ee, label %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread

bb.ee:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread
  %i.tu = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 96
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !188 ; 2 uses
  %i.tx = icmp sgt i32 %i.tw, -1
  br i1 %i.tx, label %_ZN5ImGui15IsKeyPressedMapEib.exit1133, label %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1133:           ; preds = %bb.ee
  %i.ty = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.tw, i1 noundef zeroext true)
  %or.cond71.not = and i1 %i.s, %i.ty             ; 2 uses
  %brmerge1043.not = and i1 %i.o, %or.cond71.not
  %.mux1044 = select i1 %or.cond71.not, i1 true, i1 %i.tt
  br i1 %brmerge1043.not, label %bb.eg, label %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread

bb.ef:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1132
  %i.tz = and i32 %5, 67141632
  %brmerge1047.not = icmp eq i32 %i.tz, 67108864
  %.mux1048 = select i1 %i.s, i1 true, i1 %i.tn
  br i1 %brmerge1047.not, label %bb.eg, label %.thread1326

bb.eg:                                            ; preds = %bb.ef, %_ZN5ImGui15IsKeyPressedMapEib.exit1133
  %i.ua = phi i1 [ %i.tn, %bb.ef ], [ %i.tt, %_ZN5ImGui15IsKeyPressedMapEib.exit1133 ] ; 2 uses
  %i.ub = getelementptr inbounds nuw i8, ptr %.095715601681, i64 80
  %i.uc = load i32, ptr %i.ub, align 4, !tbaa !463
  %i.ud = getelementptr inbounds nuw i8, ptr %.095715601681, i64 84
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !464
  %i.uf = icmp ne i32 %i.uc, %i.ue
  %i.ug = or i1 %i.ua, %i.uf
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread:    ; preds = %bb.ee, %_ZN5ImGui15IsKeyPressedMapEib.exit1133, %bb.eg, %_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread
  %i.uh = phi i1 [ %i.ua, %bb.eg ], [ %i.tt, %_ZN5ImGui15IsKeyPressedMapEib.exit1133 ], [ %i.tt, %_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread ], [ %i.tt, %bb.ee ] ; 2 uses
  %or.cond105 = phi i1 [ %i.ug, %bb.eg ], [ %.mux1044, %_ZN5ImGui15IsKeyPressedMapEib.exit1133 ], [ %i.tt, %_ZN5ImGui15IsKeyPressedMapEib.exit1132.thread ], [ %i.tt, %bb.ee ] ; 2 uses
  br i1 %i.su, label %.thread1326, label %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread

.thread1326:                                      ; preds = %bb.ef, %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread
  %or.cond1051331 = phi i1 [ %or.cond105, %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread ], [ %.mux1048, %bb.ef ] ; 3 uses
  %i.ui = phi i1 [ %i.uh, %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread ], [ %i.tn, %bb.ef ] ; 3 uses
  %i.uj = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.uk = getelementptr inbounds nuw i8, ptr %i.uj, i64 132
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !188 ; 2 uses
  %i.um = icmp sgt i32 %i.ul, -1
  br i1 %i.um, label %_ZN5ImGui15IsKeyPressedMapEib.exit1134, label %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1134:           ; preds = %.thread1326
  %i.un = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.ul, i1 noundef zeroext true)
  br i1 %i.un, label %bb.ei, label %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread:    ; preds = %.thread1326, %_ZN5ImGui15IsKeyPressedMapEib.exit1134, %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread
  %or.cond1051329 = phi i1 [ %or.cond1051331, %_ZN5ImGui15IsKeyPressedMapEib.exit1134 ], [ %or.cond105, %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread ], [ %or.cond1051331, %.thread1326 ] ; 4 uses
  %i.uo = phi i1 [ %i.ui, %_ZN5ImGui15IsKeyPressedMapEib.exit1134 ], [ %i.uh, %_ZN5ImGui15IsKeyPressedMapEib.exit1133.thread ], [ %i.ui, %.thread1326 ] ; 4 uses
  br i1 %i.st, label %bb.eh, label %_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread

bb.eh:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread
  %i.up = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 96
  %i.ur = load i32, ptr %i.uq, align 4, !tbaa !188 ; 2 uses
  %i.us = icmp sgt i32 %i.ur, -1
  br i1 %i.us, label %_ZN5ImGui15IsKeyPressedMapEib.exit1135, label %_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1135:           ; preds = %bb.eh
  %i.ut = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.ur, i1 noundef zeroext true)
  br i1 %i.ut, label %bb.ei, label %_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread

bb.ei:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1135, %_ZN5ImGui15IsKeyPressedMapEib.exit1134
  %or.cond1051330 = phi i1 [ %or.cond1051329, %_ZN5ImGui15IsKeyPressedMapEib.exit1135 ], [ %or.cond1051331, %_ZN5ImGui15IsKeyPressedMapEib.exit1134 ]
  %i.uu = phi i1 [ %i.uo, %_ZN5ImGui15IsKeyPressedMapEib.exit1135 ], [ %i.ui, %_ZN5ImGui15IsKeyPressedMapEib.exit1134 ]
  %i.uv = xor i1 %i.q, true
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread:    ; preds = %bb.eh, %bb.ei, %_ZN5ImGui15IsKeyPressedMapEib.exit1135, %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread
  %or.cond1051328 = phi i1 [ %or.cond1051329, %_ZN5ImGui15IsKeyPressedMapEib.exit1135 ], [ %or.cond1051329, %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread ], [ %or.cond1051330, %bb.ei ], [ %or.cond1051329, %bb.eh ]
  %i.uw = phi i1 [ %i.uo, %_ZN5ImGui15IsKeyPressedMapEib.exit1135 ], [ %i.uo, %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread ], [ %i.uu, %bb.ei ], [ %i.uo, %bb.eh ]
  %i.ux = phi i1 [ false, %_ZN5ImGui15IsKeyPressedMapEib.exit1135 ], [ false, %_ZN5ImGui15IsKeyPressedMapEib.exit1134.thread ], [ %i.uv, %bb.ei ], [ false, %bb.eh ]
  br i1 %i.su, label %bb.ej, label %_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread

bb.ej:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread
  %i.uy = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.uy, i64 144
  %i.va = load i32, ptr %i.uz, align 4, !tbaa !188 ; 2 uses
  %i.vb = icmp sgt i32 %i.va, -1
  br i1 %i.vb, label %bb.ek, label %bb.el

bb.ek:                                            ; preds = %bb.ej
  %i.vc = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.va, i1 noundef zeroext true)
  %.not1418 = xor i1 %i.q, true
  %22 = and i1 %i.vc, %.not1418
  %i.vd = and i1 %i.u, %22
  %.pre1455 = load ptr, ptr @GImGui, align 8, !tbaa !22
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  %i.ve = phi ptr [ %.pre1455, %bb.ek ], [ %i.uy, %bb.ej ]
  %.not72 = phi i1 [ %i.vd, %bb.ek ], [ false, %bb.ej ] ; 3 uses
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 140
  %i.vg = load i32, ptr %i.vf, align 4, !tbaa !188 ; 2 uses
  %i.vh = icmp sgt i32 %i.vg, -1
  br i1 %i.vh, label %_ZN5ImGui15IsKeyPressedMapEib.exit1137, label %_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1137:           ; preds = %bb.el
  %i.vi = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.vg, i1 noundef zeroext true)
  br i1 %i.vi, label %bb.en, label %_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread:    ; preds = %bb.el, %_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread, %_ZN5ImGui15IsKeyPressedMapEib.exit1137
  %i.vj = phi i1 [ %.not72, %_ZN5ImGui15IsKeyPressedMapEib.exit1137 ], [ false, %_ZN5ImGui15IsKeyPressedMapEib.exit1135.thread ], [ %.not72, %bb.el ] ; 7 uses
  br i1 %i.sp, label %bb.em, label %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread

bb.em:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread
  %i.vk = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 144
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !188 ; 2 uses
  %i.vn = icmp sgt i32 %i.vm, -1
  br i1 %i.vn, label %_ZN5ImGui15IsKeyPressedMapEib.exit1138, label %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1138:           ; preds = %bb.em
  %i.vo = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.vm, i1 noundef zeroext true)
  %.not76 = xor i1 %i.vo, true
  %or.cond79 = or i1 %i.q, %.not76
  br i1 %or.cond79, label %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread, label %bb.eo

bb.en:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1137
  br i1 %i.q, label %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread, label %bb.eo

bb.eo:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1138, %bb.en
  %i.vp = phi i1 [ %i.vj, %_ZN5ImGui15IsKeyPressedMapEib.exit1138 ], [ %.not72, %bb.en ]
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread:    ; preds = %bb.em, %bb.eo, %bb.en, %_ZN5ImGui15IsKeyPressedMapEib.exit1138, %_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread
  %i.vq = phi i1 [ false, %bb.en ], [ %i.vj, %_ZN5ImGui15IsKeyPressedMapEib.exit1138 ], [ %i.vj, %_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread ], [ %i.vp, %bb.eo ], [ %i.vj, %bb.em ]
  %or.cond102 = phi i1 [ false, %bb.en ], [ %i.vj, %_ZN5ImGui15IsKeyPressedMapEib.exit1138 ], [ %i.vj, %_ZN5ImGui15IsKeyPressedMapEib.exit1137.thread ], [ %i.u, %bb.eo ], [ %i.vj, %bb.em ]
  %i.vr = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 112
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !188 ; 2 uses
  %i.vu = icmp sgt i32 %i.vt, -1
  br i1 %i.vu, label %_ZN5ImGui15IsKeyPressedMapEib.exit1139, label %_ZN5ImGui15IsKeyPressedMapEib.exit1139.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1139:           ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread
  %i.vv = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.vt, i1 noundef zeroext true)
  br i1 %i.vv, label %_ZN5ImGui15IsKeyPressedMapEib.exit1140, label %_ZN5ImGui15IsKeyPressedMapEib.exit1139._ZN5ImGui15IsKeyPressedMapEib.exit1139.thread_crit_edge

_ZN5ImGui15IsKeyPressedMapEib.exit1139._ZN5ImGui15IsKeyPressedMapEib.exit1139.thread_crit_edge: ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1139
  %.pre1456 = load ptr, ptr @GImGui, align 8, !tbaa !22
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1139.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1139.thread:    ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1139._ZN5ImGui15IsKeyPressedMapEib.exit1139.thread_crit_edge, %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread
  %i.vw = phi ptr [ %.pre1456, %_ZN5ImGui15IsKeyPressedMapEib.exit1139._ZN5ImGui15IsKeyPressedMapEib.exit1139.thread_crit_edge ], [ %i.vr, %_ZN5ImGui15IsKeyPressedMapEib.exit1138.thread ]
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 120
  %i.vy = load i32, ptr %i.vx, align 4, !tbaa !188 ; 2 uses
  %i.vz = icmp sgt i32 %i.vy, -1
  br i1 %i.vz, label %bb.ep, label %_ZN5ImGui15IsKeyPressedMapEib.exit1140

bb.ep:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1139.thread
  %i.wa = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.vy, i1 noundef zeroext true)
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1140

_ZN5ImGui15IsKeyPressedMapEib.exit1140:           ; preds = %bb.ep, %_ZN5ImGui15IsKeyPressedMapEib.exit1139.thread, %_ZN5ImGui15IsKeyPressedMapEib.exit1139
  %i.wb = phi i1 [ true, %_ZN5ImGui15IsKeyPressedMapEib.exit1139 ], [ %i.wa, %bb.ep ], [ false, %_ZN5ImGui15IsKeyPressedMapEib.exit1139.thread ]
  %i.wc = call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 0, i32 noundef 1)
  %i.wd = fcmp ogt float %i.wc, 0.000000e+00
  br i1 %i.wd, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1140
  %i.we = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 108
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !188 ; 2 uses
  %i.wh = icmp sgt i32 %i.wg, -1
  br i1 %i.wh, label %_ZN5ImGui15IsKeyPressedMapEib.exit1141, label %_ZN5ImGui15IsKeyPressedMapEib.exit1141.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1141:           ; preds = %bb.eq
  %i.wi = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.wg, i1 noundef zeroext true)
  br i1 %i.wi, label %bb.er, label %_ZN5ImGui15IsKeyPressedMapEib.exit1141.thread

bb.er:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1141, %_ZN5ImGui15IsKeyPressedMapEib.exit1140
  %i.wj = call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 2, i32 noundef 1)
  %i.wk = fcmp ogt float %i.wj, 0.000000e+00
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1141.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1141.thread:    ; preds = %bb.eq, %bb.er, %_ZN5ImGui15IsKeyPressedMapEib.exit1141
  %i.wl = phi i1 [ true, %_ZN5ImGui15IsKeyPressedMapEib.exit1141 ], [ %i.wk, %bb.er ], [ true, %bb.eq ]
  %i.wm = load ptr, ptr @GImGui, align 8, !tbaa !22
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wm, i64 116
  %i.wo = load i32, ptr %i.wn, align 4, !tbaa !188 ; 2 uses
  %i.wp = icmp sgt i32 %i.wo, -1
  br i1 %i.wp, label %_ZN5ImGui15IsKeyPressedMapEib.exit1142, label %_ZN5ImGui15IsKeyPressedMapEib.exit1142.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1142:           ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1141.thread
  %i.wq = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.wo, i1 noundef zeroext true)
  br i1 %i.wq, label %bb.es, label %_ZN5ImGui15IsKeyPressedMapEib.exit1142.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1142.thread:    ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1141.thread, %_ZN5ImGui15IsKeyPressedMapEib.exit1142
  %i.wr = call noundef float @_ZN5ImGui17GetNavInputAmountEi18ImGuiInputReadMode(i32 noundef 1, i32 noundef 1)
  %i.ws = fcmp ogt float %i.wr, 0.000000e+00
  br label %bb.es

bb.es:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1142.thread, %_ZN5ImGui15IsKeyPressedMapEib.exit1142
  %i.wt = phi i1 [ true, %_ZN5ImGui15IsKeyPressedMapEib.exit1142 ], [ %i.ws, %_ZN5ImGui15IsKeyPressedMapEib.exit1142.thread ]
  %i.wu = load ptr, ptr @GImGui, align 8, !tbaa !22 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 64
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !188 ; 2 uses
  %i.wx = icmp sgt i32 %i.ww, -1
  br i1 %i.wx, label %_ZN5ImGui15IsKeyPressedMapEib.exit1143, label %_ZN5ImGui15IsKeyPressedMapEib.exit1143.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1143:           ; preds = %bb.es
  %i.wy = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.ww, i1 noundef zeroext true)
  br i1 %i.wy, label %bb.et, label %_ZN5ImGui15IsKeyPressedMapEib.exit1143._ZN5ImGui15IsKeyPressedMapEib.exit1143.thread_crit_edge

_ZN5ImGui15IsKeyPressedMapEib.exit1143._ZN5ImGui15IsKeyPressedMapEib.exit1143.thread_crit_edge: ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1143
  %.pre1457 = load ptr, ptr @GImGui, align 8, !tbaa !22
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1143.thread

bb.et:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1143
  %i.wz = select i1 %i.sr, i32 2097164, i32 2097152
  %i.xa = select i1 %i.sq, i32 2097156, i32 %i.wz
  %i.xb = or disjoint i32 %i.xa, %i.ru
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(3736) %.095715601681, i32 noundef %i.xb)
  br label %bb.gs

_ZN5ImGui15IsKeyPressedMapEib.exit1143.thread:    ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1143._ZN5ImGui15IsKeyPressedMapEib.exit1143.thread_crit_edge, %bb.es
  %i.xc = phi ptr [ %.pre1457, %_ZN5ImGui15IsKeyPressedMapEib.exit1143._ZN5ImGui15IsKeyPressedMapEib.exit1143.thread_crit_edge ], [ %i.wu, %bb.es ] ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 68
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !188 ; 2 uses
  %i.xf = icmp sgt i32 %i.xe, -1
  br i1 %i.xf, label %_ZN5ImGui15IsKeyPressedMapEib.exit1144, label %_ZN5ImGui15IsKeyPressedMapEib.exit1144.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1144:           ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1143.thread
  %i.xg = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.xe, i1 noundef zeroext true)
  br i1 %i.xg, label %bb.eu, label %_ZN5ImGui15IsKeyPressedMapEib.exit1144._ZN5ImGui15IsKeyPressedMapEib.exit1144.thread_crit_edge

_ZN5ImGui15IsKeyPressedMapEib.exit1144._ZN5ImGui15IsKeyPressedMapEib.exit1144.thread_crit_edge: ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1144
  %.pre1458 = load ptr, ptr @GImGui, align 8, !tbaa !22
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1144.thread

bb.eu:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1144
  %i.xh = select i1 %i.sr, i32 2097165, i32 2097153
  %i.xi = select i1 %i.sq, i32 2097157, i32 %i.xh
  %i.xj = or disjoint i32 %i.xi, %i.ru
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(3736) %.095715601681, i32 noundef %i.xj)
  br label %bb.gs

_ZN5ImGui15IsKeyPressedMapEib.exit1144.thread:    ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1144._ZN5ImGui15IsKeyPressedMapEib.exit1144.thread_crit_edge, %_ZN5ImGui15IsKeyPressedMapEib.exit1143.thread
  %i.xk = phi ptr [ %.pre1458, %_ZN5ImGui15IsKeyPressedMapEib.exit1144._ZN5ImGui15IsKeyPressedMapEib.exit1144.thread_crit_edge ], [ %i.xc, %_ZN5ImGui15IsKeyPressedMapEib.exit1143.thread ] ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 72
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !188 ; 2 uses
  %i.xn = icmp sgt i32 %i.xm, -1
  br i1 %i.xn, label %_ZN5ImGui15IsKeyPressedMapEib.exit1145, label %_ZN5ImGui15IsKeyPressedMapEib.exit1145.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1145:           ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1144.thread
  %i.xo = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.xm, i1 noundef zeroext true)
  %or.cond82 = and i1 %i.o, %i.xo
  br i1 %or.cond82, label %bb.ev, label %_ZN5ImGui15IsKeyPressedMapEib.exit1145._ZN5ImGui15IsKeyPressedMapEib.exit1145.thread_crit_edge

_ZN5ImGui15IsKeyPressedMapEib.exit1145._ZN5ImGui15IsKeyPressedMapEib.exit1145.thread_crit_edge: ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1145
  %.pre1459 = load ptr, ptr @GImGui, align 8, !tbaa !22
  br label %_ZN5ImGui15IsKeyPressedMapEib.exit1145.thread

bb.ev:                                            ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1145
  %i.xp = load i8, ptr %i.sn, align 8, !tbaa !472, !range !135, !noundef !136
  %i.xq = trunc nuw i8 %i.xp to i1
  br i1 %i.xq, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  %i.xr = getelementptr inbounds nuw i8, ptr %.2962, i64 96
  %i.xs = load float, ptr %i.xr, align 4, !tbaa !457
  %i.xt = load float, ptr %i.rk, align 8, !tbaa !152
  %i.xu = fsub float %i.xs, %i.xt                 ; 2 uses
  %i.xv = fcmp oge float %i.xu, 0.000000e+00
  %i.xw = select i1 %i.xv, float %i.xu, float 0.000000e+00
  call void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef %.2962, float noundef %i.xw)
  br label %bb.gs

bb.ex:                                            ; preds = %bb.ev
  %i.xx = select i1 %i.sq, i32 2097158, i32 2097154
  %i.xy = or disjoint i32 %i.xx, %i.ru
  call void @_ZN19ImGuiInputTextState12OnKeyPressedEi(ptr noundef nonnull align 8 dereferenceable(3736) %.095715601681, i32 noundef %i.xy)
  br label %bb.gs

_ZN5ImGui15IsKeyPressedMapEib.exit1145.thread:    ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1145._ZN5ImGui15IsKeyPressedMapEib.exit1145.thread_crit_edge, %_ZN5ImGui15IsKeyPressedMapEib.exit1144.thread
  %i.xz = phi ptr [ %.pre1459, %_ZN5ImGui15IsKeyPressedMapEib.exit1145._ZN5ImGui15IsKeyPressedMapEib.exit1145.thread_crit_edge ], [ %i.xk, %_ZN5ImGui15IsKeyPressedMapEib.exit1144.thread ] ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 76
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !188 ; 2 uses
  %i.yc = icmp sgt i32 %i.yb, -1
  br i1 %i.yc, label %_ZN5ImGui15IsKeyPressedMapEib.exit1146, label %_ZN5ImGui15IsKeyPressedMapEib.exit1146.thread

_ZN5ImGui15IsKeyPressedMapEib.exit1146:           ; preds = %_ZN5ImGui15IsKeyPressedMapEib.exit1145.thread
  %i.yd = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedEib(i32 noundef %i.yb, i1 noundef zeroext true)
  %or.cond85 = and i1 %i.o, %i.yd
  br i1 %or.cond85, label %bb.ey, label %_ZN5ImGui15IsKeyPressedMapEib.exit1146._ZN5ImGui15IsKeyPressedMapEib.exit1146.thread_crit_edge

end_hunk_1
