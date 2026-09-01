Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidiln?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@ubidi_getRuns_78:bb.a

bb.v:                                             ; preds = %bb.u, %.lr.ph.i175
  %indvars.iv.next.i179 = add nuw nsw i64 %indvars.iv.i176, 1 ; 2 uses
  %exitcond.not.i180 = icmp eq i64 %indvars.iv.next.i179, %wide.trip.count.i174
  br i1 %exitcond.not.i180, label %._crit_edge.i172, label %.lr.ph.i175, !llvm.loop !79

._crit_edge.i172:                                 ; preds = %bb.t, %bb.v
  tail call void @abort() #9
  unreachable

_ZL22getRunFromLogicalIndexP5UBiDii.exit181:      ; preds = %bb.u
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !59
  %i.ie = add nsw i32 %i.id, -1
  store i32 %i.ie, ptr %i.ic, align 4, !tbaa !59
  br label %bb.w

bb.w:                                             ; preds = %switch.early.test, %_ZL22getRunFromLogicalIndexP5UBiDii.exit181
  %i.if = getelementptr inbounds nuw i8, ptr %.0207, i64 2 ; 2 uses
  %i.ig = icmp ult ptr %i.if, %i.hi
  br i1 %i.ig, label %bb.s, label %.critedge159, !llvm.loop !82

.critedge159:                                     ; preds = %bb.w, %bb.r, %._crit_edge.thread, %.loopexit, %bb.a
  %.3 = phi i8 [ 1, %.loopexit ], [ 1, %bb.a ], [ 0, %._crit_edge.thread ], [ 1, %bb.r ], [ 1, %bb.w ]
  ret i8 %.3
}

; Function Attrs: mustprogress uwtable
define range(i32 0, 2) i32 @ubidi_getVisualRun_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = icmp eq ptr %i.a, %0
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not30 = icmp eq ptr %i.a, null
  br i1 %.not30, label %bb.n, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.d = icmp eq ptr %i.c, %i.a
  br i1 %i.d, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.e = tail call signext i8 @ubidi_getRuns_78(ptr noundef nonnull %0, ptr nonnull poison) ; 0 uses
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load i32, ptr %i.g, align 8, !tbaa !45
  %.not32 = icmp slt i32 %1, %i.h
  br i1 %.not32, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 2 uses
  %i.k = zext nneg i32 %1 to i64
  %i.l = getelementptr inbounds nuw [12 x i8], ptr %i.j, i64 %i.k ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !56   ; 2 uses
  %.not33 = icmp eq ptr %2, null
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = and i32 %i.m, 2147483647
  store i32 %i.n, ptr %2, align 4, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not34 = icmp eq ptr %3, null
  br i1 %.not34, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not35 = icmp eq i32 %1, 0
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !58
  %i.q = getelementptr i8, ptr %i.l, i64 -8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58
  %i.s = sub nsw i32 %i.p, %i.r
  br label %.sink.split

bb.l:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !58
  br label %.sink.split

.sink.split:                                      ; preds = %bb.l, %bb.k
  %.sink = phi i32 [ %i.s, %bb.k ], [ %i.u, %bb.l ]
  store i32 %.sink, ptr %3, align 4, !tbaa !53
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.i
  %i.v = lshr i32 %i.m, 31
  br label %bb.n

bb.n:                                             ; preds = %bb.e, %bb.f, %bb.a, %bb.c, %bb.d, %bb.m
  %.0 = phi i32 [ %i.v, %bb.m ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.f ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ubidi_reorderLogical_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #5 {
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !37    ; 3 uses
  %i.g = icmp ugt i8 %i.f, 126
  br i1 %i.g, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.f, i8 %.02436.i) ; 4 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.f, i8 %.037.i) ; 3 uses
  %i.h = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.h, label %.preheader.i, label %.lr.ph.i.preheader, !llvm.loop !83

.lr.ph.i.preheader:                               ; preds = %bb.c
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader123, label %vector.ph

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
  store <4 x i32> %reverse, ptr %i.p, align 4, !tbaa !53
  store <4 x i32> %reverse102, ptr %i.q, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %_ZL14prepareReorderPKhiPiPhS2_.exit, label %.lr.ph.i.preheader123

