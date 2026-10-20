Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui10ColorEdit4EPKcPfi:bb.a
  %.1 = phi i1 [ true, %bb.cl ], [ %.not262, %bb.ck ]
  %brmerge280.not = and i1 %.not240, %.1
  br i1 %brmerge280.not, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.mp = load float, ptr %1, align 4, !tbaa !190
  %i.mq = load float, ptr %i.bs, align 4, !tbaa !190
  %i.mr = load float, ptr %i.bv, align 4, !tbaa !190
  call void @_ZN5ImGui20ColorConvertRGBtoHSVEfffRfS0_S0_(float noundef %i.mp, float noundef %i.mq, float noundef %i.mr, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, ptr noundef nonnull align 4 dereferenceable(4) %i.bv)
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn
  call void @_ZN5ImGui17EndDragDropTargetEv()
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.ch, %bb.cg, %bb.cf
  %.9 = phi i8 [ %.6, %bb.cg ], [ %.6, %bb.cf ], [ %.8, %bb.co ], [ %.6, %bb.ch ]
  br i1 %i.ku, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ms = getelementptr inbounds nuw i8, ptr %i.h, i64 5428
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !218 ; 2 uses
  %.not265 = icmp eq i32 %i.mt, 0
  br i1 %.not265, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.mu = getelementptr inbounds nuw i8, ptr %i.h, i64 5472
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !769
  %i.mw = icmp eq ptr %i.mv, %.2213
  br i1 %i.mw, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  store i32 %i.mt, ptr %i.lz, align 8, !tbaa !207
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp
  %i.mx = trunc nuw i8 %.9 to i1                  ; 2 uses
  br i1 %i.mx, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %bb.ct
  %i.my = load i32, ptr %i.lz, align 8, !tbaa !207 ; 2 uses
  %.not266 = icmp eq i32 %i.my, 0
  br i1 %.not266, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.my)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.cx

bb.cx:                                            ; preds = %bb.a, %bb.cw
  %.0208 = phi i1 [ %i.mx, %bb.cw ], [ false, %bb.a ]
  ret i1 %.0208
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui21ColorEditOptionsPopupEPKfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca [64 x i8], align 16               ; 15 uses
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImVec2, align 8             ; 4 uses
  %6 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.b = and i32 %1, 7340032
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %i.c = and i32 %1, 25165824
  %.not46 = icmp eq i32 %i.c, 0                   ; 3 uses
  %or.cond = or i1 %.not, %.not46
  br i1 %or.cond, label %bb.b, label %bb.y

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.60, i32 noundef 0)
  br i1 %i.d, label %bb.c, label %bb.y

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !29
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 65536, i1 noundef zeroext true)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 124 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !461  ; 5 uses
  br i1 %.not, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.g, 1048576
  %i.i = icmp ne i32 %i.h, 0
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.88, i1 noundef zeroext %i.i)
  %i.k = and i32 %i.g, -7340033                   ; 2 uses
  %i.l = or disjoint i32 %i.k, 1048576
  %.0 = select i1 %i.j, i32 %i.l, i32 %i.g        ; 2 uses
  %i.m = and i32 %.0, 2097152
  %i.n = icmp ne i32 %i.m, 0
  %i.o = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.89, i1 noundef zeroext %i.n)
  %i.p = or disjoint i32 %i.k, 2097152
  %.1 = select i1 %i.o, i32 %i.p, i32 %.0         ; 3 uses
  %i.q = and i32 %.1, 4194304
  %i.r = icmp ne i32 %i.q, 0
  %i.s = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.90, i1 noundef zeroext %i.r)
  %i.t = and i32 %.1, -7340033
  %i.u = or disjoint i32 %i.t, 4194304
  %.2 = select i1 %i.s, i32 %i.u, i32 %.1         ; 3 uses
  br i1 %.not46, label %bb.e, label %bb.g

.thread:                                          ; preds = %bb.c
  br i1 %.not46, label %_ZN5ImGui9SeparatorEv.exit, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 5312
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !158  ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 209
  %i.z = load i8, ptr %i.y, align 1, !tbaa !183, !range !184, !noundef !185
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %_ZN5ImGui9SeparatorEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 468
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !315
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = select i1 %i.ad, i32 2, i32 1           ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 456
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !318
  %.not.i = icmp eq ptr %i.ag, null
  %i.ah = or disjoint i32 %i.ae, 4
  %spec.select.i = select i1 %.not.i, i32 %i.ae, i32 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 3476
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !319 ; 2 uses
  %i.ak = fcmp oge float %i.aj, 1.000000e+00
  %i.al = select i1 %i.ak, float %i.aj, float 1.000000e+00
  tail call void @_ZN5ImGui11SeparatorExEif(i32 noundef %spec.select.i, float noundef %i.al)
  br label %_ZN5ImGui9SeparatorEv.exit

_ZN5ImGui9SeparatorEv.exit:                       ; preds = %.thread, %bb.f, %bb.e
  %.25255 = phi i32 [ %.2, %bb.f ], [ %i.g, %.thread ], [ %.2, %bb.e ] ; 3 uses
  %i.am = and i32 %.25255, 8388608
  %i.an = icmp ne i32 %i.am, 0
  %i.ao = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.91, i1 noundef zeroext %i.an)
  %i.ap = and i32 %.25255, -25165825              ; 2 uses
  %i.aq = or disjoint i32 %i.ap, 8388608
  %.3 = select i1 %i.ao, i32 %i.aq, i32 %.25255   ; 2 uses
  %i.ar = and i32 %.3, 16777216
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = tail call noundef zeroext i1 @_ZN5ImGui11RadioButtonEPKcb(ptr noundef nonnull @.str.92, i1 noundef zeroext %i.as)
  %i.au = or disjoint i32 %i.ap, 16777216
  %spec.select = select i1 %i.at, i32 %i.au, i32 %.3
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit, %.thread, %bb.d
  %.4 = phi i32 [ %i.g, %.thread ], [ %spec.select, %_ZN5ImGui9SeparatorEv.exit ], [ %.2, %bb.d ]
  %i.av = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 5312
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !158 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 209
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !183, !range !184, !noundef !185
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN5ImGui9SeparatorEv.exit50, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 468
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !315
  %i.bd = icmp eq i32 %i.bc, 0
  %i.be = select i1 %i.bd, i32 2, i32 1           ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ax, i64 456
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !318
  %.not.i48 = icmp eq ptr %i.bg, null
  %i.bh = or disjoint i32 %i.be, 4
  %spec.select.i49 = select i1 %.not.i48, i32 %i.be, i32 %i.bh
  %i.bi = getelementptr inbounds nuw i8, ptr %i.av, i64 3476
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !319 ; 2 uses
  %i.bk = fcmp oge float %i.bj, 1.000000e+00
  %i.bl = select i1 %i.bk, float %i.bj, float 1.000000e+00
  tail call void @_ZN5ImGui11SeparatorExEif(i32 noundef %spec.select.i49, float noundef %i.bl)
  br label %_ZN5ImGui9SeparatorEv.exit50

