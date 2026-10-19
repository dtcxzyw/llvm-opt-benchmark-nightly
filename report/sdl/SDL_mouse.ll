Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_mouse?download=true
inline.NumInlined: 74
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@SDL_CreateCursor_REAL:bb.a
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
  %i.w = zext nneg i32 %1 to i64
  %i.x = shl nuw nsw i64 %i.w, 4                  ; 3 uses
  %i.y = icmp samesign ult i32 %1, 8              ; 2 uses
  br i1 %i.y, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.m
  %i.z = alloca i8, i64 %i.x, align 16
  br label %.lr.ph.preheader

bb.n:                                             ; preds = %bb.m
  %i.aa = tail call noalias ptr @SDL_malloc_REAL(i64 noundef %i.x) #13 ; 2 uses
  %.not119 = icmp eq ptr %i.aa, null
  br i1 %.not119, label %bb.ae, label %._crit_edge160

._crit_edge160:                                   ; preds = %bb.n
  %.pre = load ptr, ptr %0, align 8               ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %.pre161 = load i32, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert162 = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %.pre163 = load i32, ptr %.phi.trans.insert162, align 4
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %._crit_edge160
  %i.ab = phi i32 [ %i.u, %.thread ], [ %.pre163, %._crit_edge160 ]
  %i.ac = phi i32 [ %i.s, %.thread ], [ %.pre161, %._crit_edge160 ]
  %i.ad = phi ptr [ %i.z, %.thread ], [ %i.aa, %._crit_edge160 ] ; 7 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ad, i8 0, i64 %i.x, i1 false)
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.u ] ; 5 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 6 uses
  %.not120 = icmp eq ptr %i.af, null
  br i1 %.not120, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.29, i32 noundef %i.ag) #13 ; 0 uses
  br label %.lr.ph148.preheader

bb.p:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %.not121 = icmp eq i32 %i.aj, %i.ac
  br i1 %.not121, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 12
  %i.al = load i32, ptr %i.ak, align 4
  %.not122 = icmp eq i32 %i.al, %i.ab
  br i1 %.not122, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.am = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.30) #13 ; 0 uses
  br label %.lr.ph148.preheader

bb.s:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = icmp eq i32 %i.ao, 372645892
  br i1 %i.ap, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = tail call ptr @SDL_ConvertSurface_REAL(ptr noundef nonnull %i.af, i32 noundef 372645892) #13 ; 2 uses
  %.not123.not = icmp eq ptr %i.aq, null
  br i1 %.not123.not, label %.lr.ph148.preheader, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sink = phi ptr [ %i.af, %bb.s ], [ %i.aq, %bb.t ]
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv
  store ptr %.sink, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.at = load i32, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.at, ptr %i.av, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.u
  %i.aw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 8), align 8 ; 2 uses
  %.not124 = icmp eq ptr %i.aw, null
  br i1 %.not124, label %bb.v, label %bb.y

bb.v:                                             ; preds = %._crit_edge
  %i.ax = call fastcc ptr @SDL_CreateCursorAnimation(ptr noundef %i.ad, i32 noundef %1, i32 noundef %i.k, i32 noundef %i.n) ; 3 uses
  %.not125 = icmp eq ptr %i.ax, null
  br i1 %.not125, label %.lr.ph148.preheader, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ay = tail call noalias dereferenceable_or_null(24) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 24) #14 ; 3 uses
  %.not126 = icmp eq ptr %i.ay, null
  br i1 %.not126, label %bb.x, label %.thread139

bb.x:                                             ; preds = %bb.w
  tail call fastcc void @SDL_DestroyCursorAnimation(ptr noundef %i.ax)
  br label %.lr.ph148.preheader

.thread139:                                       ; preds = %bb.w
  store ptr %i.ax, ptr %i.ay, align 8
  br label %bb.z

bb.y:                                             ; preds = %._crit_edge
  %i.az = call ptr %i.aw(ptr noundef nonnull %i.ad, i32 noundef %1, i32 noundef %i.k, i32 noundef %i.n) #13 ; 2 uses
  %.not127 = icmp eq ptr %i.az, null
  br i1 %.not127, label %.lr.ph148.preheader, label %bb.z