.lr.ph.i.preheader123:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %indvars.iv40.i.ph = phi i64 [ %i.d, %.lr.ph.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader123, %.lr.ph.i
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %.lr.ph.i ], [ %indvars.iv40.i.ph, %.lr.ph.i.preheader123 ] ; 2 uses
  %indvars.iv.next41.i = add nsw i64 %indvars.iv40.i, -1 ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next41.i
  %i.t = trunc nuw nsw i64 %indvars.iv.next41.i to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !53
  %i.u = icmp sgt i64 %indvars.iv40.i, 1
  br i1 %i.u, label %.lr.ph.i, label %_ZL14prepareReorderPKhiPiPhS2_.exit, !llvm.loop !85

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
  %.045.us = phi i8 [ %i.ax, %.critedge.thread.us ], [ %.1.i, %.lr.ph.lr.ph.us.preheader ] ; 3 uses
  br label %.lr.ph.us

bb.d:                                             ; preds = %.lr.ph.us, %bb.e
  %indvar = phi i64 [ 0, %.lr.ph.us ], [ %indvar.next, %bb.e ] ; 2 uses
  %indvars.iv67.in = phi i32 [ %.02957.us, %.lr.ph.us ], [ %indvars.iv67, %bb.e ]
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph.us ], [ %indvars.iv.next, %bb.e ] ; 10 uses
  %indvars.iv67 = add i32 %indvars.iv67.in, 1     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ac = icmp ult i8 %i.ab, %.045.us
  br i1 %i.ac, label %bb.e, label %.critedge.preheader.us

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv.next, %i.z
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ad, label %bb.d, label %.critedge.thread.us, !llvm.loop !86

.critedge.us:                                     ; preds = %.lr.ph
  %indvars.iv.next66 = add nsw i64 %indvars.iv.next66101, 1 ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.next66, %i.z
  br i1 %i.ae, label %.lr.ph, label %.critedge2.us, !llvm.loop !87

.lr.ph:                                           ; preds = %.critedge.preheader.us, %.critedge.us
  %indvars.iv.next66101 = phi i64 [ %indvars.iv.next66, %.critedge.us ], [ %indvars.iv.next6699, %.critedge.preheader.us ] ; 5 uses
  %indvars.iv65100 = phi i64 [ %indvars.iv.next66101, %.critedge.us ], [ %indvars.iv, %.critedge.preheader.us ]
  %i.af = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next66101
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %.not36.us = icmp ult i8 %i.ag, %.045.us
  br i1 %.not36.us, label %.critedge2.us.split.loop.exit, label %.critedge.us, !llvm.loop !87

.critedge2.us.split.loop.exit:                    ; preds = %.lr.ph
  %i.ah = trunc nsw i64 %indvars.iv.next66101 to i32
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %.critedge.us, %.critedge.preheader.us, %.critedge2.us.split.loop.exit
  %indvars.iv6598 = phi i64 [ %indvars.iv65100, %.critedge2.us.split.loop.exit ], [ %indvars.iv, %.critedge.preheader.us ], [ %indvars.iv.next66101, %.critedge.us ] ; 3 uses
  %.lcssa = phi i32 [ %i.ah, %.critedge2.us.split.loop.exit ], [ %smax, %.critedge.preheader.us ], [ %smax, %.critedge.us ]
  %.lcssa85 = trunc i64 %indvars.iv6598 to i32    ; 2 uses
  %i.ai = add i32 %.lcssa85, %i.ay                ; 2 uses
  %3 = add i64 %indvar, %i.ba
  %4 = tail call i64 @llvm.smax.i64(i64 %indvars.iv6598, i64 %indvars.iv)
  %reass.sub = sub i64 %4, %3
  %i.aj = add i64 %reass.sub, 1                   ; 3 uses
  %min.iters.check104 = icmp ult i64 %i.aj, 8
  br i1 %min.iters.check104, label %scalar.ph103.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %.critedge2.us
  %n.vec106 = and i64 %i.aj, -8                   ; 3 uses
  %i.ak = add i64 %indvars.iv, %n.vec106
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %2, i64 %indvars.iv
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next110, %vector.body107 ] ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.al, i64 %index108 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.am, align 4, !tbaa !53
  %wide.load109 = load <4 x i32>, ptr %i.an, align 4, !tbaa !53
  %i.ao = sub <4 x i32> %broadcast.splat, %wide.load
  %i.ap = sub <4 x i32> %broadcast.splat, %wide.load109
  store <4 x i32> %i.ao, ptr %i.am, align 4, !tbaa !53
  store <4 x i32> %i.ap, ptr %i.an, align 4, !tbaa !53
  %index.next110 = add nuw i64 %index108, 8       ; 2 uses
  %i.aq = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.aq, label %middle.block111, label %vector.body107, !llvm.loop !88

