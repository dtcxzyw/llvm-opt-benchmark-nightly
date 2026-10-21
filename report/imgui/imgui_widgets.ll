Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_MACEP19ImGuiInputTextStatei:bb.a
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
  %7 = select i1 %i.e, i1 %i.g, i1 false
  %or.cond = and i1 %5, %i.e
  %or.cond.not = xor i1 %or.cond, true
  %brmerge.a = select i1 %or.cond.not, i1 true, i1 %i.g
  br i1 %brmerge.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 32, ptr %2, align 4, !tbaa !208
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0130 = phi i32 [ 32, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.0127.shrunk = phi i1 [ true, %bb.c ], [ %7, %bb.b ]
  %i.h = icmp eq i32 %.0130, 10
  %i.i = select i1 %i.h, i1 %i.g, i1 false
  %i.j = or i1 %.0127.shrunk, %i.i
  %i.k = icmp eq i32 %.0130, 9
  %i.l = and i32 %i.c, 32
  %i.m = icmp ne i32 %i.l, 0
  %i.n = select i1 %i.k, i1 %i.m, i1 false
  %i.o = or i1 %i.n, %i.j
  br i1 %i.o, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d, %bb.a
  %.1131 = phi i32 [ %.0130, %bb.d ], [ %i.a, %bb.a ] ; 7 uses
  br i1 %5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = icmp eq i32 %.1131, 127
  %i.q = add i32 %.1131, -57344
  %or.cond5 = icmp ult i32 %i.q, 6400
  %or.cond163 = or i1 %i.p, %or.cond5
  %i.r = icmp ugt i32 %.1131, 65535
  %or.cond164 = or i1 %i.r, %or.cond163
  br i1 %or.cond164, label %.critedge, label %bb.h

bb.g:                                             ; preds = %bb.e
  %.old = icmp ugt i32 %.1131, 65535
  br i1 %.old, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.s = and i32 %i.c, 268435487
  %.not = icmp eq i32 %i.s, 0
  %or.cond151 = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond151, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.u = load i16, ptr %i.t, align 8, !tbaa !759
  %i.v = zext i16 %i.u to i32                     ; 3 uses
  %i.w = and i32 %i.c, 268435461
  %.not141 = icmp ne i32 %i.w, 0
  %i.x = and i32 %.1131, 65533
  %or.cond7 = icmp eq i32 %i.x, 44
  %or.cond152 = and i1 %.not141, %or.cond7
  %.2132 = select i1 %or.cond152, i32 %i.v, i32 %.1131 ; 3 uses
  %i.y = and i32 %i.c, 7
  %.not142 = icmp ne i32 %i.y, 0
  %i.z = add nsw i32 %.2132, -65281
  %or.cond9 = icmp ult i32 %i.z, 94
  %or.cond153 = select i1 %.not142, i1 %or.cond9, i1 false
  %i.aa = add nsw i32 %.2132, -65248
  %.3 = select i1 %or.cond153, i32 %i.aa, i32 %.2132 ; 9 uses
  %i.ab = and i32 %i.c, 1
  %.not143 = icmp eq i32 %i.ab, 0
  %i.ac = add nsw i32 %.3, -48
  %or.cond11 = icmp ult i32 %i.ac, 10             ; 3 uses
  %or.cond154 = select i1 %.not143, i1 true, i1 %or.cond11
  br i1 %or.cond154, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = icmp ne i32 %.3, %i.v
  %i.ae = freeze i1 %i.ad
  br i1 %i.ae, label %switch.early.test, label %bb.k

switch.early.test:                                ; preds = %bb.j
  switch i32 %.3, label %.critedge [
    i32 47, label %bb.k
    i32 45, label %bb.k
    i32 43, label %bb.k
    i32 42, label %bb.k
  ]

bb.k:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.j, %bb.i
  %i.af = and i32 %i.c, 4
  %.not144 = icmp eq i32 %i.af, 0
  %or.cond155 = select i1 %.not144, i1 true, i1 %or.cond11
  br i1 %or.cond155, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = icmp ne i32 %.3, %i.v
  %i.ah = freeze i1 %i.ag
  br i1 %i.ah, label %switch.early.test156, label %bb.m

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
  %i.ai = and i32 %i.c, 2
  %.not145 = icmp eq i32 %i.ai, 0
  %or.cond157 = select i1 %.not145, i1 true, i1 %or.cond11
  %i.aj = add nsw i32 %.3, -97                    ; 2 uses
  %or.cond37 = icmp ult i32 %i.aj, 6
  %or.cond158 = select i1 %or.cond157, i1 true, i1 %or.cond37
  %i.ak = add nsw i32 %.3, -65
  %or.cond39 = icmp ult i32 %i.ak, 6
  %or.cond159 = select i1 %or.cond158, i1 true, i1 %or.cond39
  br i1 %or.cond159, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.al = and i32 %i.c, 8
  %.not146 = icmp ne i32 %i.al, 0
  %or.cond41 = icmp ult i32 %i.aj, 26
  %or.cond160 = select i1 %.not146, i1 %or.cond41, i1 false
  %i.am = add nsw i32 %.3, -32
  %.4 = select i1 %or.cond160, i32 %i.am, i32 %.3 ; 3 uses
  %i.an = and i32 %i.c, 16
  %.not147 = icmp eq i32 %i.an, 0
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
  %i.ao = and i32 %i.c, 2097152
  %.not148 = icmp eq i32 %i.ao, 0
  br i1 %.not148, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @_ZN26ImGuiInputTextCallbackDataC1Ev(ptr noundef nonnull align 8 dereferenceable(68) %6)
  store ptr %i.ap, ptr %6, align 8, !tbaa !423
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !392 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !424
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.c, ptr %i.at, align 4, !tbaa !425
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 2097152, ptr %i.au, align 8, !tbaa !426
  %i.av = trunc nuw i32 %.6 to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i16 %i.av, ptr %i.aw, align 8, !tbaa !760
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 5428
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !218
  %i.az = icmp eq i32 %i.ay, %i.ar
  br i1 %i.az, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 5440
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !230, !range !184, !noundef !185
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bc = phi i8 [ 0, %bb.q ], [ %i.bb, %bb.r ]
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i8 %i.bc, ptr %i.bd, align 2, !tbaa !427
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !378 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bh = load <2 x i32>, ptr %i.bf, align 4, !tbaa !208
  store <2 x i32> %i.bh, ptr %i.bg, align 8, !tbaa !208
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !395
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %i.bj, ptr %i.bk, align 8, !tbaa !433
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.bl, align 8, !tbaa !428
  %i.bm = call noundef i32 %3(ptr noundef nonnull %6)
  %.not149 = icmp eq i32 %i.bm, 0
  br i1 %.not149, label %bb.t, label %.critedge162

bb.t:                                             ; preds = %bb.s
  %i.bn = load i16, ptr %i.aw, align 8, !tbaa !760 ; 2 uses
  %i.bo = zext i16 %i.bn to i32
  store i32 %i.bo, ptr %2, align 4, !tbaa !208
  %.not150.not = icmp eq i16 %i.bn, 0
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

end_hunk_0
