Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/guiScrollContainer?download=true
inline.NumInlined: 323
inline.NumDeleted: 170
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN18GUIScrollContainer7OnEventERK6SEvent:bb.a

bb.h:                                             ; preds = %bb.g
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(308) %i.aj, ptr noundef nonnull align 8 dereferenceable(56) %1), !inline_history !112
  br label %_ZN3gui11IGUIElement7OnEventERK6SEvent.exit

_ZN3gui11IGUIElement7OnEventERK6SEvent.exit:      ; preds = %bb.h, %bb.g, %bb.f
  %.0 = phi i1 [ %i.s, %bb.f ], [ %i.an, %bb.h ], [ false, %bb.g ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare noundef zeroext i1 @_ZN3gui13CGUIScrollBar7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(420), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN3gui11IGUIElement7OnEventERK6SEvent(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73   ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(308) %i.b, ptr noundef nonnull align 8 dereferenceable(56) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i1 [ %i.f, %bb.b ], [ false, %bb.a ]
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18GUIScrollContainer4drawEv(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(308) %0)
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.07.010 = load ptr, ptr %i.e, align 8, !tbaa !59 ; 2 uses
  %.not11 = icmp eq ptr %.sroa.07.010, %i.e
  br i1 %.not11, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 84
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread
  %.sroa.07.012 = phi ptr [ %.sroa.07.010, %.lr.ph ], [ %.sroa.07.0, %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.07.012, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !74   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 163
  %i.m = load i8, ptr %i.l, align 1, !tbaa !79, !range !80, !noundef !81
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %.sroa.0.0.copyload.i = load i64, ptr %i.o, align 8, !tbaa !60 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60 ; 2 uses
  %i.p = load i32, ptr %i.h, align 4, !tbaa !82
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0.4.extract.trunc = trunc nuw i64 %.sroa.0.4.extract.shift to i32
  %i.q = icmp sgt i32 %i.p, %.sroa.0.4.extract.trunc
  br i1 %i.q, label %bb.e, label %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = load i32, ptr %i.i, align 4, !tbaa !83
  %.sroa.6.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.6.12.extract.trunc = trunc nuw i64 %.sroa.6.12.extract.shift to i32
  %i.s = icmp slt i32 %i.r, %.sroa.6.12.extract.trunc
  br i1 %i.s, label %bb.f, label %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.t = load i32, ptr %i.g, align 8, !tbaa !84
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.u = icmp sgt i32 %i.t, %.sroa.0.0.extract.trunc
  br i1 %i.u, label %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit, label %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread

_ZNK4core4rectIiE14isRectCollidedERKS1_.exit:     ; preds = %bb.f
  %i.v = load i32, ptr %i.f, align 8, !tbaa !85
  %.sroa.6.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.w = icmp slt i32 %i.v, %.sroa.6.8.extract.trunc
  br i1 %i.w, label %.critedge, label %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread

.critedge:                                        ; preds = %bb.c, %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !14
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 80
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(308) %i.k)
  br label %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread

_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread: ; preds = %bb.d, %bb.e, %bb.f, %.critedge, %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit
  %.sroa.07.0 = load ptr, ptr %.sroa.07.012, align 8, !tbaa !59 ; 2 uses
  %.not = icmp eq ptr %.sroa.07.0, %i.e
  br i1 %.not, label %.loopexit, label %bb.c

.loopexit:                                        ; preds = %_ZNK4core4rectIiE14isRectCollidedERKS1_.exit.thread, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18GUIScrollContainer12setScrollBarEP12GUIScrollBar(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(336) initializes((312, 320)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !52
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.d = load i8, ptr %i.c, align 4, !tbaa !54, !range !80, !noundef !81
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.g = load float, ptr %i.f, align 4, !tbaa !53
  %i.h = fcmp nsz une float %i.g, 0.000000e+00
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.027.035 = load ptr, ptr %i.i, align 8, !tbaa !59 ; 2 uses
  %.not3436 = icmp eq ptr %.sroa.027.035, %i.i
  br i1 %.not3436, label %._crit_edge, label %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit

._crit_edge:                                      ; preds = %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit, %bb.d
  %.sroa.7.0.lcssa = phi i32 [ 0, %bb.d ], [ %spec.select, %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit ]
  %.sroa.10.0.lcssa = phi i32 [ 0, %bb.d ], [ %.sroa.10.1, %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.k = load i32, ptr %i.j, align 8, !tbaa !57
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.f

_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit: ; preds = %bb.d, %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit
  %.sroa.027.041 = phi ptr [ %.sroa.027.0, %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit ], [ %.sroa.027.035, %bb.d ] ; 2 uses
  %.sroa.10.038 = phi i32 [ %.sroa.10.1, %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit ], [ 0, %bb.d ]
  %.sroa.7.037 = phi i32 [ %spec.select, %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit ], [ 0, %bb.d ]
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.027.041, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60 ; 2 uses
  %.sroa.3.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32
  %.sroa.3.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.3.12.extract.trunc = trunc nuw i64 %.sroa.3.12.extract.shift to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.sroa.7.037, i32 %.sroa.3.8.extract.trunc) ; 2 uses
  %.sroa.10.1 = tail call i32 @llvm.smax.i32(i32 %.sroa.10.038, i32 %.sroa.3.12.extract.trunc) ; 2 uses
  %.sroa.027.0 = load ptr, ptr %.sroa.027.041, align 8, !tbaa !59 ; 2 uses
  %.not34 = icmp eq ptr %.sroa.027.0, %i.i
  br i1 %.not34, label %._crit_edge, label %_ZN4core4rectIiE16addInternalPointERKNS_8vector2dIiEE.exit

bb.e:                                             ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83   ; 2 uses
  %i.s = sub nsw i32 %i.p, %i.r
  %i.t = sub nsw i32 %.sroa.10.0.lcssa, %i.r
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.w = load i32, ptr %i.v, align 8, !tbaa !84
  %i.x = load i32, ptr %i.u, align 8, !tbaa !85   ; 2 uses
  %i.y = sub nsw i32 %i.w, %i.x
  %i.z = sub nsw i32 %.sroa.7.0.lcssa, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = phi i32 [ %i.s, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %i.ab = phi i32 [ %i.t, %bb.e ], [ %i.z, %bb.f ]
  %i.ac = load i32, ptr %i.b, align 8, !tbaa !60
  %i.ad = add nsw i32 %i.ac, %i.ab                ; 2 uses
  %i.ae = sub nsw i32 %i.ad, %i.aa
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 0)
  tail call void @_ZN3gui13CGUIScrollBar6setMinEi(ptr noundef nonnull align 8 dereferenceable(420) %1, i32 noundef 0)
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.ag = uitofp nsz nneg i32 %.sroa.speculated to float
  %i.ah = load float, ptr %i.f, align 4, !tbaa !53
  %i.ai = tail call nsz noundef float @llvm.fabs.f32(float %i.ah)
  %i.aj = fdiv nsz float %i.ag, %i.ai
  %i.ak = tail call nsz noundef float @llvm.ceil.f32(float %i.aj)
  %i.al = fptosi float %i.ak to i32
  tail call void @_ZN3gui13CGUIScrollBar6setMaxEi(ptr noundef nonnull align 8 dereferenceable(420) %i.af, i32 noundef %i.al)
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !52  ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 349
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !118, !range !80, !noundef !81
  %i.ap = trunc nuw i8 %i.ao to i1                ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.sroa.0.0.copyload.i10 = load i64, ptr %i.aq, align 8, !tbaa !60 ; 2 uses
  %.sroa.2.0..sroa_idx.i11 = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %.sroa.2.0.copyload.i12 = load i64, ptr %.sroa.2.0..sroa_idx.i11, align 8, !tbaa !60 ; 2 uses
  %.sroa.4.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i12, 32
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i10, 32
  %.sroa.0.4.extract.shift.sink = select i1 %i.ap, i64 %.sroa.0.0.copyload.i10, i64 %.sroa.0.4.extract.shift
  %.sroa.4.12.extract.trunc.sink.v = select i1 %i.ap, i64 %.sroa.2.0.copyload.i12, i64 %.sroa.4.12.extract.shift
  %.sroa.4.12.extract.trunc.sink = trunc i64 %.sroa.4.12.extract.trunc.sink.v to i32
  %.sroa.0.4.extract.trunc = trunc i64 %.sroa.0.4.extract.shift.sink to i32
  %i.ar = sub nsw i32 %.sroa.4.12.extract.trunc.sink, %.sroa.0.4.extract.trunc
  %i.as = mul nsw i32 %i.ar, %i.ad
  %i.at = sdiv i32 %i.as, %i.aa
  tail call void @_ZN3gui13CGUIScrollBar11setPageSizeEi(ptr noundef nonnull align 8 dereferenceable(420) %i.am, i32 noundef %i.at)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN3gui13CGUIScrollBar6setMinEi(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef) unnamed_addr #3

declare void @_ZN3gui13CGUIScrollBar6setMaxEi(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef) unnamed_addr #3

declare void @_ZN3gui13CGUIScrollBar11setPageSizeEi(ptr noundef nonnull align 8 dereferenceable(420), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN18GUIScrollContainer15updateScrollingEv(ptr noundef nonnull align 8 dereferenceable(336) initializes((96, 112)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = tail call noundef i32 @_ZNK3gui13CGUIScrollBar6getPosEv(ptr noundef nonnull align 8 dereferenceable(420) %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.d, align 8, !tbaa !60 ; 2 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !60 ; 3 uses
  %.sroa.0.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i32 ; 2 uses
  %.sroa.0.sroa.6.0.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.0.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.0.sroa.6.0.extract.shift to i32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = load i32, ptr %i.e, align 8, !tbaa !57
  switch i32 %i.f, label %bb.d [
    i32 0, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = sitofp nsz i32 %i.c to float
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.i = load float, ptr %i.h, align 4, !tbaa !53
  %i.j = fmul nsz float %i.i, %i.g
  %i.k = fptosi float %i.j to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = sitofp nsz i32 %i.c to float
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.n = load float, ptr %i.m, align 4, !tbaa !53
  %i.o = fmul nsz float %i.n, %i.l
  %i.p = fptosi float %i.o to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.sroa.6.0 = phi i32 [ %.sroa.0.sroa.6.0.extract.trunc, %bb.a ], [ %i.k, %bb.b ], [ %.sroa.0.sroa.6.0.extract.trunc, %bb.c ] ; 2 uses
  %.sroa.0.sroa.0.0 = phi i32 [ %.sroa.0.sroa.0.0.extract.trunc, %bb.a ], [ %.sroa.0.sroa.0.0.extract.trunc, %bb.b ], [ %i.p, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !73   ; 3 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.s, align 8, !tbaa !60 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !60 ; 2 uses
  %i.t = sub i64 %.sroa.2.0.copyload.i.i, %.sroa.0.0.copyload.i.i
  %.sroa.7.12.extract.shift.i = lshr i64 %.sroa.2.0.copyload.i.i, 32
  %.sroa.7.12.extract.trunc.i = trunc nuw i64 %.sroa.7.12.extract.shift.i to i32
  %.sroa.016.4.extract.shift.i = lshr i64 %.sroa.0.0.copyload.i.i, 32
  %.sroa.016.4.extract.trunc.i = trunc nuw i64 %.sroa.016.4.extract.shift.i to i32
  %i.u = sub nsw i32 %.sroa.7.12.extract.trunc.i, %.sroa.016.4.extract.trunc.i
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.t to i32
  %i.v = sitofp nsz i32 %.sroa.01.0.extract.trunc.i to float ; 2 uses
  %i.w = sitofp nsz i32 %i.u to float             ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.y = load i32, ptr %i.x, align 8, !tbaa !86
  %i.z = icmp eq i32 %i.y, 3
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = sitofp nsz i32 %.sroa.0.sroa.0.0 to float
  %i.ab = fdiv nsz float %i.aa, %i.v
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float %i.ab, ptr %i.ac, align 8, !tbaa !87
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !88
  %i.af = icmp eq i32 %i.ae, 3
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.sroa.8.8.extract.trunc = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.ag = sitofp nsz i32 %.sroa.8.8.extract.trunc to float
  %i.ah = fdiv nsz float %i.ag, %i.v
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 136
  store float %i.ah, ptr %i.ai, align 8, !tbaa !89
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !90
  %i.al = icmp eq i32 %i.ak, 3
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.am = sitofp nsz i32 %.sroa.0.sroa.6.0 to float
  %i.an = fdiv nsz float %i.am, %i.w
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 132
  store float %i.an, ptr %i.ao, align 4, !tbaa !91
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 292
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !92
  %i.ar = icmp eq i32 %i.aq, 3
  br i1 %i.ar, label %bb.l, label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

bb.l:                                             ; preds = %bb.k
  %.sroa.8.12.extract.shift = lshr i64 %.sroa.2.0.copyload.i, 32
  %.sroa.8.12.extract.trunc = trunc nuw i64 %.sroa.8.12.extract.shift to i32
  %i.as = sitofp nsz i32 %.sroa.8.12.extract.trunc to float
  %i.at = fdiv nsz float %i.as, %i.w
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 140
  store float %i.at, ptr %i.au, align 4, !tbaa !93
  br label %_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit

_ZN3gui11IGUIElement19setRelativePositionERKN4core4rectIiEE.exit: ; preds = %bb.d, %bb.k, %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.sroa.0.sroa.6.0.insert.ext = zext i32 %.sroa.0.sroa.6.0 to i64
  %.sroa.0.sroa.6.0.insert.shift = shl nuw i64 %.sroa.0.sroa.6.0.insert.ext, 32
  %.sroa.0.sroa.0.0.insert.ext = zext i32 %.sroa.0.sroa.0.0 to i64
  %.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0.sroa.6.0.insert.shift, %.sroa.0.sroa.0.0.insert.ext
  store i64 %.sroa.0.sroa.0.0.insert.insert, ptr %i.av, align 8, !tbaa !60
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.sroa.2.0.copyload.i, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !60
  %i.aw = load ptr, ptr %0, align 8, !tbaa !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(308) %0), !inline_history !3
  ret void
}

declare noundef i32 @_ZNK3gui13CGUIScrollBar6getPosEv(ptr noundef nonnull align 8 dereferenceable(420)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD1Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElementD0Ev(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElementD2Ev(ptr noundef nonnull align 8 dereferenceable(308) %0, ptr noundef nonnull @_ZTTN3gui11IGUIElementE) #16, !inline_history !94
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 328) #17
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN3gui11IGUIElement22updateAbsolutePositionEv(ptr noundef nonnull align 8 dereferenceable(308) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN3gui11IGUIElement27recalculateAbsolutePositionEb(ptr noundef nonnull align 8 dereferenceable(308) %0, i1 noundef zeroext false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.sroa.04.07 = load ptr, ptr %i.a, align 8, !tbaa !59 ; 2 uses
  %.not8 = icmp eq ptr %.sroa.04.07, %i.a
  br i1 %.not8, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.04.09 = phi ptr [ %.sroa.04.0, %.lr.ph ], [ %.sroa.04.07, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.04.09, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
end_hunk_0