middle.block111:                                  ; preds = %vector.body107
  %cmp.n112 = icmp eq i64 %i.aj, %n.vec106
  br i1 %cmp.n112, label %.loopexit, label %scalar.ph103.preheader

scalar.ph103.preheader:                           ; preds = %.critedge2.us, %middle.block111
  %indvars.iv73.ph = phi i64 [ %indvars.iv, %.critedge2.us ], [ %i.ak, %middle.block111 ]
  br label %scalar.ph103

scalar.ph103:                                     ; preds = %scalar.ph103.preheader, %scalar.ph103
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %scalar.ph103 ], [ %indvars.iv73.ph, %scalar.ph103.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv73 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !53
  %i.at = sub i32 %i.ai, %i.as
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !53
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %5 = icmp slt i64 %indvars.iv73, %indvars.iv6598
  br i1 %5, label %scalar.ph103, label %.loopexit, !llvm.loop !89

.loopexit:                                        ; preds = %scalar.ph103, %middle.block111
  %i.au = icmp ne i32 %.lcssa, %1
  %i.av = add nsw i32 %.lcssa85, 2                ; 2 uses
  %i.aw = icmp slt i32 %i.av, %1
  %or.cond58 = select i1 %i.au, i1 %i.aw, i1 false
  br i1 %or.cond58, label %.lr.ph.us, label %.critedge.thread.us, !llvm.loop !90

.critedge.thread.us:                              ; preds = %.loopexit, %bb.e
  %i.ax = add i8 %.045.us, -1                     ; 2 uses
  %.not37.us = icmp ult i8 %i.ax, %i.y
  br i1 %.not37.us, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %.lr.ph.lr.ph.us, !llvm.loop !91

.critedge.preheader.us:                           ; preds = %bb.d
  %i.ay = trunc nsw i64 %indvars.iv to i32
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %indvars.iv67) ; 2 uses
  %indvars.iv.next6699 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = icmp slt i64 %indvars.iv.next6699, %i.z
  br i1 %i.az, label %.lr.ph, label %.critedge2.us

.lr.ph.us:                                        ; preds = %.loopexit, %.lr.ph.lr.ph.us
  %.02957.us = phi i32 [ 0, %.lr.ph.lr.ph.us ], [ %i.av, %.loopexit ] ; 2 uses
  %i.ba = sext i32 %.02957.us to i64              ; 2 uses
  br label %bb.d

_ZL14prepareReorderPKhiPiPhS2_.exit.thread:       ; preds = %.preheader.i, %.critedge.thread.us, %bb.b, %_ZL14prepareReorderPKhiPiPhS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ubidi_reorderVisual_78(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #5 {
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !37    ; 3 uses
  %i.g = icmp ugt i8 %i.f, 126
  br i1 %i.g, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %.preheader.i
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.f, i8 %.02436.i) ; 4 uses
  %.1.i = tail call i8 @llvm.umax.i8(i8 %i.f, i8 %.037.i) ; 3 uses
  %i.h = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.h, label %.preheader.i, label %.lr.ph.i.preheader, !llvm.loop !83

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
  store <4 x i32> %reverse, ptr %i.p, align 4, !tbaa !53
  store <4 x i32> %reverse115, ptr %i.q, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !92

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
  store i32 %i.t, ptr %i.s, align 4, !tbaa !53
  %i.u = icmp sgt i64 %indvars.iv40.i, 1
  br i1 %i.u, label %.lr.ph.i, label %_ZL14prepareReorderPKhiPiPhS2_.exit, !llvm.loop !93

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
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !37
  %i.ac = icmp ult i8 %i.ab, %.051.us
  br i1 %i.ac, label %bb.e, label %.critedge.preheader.us

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.ad, label %bb.d, label %.critedge.thread.us, !llvm.loop !94

