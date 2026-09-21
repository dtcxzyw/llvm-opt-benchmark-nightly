Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/screen?download=true
inline.NumInlined: 1345
inline.NumDeleted: 693
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN7nanogui6Screen20move_window_to_frontEPNS_6WindowE:bb.a
  %.not.i5.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i5.i.i, label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bb to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bj) #39
  br label %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit

_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit: ; preds = %bb.g, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i, %bb.k
  %.0.i = phi ptr [ %i.ai, %bb.g ], [ %i.az, %_ZNSt3__114__split_bufferIPN7nanogui6WidgetERNS_9allocatorIS3_EEE5clearB8ne180100Ev.exit.i.i.i ], [ %i.az, %bb.k ] ; 3 uses
  store ptr %.0.i, ptr %i.c, align 8, !tbaa !170
  %i.bk = load ptr, ptr %i.a, align 16, !tbaa !169 ; 3 uses
  %.not4781 = icmp eq ptr %.0.i, %i.bk
  br i1 %.not4781, label %.critedge, label %.lr.ph.preheader.lr.ph

.lr.ph.preheader.lr.ph:                           ; preds = %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit
  %i.bl = ptrtoint ptr %.0.i to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %1, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.lr.ph, %bb.n
  %.in = phi i64 [ %i.bn, %.lr.ph.preheader.lr.ph ], [ %i.cq, %bb.n ]
  %i.bo = phi ptr [ %i.bk, %.lr.ph.preheader.lr.ph ], [ %i.cn, %bb.n ] ; 3 uses
  %i.bp = ashr exact i64 %.in, 3                  ; 5 uses
  %min.iters.check = icmp ult i64 %i.bp, 4
  br i1 %min.iters.check, label %.lr.ph.preheader87, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bp, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi82 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %vec.phi83 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi84 = phi <2 x i1> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %wide.load = load <2 x ptr>, ptr %i.bq, align 8, !tbaa !215
  %wide.load85 = load <2 x ptr>, ptr %i.br, align 8, !tbaa !215
  %i.bs = icmp eq <2 x ptr> %wide.load, %broadcast.splat ; 2 uses
  %i.bt = icmp eq <2 x ptr> %wide.load85, %broadcast.splat ; 2 uses
  %i.bu = or <2 x i1> %vec.phi83, %i.bs           ; 2 uses
  %i.bv = or <2 x i1> %vec.phi84, %i.bt           ; 2 uses
  %i.bw = select <2 x i1> %i.bs, <2 x i64> %vec.ind, <2 x i64> %vec.phi ; 2 uses
  %i.bx = select <2 x i1> %i.bt, <2 x i64> %step.add, <2 x i64> %vec.phi82 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !327

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <2 x i64> @llvm.umax.v2i64(<2 x i64> %i.bw, <2 x i64> %i.bx)
  %i.bz = tail call i64 @llvm.vector.reduce.umax.v2i64(<2 x i64> %rdx.minmax)
  %bin.rdx = or <2 x i1> %i.bv, %i.bu
  %bin.rdx.fr = freeze <2 x i1> %bin.rdx
  %i.ca = bitcast <2 x i1> %bin.rdx.fr to i2
  %.not86 = icmp eq i2 %i.ca, 0
  %rdx.select = select i1 %.not86, i64 0, i64 %i.bz ; 2 uses
  %cmp.n = icmp eq i64 %i.bp, %n.vec
  br i1 %cmp.n, label %.lr.ph46.preheader, label %.lr.ph.preheader87

.lr.ph.preheader87:                               ; preds = %.lr.ph.preheader, %middle.block
  %.01744.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.01843.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %rdx.select, %middle.block ]
  br label %.lr.ph

.lr.ph46.preheader:                               ; preds = %.lr.ph, %middle.block
  %spec.select.lcssa = phi i64 [ %rdx.select, %middle.block ], [ %spec.select, %.lr.ph ]
  br label %.lr.ph46