_ZN5ImGui9SeparatorEv.exit50:                     ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store <2 x float> <float -1.000000e+00, float 0.000000e+00>, ptr %2, align 8, !tbaa !190
  %i.bm = call noundef zeroext i1 @_ZN5ImGui8ButtonExEPKcRK6ImVec2i(ptr noundef nonnull @.str.93, ptr noundef nonnull readonly align 4 dereferenceable(8) %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %i.bm, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit50
  %i.bn = tail call noundef zeroext i1 @_ZN5ImGui9OpenPopupEPKci(ptr noundef nonnull @.str.94, i32 noundef 0) ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN5ImGui9SeparatorEv.exit50
  %i.bo = tail call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.94, i32 noundef 0)
  br i1 %i.bo, label %bb.k, label %bb.x

bb.k:                                             ; preds = %bb.j
  %i.bp = load float, ptr %0, align 4, !tbaa !190 ; 4 uses
  %i.bq = fcmp olt float %i.bp, 0.000000e+00
  %i.br = fcmp ogt float %i.bp, 1.000000e+00
  %i.bs = select i1 %i.br, float 1.000000e+00, float %i.bp
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float 2.550000e+02, float 5.000000e-01)
  %i.bu = select i1 %i.bq, float 5.000000e-01, float %i.bt
  %i.bv = fptosi float %i.bu to i32               ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = load <2 x float>, ptr %i.bw, align 4, !tbaa !190 ; 5 uses
  %8 = extractelement <2 x float> %7, i64 0
  %9 = fcmp olt float %8, 0.000000e+00
  %10 = fcmp ogt <2 x float> %7, splat (float 1.000000e+00)
  %11 = select <2 x i1> %10, <2 x float> splat (float 1.000000e+00), <2 x float> %7
  %12 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %11, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %13 = extractelement <2 x float> %12, i64 0
  %14 = select i1 %9, float 5.000000e-01, float %13
  %15 = fptosi float %14 to i32                   ; 3 uses
  %16 = extractelement <2 x float> %7, i64 1
  %17 = fcmp olt float %16, 0.000000e+00
  %18 = extractelement <2 x float> %12, i64 1
  %i.bx = select i1 %17, float 5.000000e-01, float %18
  %i.by = fptosi float %i.bx to i32               ; 3 uses
  %i.bz = and i32 %1, 2
  %.not47 = icmp eq i32 %i.bz, 0                  ; 2 uses
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !190 ; 4 uses
  %i.cc = fcmp olt float %i.cb, 0.000000e+00
  %i.cd = fcmp ogt float %i.cb, 1.000000e+00
  %i.ce = select i1 %i.cd, float 1.000000e+00, float %i.cb
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float 2.550000e+02, float 5.000000e-01)
  %i.cg = select i1 %i.cc, float 5.000000e-01, float %i.cf
  %i.ch = fptosi float %i.cg to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.ci = fpext float %i.cb to double
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.cj = phi i32 [ %i.ch, %bb.m ], [ 255, %bb.l ] ; 2 uses
  %i.ck = phi double [ %i.ci, %bb.m ], [ 1.000000e+00, %bb.l ]
  %i.cl = fpext float %i.bp to double
  %19 = fpext <2 x float> %7 to <2 x double>      ; 2 uses
  %20 = extractelement <2 x double> %19, i64 0
  %21 = extractelement <2 x double> %19, i64 1
  %i.cm = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.95, double noundef %i.cl, double noundef %20, double noundef %21, double noundef %i.ck) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !190
  %i.cn = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br i1 %i.cn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.co = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.96, i32 noundef %i.bv, i32 noundef %15, i32 noundef %i.by, i32 noundef %i.cj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !190
  %i.cp = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  br i1 %i.cp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.62, i32 noundef %i.bv, i32 noundef %15, i32 noundef %i.by) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !190
  %i.cr = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  br i1 %i.cr, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %.not47, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cs = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.61, i32 noundef %i.bv, i32 noundef %15, i32 noundef %i.by, i32 noundef %i.cj) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  store <2 x float> zeroinitializer, ptr %6, align 8, !tbaa !190
  %i.ct = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull %i.a, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br i1 %i.ct, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @_ZN5ImGui16SetClipboardTextEPKc(ptr noundef nonnull %i.a)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  call void @_ZN5ImGui8EndPopupEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.j
  store i32 %.4, ptr %i.f, align 4, !tbaa !461
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.a, %bb.x
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui20OpenPopupOnItemClickEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %5 = alloca %struct.ImRect, align 8             ; 10 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %6 = alloca %struct.ImVec4, align 8             ; 15 uses
  %7 = alloca %struct.ImVec4, align 8             ; 7 uses
  %8 = alloca %struct.ImRect, align 16            ; 15 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImVec4, align 4            ; 6 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.k = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 280 ; 2 uses
  %i.m = load i64, ptr %i.l, align 4, !tbaa !190  ; 2 uses
  store i64 %i.m, ptr %5, align 8, !tbaa !190
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.o = load <2 x float>, ptr %3, align 4, !tbaa !190 ; 2 uses
  %i.p = fcmp oeq <2 x float> %i.o, zeroinitializer
  %i.q = insertelement <2 x float> poison, float %i.k, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = select <2 x i1> %i.p, <2 x float> %i.r, <2 x float> %i.o ; 3 uses
  %i.t = load <2 x float>, ptr %i.l, align 4, !tbaa !190
  %i.u = fadd <2 x float> %i.s, %i.t              ; 2 uses
  store <2 x float> %i.u, ptr %i.n, align 8, !tbaa !190
  %i.v = extractelement <2 x float> %i.s, i64 1   ; 3 uses
  %i.w = fcmp ult float %i.v, %i.k
  %i.x = bitcast i64 %i.m to <2 x float>
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3288
  %i.z = load float, ptr %i.y, align 8, !tbaa !234
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.aa = phi float [ %i.z, %bb.c ], [ 0.000000e+00, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ab = fsub <2 x float> %i.u, %i.x
  store <2 x float> %i.ab, ptr %4, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %4, float noundef %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  %i.ac = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.j, ptr noundef null, i32 noundef 0)
  br i1 %i.ac, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ad = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.ae = and i32 %2, 4098
  %.not = icmp eq i32 %i.ae, 0
  %i.af = and i32 %2, -24577
  %spec.select = select i1 %.not, i32 %2, i32 %i.af ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !236
  %i.ag = and i32 %spec.select, 536870912
  %.not78 = icmp eq i32 %i.ag, 0
  br i1 %.not78, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load float, ptr %6, align 8, !tbaa !310
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !311
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.al = load float, ptr %i.ak, align 8, !tbaa !312
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.ah, float noundef %i.aj, float noundef %i.al, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.ai, ptr noundef nonnull align 4 dereferenceable(4) %i.ak)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.an = load float, ptr %i.am, align 8, !tbaa !312
  %i.ao = load <2 x float>, ptr %6, align 8, !tbaa !190
  store <2 x float> %i.ao, ptr %7, align 8, !tbaa !190
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.an, ptr %i.ap, align 8, !tbaa !312
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float 1.000000e+00, ptr %i.aq, align 4, !tbaa !254
  %i.ar = extractelement <2 x float> %i.s, i64 0  ; 2 uses
  %i.as = fcmp olt float %i.ar, %i.v
  %i.at = select i1 %i.as, float %i.ar, float %i.v
  %i.au = fdiv float %i.at, 2.990000e+00          ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.aw = load float, ptr %i.av, align 4, !tbaa !235 ; 2 uses
  %i.ax = fmul float %i.au, 5.000000e-01          ; 2 uses
  %i.ay = fcmp olt float %i.aw, %i.ax
  %i.az = select i1 %i.ay, float %i.aw, float %i.ax ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !236
  %i.ba = and i32 %spec.select, 1024
  %i.bb = icmp eq i32 %i.ba, 0                    ; 2 uses
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = load <4 x float>, ptr %8, align 16, !tbaa !190
  %i.bd = fadd <4 x float> %i.bc, <float 7.500000e-01, float 7.500000e-01, float -7.500000e-01, float -7.500000e-01>
  store <4 x float> %i.bd, ptr %8, align 16, !tbaa !190
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.075 = phi float [ -7.500000e-01, %bb.h ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.be = and i32 %spec.select, 16384
  %i.bf = icmp ne i32 %i.be, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.bh = load float, ptr %i.bg, align 4
  %i.bi = fcmp olt float %i.bh, 1.000000e+00
  %or.cond = select i1 %i.bf, i1 %i.bi, i1 false
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bj = load float, ptr %8, align 16, !tbaa !237 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.bl = load float, ptr %i.bk, align 8, !tbaa !238
  %i.bm = fadd float %i.bj, %i.bl
  %i.bn = call float @llvm.fmuladd.f32(float %i.bm, float 5.000000e-01, float 5.000000e-01)
  %i.bo = fptosi float %i.bn to i32
  %i.bp = sitofp i32 %i.bo to float
  %i.bq = and i32 %spec.select, 8192
  %i.br = icmp eq i32 %i.bq, 0
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !202 ; 2 uses
  br i1 %i.br, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bu = fadd float %i.au, %i.bj
  %i.bv = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !195
  %.sroa.089.0.vec.insert = insertelement <2 x float> poison, float %i.bu, i64 0
  %.sroa.089.4.vec.insert = insertelement <2 x float> %.sroa.089.0.vec.insert, float %i.bw, i64 1
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.bk, align 8, !tbaa !190
  %i.bx = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  %i.by = fsub float %.075, %i.au
  %.sroa.087.0.vec.insert = insertelement <2 x float> poison, float %i.by, i64 0
  %.sroa.087.4.vec.insert = insertelement <2 x float> %.sroa.087.0.vec.insert, float %.075, i64 1
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef %i.bt, <2 x float> %.sroa.089.4.vec.insert, <2 x float> %.sroa.08.0.copyload, i32 noundef %i.bx, float noundef %i.au, <2 x float> %.sroa.087.4.vec.insert, float noundef %i.az, i32 noundef 160)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #41
  %i.bz = fadd float %i.au, %i.bj
  %i.ca = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !195
  store float %i.bz, ptr %9, align 4, !tbaa !194
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 4
  store float %i.cb, ptr %i.cc, align 4, !tbaa !197
  %i.cd = call noundef i32 @_ZN5ImGui11GetColorU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16) %6)
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bt, ptr noundef nonnull align 4 dereferenceable(8) %9, ptr noundef nonnull align 4 dereferenceable(8) %i.bk, i32 noundef %i.cd, float noundef %i.az, i32 noundef 160)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !202
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #41
  %i.cg = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !196
  store float %i.bp, ptr %10, align 4, !tbaa !194
  %i.ci = getelementptr inbounds nuw i8, ptr %10, i64 4
