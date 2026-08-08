inline.NumInlined: 2450
inline.NumDeleted: 748
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN5video23COpenGLCoreRenderTargetINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE6updateEv:bb.a
  %i.hb = tail call noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %i.ha, i32 noundef 288) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.a, %bb.as, %bb.at, %_ZN5video23COpenGLExtensionHandler16irrGlDrawBuffersEiPKj.exit
  ret void

bb.bb:                                            ; preds = %bb.ae, %bb.n
  %.sink = phi ptr [ %i.ds, %bb.ae ], [ %i.bo, %bb.n ]
  %.pn = phi { ptr, i32 } [ %i.dt, %bb.ae ], [ %i.bp, %bb.n ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #32
  resume { ptr, i32 } %.pn
}

declare void @glCopyTexSubImage2D(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN5video13COpenGLDriver12clearBuffersEtNS_6SColorEfh(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3992) %0, i16 noundef zeroext %1, i32 %2, float noundef %3, i8 noundef zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2824 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.e = load i8, ptr %i.d, align 1, !tbaa !115   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.g = load i8, ptr %i.f, align 8, !tbaa !449, !range !132, !noundef !133 ; 3 uses
  %i.h = zext i16 %1 to i32                       ; 3 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne i8 %i.e, 15
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8, !range !132
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i = select i1 %.not.i, i1 true, i1 %i.l
  br i1 %or.cond.i, label %bb.c, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !458
  tail call void %i.m(i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1, i8 noundef zeroext 1), !inline_history !459
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !194
  %.not18.i = icmp eq i32 %i.o, 0
  br i1 %.not18.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.c
  store i8 0, ptr %i.j, align 8, !tbaa !460
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !457
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.i
  store i8 15, ptr %i.q, align 1, !tbaa !115
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.n, align 8, !tbaa !194
  %i.s = zext i32 %i.r to i64
  %i.t = icmp samesign ult i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !461

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit: ; preds = %bb.b, %._crit_edge.i
  %i.u = lshr i32 %2, 24
  %i.v = lshr i32 %2, 8
  %i.w = lshr i32 %2, 16
  %i.x = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %i.y = insertelement <4 x i32> %i.x, i32 %i.v, i64 1
  %i.z = insertelement <4 x i32> %i.y, i32 %2, i64 2
  %i.aa = insertelement <4 x i32> %i.z, i32 %i.u, i64 3
  %i.ab = and <4 x i32> %i.aa, <i32 255, i32 255, i32 255, i32 -1>
  %i.ac = uitofp <4 x i32> %i.ab to <4 x float>
  %i.ad = fmul nnan <4 x float> %i.ac, splat (float f0x3B808081) ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 0
  %i.af = extractelement <4 x float> %i.ad, i64 1
  %i.ag = extractelement <4 x float> %i.ad, i64 2
  %i.ah = extractelement <4 x float> %i.ad, i64 3
  tail call void @glClearColor(float noundef %i.ae, float noundef %i.af, float noundef %i.ag, float noundef %i.ah)
  br label %bb.d

bb.d:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit, %bb.a
  %.0 = phi i32 [ 16384, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit ], [ 0, %bb.a ] ; 2 uses
  %i.ai = and i32 %i.h, 2
  %.not10 = icmp eq i32 %i.ai, 0
  br i1 %.not10, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 160 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !449, !range !132, !noundef !133
  %.not.i13.not = icmp eq i8 %i.al, 0
  br i1 %.not.i13.not, label %bb.f, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

bb.f:                                             ; preds = %bb.e
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !450
  tail call void %i.am(i8 noundef zeroext 1), !inline_history !451
  store i8 1, ptr %i.ak, align 8, !tbaa !449
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit: ; preds = %bb.e, %bb.f
  %i.an = fpext float %3 to double
  tail call void @glClearDepth(double noundef %i.an)
  %i.ao = or disjoint i32 %.0, 256
  br label %bb.g

bb.g:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit, %bb.d
  %.1 = phi i32 [ %i.ao, %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit ], [ %.0, %bb.d ] ; 3 uses
  %i.ap = and i32 %i.h, 4
  %.not11 = icmp eq i32 %i.ap, 0
  br i1 %.not11, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.g
  %i.aq = zext i8 %4 to i32
  tail call void @glClearStencil(i32 noundef %i.aq)
  %i.ar = or i32 %.1, 1024
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not12 = icmp eq i32 %.1, 0
  br i1 %.not12, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread, %bb.h
  %.230 = phi i32 [ %i.ar, %.thread ], [ %.1, %bb.h ]
  tail call void @glClear(i32 noundef %.230)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.as = load ptr, ptr %i.a, align 8, !tbaa !10  ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 136 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !457
  %i.av = load i8, ptr %i.au, align 1, !tbaa !115
  %.not.i14 = icmp ne i8 %i.av, %i.e
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 144 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8, !range !132
  %i.ay = trunc nuw i8 %i.ax to i1
  %or.cond.i15 = select i1 %.not.i14, i1 true, i1 %i.ay
  br i1 %or.cond.i15, label %bb.k, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

bb.k:                                             ; preds = %bb.j
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 208), align 8, !tbaa !458
  %i.ba = lshr i8 %i.e, 1
  %.lobit.i = and i8 %i.ba, 1
  %i.bb = lshr i8 %i.e, 2
  %.lobit11.i = and i8 %i.bb, 1
  %i.bc = lshr i8 %i.e, 3
  %.lobit13.i = and i8 %i.bc, 1
  %i.bd = and i8 %i.e, 1
  tail call void %i.az(i8 noundef zeroext %.lobit.i, i8 noundef zeroext %.lobit11.i, i8 noundef zeroext %.lobit13.i, i8 noundef zeroext %i.bd), !inline_history !459
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 72 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !194
  %.not18.i16 = icmp eq i32 %i.bf, 0
  br i1 %.not18.i16, label %._crit_edge.i20, label %.lr.ph.i17