bb.z:                                             ; preds = %.thread139, %bb.y
  %.196142 = phi ptr [ %i.ay, %.thread139 ], [ %i.az, %bb.y ] ; 3 uses
  %i.ba = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 272), align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.196142, i64 16
  store ptr %i.ba, ptr %i.bb, align 8
  store ptr %.196142, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 272), align 8
  br label %.lr.ph148.preheader

.lr.ph148.preheader:                              ; preds = %bb.t, %bb.z, %bb.y, %bb.r, %bb.o, %bb.x, %bb.v
  %.297 = phi ptr [ %.196142, %bb.z ], [ null, %bb.y ], [ null, %bb.v ], [ null, %bb.r ], [ null, %bb.o ], [ null, %bb.x ], [ null, %bb.t ] ; 2 uses
  %wide.trip.count158 = zext nneg i32 %1 to i64
  br label %.lr.ph148

._crit_edge149:                                   ; preds = %bb.ac
  br i1 %i.y, label %bb.ae, label %bb.ad

.lr.ph148:                                        ; preds = %.lr.ph148.preheader, %bb.ac
  %indvars.iv154 = phi i64 [ 0, %.lr.ph148.preheader ], [ %indvars.iv.next155, %bb.ac ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %indvars.iv154
  %i.bd = load ptr, ptr %i.bc, align 8            ; 3 uses
  %.not128 = icmp eq ptr %i.bd, null
  br i1 %.not128, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph148
  %i.be = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv154
  %i.bf = load ptr, ptr %i.be, align 8
  %.not129 = icmp eq ptr %i.bf, %i.bd
  br i1 %.not129, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @SDL_DestroySurface_REAL(ptr noundef nonnull %i.bd) #13
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph148, %bb.aa, %bb.ab
  %indvars.iv.next155 = add nuw nsw i64 %indvars.iv154, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next155, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge149, label %.lr.ph148, !llvm.loop !45

bb.ad:                                            ; preds = %._crit_edge149
  call void @SDL_free_REAL(ptr noundef nonnull %i.ad) #13
  br label %bb.ae

bb.ae:                                            ; preds = %bb.l, %._crit_edge149, %bb.ad, %bb.n, %bb.h, %bb.f, %bb.d, %bb.b
  %.3 = phi ptr [ null, %bb.f ], [ %i.g, %bb.h ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.l ], [ null, %bb.n ], [ %.297, %bb.ad ], [ %.297, %._crit_edge149 ]
  ret ptr %.3
}

declare i32 @SDL_GetSurfaceProperties_REAL(ptr noundef) local_unnamed_addr #4

declare i64 @SDL_GetNumberProperty_REAL(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

declare ptr @SDL_ConvertSurface_REAL(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @SDL_CreateCursorAnimation(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef range(i32 2, -2147483648) %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef range(i32 0, -2147483648) %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 32) #14 ; 9 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 3 uses
  %i.c = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.b, i64 noundef 8) #14 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 7 uses
  store ptr %i.c, ptr %i.d, align 8
  %i.e = tail call noalias ptr @SDL_calloc_REAL(i64 noundef %i.b, i64 noundef 4) #14 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8
  %.not31 = icmp eq ptr %i.c, null
  %.not32 = icmp eq ptr %i.e, null
  %or.cond = select i1 %.not31, i1 true, i1 %.not32
  br i1 %or.cond, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i, label %SDL_DestroyCursorAnimation.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.i
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @SDL_DestroyCursor_REAL(ptr noundef %i.l), !inline_history !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.m = load i32, ptr %i.g, align 8
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next.i, %i.n
  br i1 %i.o, label %.lr.ph.i, label %SDL_DestroyCursorAnimation.exit.loopexit, !llvm.loop !3

SDL_DestroyCursorAnimation.exit.loopexit:         ; preds = %.lr.ph.i
  %.pre41 = load ptr, ptr %i.d, align 8
  br label %SDL_DestroyCursorAnimation.exit

SDL_DestroyCursorAnimation.exit:                  ; preds = %SDL_DestroyCursorAnimation.exit.loopexit, %bb.c
  %i.p = phi ptr [ %.pre41, %SDL_DestroyCursorAnimation.exit.loopexit ], [ %i.c, %bb.c ]
  tail call void @SDL_free_REAL(ptr noundef %i.p) #13, !inline_history !16
  %i.q = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.q) #13, !inline_history !16
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #13, !inline_history !16
  br label %bb.f

