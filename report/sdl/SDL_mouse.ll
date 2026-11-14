Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_mouse?download=true
inline.NumInlined: 74
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SDL_WarpMouseInWindow_REAL:bb.a
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond32.i = select i1 %or.cond.not.i, i1 true, i1 %i.f
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 198), align 2, !range !7 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond34.i = select i1 %or.cond32.i, i1 true, i1 %i.h
  %.pre11 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 136), align 8 ; 2 uses
  br i1 %or.cond34.i, label %SDL_MaybeEnableWarpEmulation.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  %spec.select.i = select i1 %.not.i, ptr %.pre11, ptr %0 ; 2 uses
  %.not28.i = icmp eq ptr %spec.select.i, null
  br i1 %.not28.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select.i, i64 32
  %i.j = load <2 x i32>, ptr %i.i, align 8
  %i.k = sitofp <2 x i32> %i.j to <2 x float>     ; 2 uses
  %i.l = extractelement <2 x float> %i.k, i64 0
  %i.m = fmul nnan float %i.l, 5.000000e-01       ; 2 uses
  %i.n = extractelement <2 x float> %i.k, i64 1
  %i.o = fmul nnan float %i.n, 5.000000e-01       ; 2 uses
  %i.p = tail call float @SDL_floorf_REAL(float noundef %i.m) #13
  %i.q = fcmp ult float %1, %i.p
  br i1 %i.q, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = tail call float @SDL_ceilf_REAL(float noundef %i.m) #13
  %i.s = fcmp ugt float %1, %i.r
  br i1 %i.s, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call float @SDL_floorf_REAL(float noundef %i.o) #13
  %i.u = fcmp ult float %2, %i.t
  br i1 %i.u, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = tail call float @SDL_ceilf_REAL(float noundef %i.o) #13
  %i.w = fcmp ugt float %2, %i.v
  br i1 %i.w, label %.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = tail call i64 @SDL_GetTicksNS_REAL() #13 ; 4 uses
  %i.y = load i64, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 200), align 8
  %i.z = sub i64 %i.x, %i.y
  %i.aa = icmp ult i64 %i.z, 30000000
  br i1 %i.aa, label %bb.h, label %.sink.split.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 198), align 2
  %i.ab = tail call zeroext i1 @SDL_SetRelativeMouseMode(i1 noundef zeroext true)
  br i1 %i.ab, label %.sink.split.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 198), align 2
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sink.i = phi i64 [ %i.x, %bb.g ], [ %i.x, %bb.h ], [ %i.x, %bb.i ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ]
  store i64 %.sink.i, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 200), align 8
  %.pre = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 198), align 2, !range !7
  %.pre10 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 136), align 8
  br label %SDL_MaybeEnableWarpEmulation.exit

SDL_MaybeEnableWarpEmulation.exit:                ; preds = %bb.a, %.sink.split.i
  %i.ac = phi ptr [ %.pre11, %bb.a ], [ %.pre10, %.sink.split.i ]
  %i.ad = phi i8 [ %i.g, %bb.a ], [ %.pre, %.sink.split.i ]
  %i.ae = trunc nuw i8 %i.ad to i1
  %.not28.i7 = icmp eq ptr %0, null
  %spec.select.i8 = select i1 %.not28.i7, ptr %i.ac, ptr %0 ; 4 uses
  %.not29.i = icmp eq ptr %spec.select.i8, null
  br i1 %.not29.i, label %SDL_PerformWarpMouseInWindow.exit, label %bb.j

bb.j:                                             ; preds = %SDL_MaybeEnableWarpEmulation.exit
  %i.af = getelementptr inbounds nuw i8, ptr %spec.select.i8, i64 72
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 64
  %.not30.i = icmp eq i64 %i.ah, 0
  br i1 %.not30.i, label %bb.k, label %SDL_PerformWarpMouseInWindow.exit

