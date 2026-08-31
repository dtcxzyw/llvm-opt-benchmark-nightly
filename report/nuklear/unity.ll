Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuklear/original/unity?download=true
inline.NumInlined: 1904
inline.NumDeleted: 211
loop-unroll.NumCompletelyUnrolled: 86
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 145
begin_hunk_0_@nk_window_get_content_region_size:bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not5 = icmp eq ptr %i.b, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.f = load <2 x float>, ptr %i.e, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0 = phi <2 x float> [ %i.f, %bb.c ], [ zeroinitializer, %bb.b ], [ zeroinitializer, %bb.a ]
  ret <2 x float> %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @nk_window_get_canvas(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %spec.select = select i1 %.not6, ptr null, ptr %i.c
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %spec.select, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @nk_window_get_panel(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #27 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not6 = icmp eq ptr %i.b, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !756
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @nk_window_get_scroll(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #26 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 3 uses
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.d = load i32, ptr %i.c, align 4, !tbaa !904
  store i32 %i.d, ptr %1, align 4, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.f = load i32, ptr %i.e, align 4, !tbaa !905
  store i32 %i.f, ptr %2, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define zeroext i1 @nk_window_has_focus(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #10 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18552
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !811
  %i.e = icmp eq ptr %i.b, %i.d
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ %i.e, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @nk_window_is_hovered(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #33 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_input_is_mouse_hovering_rect.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18560
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !755  ; 5 uses
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %nk_input_is_mouse_hovering_rect.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.d = load i32, ptr %i.c, align 8, !tbaa !312  ; 2 uses
  %i.e = and i32 %i.d, 8192
  %.not11 = icmp eq i32 %i.e, 0
  br i1 %.not11, label %bb.d, label %nk_input_is_mouse_hovering_rect.exit

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 76
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.f, align 4 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %.sroa.4.0.copyload = load <2 x float>, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.g = and i32 %i.d, 32768
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !756
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load float, ptr %i.j, align 8, !tbaa !850
  %.sroa.4.12.vec.insert = insertelement <2 x float> %.sroa.4.0.copyload, float %i.k, i64 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.4.0 = phi <2 x float> [ %.sroa.4.12.vec.insert, %bb.e ], [ %.sroa.4.0.copyload, %bb.d ] ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.m = load float, ptr %i.l, align 4, !tbaa !713 ; 2 uses
  %i.n = fcmp ole float %.sroa.0.0.vec.extract.i, %i.m
  %foldExtExtBinop = fadd <2 x float> %.sroa.0.0.copyload, %.sroa.4.0
  %i.o = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.p = fcmp olt float %i.m, %i.o
  %or.cond.i = select i1 %i.n, i1 %i.p, i1 false
  br i1 %or.cond.i, label %bb.g, label %nk_input_is_mouse_hovering_rect.exit

bb.g:                                             ; preds = %bb.f
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %.sroa.0.0.copyload, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.r = load float, ptr %i.q, align 8, !tbaa !714 ; 2 uses
  %i.s = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.r
  br i1 %i.s, label %nk_input_is_mouse_hovering_rect.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %foldExtExtBinop17 = fadd <2 x float> %.sroa.0.0.copyload, %.sroa.4.0
  %i.t = extractelement <2 x float> %foldExtExtBinop17, i64 1
  %i.u = fcmp olt float %i.r, %i.t
  br label %nk_input_is_mouse_hovering_rect.exit

nk_input_is_mouse_hovering_rect.exit:             ; preds = %bb.h, %bb.g, %bb.f, %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.g ], [ %i.u, %bb.h ], [ false, %bb.f ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @nk_window_is_any_hovered(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #34 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %.01749 = load ptr, ptr %i.a, align 8, !tbaa !294 ; 2 uses
  %.not2150 = icmp eq ptr %.01749, null
  br i1 %.not2150, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %nk_input_is_mouse_hovering_rect.exit32.thread
  %.01751 = phi ptr [ %.01749, %.lr.ph ], [ %.017, %nk_input_is_mouse_hovering_rect.exit32.thread ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01751, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !312  ; 2 uses
  %i.h = and i32 %i.g, 8192
  %.not22 = icmp eq i32 %i.h, 0
  br i1 %.not22, label %bb.d, label %nk_input_is_mouse_hovering_rect.exit32.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01751, i64 420
  %i.j = load i8, ptr %i.i, align 4, !tbaa !833, !range !79, !noundef !80
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %nk_input_is_mouse_hovering_rect.exit.thread.a

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.01751, i64 360
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !814  ; 3 uses
  %.not23 = icmp eq ptr %i.m, null
  br i1 %.not23, label %nk_input_is_mouse_hovering_rect.exit.thread.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 2 uses
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.o, i64 0
  %i.r = load float, ptr %i.b, align 4, !tbaa !713 ; 2 uses
  %i.s = fcmp ole float %.sroa.0.0.vec.extract.i, %i.r
  %foldExtExtBinop = fadd <2 x float> %i.o, %i.q
  %i.t = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.u = fcmp olt float %i.r, %i.t
  %or.cond.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.g, label %nk_input_is_mouse_hovering_rect.exit.thread.a

bb.g:                                             ; preds = %bb.f
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.o, i64 1
  %i.v = load float, ptr %i.c, align 8, !tbaa !714 ; 2 uses
  %i.w = fcmp ole float %.sroa.0.4.vec.extract.i, %i.v
  %foldExtExtBinop60 = fadd <2 x float> %i.o, %i.q
  %i.x = extractelement <2 x float> %foldExtExtBinop60, i64 1
  %i.y = fcmp olt float %i.v, %i.x
  %or.cond = select i1 %i.w, i1 %i.y, i1 false
  br i1 %or.cond, label %.loopexit, label %nk_input_is_mouse_hovering_rect.exit.thread.a

nk_input_is_mouse_hovering_rect.exit.thread.a:    ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %1 = and i32 %i.g, 32768
  %.not24 = icmp eq i32 %1, 0
  %2 = getelementptr inbounds nuw i8, ptr %.01751, i64 76
  %3 = load <2 x float>, ptr %2, align 4          ; 5 uses
  %4 = getelementptr inbounds nuw i8, ptr %.01751, i64 84
  %5 = load <2 x float>, ptr %4, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i34.a = extractelement <2 x float> %3, i64 0
  %i.z = load float, ptr %i.b, align 4, !tbaa !713 ; 2 uses
  %i.aa = fcmp ole float %.sroa.0.0.vec.extract.i34.a, %i.z
  %foldExtExtBinop62 = fadd <2 x float> %3, %5
  %6 = extractelement <2 x float> %foldExtExtBinop62, i64 0
  %i.ab = fcmp olt float %i.z, %6
  %or.cond.i36.a = select i1 %i.aa, i1 %i.ab, i1 false ; 2 uses
  br i1 %.not24, label %bb.i, label %7

7:                                                ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.a
  br i1 %or.cond.i36.a, label %bb.h, label %nk_input_is_mouse_hovering_rect.exit32.thread

bb.h:                                             ; preds = %7
  %i.ac = load float, ptr %i.d, align 8, !tbaa !906
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !766
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 8, !tbaa !166
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.000000e+00, float %i.af)
  %.sroa.0.4.vec.extract.i30 = extractelement <2 x float> %3, i64 1 ; 2 uses
  %i.ah = load float, ptr %i.c, align 8, !tbaa !714 ; 2 uses
  %i.ai = fcmp ole float %.sroa.0.4.vec.extract.i30, %i.ah
  %i.aj = fadd float %.sroa.0.4.vec.extract.i30, %i.ag
  %i.ak = fcmp olt float %i.ah, %i.aj
  %or.cond46 = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond46, label %.loopexit, label %nk_input_is_mouse_hovering_rect.exit32.thread

bb.i:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.a
  br i1 %or.cond.i36.a, label %bb.j, label %nk_input_is_mouse_hovering_rect.exit32.thread

bb.j:                                             ; preds = %bb.i
  %.sroa.0.4.vec.extract.i38 = extractelement <2 x float> %3, i64 1
  %i.al = load float, ptr %i.c, align 8, !tbaa !714 ; 2 uses
  %i.am = fcmp ole float %.sroa.0.4.vec.extract.i38, %i.al
  %foldExtExtBinop64 = fadd <2 x float> %3, %5
  %i.an = extractelement <2 x float> %foldExtExtBinop64, i64 1
  %i.ao = fcmp olt float %i.al, %i.an
  %or.cond48 = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond48, label %.loopexit, label %nk_input_is_mouse_hovering_rect.exit32.thread

nk_input_is_mouse_hovering_rect.exit32.thread:    ; preds = %bb.i, %bb.j, %7, %bb.h, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.01751, i64 528
  %.017 = load ptr, ptr %i.ap, align 8, !tbaa !294 ; 2 uses
  %.not21 = icmp eq ptr %.017, null
  br i1 %.not21, label %.loopexit, label %bb.c, !llvm.loop !907

.loopexit:                                        ; preds = %nk_input_is_mouse_hovering_rect.exit32.thread, %bb.g, %bb.h, %bb.j, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.h ], [ false, %nk_input_is_mouse_hovering_rect.exit32.thread ], [ true, %bb.g ], [ true, %bb.j ]
  ret i1 %.3
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @nk_item_is_any_active(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #34 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %nk_window_is_any_hovered.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %.01749.i = load ptr, ptr %i.a, align 8, !tbaa !294 ; 2 uses
  %.not2150.i = icmp eq ptr %.01749.i, null
  br i1 %.not2150.i, label %nk_window_is_any_hovered.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 9472
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392
  br label %bb.c

bb.c:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit32.thread.i, %.lr.ph.i
  %.01751.i = phi ptr [ %.01749.i, %.lr.ph.i ], [ %.017.i, %nk_input_is_mouse_hovering_rect.exit32.thread.i ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01751.i, i64 72
  %i.g = load i32, ptr %i.f, align 8, !tbaa !312  ; 2 uses
  %i.h = and i32 %i.g, 8192
  %.not22.i = icmp eq i32 %i.h, 0
  br i1 %.not22.i, label %bb.d, label %nk_input_is_mouse_hovering_rect.exit32.thread.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.01751.i, i64 420
  %i.j = load i8, ptr %i.i, align 4, !tbaa !833, !range !79, !noundef !80
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.e, label %.nk_input_is_mouse_hovering_rect.exit.thread.i_crit_edge

.nk_input_is_mouse_hovering_rect.exit.thread.i_crit_edge: ; preds = %bb.d
  %.pre = load float, ptr %i.b, align 4, !tbaa !713
  br label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %.01751.i, i64 360
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !814  ; 3 uses
  %.not23.i = icmp eq ptr %i.m, null
  %.pre3 = load float, ptr %i.b, align 4, !tbaa !713 ; 5 uses
  br i1 %.not23.i, label %nk_input_is_mouse_hovering_rect.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 76
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 84
  %i.q = load <2 x float>, ptr %i.p, align 4      ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.o, i64 0
  %i.r = fcmp ole float %.sroa.0.0.vec.extract.i.i, %.pre3
  %foldExtExtBinop = fadd <2 x float> %i.o, %i.q
  %i.s = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.t = fcmp olt float %.pre3, %i.s
  %or.cond.i.i = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond.i.i, label %bb.g, label %nk_input_is_mouse_hovering_rect.exit.thread.i

bb.g:                                             ; preds = %bb.f
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.o, i64 1
  %i.u = load float, ptr %i.c, align 8, !tbaa !714 ; 2 uses
  %i.v = fcmp ole float %.sroa.0.4.vec.extract.i.i, %i.u
  %foldExtExtBinop6 = fadd <2 x float> %i.o, %i.q
  %i.w = extractelement <2 x float> %foldExtExtBinop6, i64 1
  %i.x = fcmp olt float %i.u, %i.w
  %or.cond.i = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond.i, label %nk_window_is_any_hovered.exit, label %nk_input_is_mouse_hovering_rect.exit.thread.i

nk_input_is_mouse_hovering_rect.exit.thread.i:    ; preds = %.nk_input_is_mouse_hovering_rect.exit.thread.i_crit_edge, %bb.g, %bb.f, %bb.e
  %1 = phi float [ %.pre, %.nk_input_is_mouse_hovering_rect.exit.thread.i_crit_edge ], [ %.pre3, %bb.g ], [ %.pre3, %bb.f ], [ %.pre3, %bb.e ] ; 2 uses
  %i.y = and i32 %i.g, 32768
  %.not24.i = icmp eq i32 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %.01751.i, i64 76
  %i.aa = load <2 x float>, ptr %i.z, align 4     ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.01751.i, i64 84
  %2 = load <2 x float>, ptr %i.ab, align 4       ; 2 uses
  %.sroa.0.0.vec.extract.i34.i = extractelement <2 x float> %i.aa, i64 0
  %3 = fcmp ole float %.sroa.0.0.vec.extract.i34.i, %1
  %foldExtExtBinop8 = fadd <2 x float> %i.aa, %2
  %4 = extractelement <2 x float> %foldExtExtBinop8, i64 0
  %5 = fcmp olt float %1, %4
  %or.cond.i36.i = select i1 %3, i1 %5, i1 false  ; 2 uses
  br i1 %.not24.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i
  br i1 %or.cond.i36.i, label %bb.i, label %nk_input_is_mouse_hovering_rect.exit32.thread.i

bb.i:                                             ; preds = %bb.h
  %i.ac = load float, ptr %i.d, align 8, !tbaa !906
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !766
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load float, ptr %i.ae, align 8, !tbaa !166
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.ac, float 2.000000e+00, float %i.af)
  %.sroa.0.4.vec.extract.i30.i = extractelement <2 x float> %i.aa, i64 1 ; 2 uses
  %i.ah = load float, ptr %i.c, align 8, !tbaa !714 ; 2 uses
  %i.ai = fcmp ole float %.sroa.0.4.vec.extract.i30.i, %i.ah
  %i.aj = fadd float %.sroa.0.4.vec.extract.i30.i, %i.ag
  %i.ak = fcmp olt float %i.ah, %i.aj
  %or.cond46.i = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond46.i, label %nk_window_is_any_hovered.exit, label %nk_input_is_mouse_hovering_rect.exit32.thread.i

bb.j:                                             ; preds = %nk_input_is_mouse_hovering_rect.exit.thread.i
  br i1 %or.cond.i36.i, label %bb.k, label %nk_input_is_mouse_hovering_rect.exit32.thread.i

bb.k:                                             ; preds = %bb.j
  %.sroa.0.4.vec.extract.i38.i = extractelement <2 x float> %i.aa, i64 1
  %i.al = load float, ptr %i.c, align 8, !tbaa !714 ; 2 uses
  %i.am = fcmp ole float %.sroa.0.4.vec.extract.i38.i, %i.al
  %foldExtExtBinop10 = fadd <2 x float> %i.aa, %2
  %i.an = extractelement <2 x float> %foldExtExtBinop10, i64 1
  %i.ao = fcmp olt float %i.al, %i.an
  %or.cond48.i = select i1 %i.am, i1 %i.ao, i1 false
  br i1 %or.cond48.i, label %nk_window_is_any_hovered.exit, label %nk_input_is_mouse_hovering_rect.exit32.thread.i

nk_input_is_mouse_hovering_rect.exit32.thread.i:  ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %.01751.i, i64 528
  %.017.i = load ptr, ptr %i.ap, align 8, !tbaa !294 ; 2 uses
  %.not21.i = icmp eq ptr %.017.i, null
  br i1 %.not21.i, label %nk_window_is_any_hovered.exit, label %bb.c, !llvm.loop !907

nk_window_is_any_hovered.exit:                    ; preds = %bb.g, %bb.i, %bb.k, %nk_input_is_mouse_hovering_rect.exit32.thread.i, %bb.a, %bb.b
  %.3.i = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.k ], [ true, %bb.g ], [ false, %nk_input_is_mouse_hovering_rect.exit32.thread.i ], [ true, %bb.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 9880
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !809
  %i.as = and i32 %i.ar, 2
  %i.at = icmp ne i32 %i.as, 0
  %i.au = select i1 %.3.i, i1 true, i1 %i.at
  ret i1 %i.au
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @nk_window_is_collapsed(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_find_window.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i15 = icmp eq i8 %i.a, 0
  br i1 %.not4.i15, label %nk_strlen.exit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader18, %.lr.ph.i.preheader, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader18 ]
  %i.d = tail call i32 @nk_murmur_hash(ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %.01122.i = load ptr, ptr %i.e, align 8, !tbaa !294 ; 2 uses
  %.not23.i = icmp eq ptr %.01122.i, null
  br i1 %.not23.i, label %nk_find_window.exit.thread, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %nk_strlen.exit, %nk_stricmpn.exit.i
  %.01124.i = phi ptr [ %.011.i, %nk_stricmpn.exit.i ], [ %.01122.i, %nk_strlen.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01124.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !826
  %i.h = icmp eq i32 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %nk_stricmpn.exit.i

bb.c:                                             ; preds = %.lr.ph25.i
  %i.i = getelementptr inbounds nuw i8, ptr %.01124.i, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !11
  %.not4.i19.i = icmp eq i8 %i.j, 0
  br i1 %.not4.i19.i, label %nk_strlen.exit.preheader.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %.01124.i, i64 9
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.k = trunc i64 %strlen.i to i32
  %i.l = add i32 %i.k, 1
  br label %nk_strlen.exit.preheader.i

nk_strlen.exit.preheader.i:                       ; preds = %.lr.ph.i.preheader.i, %bb.c
  %.07.i.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %.not.i.i26 = icmp eq i32 %.07.i.lcssa.i, 0
  br i1 %.not.i.i26, label %nk_find_window.exit, label %.lr.ph

.lr.ph:                                           ; preds = %nk_strlen.exit.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01124.i, i64 9
  br label %bb.d

nk_strlen.exit.i:                                 ; preds = %bb.h
  %i.n = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %nk_find_window.exit, label %bb.d, !llvm.loop !26

bb.d:                                             ; preds = %.lr.ph, %nk_strlen.exit.i
  %.in = phi i32 [ %.07.i.lcssa.i, %.lr.ph ], [ %i.s, %nk_strlen.exit.i ]
  %.in29 = phi ptr [ %1, %.lr.ph ], [ %i.q, %nk_strlen.exit.i ] ; 2 uses
  %.in30 = phi ptr [ %i.i, %.lr.ph ], [ %i.o, %nk_strlen.exit.i ]
  %i.o = phi ptr [ %i.m, %.lr.ph ], [ %i.n, %nk_strlen.exit.i ] ; 2 uses
  %i.p = load i8, ptr %.in30, align 1, !tbaa !11  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.in29, i64 1
  %i.r = load i8, ptr %.in29, align 1, !tbaa !11  ; 2 uses
  %i.s = add nsw i32 %.in, -1                     ; 2 uses
  %i.t = sext i8 %i.p to i32
  %i.u = sext i8 %i.r to i32
  %i.v = sub nsw i32 %i.t, %i.u                   ; 3 uses
  %.not26.i.i = icmp eq i32 %i.v, 0
  br i1 %.not26.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = add i8 %i.p, -65
  %or.cond.i.i = icmp ult i8 %i.w, 26
  br i1 %or.cond.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = add nsw i32 %i.v, 32                     ; 2 uses
  %.not27.i.i = icmp eq i32 %i.x, 0
  br i1 %.not27.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i = phi i32 [ %i.x, %bb.f ], [ %i.v, %bb.e ]
  %i.y = add i8 %i.r, -65
  %or.cond3.i.i = icmp ult i8 %i.y, 26
  %.not28.i.i = icmp eq i32 %.0.i.i, 32
  %or.cond.i = and i1 %or.cond3.i.i, %.not28.i.i
  br i1 %or.cond.i, label %bb.h, label %nk_stricmpn.exit.i

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.not29.i.i = icmp eq i8 %i.p, 0
  br i1 %.not29.i.i, label %.nk_find_window.exit_crit_edge, label %nk_strlen.exit.i, !llvm.loop !26

nk_stricmpn.exit.i:                               ; preds = %bb.g, %.lr.ph25.i
  %i.z = getelementptr inbounds nuw i8, ptr %.01124.i, i64 528
  %.011.i = load ptr, ptr %i.z, align 8, !tbaa !294 ; 2 uses
  %.not.i = icmp eq ptr %.011.i, null
  br i1 %.not.i, label %nk_find_window.exit.thread, label %.lr.ph25.i, !llvm.loop !827

.nk_find_window.exit_crit_edge:                   ; preds = %bb.h
  br label %nk_find_window.exit, !llvm.loop !26

nk_find_window.exit:                              ; preds = %nk_strlen.exit.preheader.i, %nk_strlen.exit.i, %.nk_find_window.exit_crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %.01124.i, i64 72
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !312
  %i.ac = and i32 %i.ab, 32768
  %i.ad = icmp ne i32 %i.ac, 0
  br label %nk_find_window.exit.thread

nk_find_window.exit.thread:                       ; preds = %nk_stricmpn.exit.i, %nk_strlen.exit, %bb.a, %nk_find_window.exit
  %.0 = phi i1 [ %i.ad, %nk_find_window.exit ], [ false, %bb.a ], [ false, %nk_strlen.exit ], [ false, %nk_stricmpn.exit.i ]
  ret i1 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define zeroext i1 @nk_window_is_closed(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #25 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %nk_find_window.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not5.i = icmp eq ptr %1, null
  br i1 %.not5.i, label %nk_strlen.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.a = load i8, ptr %1, align 1, !tbaa !11
  %.not4.i15 = icmp eq i8 %i.a, 0
  br i1 %.not4.i15, label %nk_strlen.exit, label %.lr.ph.i.preheader18

.lr.ph.i.preheader18:                             ; preds = %.lr.ph.i.preheader
  %scevgep = getelementptr i8, ptr %1, i64 1
  %strlen = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep)
  %i.b = trunc i64 %strlen to i32
  %i.c = add i32 %i.b, 1
  br label %nk_strlen.exit

nk_strlen.exit:                                   ; preds = %.lr.ph.i.preheader18, %.lr.ph.i.preheader, %bb.b
  %.0.lcssa.i = phi i32 [ 0, %bb.b ], [ 0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.preheader18 ]
  %i.d = tail call i32 @nk_murmur_hash(ptr noundef %1, i32 noundef %.0.lcssa.i, i32 noundef 64)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 18536
  %.01122.i = load ptr, ptr %i.e, align 8, !tbaa !294 ; 2 uses
  %.not23.i = icmp eq ptr %.01122.i, null
  br i1 %.not23.i, label %nk_find_window.exit.thread, label %.lr.ph25.i

.lr.ph25.i:                                       ; preds = %nk_strlen.exit, %nk_stricmpn.exit.i
  %.01124.i = phi ptr [ %.011.i, %nk_stricmpn.exit.i ], [ %.01122.i, %nk_strlen.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.01124.i, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !826
  %i.h = icmp eq i32 %i.g, %i.d
  br i1 %i.h, label %bb.c, label %nk_stricmpn.exit.i

bb.c:                                             ; preds = %.lr.ph25.i
  %i.i = getelementptr inbounds nuw i8, ptr %.01124.i, i64 8 ; 2 uses
  %i.j = load i8, ptr %i.i, align 4, !tbaa !11
  %.not4.i19.i = icmp eq i8 %i.j, 0
  br i1 %.not4.i19.i, label %nk_strlen.exit.preheader.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %scevgep.i = getelementptr i8, ptr %.01124.i, i64 9
  %strlen.i = tail call i64 @strlen(ptr nonnull dereferenceable(1) %scevgep.i)
  %i.k = trunc i64 %strlen.i to i32
  %i.l = add i32 %i.k, 1
  br label %nk_strlen.exit.preheader.i

nk_strlen.exit.preheader.i:                       ; preds = %.lr.ph.i.preheader.i, %bb.c
  %.07.i.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.l, %.lr.ph.i.preheader.i ] ; 2 uses
  %.not.i.i26 = icmp eq i32 %.07.i.lcssa.i, 0
  br i1 %.not.i.i26, label %nk_find_window.exit, label %.lr.ph

.lr.ph:                                           ; preds = %nk_strlen.exit.preheader.i
  %i.m = getelementptr inbounds nuw i8, ptr %.01124.i, i64 9
end_hunk_0
