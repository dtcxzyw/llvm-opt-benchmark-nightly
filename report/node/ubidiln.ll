Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ubidiln?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@ubidi_getVisualRun_78:bb.a
  %.not30 = icmp eq ptr %i.a, null
  br i1 %.not30, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %i.a, align 8
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.e = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison) ; 0 uses
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load i32, ptr %i.g, align 8
  %.not32 = icmp slt i32 %1, %i.h
  br i1 %.not32, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = zext nneg i32 %1 to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %i.m, 2147483647
  store i32 %i.n, ptr %2, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not35 = icmp eq i32 %1, 0
  %i.o = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw [12 x i8], ptr %i.o, i64 %i.k ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = getelementptr i8, ptr %i.p, i64 -8
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sub nsw i32 %i.r, %i.t
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.w = load i32, ptr %i.v, align 4
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k
  %.sink = phi i32 [ %i.u, %bb.k ], [ %i.w, %bb.l ]
  store i32 %.sink, ptr %3, align 4
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %i.x = lshr i32 %i.m, 31
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.c, %bb.d, %bb.m
  %.0 = phi i32 [ %i.x, %bb.m ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ubidi_reorderLogical_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %1, 1
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.d = zext nneg i32 %1 to i64                  ; 6 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.d, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.037.i = phi i8 [ 0, %.preheader.preheader.i ], [ %.1.i, %bb.c ]
  %.02436.i = phi i8 [ 126, %.preheader.preheader.i ], [ %spec.select.i, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  %i.f = load i8, ptr %i.e, align 1               ; 3 uses
  %i.g = icmp ugt i8 %i.f, 126
  br i1 %i.g, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.f, i8 %.02436.i) ; 4 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.f, i8 %.037.i) ; 3 uses
  %i.h = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.h, label %.preheader.i, label %.lr.ph.i.preheader, !llvm.loop !26

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader122, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.d, 2147483640               ; 2 uses
  %i.i = and i64 %i.d, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = sub i64 %i.d, %index                     ; 2 uses
  %i.k = insertelement <4 x i64> poison, i64 %i.j, i64 0
  %i.l = shufflevector <4 x i64> %i.k, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.n = trunc <4 x i64> %i.l to <4 x i32>
  %reverse = add <4 x i32> %i.n, <i32 -4, i32 -3, i32 -2, i32 -1>
  %i.o = trunc <4 x i64> %i.l to <4 x i32>
  %reverse102 = add <4 x i32> %i.o, <i32 -8, i32 -7, i32 -6, i32 -5>
  %i.p = getelementptr i8, ptr %i.m, i64 -16
  %i.q = getelementptr i8, ptr %i.m, i64 -32
  store <4 x i32> %reverse, ptr %i.p, align 4
  store <4 x i32> %reverse102, ptr %i.q, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %_ZL14prepareReorderPKhiPiPhS2_.exit, label %.lr.ph.i.preheader122

.lr.ph.i.preheader122:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv40.i.ph = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader122, %.lr.ph.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.lr.ph.i ], [ %indvars.iv40.i.ph, %.lr.ph.i.preheader122 ] ; 2 uses
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, -1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next41.i
  %i.t = trunc nuw nsw i64 %indvars.iv.next41.i to i32
  store i32 %i.t, ptr %i.s, align 4
  %i.u = icmp sgt i64 %indvars.iv40.i, 1
  br i1 %i.u, label %.lr.ph.i, label %_ZL14prepareReorderPKhiPiPhS2_.exit, !llvm.loop !28

_ZL14prepareReorderPKhiPiPhS2_.exit:              ; preds = %.lr.ph.i, %middle.block
  %i.v = icmp eq i8 %spec.select.i, %.1.i
  %i.w = and i8 %spec.select.i, 1
  %i.x = icmp eq i8 %i.w, 0
  %or.cond = and i1 %i.v, %i.x
  br i1 %or.cond, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %.lr.ph.lr.ph.us.preheader

.lr.ph.lr.ph.us.preheader:                        ; preds = %_ZL14prepareReorderPKhiPiPhS2_.exit
  %i.y = or i8 %spec.select.i, 1
  %i.z = zext nneg i32 %1 to i64                  ; 3 uses
  br label %.lr.ph.lr.ph.us