bb.k:                                             ; preds = %bb.j
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 160), align 8
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 164), align 4
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 192), align 8
  %i.ai = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 193), align 1, !range !7, !noundef !8
  %i.aj = trunc nuw i8 %i.ai to i1                ; 2 uses
  %.not.i9 = xor i1 %i.aj, true
  %or.cond.i = or i1 %i.ae, %.not.i9
  %i.ak = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 194), align 2, !range !7
  %i.al = trunc nuw i8 %i.ak to i1
  %or.cond33.i = select i1 %or.cond.i, i1 true, i1 %i.al
  br i1 %or.cond33.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store float %1, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 144), align 8
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 148), align 4
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 192), align 8
  br label %SDL_PerformWarpMouseInWindow.exit

bb.m:                                             ; preds = %bb.k
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 48), align 8 ; 2 uses
  %.not31.i = icmp eq ptr %i.am, null
  %or.cond35.i = or i1 %.not31.i, %i.aj
  br i1 %or.cond35.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = tail call zeroext i1 %i.am(ptr noundef nonnull %spec.select.i8, float noundef %1, float noundef %2) #13, !inline_history !15 ; 0 uses
  br label %SDL_PerformWarpMouseInWindow.exit

bb.o:                                             ; preds = %bb.m
  tail call fastcc void @SDL_PrivateSendMouseMotion(i64 noundef 0, ptr noundef nonnull %spec.select.i8, i32 noundef 0, i1 noundef zeroext false, float noundef %1, float noundef %2)
  br label %SDL_PerformWarpMouseInWindow.exit

SDL_PerformWarpMouseInWindow.exit:                ; preds = %SDL_MaybeEnableWarpEmulation.exit, %bb.j, %bb.l, %bb.n, %bb.o
  ret void
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_WarpMouseGlobal_REAL(float noundef %0, float noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 56), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 %i.a(float noundef %0, float noundef %1) #13
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.20) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ %i.c, %bb.c ]
  ret i1 %.0
}

declare ptr @SDL_GetKeyboardFocus_REAL() local_unnamed_addr #4

declare void @SDL_UpdateWindowGrab(ptr noundef) local_unnamed_addr #4

declare void @SDL_FlushEvent_REAL(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @SDL_GetRelativeMouseMode() local_unnamed_addr #6 {
bb.a:
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 193), align 1, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @SDL_UpdateRelativeMouseMode() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetKeyboardFocus_REAL() #13 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load i64, ptr %i.b, align 8
  %i.d = and i64 %i.c, 32768
  %i.e = icmp ne i64 %i.d, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ %i.e, %bb.b ] ; 2 uses
  %i.g = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 193), align 1, !range !7, !noundef !8
  %i.h = zext i1 %i.f to i8
  %i.i = icmp eq i8 %i.g, %i.h
  br i1 %i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call zeroext i1 @SDL_SetRelativeMouseMode(i1 noundef zeroext %i.f)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ %i.j, %bb.d ], [ true, %bb.c ]
  ret i1 %.0
}