._crit_edge.i20:                                  ; preds = %.lr.ph.i17, %bb.k
  store i8 0, ptr %i.aw, align 8, !tbaa !460
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !10
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21

.lr.ph.i17:                                       ; preds = %bb.k, %.lr.ph.i17
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i19, %.lr.ph.i17 ], [ 0, %bb.k ] ; 2 uses
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !457
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i18
  store i8 %i.e, ptr %i.bh, align 1, !tbaa !115
  %indvars.iv.next.i19 = add nuw nsw i64 %indvars.iv.i18, 1 ; 2 uses
  %i.bi = load i32, ptr %i.be, align 8, !tbaa !194
  %i.bj = zext i32 %i.bi to i64
  %i.bk = icmp samesign ult i64 %indvars.iv.next.i19, %i.bj
  br i1 %i.bk, label %.lr.ph.i17, label %._crit_edge.i20, !llvm.loop !461

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21: ; preds = %bb.j, %._crit_edge.i20
  %i.bl = phi ptr [ %i.as, %bb.j ], [ %.pre, %._crit_edge.i20 ]
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 160 ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !449, !range !132, !noundef !133
  %.not.i22 = icmp eq i8 %i.bn, %i.g
  br i1 %.not.i22, label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23, label %bb.l

bb.l:                                             ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @GL, i64 216), align 8, !tbaa !450
  tail call void %i.bo(i8 noundef zeroext %i.g), !inline_history !451
  store i8 %i.g, ptr %i.bm, align 8, !tbaa !449
  br label %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23

_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setDepthMaskEb.exit23: ; preds = %_ZN5video23COpenGLCoreCacheHandlerINS_13COpenGLDriverENS_18COpenGLCoreTextureIS1_EEE12setColorMaskEh.exit21, %bb.l
  ret void
}