.lr.ph:                                           ; preds = %.lr.ph.preheader87, %.lr.ph
  %.01744 = phi i64 [ %i.ce, %.lr.ph ], [ %.01744.ph, %.lr.ph.preheader87 ] ; 3 uses
  %.01843 = phi i64 [ %spec.select, %.lr.ph ], [ %.01843.ph, %.lr.ph.preheader87 ]
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.01744
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !215
  %i.cd = icmp eq ptr %i.cc, %1
  %spec.select = select i1 %i.cd, i64 %.01744, i64 %.01843 ; 2 uses
  %i.ce = add nuw i64 %.01744, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.bp
  br i1 %exitcond.not, label %.lr.ph46.preheader, label %.lr.ph, !llvm.loop !328

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %.thread
  %.01645 = phi i64 [ %i.cr, %.thread ], [ 0, %.lr.ph46.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.01645
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !215 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.thread, label %bb.l

bb.l:                                             ; preds = %.lr.ph46
  %i.ci = tail call ptr @__dynamic_cast(ptr nonnull %i.cg, ptr nonnull @_ZTIN7nanogui6WidgetE, ptr nonnull @_ZTIN7nanogui5PopupE, i64 0) #37 ; 3 uses
  %.not = icmp eq ptr %i.ci, null
  br i1 %.not, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 192
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !337
  %i.cl = icmp eq ptr %i.ck, %1
  %i.cm = icmp ult i64 %.01645, %spec.select.lcssa
  %or.cond = select i1 %i.cl, i1 %i.cm, i1 false
  br i1 %or.cond, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN7nanogui6Screen20move_window_to_frontEPNS_6WindowE(ptr noundef nonnull align 16 dereferenceable(520) %0, ptr noundef nonnull %i.ci)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !170 ; 2 uses
  %i.cn = load ptr, ptr %i.a, align 16, !tbaa !169 ; 3 uses
  %i.co = ptrtoint ptr %.pre to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %.not47 = icmp eq ptr %.pre, %i.cn
  br i1 %.not47, label %.critedge, label %.lr.ph.preheader, !llvm.loop !329

.thread:                                          ; preds = %.lr.ph46, %bb.m, %bb.l
  %i.cr = add nuw i64 %.01645, 1                  ; 2 uses
  %exitcond54.not = icmp eq i64 %i.cr, %i.bp
  br i1 %exitcond54.not, label %.critedge, label %.lr.ph46, !llvm.loop !330

.critedge:                                        ; preds = %bb.n, %.thread, %_ZNSt3__16vectorIPN7nanogui6WidgetENS_9allocatorIS3_EEE9push_backB8ne180100EOS3_.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZN7nanogui6Screen14maximize_eventEb(ptr nofree nonnull readnone align 16 captures(none) %0, i1 zeroext %1) unnamed_addr #15 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN7nanogui6Screen14dispose_widgetEPNS_6WidgetE(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(520) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !169 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !170  ; 3 uses
  %.not7.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not7.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.b
  %.08.i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.08.i.i, align 8, !tbaa !215
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit.thread, label %.lr.ph.i.i, !llvm.loop !338

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit: ; preds = %.lr.ph.i.i
  %i.h = icmp eq ptr %.08.i.i, %i.d
  br i1 %i.h, label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit
  store ptr %i.b, ptr %i.c, align 8, !tbaa !170
  br label %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit.thread

_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit.thread: ; preds = %bb.b, %bb.a, %bb.c, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 16, !tbaa !155
  %i.k = icmp eq ptr %i.j, %1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit.thread
  store ptr null, ptr %i.i, align 16, !tbaa !155
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i8 0, ptr %i.l, align 4, !tbaa !184
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt3__14findB8ne180100INS_11__wrap_iterIPPN7nanogui6WidgetEEES4_EET_S7_S7_RKT0_.exit.thread
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !169  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !170  ; 2 uses
  %.not1213 = icmp eq ptr %i.n, %i.p
  br i1 %.not1213, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  ret void

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.sroa.05.014 = phi ptr [ %i.r, %.lr.ph ], [ %i.n, %bb.e ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.05.014, align 8, !tbaa !215
  tail call void @_ZN7nanogui6Screen14dispose_widgetEPNS_6WidgetE(ptr noundef nonnull align 16 dereferenceable(520) %0, ptr noundef %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.05.014, i64 8 ; 2 uses
  %.not12 = icmp eq ptr %i.r, %i.p
  br i1 %.not12, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN7nanogui6Screen13center_windowEPNS_6WindowE(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(520) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.b = load <2 x i32>, ptr %i.a, align 4        ; 3 uses
  %2 = extractelement <2 x i32> %i.b, i64 0
  %.not.i = icmp eq i32 %2, 0
  %3 = extractelement <2 x i32> %i.b, i64 1
  %.not.1.i = icmp eq i32 %3, 0
  %.not.lcssa.i = select i1 %.not.i, i1 %.not.1.i, i1 false
  br i1 %.not.lcssa.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 16, !tbaa !182
  %i.f = tail call i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148) %1, ptr noundef %i.e) ; 3 uses
  %.sroa.014.0.extract.trunc = trunc i64 %i.f to i32
  %.sroa.5.0.extract.shift = lshr i64 %i.f, 32
  %.sroa.5.0.extract.trunc = trunc nuw i64 %.sroa.5.0.extract.shift to i32
  %i.g = load i32, ptr %i.a, align 4, !tbaa !40
  %.not.i.i.i = icmp ne i32 %i.g, %.sroa.014.0.extract.trunc
  %i.h = load i32, ptr %i.c, align 4
  %.not.1.i.i.i = icmp ne i32 %i.h, %.sroa.5.0.extract.trunc
  %.not.lcssa.i.not.i.i = select i1 %.not.i.i.i, i1 true, i1 %.not.1.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load i8, ptr %i.i, align 8, !range !174
  %i.k = trunc nuw i8 %i.j to i1
  %or.cond.i = select i1 %.not.lcssa.i.not.i.i, i1 %i.k, i1 false
  br i1 %or.cond.i, label %bb.c, label %_ZN7nanogui6Widget8set_sizeERKNS_5ArrayIiLm2EEE.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 -1, ptr %i.l, align 8, !tbaa !164
  br label %_ZN7nanogui6Widget8set_sizeERKNS_5ArrayIiLm2EEE.exit

_ZN7nanogui6Widget8set_sizeERKNS_5ArrayIiLm2EEE.exit: ; preds = %bb.b, %bb.c
  store i64 %i.f, ptr %i.a, align 8, !tbaa !164
  %i.m = load ptr, ptr %i.d, align 16, !tbaa !182
  %i.n = load ptr, ptr %1, align 8, !tbaa !109
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(186) %1, ptr noundef %i.m)
  %i.q = load <2 x i32>, ptr %i.a, align 8, !tbaa !40
  br label %bb.d

bb.d:                                             ; preds = %_ZN7nanogui6Widget8set_sizeERKNS_5ArrayIiLm2EEE.exit, %bb.a
  %i.r = phi <2 x i32> [ %i.q, %_ZN7nanogui6Widget8set_sizeERKNS_5ArrayIiLm2EEE.exit ], [ %i.b, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load <2 x i32>, ptr %i.s, align 16, !tbaa !40
  %i.u = sub nsw <2 x i32> %i.t, %i.r
  %i.v = sdiv <2 x i32> %i.u, splat (i32 2)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  store <2 x i32> %i.v, ptr %i.w, align 8, !tbaa !164
  ret void
}

declare i64 @_ZNK7nanogui6Widget14preferred_sizeEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext range(i8 2, 10) i8 @_ZNK7nanogui6Screen16component_formatEv(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(520) %0) local_unnamed_addr #23 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 356
  %i.b = load i8, ptr %i.a, align 4, !tbaa !165, !range !174, !noundef !175
  %i.c = trunc nuw i8 %i.b to i1
  %. = select i1 %i.c, i8 9, i8 2
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef zeroext i1 @_ZNK7nanogui6Screen14in_live_resizeEv(ptr nofree noundef nonnull readnone align 16 captures(none) dereferenceable(520) %0) local_unnamed_addr #15 align 2 {
bb.a:
  ret i1 false
}