declare i32 @SDL_GetMessageBoxCount() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_CreateCursor_REAL(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %2, 7
  %i.b = and i32 %i.a, -8                         ; 2 uses
  %i.c = tail call ptr @SDL_CreateSurface_REAL(i32 noundef %i.b, i32 noundef %3, i32 noundef 372645892) #13 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph61, label %._crit_edge62.split

.lr.ph61:                                         ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.g = icmp sgt i32 %2, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge62.split

.lr.ph:                                           ; preds = %.lr.ph61, %._crit_edge
  %.060 = phi i8 [ %i.v, %._crit_edge ], [ 0, %.lr.ph61 ]
  %.02859 = phi i8 [ %i.u, %._crit_edge ], [ 0, %.lr.ph61 ]
  %.03358 = phi i32 [ %i.x, %._crit_edge ], [ 0, %.lr.ph61 ] ; 2 uses
  %.03657 = phi ptr [ %.238, %._crit_edge ], [ %0, %.lr.ph61 ]
  %.03956 = phi ptr [ %.241, %._crit_edge ], [ %1, %.lr.ph61 ]
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = load i32, ptr %i.f, align 8
  %i.j = mul nsw i32 %i.i, %.03358
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds i8, ptr %i.h, i64 %i.k
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.152 = phi i8 [ %.060, %.lr.ph ], [ %i.v, %bb.d ]
  %.12951 = phi i8 [ %.02859, %.lr.ph ], [ %i.u, %bb.d ]
  %.03150 = phi ptr [ %i.l, %.lr.ph ], [ %.132, %bb.d ] ; 2 uses
  %.03449 = phi i32 [ 0, %.lr.ph ], [ %i.w, %bb.d ] ; 2 uses
  %.13748 = phi ptr [ %.03657, %.lr.ph ], [ %.238, %bb.d ] ; 3 uses
  %.14047 = phi ptr [ %.03956, %.lr.ph ], [ %.241, %bb.d ] ; 3 uses
  %i.m = and i32 %.03449, 7
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %.13748, i64 1
  %i.p = load i8, ptr %.13748, align 1
  %i.q = getelementptr inbounds nuw i8, ptr %.14047, i64 1
  %i.r = load i8, ptr %.14047, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.241 = phi ptr [ %i.q, %bb.c ], [ %.14047, %bb.b ] ; 2 uses
  %.238 = phi ptr [ %i.o, %bb.c ], [ %.13748, %bb.b ] ; 2 uses
  %.230 = phi i8 [ %i.p, %bb.c ], [ %.12951, %bb.b ] ; 2 uses
  %.2 = phi i8 [ %i.r, %bb.c ], [ %.152, %bb.b ]  ; 2 uses
  %.not44 = icmp sgt i8 %.230, -1                 ; 2 uses
  %i.s = select i1 %.not44, i32 0, i32 -16777216
  %i.t = select i1 %.not44, i32 -1, i32 -16777216
  %.not4346 = icmp slt i8 %.2, 0
  %storemerge = select i1 %.not4346, i32 %i.t, i32 %i.s
  %.132 = getelementptr inbounds nuw i8, ptr %.03150, i64 4
  store i32 %storemerge, ptr %.03150, align 4
  %i.u = shl i8 %.230, 1                          ; 2 uses
  %i.v = shl i8 %.2, 1                            ; 2 uses
  %i.w = add nuw nsw i32 %.03449, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.d
  %i.x = add nuw nsw i32 %.03358, 1               ; 2 uses
  %exitcond64.not = icmp eq i32 %i.x, %3
  br i1 %exitcond64.not, label %._crit_edge62.split, label %.lr.ph, !llvm.loop !43

._crit_edge62.split:                              ; preds = %._crit_edge, %.lr.ph61, %.preheader
  %i.y = tail call ptr @SDL_CreateColorCursor_REAL(ptr noundef nonnull %i.c, i32 noundef %4, i32 noundef %5)
  tail call void @SDL_DestroySurface_REAL(ptr noundef nonnull %i.c) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge62.split
  %.035 = phi ptr [ %i.y, %._crit_edge62.split ], [ null, %bb.a ]
  ret ptr %.035
}

; Function Attrs: nounwind uwtable
define hidden void @SDL_UpdateCursorAnimation() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 288), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %SDL_RedrawCursor.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %.not18 = icmp eq ptr %i.b, null
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 136), align 8
  %.not19 = icmp eq ptr %i.c, null
  %or.cond = select i1 %.not18, i1 true, i1 %.not19
  br i1 %or.cond, label %SDL_RedrawCursor.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %.not20 = icmp eq i32 %i.j, 0
  br i1 %.not20, label %SDL_RedrawCursor.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = tail call i64 @SDL_GetTicks_REAL() #13   ; 2 uses
  %i.l = load i64, ptr %i.b, align 8
  %i.m = zext i32 %i.j to i64
  %i.n = add i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.k, %i.n
  br i1 %i.o, label %SDL_RedrawCursor.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = load i32, ptr %i.f, align 4
  %i.q = add nsw i32 %i.p, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = srem i32 %i.q, %i.s
  store i32 %i.t, ptr %i.f, align 4
  store i64 %i.k, ptr %i.b, align 8
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 136), align 8
  %.not.i = icmp eq ptr %i.u, null                ; 2 uses
  %.val.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 280), align 8 ; 2 uses
  %.val25.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 288), align 8 ; 2 uses
  %.0.i = select i1 %.not.i, ptr %.val.i, ptr %.val25.i ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 296), align 8, !range !7, !noundef !8
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.g, label %.thread.i