declare void @glClearColor(float noundef, float noundef, float noundef, float noundef) local_unnamed_addr #1

declare void @glClearStencil(i32 noundef) local_unnamed_addr #1

declare void @glClear(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video13COpenGLDriver16createScreenShotENS_13ECOLOR_FORMATENS_15E_RENDER_TARGETE(ptr noundef nonnull align 8 dereferenceable(3992) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %.not55 = icmp eq i32 %2, 0
  br i1 %.not55, label %bb.b, label %bb.r

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i32 %1, 19
  %spec.store.select = select i1 %i.a, i32 2, i32 %1 ; 3 uses
  %or.cond61 = icmp sgt i32 %spec.store.select, 3
  br i1 %or.cond61, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !159, !range !132, !noundef !133
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @glPixelStorei(i32 noundef 34648, i32 noundef 1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  switch i32 %spec.store.select, label %bb.i [
    i32 0, label %bb.j
    i32 1, label %bb.f
    i32 2, label %bb.g
    i32 3, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.f = load i16, ptr %i.e, align 4, !tbaa !319
  %i.g = icmp ugt i16 %i.f, 101
  %. = select i1 %i.g, i32 33639, i32 5121
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.e, %bb.i, %bb.g, %bb.f
  %.051 = phi i32 [ 5121, %bb.i ], [ 33638, %bb.e ], [ 33635, %bb.f ], [ 5121, %bb.g ], [ %., %bb.h ]
  %.050 = phi i32 [ 32993, %bb.i ], [ 32993, %bb.e ], [ 6407, %bb.f ], [ 6407, %bb.g ], [ 32993, %bb.h ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 600
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef %spec.store.select, ptr noundef nonnull align 4 dereferenceable(8) %i.h) ; 6 uses
  %.not65 = icmp eq ptr %i.l, null                ; 2 uses
  br i1 %.not65, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !413  ; 6 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %.thread, label %.thread.thread

.thread:                                          ; preds = %bb.j, %bb.k
  %i.o = load i8, ptr %i.b, align 8, !tbaa !159, !range !132, !noundef !133
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.l, label %bb.o

.thread.thread:                                   ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3745
  %i.r = load i8, ptr %i.q, align 1, !tbaa !536, !range !132, !noundef !133
  %i.s = trunc nuw i8 %i.r to i1
  %i.t = select i1 %i.s, i32 1029, i32 1028
  tail call void @glReadBuffer(i32 noundef %i.t)
  %i.u = load i32, ptr %i.h, align 8, !tbaa !517
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.w = load i32, ptr %i.v, align 4, !tbaa !518
  tail call void @glReadPixels(i32 noundef 0, i32 noundef 0, i32 noundef %i.u, i32 noundef %i.w, i32 noundef %.050, i32 noundef %.051, ptr noundef nonnull %i.n)
  %i.x = tail call noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %0, i32 noundef 2583) ; 0 uses
  tail call void @glReadBuffer(i32 noundef 1029)
  %i.y = load i8, ptr %i.b, align 8, !tbaa !159, !range !132, !noundef !133
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread.thread, %.thread
  %.0486073 = phi ptr [ %i.n, %.thread.thread ], [ null, %.thread ]
  tail call void @glPixelStorei(i32 noundef 34648, i32 noundef 0)
  br label %bb.o

bb.m:                                             ; preds = %.thread.thread
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !537 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 324 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !518 ; 2 uses
  %i.ae = sext i32 %i.ab to i64                   ; 6 uses
  %i.af = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ae) #35 ; 3 uses
  %.not66 = icmp eq i32 %i.ad, 0
  br i1 %.not66, label %.thread79, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ag = add i32 %i.ad, -1
  %i.ah = mul i32 %i.ag, %i.ab
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ai
  %i.ak = sub nsw i64 0, %i.ae
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.n
  %.064 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.n ]
  %.04763 = phi ptr [ %i.aj, %.lr.ph ], [ %i.am, %bb.n ] ; 3 uses
  %.14962 = phi ptr [ %i.n, %.lr.ph ], [ %i.al, %bb.n ] ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %.14962, i64 %i.ae, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.14962, ptr align 1 %.04763, i64 %i.ae, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.04763, ptr nonnull align 1 %i.af, i64 %i.ae, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.14962, i64 %i.ae ; 2 uses
  %i.am = getelementptr inbounds i8, ptr %.04763, i64 %i.ak
  %i.an = add i32 %.064, 2                        ; 2 uses
  %i.ao = load i32, ptr %i.ac, align 4, !tbaa !518
  %i.ap = icmp ult i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.n, label %.thread79, !llvm.loop !538

.thread79:                                        ; preds = %bb.n, %bb.m
  %.149.lcssa = phi ptr [ %i.n, %bb.m ], [ %i.al, %bb.n ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.af) #31
  br label %bb.p

bb.o:                                             ; preds = %.thread, %bb.l
  %.2 = phi ptr [ %.0486073, %bb.l ], [ null, %.thread ]
  br i1 %.not65, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread79, %bb.o
  %.281 = phi ptr [ %.149.lcssa, %.thread79 ], [ %.2, %bb.o ]
  %i.aq = tail call noundef zeroext i1 @_ZN5video13COpenGLDriver11testGLErrorEi(ptr noundef nonnull align 8 dereferenceable(3992) %0, i32 noundef 2605)
  %i.ar = icmp eq ptr %.281, null
  %or.cond5.not = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond5.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull @.str.25, i32 noundef 3)
  %i.as = load ptr, ptr %i.l, align 8, !tbaa !8
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = load i64, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.l, i64 %i.au
  %i.aw = tail call noundef zeroext i1 @_ZNK17IReferenceCounted4dropEv(ptr noundef nonnull align 8 dereferenceable(12) %i.av) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.o ], [ null, %bb.a ], [ %i.l, %bb.p ], [ null, %bb.b ], [ null, %bb.q ]
  ret ptr %.1
}

