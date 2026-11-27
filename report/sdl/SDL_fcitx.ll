Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_fcitx?download=true
inline.NumInlined: 10
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FcitxClient = type { ptr, ptr, i32, %struct.SDL_Rect }
%struct.SDL_Rect = type { i32, i32, i32, i32 }
%struct.DBusMessageIter = type { ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }

@fcitx_client = internal global %struct.FcitxClient zeroinitializer, align 8
@.str = private unnamed_addr constant [10 x i8] c"DestroyIC\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"FocusIn\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"FocusOut\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"Reset\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"org.freedesktop.portal.Fcitx\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"org.fcitx.Fcitx.InputContext1\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"ProcessKeyEvent\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SDL.window.x11.display\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"SDL.window.x11.screen\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"SDL.window.x11.window\00", align 1
@X11_XTranslateCoordinates = external local_unnamed_addr global ptr, align 8
@.str.10 = private unnamed_addr constant [14 x i8] c"SetCursorRect\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"type='signal', interface='org.fcitx.Fcitx.InputContext1'\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"SDL_IME_IMPLEMENTED_UI\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"SDL_App\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"program\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"/org/freedesktop/portal/inputmethod\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"org.fcitx.Fcitx.InputMethod1\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"CreateInputContext\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"(ss)\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"CommitString\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"UpdateFormattedPreedit\00", align 1
@.str.21 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"composition\00", align 1
@.str.23 = private unnamed_addr constant [11 x i8] c"candidates\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"SetCapability\00", align 1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_Fcitx_Init() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %0 = alloca %struct.DBusMessageIter, align 8    ; 6 uses
  %1 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %2 = alloca %struct.DBusMessageIter, align 8    ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = tail call ptr @SDL_DBus_GetContext() #3
  store ptr %i.d, ptr @fcitx_client, align 8
  store <4 x i32> <i32 -1, i32 -1, i32 0, i32 0>, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 20), align 4
  %i.e = tail call ptr @SDL_GetExeName() #3       ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  %.str.13..i.i = select i1 %.not.i.i, ptr @.str.13, ptr %i.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store ptr null, ptr %i.c, align 8
  %i.f = load ptr, ptr @fcitx_client, align 8     ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.str.13..i.i, ptr %i.a, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store ptr @.str.14, ptr %i.b, align 8
  %.not.i14.i = icmp eq ptr %i.f, null
  br i1 %.not.i14.i, label %.thread.sink.split.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.f, align 8
  %.not26.i.i = icmp eq ptr %i.g, null
  br i1 %.not26.i.i, label %.thread.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call ptr %i.i(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #3, !inline_history !4 ; 5 uses
  %.not27.i.i = icmp eq ptr %i.j, null
  br i1 %.not27.i.i, label %.thread.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #3
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull %i.j, ptr noundef nonnull %0) #3, !inline_history !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 248 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = call i32 %i.n(ptr noundef nonnull %0, i32 noundef 97, ptr noundef nonnull @.str.18, ptr noundef nonnull %1) #3, !inline_history !4 ; 0 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = call i32 %i.p(ptr noundef nonnull %1, i32 noundef 114, ptr noundef null, ptr noundef nonnull %2) #3, !inline_history !4 ; 0 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 256 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call i32 %i.s(ptr noundef nonnull %2, i32 noundef 115, ptr noundef nonnull %i.b) #3, !inline_history !4 ; 0 uses
  %i.u = load ptr, ptr %i.r, align 8
  %i.v = call i32 %i.u(ptr noundef nonnull %2, i32 noundef 115, ptr noundef nonnull %i.a) #3, !inline_history !4 ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 264 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i32 %i.x(ptr noundef nonnull %1, ptr noundef nonnull %2) #3, !inline_history !4 ; 0 uses
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = call i32 %i.z(ptr noundef nonnull %0, ptr noundef nonnull %1) #3, !inline_history !4 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = load ptr, ptr %i.f, align 8
  %i.ae = call ptr %i.ac(ptr noundef %i.ad, ptr noundef nonnull %i.j, i32 noundef 300, ptr noundef null) #3, !inline_history !4 ; 3 uses
  %.not28.i.i = icmp eq ptr %i.ae, null
  br i1 %.not28.i.i, label %FcitxCreateInputContext.exit.thread2.i, label %FcitxCreateInputContext.exit.i

FcitxCreateInputContext.exit.thread2.i:           ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 328
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull %i.j) #3, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  br label %.thread.sink.split.i

FcitxCreateInputContext.exit.i:                   ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 272
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call i32 (ptr, ptr, i32, ...) %i.ai(ptr noundef nonnull %i.ae, ptr noundef null, i32 noundef 111, ptr noundef nonnull %i.c, i32 noundef 0) #3, !inline_history !4
  %.not29.i.not.i = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull %i.ae) #3, !inline_history !4
  %i.am = load ptr, ptr %i.ak, align 8
  call void %i.am(ptr noundef nonnull %i.j) #3, !inline_history !4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pr.i = load ptr, ptr %i.c, align 8
  %.not.not.i = icmp eq ptr %.pr.i, null
  %or.cond.i = select i1 %.not29.i.not.i, i1 true, i1 %.not.not.i
  br i1 %or.cond.i, label %FcitxClientCreateIC.exit, label %bb.e

