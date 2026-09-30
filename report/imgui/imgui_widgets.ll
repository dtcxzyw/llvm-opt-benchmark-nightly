Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/imgui/original/imgui_widgets?download=true
inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImStbL30STB_TEXTEDIT_MOVEWORDRIGHT_MACEP19ImGuiInputTextStatei:bb.a
  %i.t = and i32 %i.s, 1024
  %i.u = icmp ne i32 %i.t, 0
  %i.v = icmp slt i32 %.018, 1
  %or.cond.i = or i1 %i.v, %i.u
  br i1 %or.cond.i, label %_ZN5ImStbL26is_word_boundary_from_leftEP19ImGuiInputTextStatei.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !400  ; 2 uses
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
  %i.a = load i32, ptr %2, align 4, !tbaa !208
  %.fr = freeze i32 %i.a                          ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !389  ; 12 uses
  %i.d = icmp ult i32 %.fr, 32                    ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %.fr, 10                     ; 2 uses
  %i.f = and i32 %i.c, 67108864                   ; 2 uses
  %i.g = icmp ne i32 %i.f, 0                      ; 3 uses
  %or.cond = and i1 %5, %i.e
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  store i32 32, ptr %2, align 4, !tbaa !208
  br label %.thread

bb.e:                                             ; preds = %bb.b
  %i.i = icmp eq i32 %.fr, 10
  %i.j = select i1 %i.i, i1 %i.g, i1 false
  %i.k = icmp eq i32 %.fr, 9
  %i.l = and i32 %i.c, 32
  %i.m = icmp ne i32 %i.l, 0
  %i.n = select i1 %i.k, i1 %i.m, i1 %i.j
  %7 = select i1 %i.e, i1 %i.g, i1 %i.n
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.0127.shrunk169 = phi i1 [ %7, %bb.e ], [ %i.g, %bb.c ], [ true, %bb.d ]
  %.0130168 = phi i32 [ %.fr, %bb.e ], [ 10, %bb.c ], [ 32, %bb.d ]
  br i1 %.0127.shrunk169, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.thread, %bb.a
  %.1131 = phi i32 [ %.0130168, %.thread ], [ %.fr, %bb.a ] ; 7 uses
  br i1 %5, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i32 %.1131, 127
  %i.p = add i32 %.1131, -57344
  %or.cond5 = icmp ult i32 %i.p, 6400
  %or.cond163 = or i1 %i.o, %or.cond5
  %i.q = icmp ugt i32 %.1131, 65535
  %or.cond164 = or i1 %i.q, %or.cond163
  br i1 %or.cond164, label %.critedge, label %bb.i

bb.h:                                             ; preds = %bb.f
  %.old = icmp ugt i32 %.1131, 65535
  br i1 %.old, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.r = and i32 %i.c, 268435487
  %.not = icmp eq i32 %i.r, 0
  %or.cond151 = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond151, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3144
  %i.t = load i16, ptr %i.s, align 8, !tbaa !759
  %i.u = zext i16 %i.t to i32                     ; 3 uses
  %i.v = and i32 %i.c, 268435461
  %.not141 = icmp ne i32 %i.v, 0
  %i.w = and i32 %.1131, 65533
  %or.cond7 = icmp eq i32 %i.w, 44
  %or.cond152 = and i1 %.not141, %or.cond7
  %.2132 = select i1 %or.cond152, i32 %i.u, i32 %.1131 ; 3 uses
  %i.x = and i32 %i.c, 7
  %.not142 = icmp ne i32 %i.x, 0
  %i.y = add nsw i32 %.2132, -65281
  %or.cond9 = icmp ult i32 %i.y, 94
  %or.cond153 = select i1 %.not142, i1 %or.cond9, i1 false
  %i.z = add nsw i32 %.2132, -65248
  %.3 = select i1 %or.cond153, i32 %i.z, i32 %.2132 ; 9 uses
  %i.aa = and i32 %i.c, 1
  %.not143 = icmp eq i32 %i.aa, 0
  %i.ab = add nsw i32 %.3, -48
  %or.cond11 = icmp ult i32 %i.ab, 10             ; 3 uses
  %or.cond154 = select i1 %.not143, i1 true, i1 %or.cond11
  br i1 %or.cond154, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp ne i32 %.3, %i.u
  %i.ad = freeze i1 %i.ac
  br i1 %i.ad, label %switch.early.test, label %bb.l