end_hunk_0
begin_hunk_1_@_ZN5ImGui12ColorPicker4EPKcPfiPKf:bb.a
  %i.xe = load i32, ptr %i.ta, align 8, !tbaa !777
  %i.xf = call float @cosf(float noundef %i.xa) #41
  %i.xg = call float @sinf(float noundef %i.xa) #41
  %i.xh = call float @cosf(float noundef %i.xb) #41
  %i.xi = call float @sinf(float noundef %i.xb) #41
  %i.xj = load <2 x float>, ptr %16, align 8, !tbaa !190 ; 2 uses
  %i.xk = insertelement <2 x float> poison, float %i.xf, i64 0
  %i.xl = insertelement <2 x float> %i.xk, float %i.xg, i64 1
  %i.xm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xl, <2 x float> %i.tg, <2 x float> %i.xj)
  %i.xn = insertelement <2 x float> poison, float %i.xh, i64 0
  %i.xo = insertelement <2 x float> %i.xn, float %i.xi, i64 1
  %i.xp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xo, <2 x float> %i.tg, <2 x float> %i.xj)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.next
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !208 ; 2 uses
  call void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef nonnull %i.ae, i32 noundef %i.wz, i32 noundef %i.xe, <2 x float> %i.xm, <2 x float> %i.xp, i32 noundef %i.wq, i32 noundef %i.xr)
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.dj, label %bb.dk, !llvm.loop !770

