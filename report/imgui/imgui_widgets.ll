Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci:bb.a
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !9

_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.val.i.epil = load ptr, ptr %i.f, align 8, !tbaa !400
  %i.t = getelementptr i8, ptr %.val.i.epil, i64 %indvars.iv.i.epil
  %i.u = load i8, ptr %i.t, align 1, !tbaa !351
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.epil
  store i8 %i.u, ptr %i.v, align 1, !tbaa !351
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit, label %bb.c, !llvm.loop !761

_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit: ; preds = %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.w = load i32, ptr %i.a, align 8, !tbaa !377  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !376  ; 2 uses
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  store i8 %i.ab, ptr %i.y, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ac, align 4, !tbaa !415
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ad, align 1, !tbaa !393
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !377
  %i.af = sub nsw i32 %i.ae, %i.w
  store i32 %i.af, ptr %i.a, align 8, !tbaa !377
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !395
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !394
  store i32 0, ptr %1, align 4, !tbaa !388
  %i.ai = icmp slt i32 %3, 1
  br i1 %i.ai, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit
  %i.aj = tail call fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %3, ptr %i.ag, align 4, !tbaa !395
  store i32 %3, ptr %i.ah, align 4, !tbaa !394
  store i32 %3, ptr %1, align 4, !tbaa !388
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.al, align 2, !tbaa !396
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui17IsItemDeactivatedEv() local_unnamed_addr #3

declare void @_ZN5ImGui25CalcClipRectVisibleItemsYERK6ImRectRK6ImVec2fPiS6_(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8), float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23DebugNodeInputTextStateEP19ImGuiInputTextState(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !378  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !392
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.h = load i32, ptr %i.g, align 4, !tbaa !218
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.28, i32 noundef %i.f, i32 noundef %i.h)
  %i.i = load i32, ptr %i.e, align 4, !tbaa !392
  tail call void @_ZN5ImGui22DebugLocateItemOnHoverEj(i32 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !377
  %i.l = load i32, ptr %i.c, align 4, !tbaa !388
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !389
  %i.o = and i32 %i.n, 16777216
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.q = load i8, ptr %i.p, align 2, !tbaa !436
  %i.r = icmp eq i8 %i.q, 0
  %.str.30..str.31 = select i1 %i.r, ptr @.str.30, ptr @.str.31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %.str.30..str.31, %bb.b ], [ @.str, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !394
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !395
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.29, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %i.s, i32 noundef %i.u, i32 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !416
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !437
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.32, i32 noundef %i.y, i32 noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !454
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !763
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.33, i32 noundef %i.ac, i32 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !396
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !397
  %i.ak = fpext float %i.aj to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.34, i32 noundef %i.ah, double noundef %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 2616 ; 2 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !438
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 2618 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !439
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2620
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !445
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 2624
  %i.au = load i32, ptr %i.at, align 4, !tbaa !446
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.35, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.av = tail call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  %i.aw = fmul float %i.av, 1.000000e+01
  store float 0.000000e+00, ptr %1, align 4, !tbaa !194
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.aw, ptr %i.ax, align 4, !tbaa !197
  %i.ay = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.36, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 9, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %i.ay, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !190
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 1616 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.j
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 9 uses
  %i.bb = load i16, ptr %i.al, align 4, !tbaa !438
  %i.bc = sext i16 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = load i16, ptr %i.ao, align 2, !tbaa !439
  %i.bf = sext i16 %i.be to i64
  %.not43 = icmp slt i64 %indvars.iv, %i.bf
  br i1 %.not43, label %.thread46, label %bb.h

.thread46:                                        ; preds = %bb.g
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !441 ; 2 uses
  %i.bg = sext i32 %.pre to i64
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 %i.bg
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !444
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !442
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !443
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.37, i32 noundef 32, i32 noundef %i.bn, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef %.pre, i32 noundef 0, ptr noundef nonnull %i.bh)
  call void @_ZN5ImGui11EndDisabledEv()
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %.ph = phi i32 [ 117, %bb.f ], [ 114, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !441 ; 2 uses
  %.not45 = icmp eq i32 %i.bp, -1
  br i1 %.not45, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !442
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.i
  %.ph50 = phi i32 [ -1, %bb.h ], [ %i.bp, %bb.i ] ; 2 uses
  %.ph51 = phi i32 [ 0, %bb.h ], [ %i.br, %bb.i ]
  %i.bs = sext i32 %.ph50 to i64
  %i.bt = getelementptr inbounds i8, ptr %i.az, i64 %i.bs
  %i.bu = load i32, ptr %i.ba, align 4, !tbaa !444
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !442
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !443
  %i.bz = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.37, i32 noundef %.ph, i32 noundef %i.bz, i32 noundef %i.bu, i32 noundef %i.bw, i32 noundef %i.by, i32 noundef %.ph50, i32 noundef %.ph51, ptr noundef nonnull %i.bt)
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %.thread46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 99
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !762