.preheader:                                       ; preds = %bb.b, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %bb.b ] ; 5 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @SDL_CreateColorCursor_REAL(ptr noundef %i.s, i32 noundef %2, i32 noundef %3)
  %i.u = load ptr, ptr %i.d, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv
  store ptr %i.t, ptr %i.v, align 8
  %i.w = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8
  %.not33 = icmp eq ptr %i.y, null
  br i1 %.not33, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i35, label %SDL_DestroyCursorAnimation.exit38

.lr.ph.i35:                                       ; preds = %bb.d, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37, %.lr.ph.i35 ], [ 0, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.i36
  %i.ae = load ptr, ptr %i.ad, align 8
  tail call void @SDL_DestroyCursor_REAL(ptr noundef %i.ae), !inline_history !16
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 2 uses
  %i.af = load i32, ptr %i.z, align 8
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next.i37, %i.ag
  br i1 %i.ah, label %.lr.ph.i35, label %SDL_DestroyCursorAnimation.exit38.loopexit, !llvm.loop !3

SDL_DestroyCursorAnimation.exit38.loopexit:       ; preds = %.lr.ph.i35
  %.pre = load ptr, ptr %i.d, align 8
  br label %SDL_DestroyCursorAnimation.exit38

SDL_DestroyCursorAnimation.exit38:                ; preds = %SDL_DestroyCursorAnimation.exit38.loopexit, %bb.d
  %i.ai = phi ptr [ %.pre, %SDL_DestroyCursorAnimation.exit38.loopexit ], [ %i.w, %bb.d ]
  tail call void @SDL_free_REAL(ptr noundef %i.ai) #13, !inline_history !16
  %i.aj = load ptr, ptr %i.f, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.aj) #13, !inline_history !16
  tail call void @SDL_free_REAL(ptr noundef nonnull %i.a) #13, !inline_history !16
  br label %bb.f

bb.e:                                             ; preds = %.preheader
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.f, align 8
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  store i32 %i.al, ptr %i.an, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %.critedge, label %.preheader, !llvm.loop !46

.critedge:                                        ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.ao, align 8
  br label %bb.f

bb.f:                                             ; preds = %SDL_DestroyCursorAnimation.exit38, %bb.a, %.critedge, %SDL_DestroyCursorAnimation.exit
  %.1 = phi ptr [ %i.a, %.critedge ], [ null, %SDL_DestroyCursorAnimation.exit38 ], [ null, %SDL_DestroyCursorAnimation.exit ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @SDL_calloc_REAL(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc void @SDL_DestroyCursorAnimation(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.f) #13
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @SDL_free_REAL(ptr noundef %i.h) #13
  tail call void @SDL_free_REAL(ptr noundef nonnull %0) #13
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8
  tail call void @SDL_DestroyCursor_REAL(ptr noundef %i.k)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.l = load i32, ptr %i.a, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = icmp slt i64 %indvars.iv.next, %i.m
  br i1 %i.n, label %bb.b, label %._crit_edge, !llvm.loop !3
}

; Function Attrs: nounwind uwtable
define hidden ptr @SDL_CreateSystemCursor_REAL(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 16), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.32) #13 ; 0 uses
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr %i.a(i32 noundef %0) #13   ; 4 uses
  %.not11 = icmp eq ptr %i.c, null
  br i1 %.not11, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 272), align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.e, align 8
  store ptr %i.c, ptr getelementptr inbounds nuw (i8, ptr @SDL_mouse, i64 272), align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.c, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden ptr @SDL_GetCursor_REAL() local_unnamed_addr #6 {
bb.a:
end_hunk_0