bb.dl:                                            ; preds = %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit516
  %i.xs = and i32 %.3, 33554432
  %.not467 = icmp eq i32 %i.xs, 0
  br i1 %.not467, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #41
  %i.xt = extractelement <2 x float> %i.cp, i64 1
  %i.xu = fadd float %i.cd, %i.xt
  %.sroa.0.0.vec.insert.i533 = insertelement <2 x float> poison, float %i.cr, i64 0
  %.sroa.0.4.vec.insert.i534 = insertelement <2 x float> %.sroa.0.0.vec.insert.i533, float %i.xu, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i534, ptr %36, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %36, i32 noundef %i.rw, i32 noundef %i.sm, i32 noundef %i.sm, i32 noundef %i.rw)
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #41
  %i.xv = load <2 x float>, ptr %15, align 8, !tbaa !190
  %i.xw = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.xx = shufflevector <2 x float> %i.xw, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.xy = fadd <2 x float> %i.xx, %i.xv
  store <2 x float> %i.xy, ptr %37, align 8
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 4 dereferenceable(8) %37, i32 noundef 0, i32 noundef 0, i32 noundef %i.rt, i32 noundef %i.rt)
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #41
  %.sroa.032.0.copyload = load <2 x float>, ptr %15, align 8 ; 2 uses
  %i.xz = fadd <2 x float> %i.xx, %.sroa.032.0.copyload
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.032.0.copyload, <2 x float> %i.xz, float noundef 0.000000e+00)
  %i.ya = load float, ptr %i.k, align 4, !tbaa !190
  %i.yb = load float, ptr %i.l, align 4, !tbaa !190
  %i.yc = fsub float 1.000000e+00, %i.yb
  %i.yd = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.ye = load <2 x float>, ptr %15, align 8, !tbaa !190 ; 3 uses
  %i.yf = insertelement <2 x float> poison, float %i.ya, i64 0
  %i.yg = insertelement <2 x float> %i.yf, float %i.yc, i64 1 ; 3 uses
  %i.yh = fcmp olt <2 x float> %i.yg, zeroinitializer
  %i.yi = fcmp ogt <2 x float> %i.yg, splat (float 1.000000e+00)
  %i.yj = select <2 x i1> %i.yi, <2 x float> splat (float 1.000000e+00), <2 x float> %i.yg
  %i.yk = select <2 x i1> %i.yh, <2 x float> zeroinitializer, <2 x float> %i.yj
  %i.yl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.yk, <2 x float> %i.xx, <2 x float> %i.ye)
  %i.ym = fadd <2 x float> %i.yl, splat (float 5.000000e-01)
  %i.yn = fptosi <2 x float> %i.ym to <2 x i32>
  %i.yo = sitofp <2 x i32> %i.yn to <2 x float>   ; 3 uses
  %i.yp = fadd <2 x float> %i.ye, splat (float 2.000000e+00) ; 2 uses
  %i.yq = fadd <2 x float> %i.xx, %i.ye
  %i.yr = fadd <2 x float> %i.yq, splat (float -2.000000e+00) ; 2 uses
  %i.ys = fcmp ogt <2 x float> %i.yp, %i.yo
  %i.yt = fcmp olt <2 x float> %i.yr, %i.yo
  %i.yu = select <2 x i1> %i.yt, <2 x float> %i.yr, <2 x float> %i.yo
  %i.yv = select <2 x i1> %i.ys, <2 x float> %i.yp, <2 x float> %i.yu
  store <2 x float> %i.yv, ptr %31, align 8, !tbaa !190
  %i.yw = fdiv float %i.cd, 6.000000e+00          ; 12 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %38, i64 4 ; 6 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %39, i64 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.yz = call float @llvm.fmuladd.f32(float %i.yw, float 0.000000e+00, float %i.yd)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.yz, ptr %i.yx, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.za = fadd float %i.yw, %i.yd
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.za, ptr %i.yy, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ry, i32 noundef %i.ry, i32 noundef %i.sb, i32 noundef %i.sb)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zb = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zc = fadd float %i.yw, %i.zb
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zc, ptr %i.yx, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zd = call float @llvm.fmuladd.f32(float %i.yw, float 2.000000e+00, float %i.zb)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zd, ptr %i.yy, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sb, i32 noundef %i.sb, i32 noundef %i.sa, i32 noundef %i.sa)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.ze = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zf = call float @llvm.fmuladd.f32(float %i.yw, float 2.000000e+00, float %i.ze)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zf, ptr %i.yx, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zg = call float @llvm.fmuladd.f32(float %i.yw, float 3.000000e+00, float %i.ze)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zg, ptr %i.yy, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sa, i32 noundef %i.sa, i32 noundef %i.rv, i32 noundef %i.rv)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zh = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zi = call float @llvm.fmuladd.f32(float %i.yw, float 3.000000e+00, float %i.zh)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zi, ptr %i.yx, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zj = call float @llvm.fmuladd.f32(float %i.yw, float 4.000000e+00, float %i.zh)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zj, ptr %i.yy, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.rv, i32 noundef %i.rv, i32 noundef %i.ru, i32 noundef %i.ru)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zk = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zl = call float @llvm.fmuladd.f32(float %i.yw, float 4.000000e+00, float %i.zk)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zl, ptr %i.yx, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zm = call float @llvm.fmuladd.f32(float %i.yw, float 5.000000e+00, float %i.zk)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zm, ptr %i.yy, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.ru, i32 noundef %i.ru, i32 noundef %i.sg, i32 noundef %i.sg)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #41
  %i.zn = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.zo = call float @llvm.fmuladd.f32(float %i.yw, float 5.000000e+00, float %i.zn)
  store float %i.cs, ptr %38, align 4, !tbaa !194
  store float %i.zo, ptr %i.yx, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #41
  %i.zp = call float @llvm.fmuladd.f32(float %i.yw, float 6.000000e+00, float %i.zn)
  store float %i.ct, ptr %39, align 4, !tbaa !194
  store float %i.zp, ptr %i.yy, align 4, !tbaa !197
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %38, ptr noundef nonnull align 4 dereferenceable(8) %39, i32 noundef %i.sg, i32 noundef %i.sg, i32 noundef %i.ry, i32 noundef %i.ry)
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #41
  %i.zq = load float, ptr %i.cm, align 4, !tbaa !197 ; 3 uses
  %i.zr = load float, ptr %i.j, align 4, !tbaa !190
  %i.zs = call float @llvm.fmuladd.f32(float %i.zr, float %i.cd, float %i.zq)
  %i.zt = fadd float %i.zs, 5.000000e-01
  %i.zu = fptosi float %i.zt to i32
  %i.zv = sitofp i32 %i.zu to float
  %.sroa.0560.0.vec.insert = insertelement <2 x float> poison, float %i.cs, i64 0
  %.sroa.0560.4.vec.insert = insertelement <2 x float> %.sroa.0560.0.vec.insert, float %i.zq, i64 1
  %i.zw = fadd float %i.cd, %i.zq
  %.sroa.0558.0.vec.insert = insertelement <2 x float> poison, float %i.ct, i64 0
  %.sroa.0558.4.vec.insert = insertelement <2 x float> %.sroa.0558.0.vec.insert, float %i.zw, i64 1
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.0560.4.vec.insert, <2 x float> %.sroa.0558.4.vec.insert, float noundef 0.000000e+00)
  %i.zx = fadd float %i.cs, -1.000000e+00         ; 3 uses
  %.sroa.0556.0.vec.insert = insertelement <2 x float> poison, float %i.zx, i64 0
  %.sroa.0556.4.vec.insert = insertelement <2 x float> %.sroa.0556.0.vec.insert, float %i.zv, i64 1 ; 4 uses
  %i.zy = fadd float %i.cg, 1.000000e+00          ; 5 uses
  %.sroa.0554.0.vec.insert = insertelement <2 x float> poison, float %i.zy, i64 0
  %.sroa.0554.4.vec.insert = insertelement <2 x float> %.sroa.0554.0.vec.insert, float %i.cg, i64 1 ; 2 uses
  %i.zz = fadd float %i.bw, 2.000000e+00
  %i.aaa = load float, ptr %i.rl, align 4, !tbaa !771 ; 3 uses
  %i.aab = fcmp olt float %i.aaa, 0.000000e+00
  %i.aac = fcmp ogt float %i.aaa, 1.000000e+00
  %i.aad = select i1 %i.aac, float 1.000000e+00, float %i.aaa
  %i.aae = call float @llvm.fmuladd.f32(float %i.aad, float 2.550000e+02, float 5.000000e-01)
  %i.aaf = select i1 %i.aab, float 5.000000e-01, float %i.aae
  %i.aag = fptosi float %i.aaf to i32
  %i.aah = fadd float %i.zy, %i.zx                ; 2 uses
  %i.aai = fadd float %i.aah, 1.000000e+00
  %.sroa.048.4.vec.insert.i = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aai, i64 0
  %i.aaj = fadd float %i.zy, 2.000000e+00
  %.sroa.046.0.vec.insert.i = insertelement <2 x float> poison, float %i.aaj, i64 0
  %.sroa.046.4.vec.insert.i = insertelement <2 x float> %.sroa.046.0.vec.insert.i, float %i.zy, i64 1 ; 2 uses
  %i.aak = shl i32 %i.aag, 24                     ; 3 uses
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.048.4.vec.insert.i, <2 x float> %.sroa.046.4.vec.insert.i, i32 noundef 1, i32 noundef %i.aak)
  %.sroa.044.4.vec.insert.i = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aah, i64 0
  %i.aal = or disjoint i32 %i.aak, 16777215       ; 2 uses
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.044.4.vec.insert.i, <2 x float> %.sroa.0554.4.vec.insert, i32 noundef 1, i32 noundef %i.aal)
  %i.aam = fadd float %i.zz, %i.zx
  %i.aan = fsub float %i.aam, %i.zy               ; 2 uses
  %i.aao = fadd float %i.aan, -1.000000e+00
  %.sroa.042.4.vec.insert.i = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aao, i64 0
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.042.4.vec.insert.i, <2 x float> %.sroa.046.4.vec.insert.i, i32 noundef 0, i32 noundef %i.aak)
  %.sroa.0.4.vec.insert.i539 = insertelement <2 x float> %.sroa.0556.4.vec.insert, float %i.aan, i64 0
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.0.4.vec.insert.i539, <2 x float> %.sroa.0554.4.vec.insert, i32 noundef 0, i32 noundef %i.aal)
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dl, %bb.dm, %bb.dj
  %.v469 = select i1 %i.no, float 5.500000e-01, float 4.000000e-01
  %i.aap = fmul float %i.ci, %.v469               ; 4 uses
  %i.aaq = call noundef i32 @_ZNK10ImDrawList27_CalcCircleAutoSegmentCountEf(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, float noundef %i.aap) ; 3 uses
  call void @_ZN10ImDrawList15AddCircleFilledERK6ImVec2fji(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %31, float noundef %i.aap, i32 noundef %i.su, i32 noundef %i.aaq)
  %i.aar = fadd float %i.aap, 1.000000e+00
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %31, float noundef %i.aar, i32 noundef %i.rx, i32 noundef %i.aaq, float noundef 1.000000e+00)
  call void @_ZN10ImDrawList9AddCircleERK6ImVec2fjif(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %31, float noundef %i.aap, i32 noundef %i.rw, i32 noundef %i.aaq, float noundef 1.000000e+00)
  br i1 %spec.select473, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.aas = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !190 ; 3 uses
  %i.aau = fcmp ogt float %i.aat, 1.000000e+00
  %i.aav = select i1 %i.aau, float 1.000000e+00, float %i.aat
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #41
  %i.aaw = load float, ptr %i.cm, align 4, !tbaa !197 ; 2 uses
  %i.aax = fadd float %i.bw, %i.cu                ; 2 uses
  %i.aay = fadd float %i.cd, %i.aaw
  store float %i.cu, ptr %40, align 8, !tbaa !194
  %i.aaz = getelementptr inbounds nuw i8, ptr %40, i64 4
  store float %i.aaw, ptr %i.aaz, align 4, !tbaa !197
  %i.aba = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 4 uses
  store float %i.aax, ptr %i.aba, align 8, !tbaa !194
  %i.abb = getelementptr inbounds nuw i8, ptr %40, i64 12
  store float %i.aay, ptr %i.abb, align 4, !tbaa !197
  %.sroa.014.0.copyload = load <2 x float>, ptr %40, align 8 ; 2 uses
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.aba, align 8, !tbaa !190
  %i.abc = extractelement <2 x float> %.sroa.014.0.copyload, i64 0
  %i.abd = fsub float %i.aax, %i.abc
  %i.abe = fmul float %i.abd, 5.000000e-01
  call void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef nonnull %i.ae, <2 x float> %.sroa.014.0.copyload, <2 x float> %.sroa.013.0.copyload, i32 noundef 0, float noundef %i.abe, <2 x float> zeroinitializer, float noundef 0.000000e+00, i32 noundef 0)
  %i.abf = and i32 %i.su, 16777215                ; 2 uses
  call void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224) %i.ae, ptr noundef nonnull align 4 dereferenceable(8) %40, ptr noundef nonnull align 4 dereferenceable(8) %i.aba, i32 noundef %i.su, i32 noundef %i.su, i32 noundef %i.abf, i32 noundef %i.abf)
  %i.abg = load float, ptr %i.cm, align 4, !tbaa !197
  %i.abh = fsub float 1.000000e+00, %i.aav
  %.sroa.012.0.copyload = load <2 x float>, ptr %40, align 8, !tbaa !190
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.aba, align 8, !tbaa !190
  call void @_ZN5ImGui17RenderFrameBorderE6ImVec2S0_f(<2 x float> %.sroa.012.0.copyload, <2 x float> %.sroa.0.0.copyload, float noundef 0.000000e+00)
  %41 = fadd float %i.cu, -1.000000e+00           ; 3 uses
  %.sroa.0550.0.vec.insert = insertelement <2 x float> poison, float %41, i64 0
  %i.abi = fadd float %i.cg, 1.000000e+00         ; 5 uses
  %.sroa.0.0.vec.insert = insertelement <2 x float> poison, float %i.abi, i64 0
  %.sroa.0.4.vec.insert = insertelement <2 x float> %.sroa.0.0.vec.insert, float %i.cg, i64 1 ; 2 uses
  %42 = fadd float %i.bw, 2.000000e+00
  %43 = load float, ptr %i.rl, align 4, !tbaa !771 ; 2 uses
  %44 = fcmp olt float %43, 0.000000e+00
  %45 = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.aat, i64 0
  %i.abj = insertelement <2 x float> <float 0.000000e+00, float poison>, float %43, i64 1 ; 2 uses
  %46 = fcmp olt <2 x float> %45, %i.abj
  %i.abk = insertelement <2 x float> %i.abj, float %i.abh, i64 0
  %47 = select <2 x i1> %46, <2 x float> splat (float 1.000000e+00), <2 x float> %i.abk
  %i.abl = insertelement <2 x float> <float poison, float 2.550000e+02>, float %i.cd, i64 0
  %i.abm = insertelement <2 x float> <float poison, float 5.000000e-01>, float %i.abg, i64 0
  %48 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %47, <2 x float> %i.abl, <2 x float> %i.abm) ; 2 uses
  %49 = extractelement <2 x float> %48, i64 0
  %50 = fadd float %49, 5.000000e-01
  %51 = fptosi float %50 to i32
  %52 = sitofp i32 %51 to float
  %.sroa.0550.4.vec.insert = insertelement <2 x float> %.sroa.0550.0.vec.insert, float %52, i64 1 ; 4 uses
  %53 = extractelement <2 x float> %48, i64 1
  %i.abn = select i1 %44, float 5.000000e-01, float %53
  %i.abo = fptosi float %i.abn to i32
  %i.abp = fadd float %i.abi, %41                 ; 2 uses
  %i.abq = fadd float %i.abp, 1.000000e+00
  %.sroa.048.4.vec.insert.i542 = insertelement <2 x float> %.sroa.0550.4.vec.insert, float %i.abq, i64 0
  %i.abr = fadd float %i.abi, 2.000000e+00
  %.sroa.046.0.vec.insert.i544 = insertelement <2 x float> poison, float %i.abr, i64 0
  %.sroa.046.4.vec.insert.i545 = insertelement <2 x float> %.sroa.046.0.vec.insert.i544, float %i.abi, i64 1 ; 2 uses
  %i.abs = shl i32 %i.abo, 24                     ; 3 uses
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.048.4.vec.insert.i542, <2 x float> %.sroa.046.4.vec.insert.i545, i32 noundef 1, i32 noundef %i.abs)
  %.sroa.044.4.vec.insert.i546 = insertelement <2 x float> %.sroa.0550.4.vec.insert, float %i.abp, i64 0
  %i.abt = or disjoint i32 %i.abs, 16777215       ; 2 uses
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.044.4.vec.insert.i546, <2 x float> %.sroa.0.4.vec.insert, i32 noundef 1, i32 noundef %i.abt)
  %i.abu = fadd float %42, %41
  %i.abv = fsub float %i.abu, %i.abi              ; 2 uses
  %i.abw = fadd float %i.abv, -1.000000e+00
  %.sroa.042.4.vec.insert.i547 = insertelement <2 x float> %.sroa.0550.4.vec.insert, float %i.abw, i64 0
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.042.4.vec.insert.i547, <2 x float> %.sroa.046.4.vec.insert.i545, i32 noundef 0, i32 noundef %i.abs)
  %.sroa.0.4.vec.insert.i548 = insertelement <2 x float> %.sroa.0550.4.vec.insert, float %i.abv, i64 0
  call void @_ZN5ImGui21RenderArrowPointingAtEP10ImDrawList6ImVec2S2_8ImGuiDirj(ptr noundef nonnull %i.ae, <2 x float> %.sroa.0.4.vec.insert.i548, <2 x float> %.sroa.0.4.vec.insert, i32 noundef 0, i32 noundef %i.abt)
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #41
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dn
  call void @_ZN5ImGui8EndGroupEv()
  br i1 %i.qf, label %bb.dq, label %.thread604