.critedge.us:                                     ; preds = %.lr.ph
  %indvars.iv.next75 = add nsw i64 %indvars.iv.next75114, 1 ; 2 uses
  %i.ae = icmp slt i64 %indvars.iv.next75, %i.z
  br i1 %i.ae, label %.lr.ph, label %.critedge2.us, !llvm.loop !95

.lr.ph:                                           ; preds = %.critedge.preheader.us, %.critedge.us
  %indvars.iv.next75114 = phi i64 [ %indvars.iv.next75, %.critedge.us ], [ %indvars.iv.next75112, %.critedge.preheader.us ] ; 5 uses
  %indvars.iv74113 = phi i64 [ %indvars.iv.next75114, %.critedge.us ], [ %indvars.iv, %.critedge.preheader.us ]
  %i.af = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.next75114
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %.not42.us = icmp ult i8 %i.ag, %.051.us
  br i1 %.not42.us, label %.critedge2.us.split.loop.exit, label %.critedge.us, !llvm.loop !95

.critedge2.us.split.loop.exit:                    ; preds = %.lr.ph
  %i.ah = trunc nsw i64 %indvars.iv.next75114 to i32
  br label %.critedge2.us

.critedge2.us:                                    ; preds = %.critedge.us, %.critedge.preheader.us, %.critedge2.us.split.loop.exit
  %indvars.iv74111 = phi i64 [ %indvars.iv74113, %.critedge2.us.split.loop.exit ], [ %indvars.iv, %.critedge.preheader.us ], [ %indvars.iv.next75114, %.critedge.us ] ; 3 uses
  %.lcssa = phi i32 [ %i.ah, %.critedge2.us.split.loop.exit ], [ %smax, %.critedge.preheader.us ], [ %smax, %.critedge.us ]
  %.lcssa98 = trunc i64 %indvars.iv74111 to i32
  %i.ai = icmp slt i64 %indvars.iv, %indvars.iv74111
  br i1 %i.ai, label %.lr.ph65.us, label %._crit_edge.us

.lr.ph65.us:                                      ; preds = %.critedge2.us, %.lr.ph65.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph65.us ], [ %indvars.iv, %.critedge2.us ] ; 2 uses
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %.lr.ph65.us ], [ %indvars.iv74111, %.critedge2.us ] ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv84 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !53
  %i.al = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv80 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !53
  store i32 %i.am, ptr %i.aj, align 4, !tbaa !53
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !53
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %indvars.iv.next81 = add nsw i64 %indvars.iv80, -1 ; 2 uses
  %i.an = icmp slt i64 %indvars.iv.next85, %indvars.iv.next81
  br i1 %i.an, label %.lr.ph65.us, label %._crit_edge.us, !llvm.loop !96

._crit_edge.us:                                   ; preds = %.lr.ph65.us, %.critedge2.us
  %i.ao = icmp ne i32 %.lcssa, %1
  %i.ap = add nsw i32 %.lcssa98, 2                ; 2 uses
  %i.aq = icmp slt i32 %i.ap, %1
  %or.cond67 = select i1 %i.ao, i1 %i.aq, i1 false
  br i1 %or.cond67, label %.lr.ph.us, label %.critedge.thread.us, !llvm.loop !97

.critedge.thread.us:                              ; preds = %._crit_edge.us, %bb.e
  %i.ar = add i8 %.051.us, -1                     ; 2 uses
  %.not43.us = icmp ult i8 %i.ar, %i.y
  br i1 %.not43.us, label %_ZL14prepareReorderPKhiPiPhS2_.exit.thread, label %.lr.ph.lr.ph.us, !llvm.loop !98