.lr.ph.lr.ph.us:                                  ; preds = %.lr.ph.lr.ph.us.preheader, %.critedge.thread.us
  %.045.us = phi i8 [ %i.ay, %.critedge.thread.us ], [ %.1.i, %.lr.ph.lr.ph.us.preheader ] ; 3 uses
  br label %.lr.ph.us

bb.d:                                             ; preds = %.lr.ph.us, %bb.e
  %indvar = phi i64 [ 0, %.lr.ph.us ], [ %indvar.next, %bb.e ] ; 2 uses
  %indvars.iv67.in = phi i32 [ %.02957.us, %.lr.ph.us ], [ %indvars.iv67, %bb.e ]
  %indvars.iv = phi i64 [ %i.bb, %.lr.ph.us ], [ %indvars.iv.next, %bb.e ] ; 10 uses
  %indvars.iv67 = add i32 %indvars.iv67.in, 1     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp ult i8 %i.ab, %.045.us
  br i1 %i.ac, label %bb.e, label %.critedge.preheader.us

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv.next, %i.z
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ad, label %bb.d, label %.critedge.thread.us, !llvm.loop !29

.critedge.us:                                     ; preds = %.lr.ph
  %indvars.iv.next66 = add nsw i64 %indvars.iv.next66101, 1 ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.next66, %i.z
  br i1 %i.ae, label %.lr.ph, label %.critedge2.us, !llvm.loop !30

.lr.ph:                                           ; preds = %.critedge.preheader.us, %.critedge.us
  %indvars.iv.next66101 = phi i64 [ %indvars.iv.next66, %.critedge.us ], [ %indvars.iv.next6699, %.critedge.preheader.us ] ; 5 uses
  %indvars.iv65100 = phi i64 [ %indvars.iv.next66101, %.critedge.us ], [ %indvars.iv, %.critedge.preheader.us ]
  %i.af = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next66101
  %i.ag = load i8, ptr %i.af, align 1
  %.not36.us = icmp ult i8 %i.ag, %.045.us
  br i1 %.not36.us, label %.critedge2.us.split.loop.exit, label %.critedge.us, !llvm.loop !30

.critedge2.us.split.loop.exit:                    ; preds = %.lr.ph
  %i.ah = trunc nsw i64 %indvars.iv.next66101 to i32
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %.critedge.us, %.critedge.preheader.us, %.critedge2.us.split.loop.exit
  %indvars.iv6598 = phi i64 [ %indvars.iv65100, %.critedge2.us.split.loop.exit ], [ %indvars.iv, %.critedge.preheader.us ], [ %indvars.iv.next66101, %.critedge.us ] ; 3 uses
  %.lcssa = phi i32 [ %i.ah, %.critedge2.us.split.loop.exit ], [ %smax, %.critedge.preheader.us ], [ %smax, %.critedge.us ]
  %.lcssa85 = trunc i64 %indvars.iv6598 to i32    ; 2 uses
  %i.ai = add i32 %.lcssa85, %i.az                ; 2 uses
  %3 = add i64 %indvar, %i.bb
  %4 = tail call i64 @llvm.smax.i64(i64 %indvars.iv6598, i64 %indvars.iv)
  %reass.sub = sub i64 %4, %3
  %i.aj = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check105 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check105, label %scalar.ph104.preheader, label %vector.ph106

vector.ph106:                                     ; preds = %.critedge2.us
  %n.vec107 = and i64 %i.aj, -8                   ; 3 uses
  %i.ak = add i64 %indvars.iv, %n.vec107
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  br label %vector.body108

vector.body108:                                   ; preds = %vector.body108, %vector.ph106
  %index109 = phi i64 [ 0, %vector.ph106 ], [ %index.next111, %vector.body108 ] ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %index109 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.am, align 4
  %wide.load110 = load <4 x i32>, ptr %i.an, align 4
  %i.ao = sub <4 x i32> %broadcast.splat, %wide.load
  %i.ap = sub <4 x i32> %broadcast.splat, %wide.load110
  store <4 x i32> %i.ao, ptr %i.am, align 4
  store <4 x i32> %i.ap, ptr %i.an, align 4
  %index.next111 = add nuw i64 %index109, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next111, %n.vec107
  br i1 %i.aq, label %middle.block112, label %vector.body108, !llvm.loop !31

