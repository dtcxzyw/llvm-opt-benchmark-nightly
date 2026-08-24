Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_waylandkeyboard?download=true
inline.NumInlined: 8
inline.NumDeleted: 5
begin_hunk_0_@Wayland_StartTextInput:bb.a
  store i32 7, ptr %i.i, align 4
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  store i32 6, ptr %i.i, align 4
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 4
  %i.j = load i32, ptr %i.g, align 8
  %i.k = or i32 %i.j, 128
  store i32 %i.k, ptr %i.g, align 8
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  store i32 8, ptr %i.i, align 4
  %i.l = load i32, ptr %i.g, align 8
  %i.m = or i32 %i.l, 192
  store i32 %i.m, ptr %i.g, align 8
  br label %bb.l

bb.h:                                             ; preds = %bb.b
  store i32 8, ptr %i.i, align 4
  %i.n = load i32, ptr %i.g, align 8
  %i.o = or i32 %i.n, 128
  store i32 %i.o, ptr %i.g, align 8
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  store i32 3, ptr %i.i, align 4
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  store i32 9, ptr %i.i, align 4
  %i.p = load i32, ptr %i.g, align 8
  %i.q = or i32 %i.p, 192
  store i32 %i.q, ptr %i.g, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  store i32 9, ptr %i.i, align 4
  %i.r = load i32, ptr %i.g, align 8
  %i.s = or i32 %i.r, 128
  store i32 %i.s, ptr %i.g, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %i.t = tail call i32 @SDL_GetTextInputCapitalization(i32 noundef %2) #5
  %switch.tableidx = add i32 %i.t, -1             ; 2 uses
  %i.u = icmp ult i32 %switch.tableidx, 3
  br i1 %i.u, label %switch.lookup, label %bb.m

switch.lookup:                                    ; preds = %bb.l
  %i.v = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.Wayland_StartTextInput, i64 %i.v
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  %i.w = load i32, ptr %i.g, align 8
  %i.x = or i32 %i.w, %switch.ext
  store i32 %i.x, ptr %i.g, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %switch.lookup
  %i.y = tail call zeroext i1 @SDL_GetTextInputAutocorrect(i32 noundef %2) #5
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.z = load i32, ptr %i.g, align 8
  %i.aa = or i32 %i.z, 3
  store i32 %i.aa, ptr %i.g, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ab = tail call zeroext i1 @SDL_GetTextInputMultiline(i32 noundef %2) #5
  br i1 %i.ab, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ac = load i32, ptr %i.g, align 8
  %i.ad = or i32 %i.ac, 512
  store i32 %i.ad, ptr %i.g, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  store i8 1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %.pn36 = load ptr, ptr %i.ag, align 8           ; 2 uses
  %.not3538 = icmp eq ptr %.pn36, %i.af
  br i1 %.not3538, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.q, %bb.s
  %.pn39 = phi ptr [ %.pn, %bb.s ], [ %.pn36, %bb.q ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn39, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, %i.f
  br i1 %i.aj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph
  %.040 = getelementptr inbounds i8, ptr %.pn39, i64 -40
  tail call void @Wayland_SeatUpdateTextInput(ptr noundef nonnull %.040)
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn39, i64 8
  %.pn = load ptr, ptr %i.ak, align 8             ; 2 uses
  %.not35 = icmp eq ptr %.pn, %i.af
  br i1 %.not35, label %.loopexit, label %.lr.ph, !llvm.loop !10

.loopexit:                                        ; preds = %bb.s, %bb.q, %bb.a
  ret i1 true
}

declare i32 @SDL_GetTextInputType(i32 noundef) local_unnamed_addr #1