switch.early.test:                                ; preds = %bb.k
  switch i32 %.3, label %.critedge [
    i32 47, label %bb.l
    i32 45, label %bb.l
    i32 43, label %bb.l
    i32 42, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %bb.k, %bb.j
  %i.ae = and i32 %i.c, 4
  %.not144 = icmp eq i32 %i.ae, 0
  %or.cond155 = select i1 %.not144, i1 true, i1 %or.cond11
  br i1 %or.cond155, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = icmp ne i32 %.3, %i.u
  %i.ag = freeze i1 %i.af
  br i1 %i.ag, label %switch.early.test156, label %bb.n

switch.early.test156:                             ; preds = %bb.m
  switch i32 %.3, label %.critedge [
    i32 101, label %bb.n
    i32 69, label %bb.n
    i32 47, label %bb.n
    i32 45, label %bb.n
    i32 43, label %bb.n
    i32 42, label %bb.n
  ]

bb.n:                                             ; preds = %switch.early.test156, %switch.early.test156, %switch.early.test156, %switch.early.test156, %switch.early.test156, %switch.early.test156, %bb.m, %bb.l
  %i.ah = and i32 %i.c, 2
  %.not145 = icmp eq i32 %i.ah, 0
  %or.cond157 = select i1 %.not145, i1 true, i1 %or.cond11
  %i.ai = add nsw i32 %.3, -97                    ; 2 uses
  %or.cond37 = icmp ult i32 %i.ai, 6
  %or.cond158 = select i1 %or.cond157, i1 true, i1 %or.cond37
  %i.aj = add nsw i32 %.3, -65
  %or.cond39 = icmp ult i32 %i.aj, 6
  %or.cond159 = select i1 %or.cond158, i1 true, i1 %or.cond39
  br i1 %or.cond159, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.ak = and i32 %i.c, 8
  %.not146 = icmp ne i32 %i.ak, 0
  %or.cond41 = icmp ult i32 %i.ai, 26
  %or.cond160 = select i1 %.not146, i1 %or.cond41, i1 false
  %i.al = add nsw i32 %.3, -32
  %.4 = select i1 %or.cond160, i32 %i.al, i32 %.3 ; 3 uses
  %i.am = and i32 %i.c, 16
  %.not147 = icmp eq i32 %i.am, 0
  br i1 %.not147, label %_Z14ImCharIsBlankWj.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  switch i32 %.4, label %_Z14ImCharIsBlankWj.exit [
    i32 32, label %.critedge
    i32 9, label %.critedge
    i32 12288, label %.critedge
  ]

_Z14ImCharIsBlankWj.exit:                         ; preds = %bb.p, %bb.o
  store i32 %.4, ptr %2, align 4, !tbaa !208
  br label %bb.q

bb.q:                                             ; preds = %_Z14ImCharIsBlankWj.exit, %bb.i
  %.6 = phi i32 [ %.4, %_Z14ImCharIsBlankWj.exit ], [ %.1131, %bb.i ]
  %i.an = and i32 %i.c, 2097152
  %.not148 = icmp eq i32 %i.an, 0
  br i1 %.not148, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = load ptr, ptr @GImGui, align 8, !tbaa !29 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  call void @_ZN26ImGuiInputTextCallbackDataC1Ev(ptr noundef nonnull align 8 dereferenceable(68) %6)
  store ptr %i.ao, ptr %6, align 8, !tbaa !423
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !392 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !424
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.c, ptr %i.as, align 4, !tbaa !425
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 2097152, ptr %i.at, align 8, !tbaa !426
  %i.au = trunc nuw i32 %.6 to i16
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  store i16 %i.au, ptr %i.av, align 8, !tbaa !760
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 5428
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !218
  %i.ay = icmp eq i32 %i.ax, %i.aq
  br i1 %i.ay, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %i.ao, i64 5440
  %i.ba = load i8, ptr %i.az, align 8, !tbaa !230, !range !184, !noundef !185
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bb = phi i8 [ 0, %bb.r ], [ %i.ba, %bb.s ]
  %i.bc = getelementptr inbounds nuw i8, ptr %6, i64 34
  store i8 %i.bb, ptr %i.bc, align 2, !tbaa !427
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !378 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.bg = load <2 x i32>, ptr %i.be, align 4, !tbaa !208
  store <2 x i32> %i.bg, ptr %i.bf, align 8, !tbaa !208
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !395
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !433
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %4, ptr %i.bk, align 8, !tbaa !428
  %i.bl = call noundef i32 %3(ptr noundef nonnull %6)
  %.not149 = icmp eq i32 %i.bl, 0
  br i1 %.not149, label %bb.u, label %.critedge162

bb.u:                                             ; preds = %bb.t
  %i.bm = load i16, ptr %i.av, align 8, !tbaa !760 ; 2 uses
  %i.bn = zext i16 %i.bm to i32
  store i32 %i.bn, ptr %2, align 4, !tbaa !208
  %.not150.not = icmp eq i16 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br i1 %.not150.not, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  br label %.critedge

.critedge162:                                     ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %.critedge

.critedge:                                        ; preds = %bb.p, %bb.p, %bb.p, %bb.n, %switch.early.test156, %switch.early.test, %.critedge162, %bb.h, %bb.g, %.thread, %bb.u, %bb.v
  %.5138 = phi i1 [ false, %.thread ], [ false, %bb.g ], [ false, %bb.n ], [ true, %bb.v ], [ false, %bb.u ], [ false, %.critedge162 ], [ false, %bb.h ], [ false, %switch.early.test156 ], [ false, %switch.early.test ], [ false, %bb.p ], [ false, %bb.p ], [ false, %bb.p ]
  ret i1 %.5138
}