.critedge.preheader.us:                           ; preds = %bb.d
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %indvars.iv76) ; 2 uses
  %indvars.iv.next75112 = add nsw i64 %indvars.iv, 1 ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next75112, %i.z
  br i1 %i.as, label %.lr.ph, label %.critedge2.us

.lr.ph.us:                                        ; preds = %._crit_edge.us, %.lr.ph.lr.ph.us
  %.03566.us = phi i32 [ 0, %.lr.ph.lr.ph.us ], [ %i.ap, %._crit_edge.us ] ; 2 uses
  %i.at = sext i32 %.03566.us to i64
  br label %bb.d

_ZL14prepareReorderPKhiPiPhS2_.exit.thread:       ; preds = %.preheader.i, %.critedge.thread.us, %bb.b, %_ZL14prepareReorderPKhiPiPhS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define i32 @ubidi_getVisualIndex_78(ptr noundef %0, i32 noundef %1, ptr nofree noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %2, align 4, !tbaa !8
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %.not134 = icmp eq ptr %0, null
  br i1 %.not134, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.e = icmp eq ptr %i.d, %0
  br i1 %i.e, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not135 = icmp eq ptr %i.d, null
  br i1 %.not135, label %bb.g, label %bb.f
end_hunk_0
begin_hunk_1_@ubidi_getVisualMap_78:bb.a
    i16 8235, label %bb.ab
    i16 8234, label %bb.ab
  ]

bb.aa:                                            ; preds = %switch.early.test.1
  %i.jo = add nsw i32 %.3, 1
  %i.jp = sext i32 %.3 to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jp
  %i.jr = trunc nuw nsw i64 %i.jj to i32
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !53
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %.lr.ph178.split.1
  %.3.1 = phi i32 [ %.3, %switch.early.test.1 ], [ %i.jo, %bb.aa ], [ %.3, %.lr.ph178.split.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit162.loopexit346.unr-lcssa, label %.lr.ph178.split, !llvm.loop !135

.loopexit162.loopexit:                            ; preds = %.lr.ph181.prol.loopexit, %.lr.ph181, %middle.block311
  %indvars.iv.next230.lcssa = phi i64 [ %i.gu, %middle.block311 ], [ %indvars.iv.next230.lcssa348.unr, %.lr.ph181.prol.loopexit ], [ %indvars.iv.next230.3, %.lr.ph181 ]
  %i.js = trunc nsw i64 %indvars.iv.next230.lcssa to i32
  br label %.loopexit162

.loopexit162.loopexit345.unr-lcssa:               ; preds = %bb.y
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.loopexit162, label %.lr.ph178.split.us.epil.preheader

.lr.ph178.split.us.epil.preheader:                ; preds = %.loopexit162.loopexit345.unr-lcssa, %.lr.ph178.split.us.preheader
  %indvars.iv223.epil.init = phi i64 [ 0, %.lr.ph178.split.us.preheader ], [ %indvars.iv.next224.1, %.loopexit162.loopexit345.unr-lcssa ]
  %.2176.us.epil.init = phi i32 [ %.0185, %.lr.ph178.split.us.preheader ], [ %.3.us.1, %.loopexit162.loopexit345.unr-lcssa ] ; 12 uses
  %lcmp.mod358 = trunc i32 %i.gg to i1
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.jt = xor i64 %indvars.iv223.epil.init, -1
  %i.ju = add nsw i64 %i.ie, %i.jt                ; 2 uses
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !39
  %.fr161.us.epil = freeze i16 %i.jw              ; 2 uses
  %i.jx = and i16 %.fr161.us.epil, -4
  %i.jy = icmp eq i16 %i.jx, 8204
  br i1 %i.jy, label %.loopexit162, label %switch.early.test.us.epil

switch.early.test.us.epil:                        ; preds = %.lr.ph178.split.us.epil.preheader
  switch i16 %.fr161.us.epil, label %bb.ac [
    i16 8297, label %.loopexit162
    i16 8296, label %.loopexit162
    i16 8295, label %.loopexit162
    i16 8294, label %.loopexit162
    i16 8238, label %.loopexit162
    i16 8237, label %.loopexit162
    i16 8236, label %.loopexit162
    i16 8235, label %.loopexit162
    i16 8234, label %.loopexit162
  ]

bb.ac:                                            ; preds = %switch.early.test.us.epil
  %i.jz = add nsw i32 %.2176.us.epil.init, 1
  %i.ka = sext i32 %.2176.us.epil.init to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ka
  %i.kc = trunc nsw i64 %i.ju to i32
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !53
  br label %.loopexit162

.loopexit162.loopexit346.unr-lcssa:               ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit162, label %.lr.ph178.split.epil.preheader

.lr.ph178.split.epil.preheader:                   ; preds = %.loopexit162.loopexit346.unr-lcssa, %.lr.ph178.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph178.split.preheader ], [ %indvars.iv.next.1, %.loopexit162.loopexit346.unr-lcssa ]
  %.2176.epil.init = phi i32 [ %.0185, %.lr.ph178.split.preheader ], [ %.3.1, %.loopexit162.loopexit346.unr-lcssa ] ; 12 uses
  %lcmp.mod354 = trunc i32 %i.gg to i1
  tail call void @llvm.assume(i1 %lcmp.mod354)
  %i.kd = add nuw nsw i64 %indvars.iv.epil.init, %i.ic ; 2 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.kd
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !39
  %.fr161.epil = freeze i16 %i.kf                 ; 2 uses
  %i.kg = and i16 %.fr161.epil, -4
  %i.kh = icmp eq i16 %i.kg, 8204
  br i1 %i.kh, label %.loopexit162, label %switch.early.test.epil