.thread.sink.split.i:                             ; preds = %FcitxCreateInputContext.exit.thread2.i, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %FcitxClientCreateIC.exit

bb.e:                                             ; preds = %FcitxCreateInputContext.exit.i
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 8), align 8
  call void @SDL_free_REAL(ptr noundef %i.an) #3
  %i.ao = load ptr, ptr %i.c, align 8
  %i.ap = call noalias ptr @SDL_strdup_REAL(ptr noundef %i.ao) #3
  store ptr %i.ap, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 8), align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = load ptr, ptr %i.f, align 8
  call void %i.ar(ptr noundef %i.as, ptr noundef nonnull @.str.11, ptr noundef null) #3, !inline_history !5
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = load ptr, ptr %i.f, align 8
  %i.aw = call i32 %i.au(ptr noundef %i.av, ptr noundef nonnull @DBus_MessageFilter, ptr noundef nonnull %i.f, ptr noundef null) #3, !inline_history !5 ; 0 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = load ptr, ptr %i.f, align 8
  call void %i.ay(ptr noundef %i.az) #3, !inline_history !5
  %i.ba = call zeroext i1 @SDL_AddHintCallback_REAL(ptr noundef nonnull @.str.12, ptr noundef nonnull @Fcitx_SetCapabilities, ptr noundef nonnull @fcitx_client) #3 ; 0 uses
  br label %FcitxClientCreateIC.exit

FcitxClientCreateIC.exit:                         ; preds = %FcitxCreateInputContext.exit.i, %.thread.sink.split.i, %bb.e
  %.not5.i = phi i1 [ true, %bb.e ], [ false, %FcitxCreateInputContext.exit.i ], [ false, %.thread.sink.split.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  ret i1 %.not5.i
}

declare ptr @SDL_DBus_GetContext() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_Fcitx_Quit() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 8), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %FcitxClientICCallMethod.exit.thread, label %FcitxClientICCallMethod.exit

FcitxClientICCallMethod.exit:                     ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethod(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef 0) #3 ; 0 uses
  %.pr = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 8), align 8 ; 2 uses
  %.not = icmp eq ptr %.pr, null
  br i1 %.not, label %FcitxClientICCallMethod.exit.thread, label %bb.b

bb.b:                                             ; preds = %FcitxClientICCallMethod.exit
  tail call void @SDL_free_REAL(ptr noundef nonnull %.pr) #3
  store ptr null, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 8), align 8
  br label %FcitxClientICCallMethod.exit.thread

FcitxClientICCallMethod.exit.thread:              ; preds = %bb.a, %bb.b, %FcitxClientICCallMethod.exit
  ret void
}

declare void @SDL_free_REAL(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @SDL_Fcitx_SetFocus(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 8), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %FcitxClientICCallMethod.exit, label %FcitxClientICCallMethod.exit.sink.split

FcitxClientICCallMethod.exit.sink.split:          ; preds = %bb.a
  %.str.1..str.2 = select i1 %0, ptr @.str.1, ptr @.str.2
  %i.b = tail call zeroext i1 (ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethod(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, ptr noundef nonnull %.str.1..str.2, i32 noundef 0) #3 ; 0 uses
  br label %FcitxClientICCallMethod.exit

FcitxClientICCallMethod.exit:                     ; preds = %bb.a, %FcitxClientICCallMethod.exit.sink.split
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_Fcitx_Reset() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @fcitx_client, i64 8), align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %FcitxClientICCallMethod.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ptr, ptr, ptr, ...) @SDL_DBus_CallVoidMethod(ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef 0) #3 ; 0 uses
  br label %FcitxClientICCallMethod.exit

FcitxClientICCallMethod.exit:                     ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @SDL_Fcitx_ProcessKeyEvent(i32 noundef %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.a, align 4
  store i32 %1, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  %i.g = tail call zeroext i16 @SDL_GetModState_REAL() #3
  %i.h = zext i16 %i.g to i32                     ; 8 uses
  %i.i = and i32 %i.h, 3
  %.not.i = icmp ne i32 %i.i, 0
  %spec.select.i = zext i1 %.not.i to i32
  %i.j = lshr i32 %i.h, 12
  %i.k = and i32 %i.j, 2
  %.1.i = or disjoint i32 %i.k, %spec.select.i    ; 2 uses
  %i.l = and i32 %i.h, 192
  %.not18.i = icmp eq i32 %i.l, 0
  %i.m = or disjoint i32 %.1.i, 4
  %.2.i = select i1 %.not18.i, i32 %.1.i, i32 %i.m ; 2 uses
  %i.n = and i32 %i.h, 768
  %.not19.i = icmp eq i32 %i.n, 0
  %i.o = or disjoint i32 %.2.i, 8
  %.3.i = select i1 %.not19.i, i32 %.2.i, i32 %i.o
end_hunk_0