declare void @glReadBuffer(i32 noundef) local_unnamed_addr #1

declare void @glReadPixels(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef range(i32 0, 34914) i32 @_ZNK5video13COpenGLDriver17primitiveTypeToGLEN5scene16E_PRIMITIVE_TYPEE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(3992) %0, i32 noundef %1) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 8
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK5video13COpenGLDriver17primitiveTypeToGLEN5scene16E_PRIMITIVE_TYPEE, i64 %i.b
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 4, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 6402, 33192) i32 @_ZNK5video13COpenGLDriver14getZBufferBitsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3992) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3737
  %i.b = load i8, ptr %i.a, align 1, !tbaa !539
  %switch.tableidx = add i8 %i.b, -16             ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx, 17
  br i1 %i.c, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.d = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table._ZNK5video13COpenGLDriver14getZBufferBitsEv, i64 %i.d
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i32
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi i32 [ %switch.ext, %switch.lookup ], [ 6402, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK5video13COpenGLDriver21getFixedPipelineStateEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3992) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3704
  %i.b = load i32, ptr %i.a, align 8, !tbaa !129
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5video13COpenGLDriver21setFixedPipelineStateENS0_29E_OPENGL_FIXED_PIPELINE_STATEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(3992) initializes((3704, 3708)) %0, i32 noundef %1) local_unnamed_addr #19 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3704
  store i32 %1, ptr %i.a, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(127) ptr @_ZNK5video13COpenGLDriver18getCurrentMaterialEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(3992) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3352
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK5video13COpenGLDriver15getCacheHandlerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(3992) %0) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2824
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video18createOpenGLDriverERK27SIrrlichtCreationParametersPN2io11IFileSystemEPNS_15IContextManagerE(ptr noundef nonnull align 8 dereferenceable(105) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