switch.early.test.epil:                           ; preds = %.lr.ph178.split.epil.preheader
  switch i16 %.fr161.epil, label %bb.ad [
    i16 8297, label %.loopexit162
    i16 8296, label %.loopexit162
    i16 8295, label %.loopexit162
    i16 8294, label %.loopexit162
    i16 8238, label %.loopexit162
    i16 8237, label %.loopexit162
    i16 8236, label %.loopexit162
    i16 8235, label %.loopexit162
    i16 8234, label %.loopexit162
  ]

bb.ad:                                            ; preds = %switch.early.test.epil
  %i.ki = add nsw i32 %.2176.epil.init, 1
  %i.kj = sext i32 %.2176.epil.init to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kj
  %i.kl = trunc nuw nsw i64 %i.kd to i32
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !53
  br label %.loopexit162

.loopexit162:                                     ; preds = %.loopexit162.loopexit346.unr-lcssa, %bb.ad, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %.lr.ph178.split.epil.preheader, %.loopexit162.loopexit345.unr-lcssa, %bb.ac, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %.lr.ph178.split.us.epil.preheader, %.loopexit162.loopexit, %bb.v, %.preheader, %bb.t
  %.4 = phi i32 [ %i.gl, %bb.t ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.0185, %.preheader ], [ %.0185, %bb.v ], [ %i.js, %.loopexit162.loopexit ], [ %.3.us.1, %.loopexit162.loopexit345.unr-lcssa ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %i.jz, %bb.ac ], [ %.2176.us.epil.init, %.lr.ph178.split.us.epil.preheader ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.3.1, %.loopexit162.loopexit346.unr-lcssa ], [ %.2176.epil.init, %switch.early.test.epil ], [ %i.ki, %bb.ad ], [ %.2176.epil.init, %.lr.ph178.split.epil.preheader ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit, label %bb.s, !llvm.loop !136

.loopexit.sink.split:                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 27, %bb.d ], [ 27, %bb.f ], [ 27, %bb.g ]
  store i32 %.sink, ptr %2, align 4, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit162, %bb.p, %.loopexit.sink.split, %bb.j, %bb.r, %._crit_edge192, %bb.h, %bb.q, %bb.a, %bb.b, %ubidi_countRuns_78.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ubidi_invertMap_78(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.041 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02740 = phi i32 [ %spec.select, %.lr.ph ], [ -1, %.lr.ph.preheader ]
  %.02939 = phi ptr [ %i.f, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds i8, ptr %.02939, i64 -4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !53   ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.02740) ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = zext i1 %i.h to i32
  %.1 = add nuw nsw i32 %.041, %i.i               ; 2 uses
  %i.j = icmp ugt ptr %i.f, %0
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !137

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp sgt i32 %.1, %spec.select
  br i1 %.not, label %.lr.ph46.preheader, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = add nsw i32 %spec.select, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 -1, i64 %i.m, i1 false)
  br label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %._crit_edge, %bb.b
  br label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.preheader, %bb.d
  %.13044 = phi ptr [ %i.n, %bb.d ], [ %i.e, %.lr.ph46.preheader ]
  %.03143 = phi i32 [ %i.q, %bb.d ], [ %2, %.lr.ph46.preheader ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.13044, i64 -4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !53   ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  %i.q = add nsw i32 %.03143, -1                  ; 2 uses
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph46
  %i.r = zext nneg i32 %i.o to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.r
  store i32 %i.q, ptr %i.s, align 4, !tbaa !53
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph46, %bb.c
  %i.t = icmp sgt i32 %.03143, 1
  br i1 %i.t, label %.lr.ph46, label %.loopexit, !llvm.loop !138

.loopexit:                                        ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"_ZTS10UErrorCode", !6, i64 0}
!10 = !{!11, !12, i64 0}
!11 = !{!"_ZTS5UBiDi", !12, i64 0, !14, i64 8, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !17, i64 80, !18, i64 88, !19, i64 96, !6, i64 104, !6, i64 105, !15, i64 112, !15, i64 120, !6, i64 128, !20, i64 132, !5, i64 136, !6, i64 140, !6, i64 141, !6, i64 142, !14, i64 144, !5, i64 152, !14, i64 160, !5, i64 168, !21, i64 176, !22, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !5, i64 200, !17, i64 208, !6, i64 216, !5, i64 296, !18, i64 304, !6, i64 312, !5, i64 324, !19, i64 328, !6, i64 336, !23, i64 416, !5, i64 440, !13, i64 448, !13, i64 456}
!12 = !{!"p1 _ZTS5UBiDi", !13, i64 0}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 char16_t", !13, i64 0}
!15 = !{!"p1 omnipotent char", !13, i64 0}
!16 = !{!"p1 _ZTS7Opening", !13, i64 0}
!17 = !{!"p1 _ZTS4Para", !13, i64 0}
!18 = !{!"p1 _ZTS3Run", !13, i64 0}
!19 = !{!"p1 _ZTS7Isolate", !13, i64 0}
!20 = !{!"_ZTS19UBiDiReorderingMode", !6, i64 0}
!21 = !{!"p1 _ZTS10ImpTabPair", !13, i64 0}
!22 = !{!"_ZTS14UBiDiDirection", !6, i64 0}
!23 = !{!"_ZTS12InsertPoints", !5, i64 0, !5, i64 4, !5, i64 8, !9, i64 12, !24, i64 16}
!24 = !{!"p1 _ZTS5Point", !13, i64 0}
!25 = !{!11, !5, i64 20}
!26 = !{!11, !14, i64 8}
!27 = !{!11, !5, i64 16}
!28 = !{!11, !5, i64 24}
!29 = !{!11, !6, i64 142}
!30 = !{!11, !17, i64 208}
!31 = !{!32, !5, i64 0}
!32 = !{!"_ZTS4Para", !5, i64 0, !5, i64 4}
!33 = !{!11, !6, i64 141}
!34 = !{!11, !5, i64 200}
!35 = !{!11, !18, i64 304}
!36 = !{!11, !5, i64 188}
!37 = !{!6, !6, i64 0}
!38 = !{!11, !5, i64 440}
!39 = !{!40, !40, i64 0}
!40 = !{!"char16_t", !6, i64 0}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{!11, !15, i64 112}
!44 = !{!11, !15, i64 120}
!45 = !{!11, !5, i64 296}
!46 = !{!11, !22, i64 184}
!47 = !{!11, !5, i64 196}
!48 = distinct !{!48, !42}
!49 = distinct !{!49, !42}
!50 = distinct !{!50, !42}
!51 = !{!11, !6, i64 104}
!52 = !{!11, !15, i64 64}
!53 = !{!5, !5, i64 0}
!54 = distinct !{!54, !42}
!55 = !{!11, !20, i64 132}
!56 = !{!57, !5, i64 0}
!57 = !{!"_ZTS3Run", !5, i64 0, !5, i64 4, !5, i64 8}
!58 = !{!57, !5, i64 4}
!59 = !{!57, !5, i64 8}
!60 = distinct !{!60, !42, !61, !62}
!61 = !{!"llvm.loop.isvectorized", i32 1}
!62 = !{!"llvm.loop.unroll.runtime.disable"}
!63 = distinct !{!63, !42, !62, !61}
!64 = !{!11, !6, i64 105}
!65 = !{!11, !18, i64 88}
!66 = distinct !{!66, !42}
!67 = distinct !{!67, !42}
!68 = distinct !{!68, !42}
!69 = !{i64 0, i64 4, !53, i64 4, i64 4, !53, i64 8, i64 4, !53}
!70 = distinct !{!70, !42}
!71 = distinct !{!71, !42}
!72 = distinct !{!72, !42}
!73 = distinct !{!73, !42}
!74 = distinct !{!74, !42}
!75 = !{!11, !5, i64 420}
!76 = !{!11, !24, i64 432}
!77 = !{!78, !5, i64 0}
!78 = !{!"_ZTS5Point", !5, i64 0, !5, i64 4}
!79 = distinct !{!79, !42}
!80 = !{!78, !5, i64 4}
!81 = distinct !{!81, !42}
!82 = distinct !{!82, !42}
!83 = distinct !{!83, !42}
!84 = distinct !{!84, !42, !61, !62}
!85 = distinct !{!85, !42, !62, !61}
!86 = distinct !{!86, !42}
!87 = distinct !{!87, !42}
!88 = distinct !{!88, !42, !61, !62}
!89 = distinct !{!89, !42, !62, !61}
!90 = distinct !{!90, !42}
!91 = distinct !{!91, !42}
!92 = distinct !{!92, !42, !61, !62}
!93 = distinct !{!93, !42, !62, !61}
!94 = distinct !{!94, !42}
!95 = distinct !{!95, !42}
!96 = distinct !{!96, !42}
!97 = distinct !{!97, !42}
!98 = distinct !{!98, !42}
!99 = distinct !{!99, !42}
!100 = distinct !{!100, !42}
!101 = distinct !{!101, !42}
!102 = distinct !{!102, !42, !61, !62}
!103 = distinct !{!103, !42, !62, !61}
!104 = distinct !{!104, !42}
!105 = distinct !{!105, !42}
!106 = distinct !{!106, !42}
!107 = distinct !{!107, !42}
!108 = distinct !{!108, !42}
!109 = distinct !{!109, !42, !61, !62}
!110 = distinct !{!110, !42, !62, !61}
!111 = distinct !{!111, !42, !61, !62}
!112 = distinct !{!112, !42, !62, !61}
!113 = distinct !{!113, !42}
!114 = distinct !{!114, !42, !61, !62}
!115 = distinct !{!115, !42, !62, !61}
!116 = distinct !{!116, !42}
!117 = distinct !{!117, !42}
!118 = distinct !{!118, !42, !61, !62}
!119 = distinct !{!119, !42, !62, !61}
!120 = distinct !{!120, !42}
!121 = distinct !{!121, !42, !61, !62}
!122 = distinct !{!122, !42, !62, !61}
!123 = distinct !{!123, !42, !61, !62}
!124 = distinct !{!124, !42, !62, !61}
!125 = distinct !{!125, !42}
!126 = distinct !{!126, !42, !61, !62}
!127 = distinct !{!127, !42, !62, !61}
!128 = distinct !{!128, !42, !61, !62}
!129 = distinct !{!129, !42, !61}
!130 = distinct !{!130, !42}
!131 = distinct !{!131, !42, !61, !62}
!132 = distinct !{!132, !133}
!133 = !{!"llvm.loop.unroll.disable"}
!134 = distinct !{!134, !42, !61}
!135 = distinct !{!135, !42}
!136 = distinct !{!136, !42}
!137 = distinct !{!137, !42}
!138 = distinct !{!138, !42}
end_hunk_1