bb.k:                                             ; preds = %bb.e, %bb.c
  call void @_ZN5ImGui8EndChildEv()
  ret void
}

declare void @_ZN5ImGui22DebugLocateItemOnHoverEj(i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10ColorEdit3EPKcPfi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = or i32 %2, 2
  %i.b = tail call noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef %0, ptr noundef %1, i32 noundef %i.a)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10ColorEdit4EPKcPfi(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca float, align 4                    ; 8 uses
  %i.d = alloca float, align 4                    ; 8 uses
  %5 = alloca %struct.ImVec4, align 8             ; 7 uses
  %i.e = alloca [4 x float], align 16             ; 20 uses
  %i.f = alloca [4 x i32], align 16               ; 12 uses
  %i.g = alloca [64 x i8], align 16               ; 6 uses
  %6 = alloca %struct.ImVec4, align 8             ; 7 uses
  %7 = alloca %struct.ImVec2, align 8             ; 4 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 8             ; 4 uses
  %10 = alloca %struct.ImVec4, align 8            ; 6 uses
  %i.h = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 25 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 5312 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !158  ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 206
  store i8 1, ptr %i.k, align 2, !tbaa !182
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 209
  %i.m = load i8, ptr %i.l, align 1, !tbaa !183, !range !184, !noundef !185
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.cx, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call noundef float @_ZN5ImGui14GetFrameHeightEv() ; 2 uses
  %i.p = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 4 uses
  %i.q = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 7792
  store i32 0, ptr %i.r, align 8, !tbaa !456
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 7796
  store i32 0, ptr %i.s, align 4, !tbaa !457
  tail call void @_ZN5ImGui10BeginGroupEv()
  tail call void @_ZN5ImGui6PushIDEPKc(ptr noundef %0)
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 9724 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !458
  %i.v = icmp eq i32 %i.u, 0                      ; 2 uses
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 264
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 272
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !459
  %i.z = load i32, ptr %i.w, align 8, !tbaa !460
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr [4 x i8], ptr %i.y, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !208
  store i32 %i.ad, ptr %i.t, align 4, !tbaa !458
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ae = and i32 %2, 32
  %.not = icmp eq i32 %i.ae, 0
  %i.af = and i32 %2, -7340041
  %i.ag = or disjoint i32 %i.af, 1048584
  %.0209 = select i1 %.not, i32 %2, i32 %i.ag     ; 5 uses
  %i.ah = and i32 %.0209, 8
  %.not233 = icmp eq i32 %i.ah, 0
  br i1 %.not233, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5ImGui21ColorEditOptionsPopupEPKfi(ptr noundef %1, i32 noundef %.0209)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ai = and i32 %.0209, 7340032
  %.not234 = icmp eq i32 %i.ai, 0
  br i1 %.not234, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !461
  %i.al = and i32 %i.ak, 7340032
  %i.am = or disjoint i32 %i.al, %.0209
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1210 = phi i32 [ %.0209, %bb.f ], [ %i.am, %bb.g ] ; 3 uses
  %i.an = and i32 %.1210, 25165824
  %.not235 = icmp eq i32 %i.an, 0
  br i1 %.not235, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !461
  %i.aq = and i32 %i.ap, 25165824
  %i.ar = or disjoint i32 %i.aq, %.1210
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.2 = phi i32 [ %.1210, %bb.h ], [ %i.ar, %bb.i ] ; 3 uses
  %i.as = and i32 %.2, 100663296
  %.not236 = icmp eq i32 %i.as, 0
  br i1 %.not236, label %bb.k, label %._crit_edge

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.au = load i32, ptr %i.at, align 4, !tbaa !461
  %i.av = and i32 %i.au, 100663296
  %i.aw = or disjoint i32 %i.av, %.2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.k, %bb.j
  %.3 = phi i32 [ %.2, %bb.j ], [ %i.aw, %bb.k ]  ; 2 uses
  %i.ax = and i32 %.3, 805306368
  %.not237 = icmp eq i32 %i.ax, 0
  %i.ay = getelementptr inbounds nuw i8, ptr %i.h, i64 124
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !461 ; 2 uses
  %i.ba = and i32 %i.az, 805306368
  %i.bb = select i1 %.not237, i32 %i.ba, i32 0
  %.4 = or disjoint i32 %.3, %i.bb
  %.4.fr = freeze i32 %.4                         ; 10 uses
  %i.bc = and i32 %i.az, -938475521
  %i.bd = or i32 %i.bc, %.4.fr                    ; 12 uses
  %i.be = and i32 %i.bd, 2
  %i.bf = icmp eq i32 %i.be, 0                    ; 6 uses
  %i.bg = and i32 %i.bd, 524288
  %.not238 = icmp eq i32 %i.bg, 0                 ; 2 uses
  %i.bh = select i1 %i.bf, i32 4, i32 3           ; 4 uses
  %i.bi = and i32 %i.bd, 16
  %.not239 = icmp eq i32 %i.bi, 0                 ; 2 uses
  br i1 %.not239, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 3308
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !204
  %i.bl = fadd float %i.o, %i.bk
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge, %bb.l
  %i.bm = phi float [ %i.bl, %bb.l ], [ 0.000000e+00, %._crit_edge ] ; 4 uses
  %i.bn = fsub float %i.q, %i.bm                  ; 2 uses
  %i.bo = fcmp oge float %i.bn, 1.000000e+00
  %i.bp = select i1 %i.bo, float %i.bn, float 1.000000e+00 ; 4 uses
  %i.bq = fadd float %i.bm, %i.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 6 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.bt = load <2 x float>, ptr %1, align 4, !tbaa !190 ; 5 uses
  store <2 x float> %i.bt, ptr %i.e, align 16, !tbaa !190
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 11 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !190 ; 3 uses
  store float %i.bw, ptr %i.bu, align 8, !tbaa !190
  %i.bx = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 2 uses
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !190
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ca = phi float [ %i.bz, %bb.n ], [ 1.000000e+00, %bb.m ]
  store float %i.ca, ptr %i.bx, align 4, !tbaa !190
  %i.cb = and i32 %.4.fr, 536870912
  %.not240 = icmp ne i32 %i.cb, 0
  %i.cc = and i32 %.4.fr, 537919488
  %or.cond270.not = icmp eq i32 %i.cc, 537919488  ; 2 uses
  br i1 %or.cond270.not, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cd = extractelement <2 x float> %i.bt, i64 0
  %i.ce = extractelement <2 x float> %i.bt, i64 1
  call void @_ZN5ImGui20ColorConvertHSVtoRGBEfffRfS0_S0_(float noundef %i.cd, float noundef %i.ce, float noundef %i.bw, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.br, ptr noundef nonnull align 4 dereferenceable(4) %i.bu)
  br label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit

bb.q:                                             ; preds = %bb.o
  %i.cf = and i32 %.4.fr, 270532608
  %or.cond271.not = icmp eq i32 %i.cf, 270532608
  br i1 %or.cond271.not, label %bb.r, label %_ZL18ColorEditRestoreHSPKfPfS1_S1_.exit
end_hunk_0