bb.g:                                             ; preds = %bb.f
  %i.x = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 193), align 1, !range !7, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i8, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 195), align 1, !range !7
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i = select i1 %i.y, i1 %i.aa, i1 false
  %.not18.i = icmp eq ptr %.val25.i, null
  %or.cond24.i = select i1 %or.cond.i, i1 true, i1 %.not18.i
  br i1 %or.cond24.i, label %.thread.i, label %bb.i

bb.h:                                             ; preds = %bb.e
  %.not18.old.i = icmp eq ptr %.val.i, null
  br i1 %.not18.old.i, label %.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = load ptr, ptr %.0.i, align 8            ; 3 uses
  %.not19.i = icmp eq ptr %i.ab, null
  br i1 %.not19.i, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.2.i = phi ptr [ %i.ai, %bb.j ], [ %.0.i, %bb.i ], [ null, %bb.h ], [ null, %bb.f ], [ null, %bb.g ]
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 24), align 8 ; 2 uses
  %.not20.i = icmp eq ptr %i.aj, null
  br i1 %.not20.i, label %SDL_RedrawCursor.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i
  %i.ak = tail call zeroext i1 %i.aj(ptr noundef %.2.i) #13, !inline_history !9 ; 0 uses
  br label %SDL_RedrawCursor.exit

SDL_RedrawCursor.exit:                            ; preds = %bb.k, %.thread.i, %bb.c, %bb.d, %bb.a, %bb.b
  ret void
}

declare i64 @SDL_GetTicks_REAL() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_CreateAnimatedCursor_REAL(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #13 ; 0 uses
  br label %bb.ae

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 3 uses
  %.not116 = icmp eq ptr %i.b, null
  br i1 %.not116, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.c = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.24) #13 ; 0 uses
  br label %bb.ae

bb.e:                                             ; preds = %bb.c
  %i.d = icmp slt i32 %1, 1
  br i1 %i.d, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.e = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25) #13 ; 0 uses
  br label %bb.ae

bb.g:                                             ; preds = %bb.e
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.g = tail call ptr @SDL_CreateColorCursor_REAL(ptr noundef nonnull %i.b, i32 noundef %2, i32 noundef %3)
  br label %bb.ae

bb.i:                                             ; preds = %bb.g
  %i.h = tail call i32 @SDL_GetSurfaceProperties_REAL(ptr noundef nonnull %i.b) #13 ; 2 uses
  %i.i = sext i32 %2 to i64
  %i.j = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.h, ptr noundef nonnull @.str.26, i64 noundef %i.i) #13
  %i.k = trunc i64 %i.j to i32                    ; 4 uses
  %i.l = sext i32 %3 to i64
  %i.m = tail call i64 @SDL_GetNumberProperty_REAL(i32 noundef %i.h, ptr noundef nonnull @.str.27, i64 noundef %i.l) #13
  %i.n = trunc i64 %i.m to i32                    ; 4 uses
  %i.o = icmp slt i32 %i.k, 0
  %i.p = icmp slt i32 %i.n, 0
  %or.cond = select i1 %i.o, i1 true, i1 %i.p
  br i1 %or.cond, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr %0, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8              ; 2 uses
  %.not117 = icmp sgt i32 %i.s, %i.k
  br i1 %.not117, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %.not118 = icmp sgt i32 %i.u, %i.n
  br i1 %.not118, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.v = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.28) #13 ; 0 uses
  br label %bb.ae

bb.m:                                             ; preds = %bb.k
  %i.w = zext nneg i32 %1 to i64                  ; 3 uses
  %i.x = shl nuw nsw i64 %i.w, 4                  ; 3 uses
  %i.y = icmp samesign ult i32 %1, 8              ; 2 uses
  br i1 %i.y, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.z = alloca i8, i64 %i.x, align 16
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.x) #13 ; 2 uses
  %.not119 = icmp eq ptr %i.aa, null
  br i1 %.not119, label %bb.ae, label %._crit_edge159

._crit_edge159:                                   ; preds = %bb.n
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre160 = load i32, ptr %.phi.trans.insert, align 8
end_hunk_0