middle.block112:                                  ; preds = %vector.body108
  %cmp.n113 = icmp eq i64 %i.aj, %n.vec107
  br i1 %cmp.n113, label %.loopexit, label %scalar.ph104.preheader

scalar.ph104.preheader:                           ; preds = %.critedge2.us, %middle.block112
  %indvars.iv73.ph = phi i64 [ %indvars.iv, %.critedge2.us ], [ %i.ak, %middle.block112 ]
  br label %scalar.ph104

scalar.ph104:                                     ; preds = %scalar.ph104.preheader, %scalar.ph104
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %scalar.ph104 ], [ %indvars.iv73.ph, %scalar.ph104.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv73 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = sub i32 %i.ai, %i.as
  store i32 %i.at, ptr %i.ar, align 4
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %i.au = icmp slt i64 %indvars.iv73, %indvars.iv6598
  br i1 %i.au, label %scalar.ph104, label %.loopexit, !llvm.loop !32

.loopexit:                                        ; preds = %scalar.ph104, %middle.block112
  %i.av = icmp ne i32 %.lcssa, %1
  %i.aw = add nsw i32 %.lcssa85, 2                ; 2 uses
  %i.ax = icmp slt i32 %i.aw, %1
  %or.cond58 = select i1 %i.av, i1 %i.ax, i1 false
  br i1 %or.cond58, label %.lr.ph.us, label %.critedge.thread.us, !llvm.loop !33

.critedge.thread.us:                              ; preds = %.loopexit, %bb.e
  %i.ay = add i8 %.045.us, -1                     ; 2 uses
  %.not37.us = icmp ult i8 %i.ay, %i.y
  br i1 %.not37.us, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %.lr.ph.lr.ph.us, !llvm.loop !34

.critedge.preheader.us:                           ; preds = %bb.d
  %i.az = trunc nsw i64 %indvars.iv to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %indvars.iv67) ; 2 uses
  %indvars.iv.next6699 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = icmp slt i64 %indvars.iv.next6699, %i.z
  br i1 %i.ba, label %.lr.ph, label %.critedge2.us

.lr.ph.us:                                        ; preds = %.loopexit, %.lr.ph.lr.ph.us
  %.02957.us = phi i32 [ 0, %.lr.ph.lr.ph.us ], [ %i.aw, %.loopexit ] ; 2 uses
  %i.bb = sext i32 %.02957.us to i64              ; 2 uses
  br label %bb.d

_ZL14prepareReorderPKhiPiPhS2_.exit.thread:       ; preds = %.preheader.i, %.critedge.thread.us, %bb.b, %_ZL14prepareReorderPKhiPiPhS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ubidi_reorderVisual_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp slt i32 %1, 1
  %or.cond.i = or i1 %i.b, %i.c
  br i1 %or.cond.i, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.d = zext nneg i32 %1 to i64                  ; 6 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.c, %.preheader.preheader.i
  %indvars.iv.i = phi i64 [ %i.d, %.preheader.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.037.i = phi i8 [ 0, %.preheader.preheader.i ], [ %.1.i, %bb.c ]
  %.02436.i = phi i8 [ 126, %.preheader.preheader.i ], [ %spec.select.i, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next.i
  %i.f = load i8, ptr %i.e, align 1               ; 3 uses
  %i.g = icmp ugt i8 %i.f, 126
  br i1 %i.g, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.f, i8 %.02436.i) ; 4 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.f, i8 %.037.i) ; 3 uses
  %i.h = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.h, label %.preheader.i, label %.lr.ph.i.preheader, !llvm.loop !26

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.d, 2147483640               ; 2 uses
  %i.i = and i64 %i.d, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.j = sub i64 %i.d, %index                     ; 2 uses
  %i.k = insertelement <4 x i64> poison, i64 %i.j, i64 0
  %i.l = shufflevector <4 x i64> %i.k, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.m = getelementptr [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %i.n = trunc <4 x i64> %i.l to <4 x i32>
  %reverse = add <4 x i32> %i.n, <i32 -4, i32 -3, i32 -2, i32 -1>
  %i.o = trunc <4 x i64> %i.l to <4 x i32>
  %reverse115 = add <4 x i32> %i.o, <i32 -8, i32 -7, i32 -6, i32 -5>
  %i.p = getelementptr i8, ptr %i.m, i64 -16
  %i.q = getelementptr i8, ptr %i.m, i64 -32
  store <4 x i32> %reverse, ptr %i.p, align 4
  store <4 x i32> %reverse115, ptr %i.q, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %_ZL14prepareReorderPKhiPiPhS2_.exit, label %.lr.ph.i.preheader121

.lr.ph.i.preheader121:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv40.i.ph = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader121, %.lr.ph.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.lr.ph.i ], [ %indvars.iv40.i.ph, %.lr.ph.i.preheader121 ] ; 2 uses
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, -1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next41.i
  %i.t = trunc nuw nsw i64 %indvars.iv.next41.i to i32
  store i32 %i.t, ptr %i.s, align 4
  %i.u = icmp sgt i64 %indvars.iv40.i, 1
  br i1 %i.u, label %.lr.ph.i, label %_ZL14prepareReorderPKhiPiPhS2_.exit, !llvm.loop !36