bb.dq:                                            ; preds = %bb.dp
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %i.i, ptr noundef nonnull dereferenceable(12) %1, i64 %i.ch)
  %.not606 = icmp eq i32 %bcmp, 0
  br i1 %.not606, label %.thread604, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.abx = getelementptr inbounds nuw i8, ptr %i.w, i64 7848
  %i.aby = load i32, ptr %i.abx, align 8, !tbaa !207 ; 2 uses
  %.not470 = icmp eq i32 %i.aby, 0
  br i1 %.not470, label %.thread604, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %i.aby)
  br label %.thread604

.thread604:                                       ; preds = %bb.dp, %bb.ds, %bb.dr, %bb.dq
  %i.abz = phi i1 [ false, %bb.dq ], [ true, %bb.ds ], [ true, %bb.dr ], [ false, %bb.dp ]
  br i1 %i.aq, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %.thread604
  store i32 0, ptr %i.ao, align 4, !tbaa !458
  br label %bb.du

bb.du:                                            ; preds = %bb.dt, %.thread604
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.dv

bb.dv:                                            ; preds = %bb.a, %bb.du
  %.0 = phi i1 [ %i.abz, %bb.du ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef i32 @_ZN5ImGui23ColorConvertFloat4ToU32ERK6ImVec4(ptr noundef nonnull align 4 dereferenceable(16)) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui19BeginDragDropTargetEv() local_unnamed_addr #3

declare noundef ptr @_ZN5ImGui21AcceptDragDropPayloadEPKci(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17EndDragDropTargetEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12ColorPicker3EPKcPfi(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.b = load <2 x float>, ptr %1, align 4, !tbaa !190
  store <2 x float> %i.b, ptr %i.a, align 16, !tbaa !190
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load float, ptr %i.d, align 4, !tbaa !190
  store float %i.e, ptr %i.c, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float 1.000000e+00, ptr %i.f, align 4, !tbaa !190
  %i.g = or i32 %2, 2
  %i.h = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %i.g, ptr noundef null) ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load <2 x float>, ptr %i.a, align 16, !tbaa !190
  store <2 x float> %i.i, ptr %1, align 4, !tbaa !190
  %i.j = load float, ptr %i.c, align 8, !tbaa !190
  store float %i.j, ptr %i.d, align 4, !tbaa !190
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23ColorPickerOptionsPopupEPKfi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %2 = alloca %struct.ImVec2, align 4             ; 6 uses
  %3 = alloca %struct.ImVec2, align 8             ; 8 uses
  %4 = alloca %struct.ImVec4, align 4             ; 10 uses
  %i.b = and i32 %1, 100663296
  %.not = icmp eq i32 %i.b, 0                     ; 2 uses
  %i.c = and i32 %1, 2                            ; 3 uses
  %i.d = and i32 %1, 262146
  %i.e = icmp eq i32 %i.d, 0                      ; 3 uses
  %or.cond = or i1 %.not, %i.e
  br i1 %or.cond, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_ZN5ImGui10BeginPopupEPKci(ptr noundef nonnull @.str.60, i32 noundef 0)
  br i1 %i.f, label %bb.c, label %bb.l

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 4 uses
  tail call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 65536, i1 noundef zeroext true)
  br i1 %.not, label %_ZN5ImGui9SeparatorEv.exit, label %.thread

_ZN5ImGui9SeparatorEv.exit:                       ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4568
  %i.i = load float, ptr %i.h, align 8, !tbaa !205 ; 2 uses
  %i.j = fmul float %i.i, 8.000000e+00            ; 2 uses
  %i.k = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 3308
  %i.m = load float, ptr %i.l, align 4, !tbaa !367
  %i.n = fadd float %i.k, %i.m
  %i.o = fneg float %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %i.i, float 8.000000e+00, float %i.o) ; 2 uses
  %i.q = fcmp oge float %i.p, 1.000000e+00
  %i.r = select i1 %i.q, float %i.p, float 1.000000e+00
  store float %i.j, ptr %2, align 4, !tbaa !194
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !197
  tail call void @_ZN5ImGui13PushItemWidthEf(float noundef %i.j)
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 124 ; 4 uses
  tail call void @_ZN5ImGui6PushIDEi(i32 noundef 0)
  %spec.select = or disjoint i32 %i.c, 33554856
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.u = tail call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  store <2 x float> %i.u, ptr %3, align 8
  %i.v = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.97, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit
  %i.w = load i32, ptr %i.t, align 4, !tbaa !461
  %i.x = and i32 %i.w, -100663297
  %i.y = or disjoint i32 %i.x, 33554432
  store i32 %i.y, ptr %i.t, align 4, !tbaa !461
  br label %bb.e