declare void @_ZN7nanogui6Widget9set_themeEPNS_5ThemeE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #5

declare void @_ZN7nanogui6Widget9add_childEiPS0_(ptr noundef nonnull align 8 dereferenceable(148), i32 noundef, ptr noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN7nanogui6Widget18mouse_button_eventERKNS_5ArrayIiLm2EEEibi(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i1 noundef zeroext, i32 noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN7nanogui6Widget18mouse_motion_eventERKNS_5ArrayIiLm2EEES4_ii(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN7nanogui6Widget16mouse_drag_eventERKNS_5ArrayIiLm2EEES4_ii(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #5

declare noundef zeroext i1 @_ZN7nanogui6Widget17mouse_enter_eventERKNS_5ArrayIiLm2EEEb(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), i1 noundef zeroext) unnamed_addr #5

declare noundef zeroext i1 @_ZN7nanogui6Widget12scroll_eventERKNS_5ArrayIiLm2EEERKNS1_IfLm2EEE(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(8)) unnamed_addr #5

declare noundef zeroext i1 @_ZN7nanogui6Widget11focus_eventEb(ptr noundef nonnull align 8 dereferenceable(148), i1 noundef zeroext) unnamed_addr #5

declare void @_ZN7nanogui6Widget14perform_layoutEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #5

declare void @_ZN7nanogui6Widget4drawEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #5

declare i64 @_ZNK7nanogui6Widget19preferred_size_implEP10NVGcontext(ptr noundef nonnull align 8 dereferenceable(148), ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN7nanogui6Screen10drop_eventERKNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEE(ptr noundef nonnull align 16 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL19glnvg__createShaderP11GLNVGshaderPKcS2_S2_S2_S2_(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [513 x i8], align 16              ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca [513 x i8], align 16              ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca [513 x i8], align 16              ; 5 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 8 uses
  %i.h = alloca [3 x ptr], align 16               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #37
  store ptr @.str.12, ptr %i.h, align 16, !tbaa !233
  %.not = icmp eq ptr %1, null
  %i.i = select i1 %.not, ptr @.str.21, ptr %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !233
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.k = tail call i32 @glCreateProgram()         ; 8 uses
  %i.l = tail call i32 @glCreateShader(i32 noundef 35633) ; 6 uses
  %i.m = tail call i32 @glCreateShader(i32 noundef 35632) ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr @.str.13, ptr %i.n, align 16, !tbaa !233
  call void @glShaderSource(i32 noundef %i.l, i32 noundef 3, ptr noundef nonnull %i.h, ptr noundef null)
  store ptr @.str.14, ptr %i.n, align 16, !tbaa !233
  call void @glShaderSource(i32 noundef %i.m, i32 noundef 3, ptr noundef nonnull %i.h, ptr noundef null)
  call void @glCompileShader(i32 noundef %i.l)
  call void @glGetShaderiv(i32 noundef %i.l, i32 noundef 35713, ptr noundef nonnull %i.g)
  %i.o = load i32, ptr %i.g, align 4, !tbaa !40
  %.not32 = icmp eq i32 %i.o, 1
  br i1 %.not32, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  store i32 0, ptr %i.f, align 4, !tbaa !40
  call void @glGetShaderInfoLog(i32 noundef %i.l, i32 noundef 512, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e)
  %i.p = load i32, ptr %i.f, align 4, !tbaa !40   ; 2 uses
  %i.q = icmp sgt i32 %i.p, 512
  br i1 %i.q, label %bb.c, label %_ZL22glnvg__dumpShaderErrorjPKcS0_.exit

bb.c:                                             ; preds = %bb.b
  store i32 512, ptr %i.f, align 4, !tbaa !40
  br label %_ZL22glnvg__dumpShaderErrorjPKcS0_.exit

_ZL22glnvg__dumpShaderErrorjPKcS0_.exit:          ; preds = %bb.b, %bb.c
  %i.r = phi i32 [ 512, %bb.c ], [ %i.p, %bb.b ]
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds i8, ptr %i.e, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !164
  %i.u = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.e) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #37
  br label %bb.k

bb.d:                                             ; preds = %bb.a
  call void @glCompileShader(i32 noundef %i.m)
  call void @glGetShaderiv(i32 noundef %i.m, i32 noundef 35713, ptr noundef nonnull %i.g)
  %i.v = load i32, ptr %i.g, align 4, !tbaa !40
  %.not33 = icmp eq i32 %i.v, 1
  br i1 %.not33, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #37
  store i32 0, ptr %i.d, align 4, !tbaa !40
  call void @glGetShaderInfoLog(i32 noundef %i.m, i32 noundef 512, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.w = load i32, ptr %i.d, align 4, !tbaa !40   ; 2 uses
  %i.x = icmp sgt i32 %i.w, 512
  br i1 %i.x, label %bb.f, label %_ZL22glnvg__dumpShaderErrorjPKcS0_.exit35

bb.f:                                             ; preds = %bb.e
  store i32 512, ptr %i.d, align 4, !tbaa !40
  br label %_ZL22glnvg__dumpShaderErrorjPKcS0_.exit35

_ZL22glnvg__dumpShaderErrorjPKcS0_.exit35:        ; preds = %bb.e, %bb.f
  %i.y = phi i32 [ 512, %bb.f ], [ %i.w, %bb.e ]
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.c, i64 %i.z
  store i8 0, ptr %i.aa, align 1, !tbaa !164
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.23, ptr noundef nonnull %i.c) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #37
  br label %bb.k

bb.g:                                             ; preds = %bb.d
  call void @glAttachShader(i32 noundef %i.k, i32 noundef %i.l)
  call void @glAttachShader(i32 noundef %i.k, i32 noundef %i.m)
  call void @glBindAttribLocation(i32 noundef %i.k, i32 noundef 0, ptr noundef nonnull @.str.24)
  call void @glBindAttribLocation(i32 noundef %i.k, i32 noundef 1, ptr noundef nonnull @.str.25)
  call void @glLinkProgram(i32 noundef %i.k)
  call void @glGetProgramiv(i32 noundef %i.k, i32 noundef 35714, ptr noundef nonnull %i.g)
  %i.ac = load i32, ptr %i.g, align 4, !tbaa !40
  %.not34 = icmp eq i32 %i.ac, 1
  br i1 %.not34, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i32 0, ptr %i.b, align 4, !tbaa !40
  call void @glGetProgramInfoLog(i32 noundef %i.k, i32 noundef 512, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  %i.ad = load i32, ptr %i.b, align 4, !tbaa !40  ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 512
  br i1 %i.ae, label %bb.i, label %_ZL23glnvg__dumpProgramErrorjPKc.exit

bb.i:                                             ; preds = %bb.h
end_hunk_0