_ZL14prepareReorderPKhiPiPhS2_.exit:              ; preds = %.lr.ph.i, %middle.block
  %i.v = icmp eq i8 %spec.select.i, %.1.i
  %i.w = and i8 %spec.select.i, 1
  %i.x = icmp eq i8 %i.w, 0
  %or.cond = and i1 %i.v, %i.x
  br i1 %or.cond, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %.lr.ph.lr.ph.us.preheader

.lr.ph.lr.ph.us.preheader:                        ; preds = %_ZL14prepareReorderPKhiPiPhS2_.exit
  %i.y = or i8 %spec.select.i, 1
  %i.z = zext nneg i32 %1 to i64                  ; 3 uses
  br label %.lr.ph.lr.ph.us

.lr.ph.lr.ph.us:                                  ; preds = %.lr.ph.lr.ph.us.preheader, %.critedge.thread.us
  %.051.us = phi i8 [ %i.ar, %.critedge.thread.us ], [ %.1.i, %.lr.ph.lr.ph.us.preheader ] ; 3 uses
  br label %.lr.ph.us

bb.d:                                             ; preds = %.lr.ph.us, %bb.e
  %indvars.iv76.in = phi i32 [ %.03566.us, %.lr.ph.us ], [ %indvars.iv76, %bb.e ]
  %indvars.iv = phi i64 [ %i.at, %.lr.ph.us ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %indvars.iv76 = add i32 %indvars.iv76.in, 1     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = icmp ult i8 %i.ab, %.051.us
  br i1 %i.ac, label %bb.e, label %.critedge.preheader.us

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.ad, label %bb.d, label %.critedge.thread.us, !llvm.loop !37

.critedge.us:                                     ; preds = %.lr.ph
  %indvars.iv.next75 = add nsw i64 %indvars.iv.next75114, 1 ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.next75, %i.z
  br i1 %i.ae, label %.lr.ph, label %.critedge2.us, !llvm.loop !38

.lr.ph:                                           ; preds = %.critedge.preheader.us, %.critedge.us
  %indvars.iv.next75114 = phi i64 [ %indvars.iv.next75, %.critedge.us ], [ %indvars.iv.next75112, %.critedge.preheader.us ] ; 5 uses
  %indvars.iv74113 = phi i64 [ %indvars.iv.next75114, %.critedge.us ], [ %indvars.iv, %.critedge.preheader.us ]
  %i.af = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next75114
  %i.ag = load i8, ptr %i.af, align 1
  %.not42.us = icmp ult i8 %i.ag, %.051.us
  br i1 %.not42.us, label %.critedge2.us.split.loop.exit, label %.critedge.us, !llvm.loop !38

.critedge2.us.split.loop.exit:                    ; preds = %.lr.ph
  %i.ah = trunc nsw i64 %indvars.iv.next75114 to i32
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %.critedge.us, %.critedge.preheader.us, %.critedge2.us.split.loop.exit
  %indvars.iv74111 = phi i64 [ %indvars.iv74113, %.critedge2.us.split.loop.exit ], [ %indvars.iv, %.critedge.preheader.us ], [ %indvars.iv.next75114, %.critedge.us ] ; 3 uses
  %.lcssa = phi i32 [ %i.ah, %.critedge2.us.split.loop.exit ], [ %smax, %.critedge.preheader.us ], [ %smax, %.critedge.us ]
  %.lcssa98 = trunc i64 %indvars.iv74111 to i32
  %i.ai = icmp slt i64 %indvars.iv, %indvars.iv74111
end_hunk_0