bb.e:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit, %bb.d
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %.not30 = icmp eq i32 %i.c, 0                   ; 5 uses
  %i.z = select i1 %.not30, i64 16, i64 12        ; 2 uses
  %i.aa = select i1 %.not30, i64 0, i64 4
  %.sroa.sel.v = select i1 %.not30, i64 16, i64 12
  %.sroa.sel = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.sel.v
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.sel, i8 0, i64 %i.aa, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 %i.z, i1 false)
  %i.ab = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.98, ptr noundef nonnull %4, i32 noundef %spec.select, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.ac = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 5312
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !158 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 209
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !183, !range !184, !noundef !185
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5ImGui9SeparatorEv.exit.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 468
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !315
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = select i1 %i.ak, i32 2, i32 1           ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 456
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !318
  %.not.i.1 = icmp eq ptr %i.an, null
  %i.ao = or disjoint i32 %i.al, 4
  %spec.select.i.1 = select i1 %.not.i.1, i32 %i.al, i32 %i.ao
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 3476
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !319 ; 2 uses
  %i.ar = fcmp oge float %i.aq, 1.000000e+00
  %i.as = select i1 %i.ar, float %i.aq, float 1.000000e+00
  call void @_ZN5ImGui11SeparatorExEif(i32 noundef %spec.select.i.1, float noundef %i.as)
  br label %_ZN5ImGui9SeparatorEv.exit.1