declare i32 @SDL_GetTextInputCapitalization(i32 noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_GetTextInputAutocorrect(i32 noundef) local_unnamed_addr #1

declare zeroext i1 @SDL_GetTextInputMultiline(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @Wayland_StopTextInput(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  store i8 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %.pn13 = load ptr, ptr %i.i, align 8            ; 2 uses
  %.not1215 = icmp eq ptr %.pn13, %i.h
  br i1 %.not1215, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.d
  %.pn16 = phi ptr [ %.pn, %bb.d ], [ %.pn13, %bb.b ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.pn16, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %i.k, %i.f
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %.017 = getelementptr inbounds i8, ptr %.pn16, i64 -40
  tail call void @Wayland_SeatUpdateTextInput(ptr noundef nonnull %.017)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn16, i64 8
  %.pn = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not12 = icmp eq ptr %.pn, %i.h
  br i1 %.not12, label %.loopexit, label %.lr.ph, !llvm.loop !12

bb.e:                                             ; preds = %bb.a
  tail call void @SDL_IME_Reset() #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %bb.b, %bb.e
  ret i1 true
}

declare void @SDL_IME_Reset() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @Wayland_UpdateTextInputArea(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %.pn42 = load ptr, ptr %i.h, align 8            ; 2 uses
  %.not3443 = icmp eq ptr %.pn42, %i.g
  br i1 %.not3443, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 280 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 288 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 324
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 332
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.pn44 = phi ptr [ %.pn42, %.lr.ph ], [ %.pn, %bb.i ] ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pn44, i64 520 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  %.not35 = icmp eq ptr %i.q, null
  br i1 %.not35, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.pn44, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, %i.f
  br i1 %i.t, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.u = load i32, ptr %i.i, align 4
  %i.v = sitofp i32 %i.u to double
  %i.w = load double, ptr %i.j, align 8
  %i.x = fdiv double %i.v, %i.w
  %i.y = tail call double @SDL_floor_REAL(double noundef %i.x) #5
  %2 = fptosi double %i.y to i32                  ; 3 uses
  %i.z = load i32, ptr %i.k, align 8
  %i.aa = sitofp i32 %i.z to double
  %i.ab = load double, ptr %i.l, align 8
  %i.ac = fdiv double %i.aa, %i.ab
  %i.ad = tail call double @SDL_floor_REAL(double noundef %i.ac) #5
  %3 = fptosi double %i.ad to i32                 ; 3 uses
  %i.ae = load i32, ptr %i.m, align 4
  %i.af = sitofp i32 %i.ae to double
  %i.ag = load double, ptr %i.j, align 8
  %i.ah = fdiv double %i.af, %i.ag
  %i.ai = tail call double @SDL_ceil_REAL(double noundef %i.ah) #5
  %4 = fptosi double %i.ai to i32                 ; 3 uses
  %i.aj = load i32, ptr %i.n, align 8
  %i.ak = sitofp i32 %i.aj to double
  %i.al = load double, ptr %i.l, align 8
  %i.am = fdiv double %i.ak, %i.al
  %i.an = tail call double @SDL_ceil_REAL(double noundef %i.am) #5
  %5 = fptosi double %i.an to i32                 ; 3 uses
  %i.ao = load i32, ptr %i.o, align 4
  %i.ap = sitofp i32 %i.ao to double
  %i.aq = load double, ptr %i.j, align 8
  %i.ar = fdiv double %i.ap, %i.aq
  %i.as = tail call double @SDL_floor_REAL(double noundef %i.ar) #5
  %i.at = fptosi double %i.as to i32              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.pn44, i64 528 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8
  %i.aw = icmp eq i32 %i.av, %2
  br i1 %i.aw, label %bb.f, label %SDL_RectsEqual.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn44, i64 532
  %i.ay = load i32, ptr %i.ax, align 4
  %i.az = icmp eq i32 %i.ay, %3
  br i1 %i.az, label %bb.g, label %SDL_RectsEqual.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %.pn44, i64 536
  %i.bb = load i32, ptr %i.ba, align 8
  %i.bc = icmp eq i32 %i.bb, %4
  br i1 %i.bc, label %SDL_RectsEqual.exit, label %SDL_RectsEqual.exit.thread

SDL_RectsEqual.exit:                              ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn44, i64 540
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, %5
  br i1 %i.bf, label %bb.h, label %SDL_RectsEqual.exit.thread

bb.h:                                             ; preds = %SDL_RectsEqual.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %.pn44, i64 544
  %i.bh = load i32, ptr %i.bg, align 8
  %.not36 = icmp eq i32 %i.bh, %i.at
  br i1 %.not36, label %bb.i, label %SDL_RectsEqual.exit.thread

SDL_RectsEqual.exit.thread:                       ; preds = %bb.e, %bb.f, %bb.g, %bb.h, %SDL_RectsEqual.exit
  store i32 %2, ptr %i.au, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn44, i64 532
  store i32 %3, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn44, i64 536
  store i32 %4, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.pn44, i64 540
  store i32 %5, ptr %.sroa.12.0..sroa_idx, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %.pn44, i64 544
  store i32 %i.at, ptr %i.bi, align 8
  %i.bj = load ptr, ptr %i.p, align 8             ; 2 uses
  %. = tail call i32 @llvm.smin.i32(i32 %4, i32 %i.at)
  %i.bk = add nsw i32 %., %2
  %i.bl = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.bm = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.bn = tail call i32 %i.bm(ptr noundef %i.bj) #5, !inline_history !7
  %i.bo = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.bl(ptr noundef %i.bj, i32 noundef 6, ptr noundef null, i32 noundef %i.bn, i32 noundef 0, i32 noundef %i.bk, i32 noundef %3, i32 noundef 1, i32 noundef %5) #5, !inline_history !7 ; 0 uses
  %i.bp = load ptr, ptr %i.p, align 8             ; 2 uses
  %i.bq = load ptr, ptr @WAYLAND_wl_proxy_marshal_flags, align 8
  %i.br = load ptr, ptr @WAYLAND_wl_proxy_get_version, align 8
  %i.bs = tail call i32 %i.br(ptr noundef %i.bp) #5, !inline_history !8
  %i.bt = tail call ptr (ptr, i32, ptr, i32, i32, ...) %i.bq(ptr noundef %i.bp, i32 noundef 7, ptr noundef null, i32 noundef %i.bs, i32 noundef 0) #5, !inline_history !8 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %SDL_RectsEqual.exit.thread, %bb.c, %bb.d
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn44, i64 8
  %.pn = load ptr, ptr %i.bu, align 8             ; 2 uses
  %.not34 = icmp eq ptr %.pn, %i.g
  br i1 %.not34, label %.loopexit, label %bb.c, !llvm.loop !13

bb.j:                                             ; preds = %bb.a
  tail call void @SDL_IME_UpdateTextInputArea(ptr noundef %1) #5
  br label %.loopexit

.loopexit:                                        ; preds = %bb.i, %bb.b, %bb.j
  ret i1 true
}

declare void @SDL_IME_UpdateTextInputArea(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @Wayland_HasScreenKeyboardSupport(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1664
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 272
  %.pn11 = load ptr, ptr %i.f, align 8            ; 2 uses
  %.not.not12 = icmp eq ptr %.pn11, %i.e
  br i1 %.not.not12, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.pn13, i64 8
  %.pn = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not.not = icmp eq ptr %.pn, %i.e
  br i1 %.not.not, label %._crit_edge, label %.lr.ph, !llvm.loop !14

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.pn13 = phi ptr [ %.pn, %bb.b ], [ %.pn11, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn13, i64 24
  %i.i = load ptr, ptr %i.h, align 8
  %.not10 = icmp eq ptr %i.i, null                ; 3 uses
  br i1 %.not10, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %bb.a
  %.not.not.lcssa = phi i1 [ true, %bb.a ], [ %.not10, %.lr.ph ], [ %.not10, %bb.b ]
  %i.j = icmp ne ptr %i.d, null
  %i.k = select i1 %.not.not.lcssa, i1 %i.j, i1 false
  ret i1 %i.k
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{i8 0, i8 2}
!4 = !{}
!5 = distinct !{null}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{null}
!9 = distinct !{null}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
end_hunk_0