declare noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN5ImGui10SetScrollYEP11ImGuiWindowf(ptr noundef, float noundef) local_unnamed_addr #3

declare noundef float @_ZN5ImGui13GetScrollMaxYEv() local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorIcE7reserveEi(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !382
  %.not = icmp sgt i32 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.c) ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !383  ; 2 uses
  %.not6 = icmp eq ptr %i.f, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %0, align 8, !tbaa !384
  %i.h = sext i32 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.f, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !383
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.d, ptr %i.e, align 8, !tbaa !383
  store i32 %1, ptr %i.a, align 4, !tbaa !382
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare noundef ptr @_ZN5ImGui16GetClipboardTextEv() local_unnamed_addr #3

declare noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorIcE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !384    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !382
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %._ZN8ImVectorIcE7reserveEi.exit_crit_edge

._ZN8ImVectorIcE7reserveEi.exit_crit_edge:        ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !383
  br label %_ZN8ImVectorIcE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.a, 1
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sdiv i32 %i.a, 2
  %i.g = add nsw i32 %i.f, %i.a
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit

_ZNK8ImVectorIcE14_grow_capacityEi.exit:          ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 8, %bb.b ]
  %i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 %i.e) ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.j) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !383  ; 2 uses
  %.not6.i = icmp eq ptr %i.m, null
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit
  %i.n = load i32, ptr %0, align 8, !tbaa !384
  %i.o = sext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !383
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.p)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIcE14_grow_capacityEi.exit
  store ptr %i.k, ptr %i.l, align 8, !tbaa !383
  store i32 %i.i, ptr %i.b, align 4, !tbaa !382
  %.pre3 = load i32, ptr %0, align 8, !tbaa !384
  br label %_ZN8ImVectorIcE7reserveEi.exit

_ZN8ImVectorIcE7reserveEi.exit:                   ; preds = %._ZN8ImVectorIcE7reserveEi.exit_crit_edge, %bb.e
  %i.q = phi i32 [ %i.a, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.e ]
  %i.r = phi ptr [ %.pre, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %i.k, %bb.e ]
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %1, align 1
  store i8 %i.u, ptr %i.t, align 1
  %i.v = load i32, ptr %0, align 8, !tbaa !384
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %0, align 8, !tbaa !384
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImStbL18stb_textedit_pasteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !377 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !394  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !395  ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.c, %.val.i
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %.val.i, ptr %i.b, align 4, !tbaa !394
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.val.i, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = icmp sgt i32 %i.e, %.val.i
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.val.i, ptr %i.d, align 4, !tbaa !395
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ %.val.i, %bb.e ], [ %i.e, %bb.d ]
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %1, align 4, !tbaa !388
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a
  %i.k = load i32, ptr %1, align 4, !tbaa !388
  %i.l = icmp sgt i32 %i.k, %.val.i
  br i1 %i.l, label %bb.i, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i

bb.i:                                             ; preds = %bb.h
  store i32 %.val.i, ptr %1, align 4, !tbaa !388
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i: ; preds = %bb.i, %bb.h
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.m = load i32, ptr %1, align 4, !tbaa !388
  %i.n = tail call fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3) ; 3 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN5ImStbL27stb_textedit_paste_internalEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPci.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i
  %i.o = load i32, ptr %1, align 4, !tbaa !388
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.p, i32 noundef %i.o, i32 noundef 0, i32 noundef range(i32 1, 0) %i.n) ; 0 uses
  %i.r = load i32, ptr %1, align 4, !tbaa !388
  %i.s = add nsw i32 %i.r, %i.n
  store i32 %i.s, ptr %1, align 4, !tbaa !388
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.t, align 2, !tbaa !396
  br label %_ZN5ImStbL27stb_textedit_paste_internalEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPci.exit

_ZN5ImStbL27stb_textedit_paste_internalEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPci.exit: ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) initializes((2618, 2620), (2624, 2628)) %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !377  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %i.b, i32 noundef range(i32 -2147483648, 2147483647) %3) ; 6 uses
  %.not.i = icmp ne ptr %i.d, null
  %i.e = icmp sgt i32 %i.b, 0
  %or.cond.i = and i1 %i.e, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.g = icmp ult i32 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
end_hunk_0