_ZN5ImGui9SeparatorEv.exit.1:                     ; preds = %bb.f, %bb.e
  call void @_ZN5ImGui6PushIDEi(i32 noundef 1)
  %i.at = or disjoint i32 %i.c, 67109288
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.au = call <2 x float> @_ZN5ImGui18GetCursorScreenPosEv()
  store <2 x float> %i.au, ptr %3, align 8
  %i.av = call noundef zeroext i1 @_ZN5ImGui10SelectableEPKcbiRK6ImVec2(ptr noundef nonnull @.str.97, i1 noundef zeroext false, i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(8) %2)
  br i1 %i.av, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit.1
  %i.aw = load i32, ptr %i.t, align 4, !tbaa !461
  %i.ax = and i32 %i.aw, -100663297
  %i.ay = or disjoint i32 %i.ax, 67108864
  store i32 %i.ay, ptr %i.t, align 4, !tbaa !461
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5ImGui9SeparatorEv.exit.1
  call void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.az = select i1 %.not30, i64 0, i64 4
  %.sroa.sel39.v = select i1 %.not30, i64 16, i64 12
  %.sroa.sel39 = getelementptr inbounds nuw i8, ptr %4, i64 %.sroa.sel39.v
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %.sroa.sel39, i8 0, i64 %i.az, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 %i.z, i1 false)
  %i.ba = call noundef zeroext i1 @_ZN5ImGui12ColorPicker4EPKcPfiPKf(ptr noundef nonnull @.str.98, ptr noundef nonnull %4, i32 noundef %i.at, ptr noundef null) ; 0 uses
  call void @_ZN5ImGui5PopIDEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  call void @_ZN5ImGui12PopItemWidthEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  br i1 %i.e, label %bb.i, label %bb.k

.thread:                                          ; preds = %bb.c
  br i1 %i.e, label %_ZN5ImGui9SeparatorEv.exit33, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 5312
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !158 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 209
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !183, !range !184, !noundef !185
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %_ZN5ImGui9SeparatorEv.exit33, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 468
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !315
  %i.bj = icmp eq i32 %i.bi, 0
  %i.bk = select i1 %i.bj, i32 2, i32 1           ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 456
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !318
  %.not.i31 = icmp eq ptr %i.bm, null
  %i.bn = or disjoint i32 %i.bk, 4
  %spec.select.i32 = select i1 %.not.i31, i32 %i.bk, i32 %i.bn
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 3476
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !319 ; 2 uses
  %i.bq = fcmp oge float %i.bp, 1.000000e+00
  %i.br = select i1 %i.bq, float %i.bp, float 1.000000e+00
  call void @_ZN5ImGui11SeparatorExEif(i32 noundef %spec.select.i32, float noundef %i.br)
  br label %_ZN5ImGui9SeparatorEv.exit33

_ZN5ImGui9SeparatorEv.exit33:                     ; preds = %.thread, %bb.j, %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 124 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !208
  %i.bu = lshr i32 %i.bt, 18
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = and i8 %i.bv, 1
  store i8 %i.bw, ptr %i.a, align 1, !tbaa !231
  %i.bx = call noundef zeroext i1 @_ZN5ImGui8CheckboxEPKcPb(ptr noundef nonnull @.str.99, ptr noundef nonnull %i.a)
  br i1 %i.bx, label %.sink.split.i.i, label %_ZN5ImGui13CheckboxFlagsEPKcPii.exit

.sink.split.i.i:                                  ; preds = %_ZN5ImGui9SeparatorEv.exit33
  %i.by = load i8, ptr %i.a, align 1, !tbaa !231, !range !184, !noundef !185
  %i.bz = load i32, ptr %i.bs, align 4, !tbaa !208
  %i.ca = and i32 %i.bz, -262145
  %i.cb = zext nneg i8 %i.by to i32
  %masksel = shl nuw nsw i32 %i.cb, 18
  %.sink.i.i = or disjoint i32 %i.ca, %masksel
  store i32 %.sink.i.i, ptr %i.bs, align 4, !tbaa !208
  br label %_ZN5ImGui13CheckboxFlagsEPKcPii.exit

_ZN5ImGui13CheckboxFlagsEPKcPii.exit:             ; preds = %_ZN5ImGui9SeparatorEv.exit33, %.sink.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.k

bb.k:                                             ; preds = %.thread, %_ZN5ImGui13CheckboxFlagsEPKcPii.exit, %bb.h
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui8EndPopupEv()
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.a, %bb.k
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @atan2f(float noundef, float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_Z23ImTriangleContainsPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare <2 x float> @_Z22ImTriangleClosestPointRK6ImVec2S1_S1_S1_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_Z27ImTriangleBarycentricCoordsRK6ImVec2S1_S1_S1_RfS2_S2_(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @_ZN5ImGui18SetCursorScreenPosERK6ImVec2(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #3

declare void @_ZN5ImGui13PushItemWidthEf(float noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList9PathArcToERK6ImVec2fffi(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui38ShadeVertsLinearColorGradientKeepAlphaEP10ImDrawListii6ImVec2S2_jj(ptr noundef, i32 noundef, i32 noundef, <2 x float>, <2 x float>, i32 noundef, i32 noundef) local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui22GetFontTexUvWhitePixelEv() local_unnamed_addr #3

declare void @_ZN10ImDrawList11PrimReserveEii(ptr noundef nonnull align 8 dereferenceable(224), i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList11AddTriangleERK6ImVec2S2_S2_jf(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, float noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList23AddRectFilledMultiColorERK6ImVec2S2_jjjj(ptr noundef nonnull align 8 dereferenceable(224), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui36RenderColorRectWithAlphaCheckerboardEP10ImDrawList6ImVec2S2_jfS2_fi(ptr noundef, <2 x float>, <2 x float>, i32 noundef, float noundef, <2 x float>, float noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui19BeginDragDropSourceEi(i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui18SetDragDropPayloadEPKcPKvmi(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui17EndDragDropSourceEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui12ColorTooltipEPKcPKfi(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %3 = alloca %struct.ImVec2, align 4             ; 5 uses
  %4 = alloca %struct.ImVec4, align 8             ; 6 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef 2, i32 noundef 0)
  br i1 %i.b, label %bb.b, label %bb.q

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %_ZN5ImGui9SeparatorEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef nonnull %0, ptr noundef null) ; 2 uses
  %i.d = icmp ugt ptr %i.c, %0
  br i1 %i.d, label %bb.d, label %_ZN5ImGui9SeparatorEv.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5ImGui6TextExEPKcS1_i(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef 0)
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 5312
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !158  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 209
  %i.i = load i8, ptr %i.h, align 1, !tbaa !183, !range !184, !noundef !185
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %_ZN5ImGui9SeparatorEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 468
  %i.l = load i32, ptr %i.k, align 4, !tbaa !315
  %i.m = icmp eq i32 %i.l, 0
  %i.n = select i1 %i.m, i32 2, i32 1             ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 456
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !318
  %.not.i = icmp eq ptr %i.p, null
  %i.q = or disjoint i32 %i.n, 4
  %spec.select.i = select i1 %.not.i, i32 %i.n, i32 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 3476
  %i.s = load float, ptr %i.r, align 4, !tbaa !319 ; 2 uses
  %i.t = fcmp oge float %i.s, 1.000000e+00
  %i.u = select i1 %i.t, float %i.s, float 1.000000e+00
  tail call void @_ZN5ImGui11SeparatorExEif(i32 noundef %spec.select.i, float noundef %i.u)
  br label %_ZN5ImGui9SeparatorEv.exit

_ZN5ImGui9SeparatorEv.exit:                       ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4568
  %i.w = load float, ptr %i.v, align 8, !tbaa !205
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 3288
  %i.y = load float, ptr %i.x, align 8, !tbaa !234
  %i.z = fmul float %i.y, 2.000000e+00
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.w, float 3.000000e+00, float %i.z) ; 2 uses
  store float %i.aa, ptr %3, align 4, !tbaa !194
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.aa, ptr %i.ab, align 4, !tbaa !197
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ad = load <2 x float>, ptr %1, align 4, !tbaa !190 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !190 ; 3 uses
  %i.ag = and i32 %2, 2
  %.not56 = icmp eq i32 %i.ag, 0                  ; 4 uses
  br i1 %.not56, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !190
  br label %bb.g

bb.g:                                             ; preds = %_ZN5ImGui9SeparatorEv.exit, %bb.f
  %i.aj = phi float [ %i.ai, %bb.f ], [ 1.000000e+00, %_ZN5ImGui9SeparatorEv.exit ]
  store <2 x float> %i.ad, ptr %4, align 8, !tbaa !190
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.af, ptr %i.ak, align 8, !tbaa !312
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float %i.aj, ptr %i.al, align 4, !tbaa !254
  %i.am = extractelement <2 x float> %i.ad, i64 0 ; 3 uses
  %i.an = fcmp olt float %i.am, 0.000000e+00
  %i.ao = fcmp ogt float %i.am, 1.000000e+00
  %i.ap = select i1 %i.ao, float 1.000000e+00, float %i.am
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float 2.550000e+02, float 5.000000e-01)
  %i.ar = select i1 %i.an, float 5.000000e-01, float %i.aq
  %i.as = fptosi float %i.ar to i32               ; 4 uses
  %i.at = extractelement <2 x float> %i.ad, i64 1
  %i.au = fcmp olt float %i.at, 0.000000e+00
  %5 = fcmp olt float %i.af, 0.000000e+00
  %6 = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %7 = insertelement <2 x float> %6, float %i.af, i64 1 ; 2 uses
  %8 = fcmp ogt <2 x float> %7, splat (float 1.000000e+00)
  %9 = select <2 x i1> %8, <2 x float> splat (float 1.000000e+00), <2 x float> %7
  %10 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %9, <2 x float> splat (float 2.550000e+02), <2 x float> splat (float 5.000000e-01)) ; 2 uses
  %11 = extractelement <2 x float> %10, i64 0
  %i.av = select i1 %i.au, float 5.000000e-01, float %11
  %12 = fptosi float %i.av to i32                 ; 4 uses
  %13 = extractelement <2 x float> %10, i64 1
  %i.aw = select i1 %5, float 5.000000e-01, float %13
  %i.ax = fptosi float %i.aw to i32               ; 4 uses
  br i1 %.not56, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !190 ; 3 uses
  %i.ba = fcmp olt float %i.az, 0.000000e+00
  %i.bb = fcmp ogt float %i.az, 1.000000e+00
  %i.bc = select i1 %i.bb, float 1.000000e+00, float %i.az
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.bc, float 2.550000e+02, float 5.000000e-01)
  %i.be = select i1 %i.ba, float 5.000000e-01, float %i.bd
  %i.bf = fptosi float %i.be to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bg = phi i32 [ %i.bf, %bb.h ], [ 255, %bb.g ] ; 2 uses
  %i.bh = and i32 %2, 805335042
  %i.bi = or disjoint i32 %i.bh, 64
  %i.bj = call noundef zeroext i1 @_ZN5ImGui11ColorButtonEPKcRK6ImVec4iRK6ImVec2(ptr noundef nonnull @.str.83, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.bi, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 0 uses
  tail call void @_ZN5ImGui8SameLineEff(float noundef 0.000000e+00, float noundef -1.000000e+00)
  %i.bk = and i32 %2, 805306368
  %or.cond.not = icmp eq i32 %i.bk, 536870912
  %i.bl = load float, ptr %1, align 4, !tbaa !190
  %i.bm = fpext float %i.bl to double             ; 4 uses
  %i.bn = load float, ptr %i.ac, align 4, !tbaa !190
  %i.bo = fpext float %i.bn to double             ; 4 uses
  %i.bp = load float, ptr %i.ae, align 4, !tbaa !190
  %i.bq = fpext float %i.bp to double             ; 4 uses
  br i1 %or.cond.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not56, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.84, i32 noundef %i.as, i32 noundef %12, i32 noundef %i.ax, i32 noundef %i.as, i32 noundef %12, i32 noundef %i.ax, double noundef %i.bm, double noundef %i.bo, double noundef %i.bq)
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bs = load float, ptr %i.br, align 4, !tbaa !190
  %i.bt = fpext float %i.bs to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.85, i32 noundef %i.as, i32 noundef %12, i32 noundef %i.ax, i32 noundef %i.bg, i32 noundef %i.as, i32 noundef %12, i32 noundef %i.ax, i32 noundef %i.bg, double noundef %i.bm, double noundef %i.bo, double noundef %i.bq, double noundef %i.bt)
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  br i1 %.not56, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.86, double noundef %i.bm, double noundef %i.bo, double noundef %i.bq)
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !190
  %i.bw = fpext float %i.bv to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.87, double noundef %i.bm, double noundef %i.bo, double noundef %i.bq, double noundef %i.bw)
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.k, %bb.l
  tail call void @_ZN5ImGui10EndTooltipEv()
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui19SetColorEditOptionsEi(i32 noundef %0) local_unnamed_addr #28 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = and i32 %0, 7340032
  %i.c = icmp eq i32 %i.b, 0
  %i.d = or disjoint i32 %0, 1048576
  %spec.select = select i1 %i.c, i32 %i.d, i32 %0 ; 3 uses
  %i.e = and i32 %spec.select, 25165824
  %i.f = icmp eq i32 %i.e, 0
  %i.g = or disjoint i32 %spec.select, 8388608
  %.1 = select i1 %i.f, i32 %i.g, i32 %spec.select ; 3 uses
  %i.h = and i32 %.1, 100663296
  %i.i = icmp eq i32 %i.h, 0
  %i.j = or disjoint i32 %.1, 33554432
  %.2 = select i1 %i.i, i32 %i.j, i32 %.1         ; 3 uses
  %i.k = and i32 %.2, 805306368
  %i.l = icmp eq i32 %i.k, 0
  %i.m = or disjoint i32 %.2, 268435456
  %.3 = select i1 %i.l, i32 %i.m, i32 %.2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 124
  store i32 %.3, ptr %i.n, align 4, !tbaa !461
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui14BeginTooltipExEii(i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN5ImGui10EndTooltipEv() local_unnamed_addr #3

declare <2 x float> @_ZN5ImGui18GetCursorScreenPosEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKcS1_z(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11TreeNodeExVEPKciS1_P13__va_list_tag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKvPKcz(ptr noundef %0, ptr noundef %1, ...) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %2)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef 0, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit

_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  ret i1 %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui11TreeNodeExVEPKviPKcP13__va_list_tag(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !158  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !182
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.h = load i8, ptr %i.g, align 1, !tbaa !183, !range !184, !noundef !185
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKv(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  call void @_Z27ImFormatStringToTempBufferVPPKcS1_S0_P13__va_list_tag(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %2, ptr noundef %3)
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !198
  %i.l = load ptr, ptr %i.b, align 8, !tbaa !198
  %i.m = call noundef zeroext i1 @_ZN5ImGui16TreeNodeBehaviorEjiPKcS1_(i32 noundef %i.j, i32 noundef %1, ptr noundef %i.k, ptr noundef %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.m, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui8TreeNodeEPKc(ptr noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
end_hunk_1
