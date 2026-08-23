Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/FxchDiv?download=true
inline.NumInlined: 240
inline.NumDeleted: 40
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Fxch_DivSepareteCubes:bb.a
  %i.t = shl nuw nsw i32 %i.l, 1
  %spec.select.i = select i1 %i.s, i32 %i.t, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.l, %spec.select.i
  %.pre48 = load ptr, ptr %i.e, align 8, !tbaa !26 ; 3 uses
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %.not9.i10.i = icmp eq ptr %.pre48, null
  %i.u = zext nneg i32 %spec.select.i to i64
  %i.v = shl nuw nsw i64 %i.u, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = tail call ptr @realloc(ptr noundef nonnull %.pre48, i64 noundef %i.v) #18
  br label %Vec_IntGrow.exit11.sink.split.i

bb.k:                                             ; preds = %bb.i
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %bb.k, %bb.f, %bb.g
  %i.y = phi ptr [ %i.r, %bb.g ], [ %i.q, %bb.f ], [ %i.w, %bb.j ], [ %i.x, %bb.k ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.g ], [ 16, %bb.f ], [ %spec.select.i, %bb.j ], [ %spec.select.i, %bb.k ]
  store ptr %i.y, ptr %i.e, align 8, !tbaa !26
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !28
  %.pre49 = load i32, ptr %i.d, align 4, !tbaa !19
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.z = phi i32 [ %i.l, %.Vec_IntPush.exit_crit_edge ], [ %i.l, %bb.h ], [ %.pre49, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aa = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre48, %bb.h ], [ %i.y, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ab = add nsw i32 %i.z, 1
  store i32 %i.ab, ptr %i.d, align 4, !tbaa !19
  br label %bb.u

bb.l:                                             ; preds = %bb.b
  %i.ac = load i32, ptr %i.f, align 4, !tbaa !19  ; 7 uses
  %i.ad = load i32, ptr %1, align 8, !tbaa !28
  %i.ae = icmp eq i32 %i.ac, %i.ad
  br i1 %i.ae, label %bb.m, label %.Vec_IntPush.exit43_crit_edge

.Vec_IntPush.exit43_crit_edge:                    ; preds = %bb.l
  %.pre50 = load ptr, ptr %i.g, align 8, !tbaa !26
  br label %Vec_IntPush.exit43

bb.m:                                             ; preds = %bb.l
  %i.af = icmp slt i32 %i.ac, 16
  br i1 %i.af, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.ag = load ptr, ptr %i.g, align 8, !tbaa !26  ; 2 uses
  %.not9.i.i41 = icmp eq ptr %i.ag, null
  br i1 %.not9.i.i41, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ah = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ag, i64 noundef 64) #18
  br label %Vec_IntGrow.exit11.sink.split.i39

bb.p:                                             ; preds = %bb.n
  %i.ai = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i39

bb.q:                                             ; preds = %bb.m
  %i.aj = icmp samesign ult i32 %i.ac, 1073741823
  %i.ak = shl nuw nsw i32 %i.ac, 1
  %spec.select.i36 = select i1 %i.aj, i32 %i.ak, i32 2147483647 ; 4 uses
  %.not.i9.i37 = icmp samesign ult i32 %i.ac, %spec.select.i36
  %.pre51 = load ptr, ptr %i.g, align 8, !tbaa !26 ; 3 uses
  br i1 %.not.i9.i37, label %bb.r, label %Vec_IntPush.exit43

bb.r:                                             ; preds = %bb.q
  %.not9.i10.i38 = icmp eq ptr %.pre51, null
  %i.al = zext nneg i32 %spec.select.i36 to i64
  %i.am = shl nuw nsw i64 %i.al, 2                ; 2 uses
  br i1 %.not9.i10.i38, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.an = tail call ptr @realloc(ptr noundef nonnull %.pre51, i64 noundef %i.am) #18
  br label %Vec_IntGrow.exit11.sink.split.i39

bb.t:                                             ; preds = %bb.r
  %i.ao = tail call noalias ptr @malloc(i64 noundef %i.am) #19
  br label %Vec_IntGrow.exit11.sink.split.i39

Vec_IntGrow.exit11.sink.split.i39:                ; preds = %bb.s, %bb.t, %bb.o, %bb.p
  %i.ap = phi ptr [ %i.ai, %bb.p ], [ %i.ah, %bb.o ], [ %i.an, %bb.s ], [ %i.ao, %bb.t ] ; 2 uses
  %spec.select.sink.i40 = phi i32 [ 16, %bb.p ], [ 16, %bb.o ], [ %spec.select.i36, %bb.s ], [ %spec.select.i36, %bb.t ]
  store ptr %i.ap, ptr %i.g, align 8, !tbaa !26
  store i32 %spec.select.sink.i40, ptr %1, align 8, !tbaa !28
  %.pre52 = load i32, ptr %i.f, align 4, !tbaa !19
  br label %Vec_IntPush.exit43

Vec_IntPush.exit43:                               ; preds = %.Vec_IntPush.exit43_crit_edge, %bb.q, %Vec_IntGrow.exit11.sink.split.i39
  %i.aq = phi i32 [ %i.ac, %.Vec_IntPush.exit43_crit_edge ], [ %i.ac, %bb.q ], [ %.pre52, %Vec_IntGrow.exit11.sink.split.i39 ] ; 2 uses
  %i.ar = phi ptr [ %.pre50, %.Vec_IntPush.exit43_crit_edge ], [ %.pre51, %bb.q ], [ %i.ap, %Vec_IntGrow.exit11.sink.split.i39 ]
  %i.as = add nsw i32 %i.aq, 1
  store i32 %i.as, ptr %i.f, align 4, !tbaa !19
  br label %bb.u

bb.u:                                             ; preds = %Vec_IntPush.exit, %Vec_IntPush.exit43
  %.sink = phi i32 [ %i.z, %Vec_IntPush.exit ], [ %i.aq, %Vec_IntPush.exit43 ]
  %.sink62 = phi ptr [ %i.aa, %Vec_IntPush.exit ], [ %i.ar, %Vec_IntPush.exit43 ]
  %i.at = sext i32 %.sink to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %.sink62, i64 %i.at
  store i32 %i.k, ptr %i.au, align 4, !tbaa !27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val35 = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %i.av = sext i32 %.val35 to i64
  %i.aw = icmp slt i64 %indvars.iv.next, %i.av
  br i1 %i.aw, label %bb.b, label %.critedge, !llvm.loop !69

.critedge:                                        ; preds = %bb.u
  %i.ax = icmp eq i32 %.val35, 4
  br i1 %i.ax, label %bb.v, label %.critedge.thread

bb.v:                                             ; preds = %.critedge
  %i.ay = getelementptr i8, ptr %1, i64 4
  %.val33 = load i32, ptr %i.ay, align 4, !tbaa !19
  %i.az = icmp eq i32 %.val33, 3
  br i1 %i.az, label %bb.w, label %.critedge.thread

bb.w:                                             ; preds = %bb.v
  %i.ba = getelementptr i8, ptr %1, i64 8
  %.val32 = load ptr, ptr %i.ba, align 8, !tbaa !26 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.val32, i64 4 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !27 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.val32, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !27 ; 2 uses
  %i.bf = icmp sgt i32 %i.bc, %i.be
  br i1 %i.bf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.be, ptr %i.bb, align 4, !tbaa !27
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !27
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bg = getelementptr i8, ptr %2, i64 8
  %.val31 = load ptr, ptr %i.bg, align 8, !tbaa !26 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val31, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.val31, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !27 ; 2 uses
  %i.bl = icmp sgt i32 %i.bi, %i.bk
  br i1 %i.bl, label %bb.z, label %.critedge.thread

bb.z:                                             ; preds = %bb.y
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !27
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !27
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.a, %bb.y, %bb.z, %bb.v, %.critedge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Fxch_DivRemoveLits(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 4          ; 7 uses
  %.val103222 = load i32, ptr %i.a, align 4, !tbaa !19
  %i.b = icmp sgt i32 %.val103222, 0
  br i1 %i.b, label %.lr.ph, label %.critedge4.thread

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %2, i64 8
  %.val96 = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

.critedge.preheader:                              ; preds = %bb.i
  %i.f = icmp sgt i32 %.val103, 0
  br i1 %i.f, label %.lr.ph230, label %.critedge4.thread

.lr.ph230:                                        ; preds = %.critedge.preheader
  %i.g = getelementptr i8, ptr %2, i64 8
  %.val95 = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.h, align 4, !tbaa !19   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 1
  br i1 %i.k, label %.lr.ph230.split, label %.critedge2

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.080225 = phi i32 [ 0, %.lr.ph ], [ %.181, %bb.i ] ; 2 uses
  %.082224 = phi i32 [ 0, %.lr.ph ], [ %.183, %bb.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %.val96, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !27   ; 2 uses
  %i.n = ashr i32 %i.m, 1                         ; 2 uses
  %i.o = and i32 %i.m, 2
  %.not = icmp eq i32 %i.o, 0
  %i.p = load i32, ptr %i.d, align 4, !tbaa !19   ; 9 uses
  %i.q = icmp sgt i32 %i.p, 1                     ; 2 uses
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.q, label %.lr.ph.i, label %Vec_IntRemove1.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.p to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %indvar.i = phi i64 [ 0, %.lr.ph.i ], [ %indvar.next.i, %bb.e ] ; 3 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !27
  %i.u = icmp eq i32 %i.t, %i.n
  br i1 %i.u, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %bb.d
  %i.v = trunc nuw nsw i64 %indvars.iv.i to i32
  %.122.i = add nuw nsw i32 %i.v, 1
  %i.w = icmp slt i32 %.122.i, %i.p
  br i1 %i.w, label %.lr.ph25.i, label %._crit_edge.i

.lr.ph25.i:                                       ; preds = %.preheader.i
  %i.x = shl nuw nsw i64 %indvars.iv.i, 2
  %i.y = getelementptr nuw i8, ptr %i.r, i64 %i.x
  %4 = shl nuw nsw i64 %indvar.i, 2
  %scevgep.i = getelementptr nuw i8, ptr %i.r, i64 %4
  %scevgep29.i = getelementptr nuw i8, ptr %scevgep.i, i64 8
  %i.z = add nsw i32 %i.p, -3
  %i.aa = trunc i64 %indvar.i to i32
  %i.ab = sub i32 %i.z, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.y, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i, i64 %i.ae, i1 false), !tbaa !27
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !19
  br label %._crit_edge.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  %indvar.next.i = add nuw nsw i64 %indvar.i, 1
  br i1 %exitcond.not.i, label %Vec_IntRemove1.exit, label %bb.d, !llvm.loop !70

._crit_edge.i:                                    ; preds = %.lr.ph25.i, %.preheader.i
  %i.af = phi i32 [ %.pre.i, %.lr.ph25.i ], [ %i.p, %.preheader.i ]
  %i.ag = add nsw i32 %i.af, -1
  store i32 %i.ag, ptr %i.d, align 4, !tbaa !19
  br label %Vec_IntRemove1.exit

Vec_IntRemove1.exit:                              ; preds = %bb.e, %bb.c, %._crit_edge.i
  %.018.i = phi i32 [ 1, %._crit_edge.i ], [ 0, %bb.c ], [ 0, %bb.e ]
  %i.ah = add nsw i32 %.018.i, %.080225
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  br i1 %i.q, label %.lr.ph.i105, label %Vec_IntRemove1.exit119

.lr.ph.i105:                                      ; preds = %bb.f
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !26  ; 3 uses
  %wide.trip.count.i106 = zext nneg i32 %i.p to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i105
  %indvar.i107 = phi i64 [ 0, %.lr.ph.i105 ], [ %indvar.next.i111, %bb.h ] ; 3 uses
  %indvars.iv.i108 = phi i64 [ 1, %.lr.ph.i105 ], [ %indvars.iv.next.i109, %bb.h ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i108
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !27
  %i.al = icmp eq i32 %i.ak, %i.n
  br i1 %i.al, label %.preheader.i112, label %bb.h

.preheader.i112:                                  ; preds = %bb.g
  %i.am = trunc nuw nsw i64 %indvars.iv.i108 to i32
  %.122.i113 = add nuw nsw i32 %i.am, 1
  %i.an = icmp slt i32 %.122.i113, %i.p
  br i1 %i.an, label %.lr.ph25.i115, label %._crit_edge.i114

.lr.ph25.i115:                                    ; preds = %.preheader.i112
  %i.ao = shl nuw nsw i64 %indvars.iv.i108, 2
  %i.ap = getelementptr nuw i8, ptr %i.ai, i64 %i.ao
  %5 = shl nuw nsw i64 %indvar.i107, 2
  %scevgep.i116 = getelementptr nuw i8, ptr %i.ai, i64 %5
  %scevgep29.i117 = getelementptr nuw i8, ptr %scevgep.i116, i64 8
  %i.aq = add nsw i32 %i.p, -3
  %i.ar = trunc i64 %indvar.i107 to i32
  %i.as = sub i32 %i.aq, %i.ar
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = add nuw nsw i64 %i.au, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ap, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i117, i64 %i.av, i1 false), !tbaa !27
  %.pre.i118 = load i32, ptr %i.d, align 4, !tbaa !19
  br label %._crit_edge.i114

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %wide.trip.count.i106
  %indvar.next.i111 = add nuw nsw i64 %indvar.i107, 1
  br i1 %exitcond.not.i110, label %Vec_IntRemove1.exit119, label %bb.g, !llvm.loop !70

._crit_edge.i114:                                 ; preds = %.lr.ph25.i115, %.preheader.i112
  %i.aw = phi i32 [ %.pre.i118, %.lr.ph25.i115 ], [ %i.p, %.preheader.i112 ]
  %i.ax = add nsw i32 %i.aw, -1
  store i32 %i.ax, ptr %i.d, align 4, !tbaa !19
  br label %Vec_IntRemove1.exit119

Vec_IntRemove1.exit119:                           ; preds = %bb.h, %bb.f, %._crit_edge.i114
  %.018.i104 = phi i32 [ 1, %._crit_edge.i114 ], [ 0, %bb.f ], [ 0, %bb.h ]
  %i.ay = add nsw i32 %.018.i104, %.082224
  br label %bb.i

bb.i:                                             ; preds = %Vec_IntRemove1.exit, %Vec_IntRemove1.exit119
  %.183 = phi i32 [ %.082224, %Vec_IntRemove1.exit ], [ %i.ay, %Vec_IntRemove1.exit119 ] ; 3 uses
  %.181 = phi i32 [ %i.ah, %Vec_IntRemove1.exit ], [ %.080225, %Vec_IntRemove1.exit119 ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val103 = load i32, ptr %i.a, align 4, !tbaa !19 ; 4 uses
  %i.az = sext i32 %.val103 to i64
  %i.ba = icmp slt i64 %indvars.iv.next, %i.az
  br i1 %i.ba, label %bb.b, label %.critedge.preheader, !llvm.loop !71

.lr.ph230.split:                                  ; preds = %.lr.ph230, %Vec_IntRemove1.exit135
  %.val102.pr283 = phi i32 [ %.val102.pr, %Vec_IntRemove1.exit135 ], [ %.val103, %.lr.ph230 ] ; 2 uses
  %i.bb = phi i32 [ %i.bw, %Vec_IntRemove1.exit135 ], [ %i.j, %.lr.ph230 ] ; 7 uses
  %indvars.iv271 = phi i64 [ %indvars.iv.next272, %Vec_IntRemove1.exit135 ], [ 0, %.lr.ph230 ] ; 2 uses
  %.079229 = phi i32 [ %i.bx, %Vec_IntRemove1.exit135 ], [ 0, %.lr.ph230 ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.val95, i64 %indvars.iv271
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !27
  %i.be = ashr i32 %i.bd, 1
  %i.bf = icmp sgt i32 %i.bb, 1
  br i1 %i.bf, label %.lr.ph.i121, label %Vec_IntRemove1.exit135

.lr.ph.i121:                                      ; preds = %.lr.ph230.split
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !26  ; 3 uses
  %wide.trip.count.i122 = zext nneg i32 %i.bb to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %.lr.ph.i121
  %indvar.i123 = phi i64 [ 0, %.lr.ph.i121 ], [ %indvar.next.i127, %bb.k ] ; 3 uses
  %indvars.iv.i124 = phi i64 [ 1, %.lr.ph.i121 ], [ %indvars.iv.next.i125, %bb.k ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i124
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !27
  %i.bj = icmp eq i32 %i.bi, %i.be
  br i1 %i.bj, label %.preheader.i128, label %bb.k

.preheader.i128:                                  ; preds = %bb.j
  %i.bk = trunc nuw nsw i64 %indvars.iv.i124 to i32
  %.122.i129 = add nuw nsw i32 %i.bk, 1
  %i.bl = icmp slt i32 %.122.i129, %i.bb
  br i1 %i.bl, label %.lr.ph25.i131, label %._crit_edge.i130

.lr.ph25.i131:                                    ; preds = %.preheader.i128
  %i.bm = shl nuw nsw i64 %indvars.iv.i124, 2
  %i.bn = getelementptr nuw i8, ptr %i.bg, i64 %i.bm
  %6 = shl nuw nsw i64 %indvar.i123, 2
  %scevgep.i132 = getelementptr nuw i8, ptr %i.bg, i64 %6
  %scevgep29.i133 = getelementptr nuw i8, ptr %scevgep.i132, i64 8
  %i.bo = add nsw i32 %i.bb, -3
  %i.bp = trunc i64 %indvar.i123 to i32
  %i.bq = sub i32 %i.bo, %i.bp
  %i.br = zext i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = add nuw nsw i64 %i.bs, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bn, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i133, i64 %i.bt, i1 false), !tbaa !27
  %.pre.i134 = load i32, ptr %i.h, align 4, !tbaa !19
  br label %._crit_edge.i130

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next.i125 = add nuw nsw i64 %indvars.iv.i124, 1 ; 2 uses
  %exitcond.not.i126 = icmp eq i64 %indvars.iv.next.i125, %wide.trip.count.i122
  %indvar.next.i127 = add nuw nsw i64 %indvar.i123, 1
  br i1 %exitcond.not.i126, label %Vec_IntRemove1.exit135, label %bb.j, !llvm.loop !70

._crit_edge.i130:                                 ; preds = %.lr.ph25.i131, %.preheader.i128
  %i.bu = phi i32 [ %.pre.i134, %.lr.ph25.i131 ], [ %i.bb, %.preheader.i128 ]
  %i.bv = add nsw i32 %i.bu, -1                   ; 2 uses
  store i32 %i.bv, ptr %i.h, align 4, !tbaa !19
  %.val102.pr.pre = load i32, ptr %i.a, align 4, !tbaa !19
  br label %Vec_IntRemove1.exit135

Vec_IntRemove1.exit135:                           ; preds = %bb.k, %.lr.ph230.split, %._crit_edge.i130
  %.val102.pr = phi i32 [ %.val102.pr.pre, %._crit_edge.i130 ], [ %.val102.pr283, %.lr.ph230.split ], [ %.val102.pr283, %bb.k ] ; 3 uses
  %i.bw = phi i32 [ %i.bv, %._crit_edge.i130 ], [ %i.bb, %.lr.ph230.split ], [ %i.bb, %bb.k ]
  %.018.i120 = phi i32 [ 1, %._crit_edge.i130 ], [ 0, %.lr.ph230.split ], [ 0, %bb.k ]
  %i.bx = add nuw nsw i32 %.018.i120, %.079229    ; 2 uses
  %indvars.iv.next272 = add nuw nsw i64 %indvars.iv271, 1 ; 2 uses
  %i.by = sext i32 %.val102.pr to i64
  %i.bz = icmp slt i64 %indvars.iv.next272, %i.by
  br i1 %i.bz, label %.lr.ph230.split, label %.critedge2, !llvm.loop !72

.critedge4.thread:                                ; preds = %bb.a, %.critedge.preheader
  %.080.lcssa306.ph = phi i32 [ %.181, %.critedge.preheader ], [ 0, %bb.a ]
  %.082.lcssa305.ph = phi i32 [ %.183, %.critedge.preheader ], [ 0, %bb.a ]
  %i.ca = add i32 %.080.lcssa306.ph, %.082.lcssa305.ph
  br label %.critedge11

.critedge2:                                       ; preds = %Vec_IntRemove1.exit135, %.lr.ph230
  %.val100234 = phi i32 [ %.val103, %.lr.ph230 ], [ %.val102.pr, %Vec_IntRemove1.exit135 ] ; 2 uses
  %.079.lcssa = phi i32 [ 0, %.lr.ph230 ], [ %i.bx, %Vec_IntRemove1.exit135 ]
  %i.cb = icmp eq i32 %.val100234, 2
  br i1 %i.cb, label %.lr.ph236, label %.critedge4

.lr.ph236:                                        ; preds = %.critedge2
  %i.cc = getelementptr i8, ptr %2, i64 8
  %.val94 = load ptr, ptr %i.cc, align 8, !tbaa !26
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph236, %Vec_IntRemove1.exit167
  %indvars.iv274 = phi i64 [ 0, %.lr.ph236 ], [ %indvars.iv.next275, %Vec_IntRemove1.exit167 ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.val94, i64 %indvars.iv274
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !27
  %i.cj = ashr i32 %i.ci, 1
  %i.ck = xor i32 %i.cj, 1                        ; 2 uses
  %i.cl = load i32, ptr %i.cd, align 4, !tbaa !19 ; 5 uses
  %i.cm = icmp sgt i32 %i.cl, 1
  br i1 %i.cm, label %.lr.ph.i137, label %Vec_IntRemove1.exit151

.lr.ph.i137:                                      ; preds = %bb.l
  %i.cn = load ptr, ptr %i.ce, align 8, !tbaa !26 ; 3 uses
  %wide.trip.count.i138 = zext nneg i32 %i.cl to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i137
  %indvar.i139 = phi i64 [ 0, %.lr.ph.i137 ], [ %indvar.next.i143, %bb.n ] ; 3 uses
  %indvars.iv.i140 = phi i64 [ 1, %.lr.ph.i137 ], [ %indvars.iv.next.i141, %bb.n ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i140
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !27
  %i.cq = icmp eq i32 %i.cp, %i.ck
  br i1 %i.cq, label %.preheader.i144, label %bb.n

.preheader.i144:                                  ; preds = %bb.m
  %i.cr = trunc nuw nsw i64 %indvars.iv.i140 to i32
  %.122.i145 = add nuw nsw i32 %i.cr, 1
  %i.cs = icmp slt i32 %.122.i145, %i.cl
  br i1 %i.cs, label %.lr.ph25.i147, label %._crit_edge.i146

.lr.ph25.i147:                                    ; preds = %.preheader.i144
  %i.ct = shl nuw nsw i64 %indvars.iv.i140, 2
  %i.cu = getelementptr nuw i8, ptr %i.cn, i64 %i.ct
  %7 = shl nuw nsw i64 %indvar.i139, 2
  %scevgep.i148 = getelementptr nuw i8, ptr %i.cn, i64 %7
  %scevgep29.i149 = getelementptr nuw i8, ptr %scevgep.i148, i64 8
  %i.cv = add nsw i32 %i.cl, -3
  %i.cw = trunc i64 %indvar.i139 to i32
  %i.cx = sub i32 %i.cv, %i.cw
  %i.cy = zext i32 %i.cx to i64
  %i.cz = shl nuw nsw i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.cu, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i149, i64 %i.da, i1 false), !tbaa !27
  %.pre.i150 = load i32, ptr %i.cd, align 4, !tbaa !19
  br label %._crit_edge.i146

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next.i141 = add nuw nsw i64 %indvars.iv.i140, 1 ; 2 uses
  %exitcond.not.i142 = icmp eq i64 %indvars.iv.next.i141, %wide.trip.count.i138
  %indvar.next.i143 = add nuw nsw i64 %indvar.i139, 1
  br i1 %exitcond.not.i142, label %Vec_IntRemove1.exit151, label %bb.m, !llvm.loop !70

._crit_edge.i146:                                 ; preds = %.lr.ph25.i147, %.preheader.i144
  %i.db = phi i32 [ %.pre.i150, %.lr.ph25.i147 ], [ %i.cl, %.preheader.i144 ]
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.cd, align 4, !tbaa !19
  br label %Vec_IntRemove1.exit151

Vec_IntRemove1.exit151:                           ; preds = %bb.n, %bb.l, %._crit_edge.i146
  %i.dd = load i32, ptr %i.cf, align 4, !tbaa !19 ; 5 uses
  %i.de = icmp sgt i32 %i.dd, 1
  br i1 %i.de, label %.lr.ph.i153, label %Vec_IntRemove1.exit167

.lr.ph.i153:                                      ; preds = %Vec_IntRemove1.exit151
  %i.df = load ptr, ptr %i.cg, align 8, !tbaa !26 ; 3 uses
  %wide.trip.count.i154 = zext nneg i32 %i.dd to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i153
  %indvar.i155 = phi i64 [ 0, %.lr.ph.i153 ], [ %indvar.next.i159, %bb.p ] ; 3 uses
  %indvars.iv.i156 = phi i64 [ 1, %.lr.ph.i153 ], [ %indvars.iv.next.i157, %bb.p ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %indvars.iv.i156
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !27
  %i.di = icmp eq i32 %i.dh, %i.ck
  br i1 %i.di, label %.preheader.i160, label %bb.p

.preheader.i160:                                  ; preds = %bb.o
  %i.dj = trunc nuw nsw i64 %indvars.iv.i156 to i32
  %.122.i161 = add nuw nsw i32 %i.dj, 1
  %i.dk = icmp slt i32 %.122.i161, %i.dd
  br i1 %i.dk, label %.lr.ph25.i163, label %._crit_edge.i162

.lr.ph25.i163:                                    ; preds = %.preheader.i160
  %i.dl = shl nuw nsw i64 %indvars.iv.i156, 2
  %i.dm = getelementptr nuw i8, ptr %i.df, i64 %i.dl
  %8 = shl nuw nsw i64 %indvar.i155, 2
  %scevgep.i164 = getelementptr nuw i8, ptr %i.df, i64 %8
  %scevgep29.i165 = getelementptr nuw i8, ptr %scevgep.i164, i64 8
  %i.dn = add nsw i32 %i.dd, -3
  %i.do = trunc i64 %indvar.i155 to i32
  %i.dp = sub i32 %i.dn, %i.do
  %i.dq = zext i32 %i.dp to i64
  %i.dr = shl nuw nsw i64 %i.dq, 2
  %i.ds = add nuw nsw i64 %i.dr, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dm, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i165, i64 %i.ds, i1 false), !tbaa !27
  %.pre.i166 = load i32, ptr %i.cf, align 4, !tbaa !19
  br label %._crit_edge.i162

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i157 = add nuw nsw i64 %indvars.iv.i156, 1 ; 2 uses
  %exitcond.not.i158 = icmp eq i64 %indvars.iv.next.i157, %wide.trip.count.i154
  %indvar.next.i159 = add nuw nsw i64 %indvar.i155, 1
  br i1 %exitcond.not.i158, label %Vec_IntRemove1.exit167, label %bb.o, !llvm.loop !70

._crit_edge.i162:                                 ; preds = %.lr.ph25.i163, %.preheader.i160
  %i.dt = phi i32 [ %.pre.i166, %.lr.ph25.i163 ], [ %i.dd, %.preheader.i160 ]
  %i.du = add nsw i32 %i.dt, -1
  store i32 %i.du, ptr %i.cf, align 4, !tbaa !19
  br label %Vec_IntRemove1.exit167

Vec_IntRemove1.exit167:                           ; preds = %bb.p, %Vec_IntRemove1.exit151, %._crit_edge.i162
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %.val100 = load i32, ptr %i.a, align 4, !tbaa !19 ; 2 uses
  %i.dv = sext i32 %.val100 to i64
  %i.dw = icmp slt i64 %indvars.iv.next275, %i.dv
  br i1 %i.dw, label %bb.l, label %.critedge4, !llvm.loop !74

.critedge4:                                       ; preds = %Vec_IntRemove1.exit167, %.critedge2
  %.val99 = phi i32 [ %.val100234, %.critedge2 ], [ %.val100, %Vec_IntRemove1.exit167 ]
  %i.dx = add i32 %.181, %.183
  %i.dy = add i32 %i.dx, %.079.lcssa              ; 4 uses
  %i.dz = icmp eq i32 %.val99, 4
  br i1 %i.dz, label %bb.q, label %.critedge11

bb.q:                                             ; preds = %.critedge4
  %i.ea = getelementptr i8, ptr %2, i64 8
  %.val93 = load ptr, ptr %i.ea, align 8, !tbaa !26 ; 6 uses
  %i.eb = load i32, ptr %.val93, align 4, !tbaa !27
  %i.ec = getelementptr inbounds nuw i8, ptr %.val93, i64 4
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !27
  %i.ee = xor i32 %i.ed, %i.eb
  %.mask = and i32 %i.ee, -2
  %i.ef = icmp eq i32 %.mask, 2
  br i1 %i.ef, label %bb.r, label %.critedge11

bb.r:                                             ; preds = %bb.q
  %i.eg = getelementptr inbounds nuw i8, ptr %.val93, i64 12
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !27
  %i.ei = getelementptr inbounds nuw i8, ptr %.val93, i64 8
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !27
  %i.ek = xor i32 %i.ej, %i.eh
  %.mask201 = and i32 %i.ek, -2
  %i.el = icmp eq i32 %.mask201, 2
  %i.em = icmp eq i32 %.181, 1
  %or.cond = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 1, ptr %3, align 4, !tbaa !27
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.en = icmp eq i32 %i.dy, 2
  br i1 %i.en, label %bb.u, label %.critedge11

bb.u:                                             ; preds = %bb.t
  store i32 1, ptr %3, align 4, !tbaa !27
  %.val98238 = load i32, ptr %i.a, align 4, !tbaa !19 ; 3 uses
  %i.eo = icmp sgt i32 %.val98238, 0
  br i1 %i.eo, label %.lr.ph241, label %.critedge11

.lr.ph241:                                        ; preds = %bb.u
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.er = load i32, ptr %i.ep, align 4, !tbaa !19 ; 2 uses
  %i.es = icmp sgt i32 %i.er, 1
  br i1 %i.es, label %.lr.ph241.split, label %.lr.ph247

.critedge9.preheader:                             ; preds = %Vec_IntRemove1.exit183
  %i.et = icmp sgt i32 %.val98, 0
  br i1 %i.et, label %.lr.ph247, label %.critedge11

.lr.ph247:                                        ; preds = %.lr.ph241, %.critedge9.preheader
  %.0.lcssa325 = phi i32 [ %i.fx, %.critedge9.preheader ], [ 2, %.lr.ph241 ] ; 2 uses
  %.val97244324 = phi i32 [ %.val98, %.critedge9.preheader ], [ %.val98238, %.lr.ph241 ]
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ew = load i32, ptr %i.eu, align 4, !tbaa !19 ; 2 uses
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %.lr.ph247.split, label %.critedge11

.lr.ph241.split:                                  ; preds = %.lr.ph241, %Vec_IntRemove1.exit183
  %.val98285 = phi i32 [ %.val98, %Vec_IntRemove1.exit183 ], [ %.val98238, %.lr.ph241 ] ; 2 uses
  %i.ey = phi i32 [ %i.fw, %Vec_IntRemove1.exit183 ], [ %i.er, %.lr.ph241 ] ; 7 uses
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %Vec_IntRemove1.exit183 ], [ 0, %.lr.ph241 ] ; 3 uses
  %.0240 = phi i32 [ %i.fx, %Vec_IntRemove1.exit183 ], [ 2, %.lr.ph241 ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.val93, i64 %indvars.iv277
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !27
  %i.fb = ashr i32 %i.fa, 1
  %i.fc = icmp samesign ugt i64 %indvars.iv277, 1
  %i.fd = zext i1 %i.fc to i32
  %i.fe = xor i32 %i.fb, %i.fd
  %i.ff = icmp sgt i32 %i.ey, 1
  br i1 %i.ff, label %.lr.ph.i169, label %Vec_IntRemove1.exit183

.lr.ph.i169:                                      ; preds = %.lr.ph241.split
  %i.fg = load ptr, ptr %i.eq, align 8, !tbaa !26 ; 3 uses
  %wide.trip.count.i170 = zext nneg i32 %i.ey to i64
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %.lr.ph.i169
  %indvar.i171 = phi i64 [ 0, %.lr.ph.i169 ], [ %indvar.next.i175, %bb.w ] ; 3 uses
  %indvars.iv.i172 = phi i64 [ 1, %.lr.ph.i169 ], [ %indvars.iv.next.i173, %bb.w ] ; 4 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv.i172
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !27
  %i.fj = icmp eq i32 %i.fi, %i.fe
  br i1 %i.fj, label %.preheader.i176, label %bb.w

.preheader.i176:                                  ; preds = %bb.v
  %i.fk = trunc nuw nsw i64 %indvars.iv.i172 to i32
  %.122.i177 = add nuw nsw i32 %i.fk, 1
  %i.fl = icmp slt i32 %.122.i177, %i.ey
  br i1 %i.fl, label %.lr.ph25.i179, label %._crit_edge.i178

.lr.ph25.i179:                                    ; preds = %.preheader.i176
  %i.fm = shl nuw nsw i64 %indvars.iv.i172, 2
  %i.fn = getelementptr nuw i8, ptr %i.fg, i64 %i.fm
  %9 = shl nuw nsw i64 %indvar.i171, 2
  %scevgep.i180 = getelementptr nuw i8, ptr %i.fg, i64 %9
  %scevgep29.i181 = getelementptr nuw i8, ptr %scevgep.i180, i64 8
  %i.fo = add nsw i32 %i.ey, -3
  %i.fp = trunc i64 %indvar.i171 to i32
  %i.fq = sub i32 %i.fo, %i.fp
  %i.fr = zext i32 %i.fq to i64
  %i.fs = shl nuw nsw i64 %i.fr, 2
  %i.ft = add nuw nsw i64 %i.fs, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.fn, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i181, i64 %i.ft, i1 false), !tbaa !27
  %.pre.i182 = load i32, ptr %i.ep, align 4, !tbaa !19
  br label %._crit_edge.i178

bb.w:                                             ; preds = %bb.v
  %indvars.iv.next.i173 = add nuw nsw i64 %indvars.iv.i172, 1 ; 2 uses
  %exitcond.not.i174 = icmp eq i64 %indvars.iv.next.i173, %wide.trip.count.i170
  %indvar.next.i175 = add nuw nsw i64 %indvar.i171, 1
  br i1 %exitcond.not.i174, label %Vec_IntRemove1.exit183, label %bb.v, !llvm.loop !70

._crit_edge.i178:                                 ; preds = %.lr.ph25.i179, %.preheader.i176
  %i.fu = phi i32 [ %.pre.i182, %.lr.ph25.i179 ], [ %i.ey, %.preheader.i176 ]
  %i.fv = add nsw i32 %i.fu, -1                   ; 2 uses
  store i32 %i.fv, ptr %i.ep, align 4, !tbaa !19
  %.val98.pre = load i32, ptr %i.a, align 4, !tbaa !19
  br label %Vec_IntRemove1.exit183

Vec_IntRemove1.exit183:                           ; preds = %bb.w, %.lr.ph241.split, %._crit_edge.i178
  %.val98 = phi i32 [ %.val98.pre, %._crit_edge.i178 ], [ %.val98285, %.lr.ph241.split ], [ %.val98285, %bb.w ] ; 4 uses
  %i.fw = phi i32 [ %i.fv, %._crit_edge.i178 ], [ %i.ey, %.lr.ph241.split ], [ %i.ey, %bb.w ]
  %.018.i168 = phi i32 [ 1, %._crit_edge.i178 ], [ 0, %.lr.ph241.split ], [ 0, %bb.w ]
  %i.fx = add nuw nsw i32 %.018.i168, %.0240      ; 3 uses
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %i.fy = sext i32 %.val98 to i64
  %i.fz = icmp slt i64 %indvars.iv.next278, %i.fy
  br i1 %i.fz, label %.lr.ph241.split, label %.critedge9.preheader, !llvm.loop !75

.lr.ph247.split:                                  ; preds = %.lr.ph247, %Vec_IntRemove1.exit199
  %.val97288 = phi i32 [ %.val97, %Vec_IntRemove1.exit199 ], [ %.val97244324, %.lr.ph247 ] ; 2 uses
  %i.ga = phi i32 [ %i.gy, %Vec_IntRemove1.exit199 ], [ %i.ew, %.lr.ph247 ] ; 7 uses
  %indvars.iv280 = phi i64 [ %indvars.iv.next281, %Vec_IntRemove1.exit199 ], [ 0, %.lr.ph247 ] ; 3 uses
  %.1246 = phi i32 [ %i.gz, %Vec_IntRemove1.exit199 ], [ %.0.lcssa325, %.lr.ph247 ]
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %.val93, i64 %indvars.iv280
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !27
  %i.gd = ashr i32 %i.gc, 1
  %i.ge = icmp samesign ugt i64 %indvars.iv280, 1
  %i.gf = zext i1 %i.ge to i32
  %i.gg = xor i32 %i.gd, %i.gf
  %i.gh = icmp sgt i32 %i.ga, 1
  br i1 %i.gh, label %.lr.ph.i185, label %Vec_IntRemove1.exit199

.lr.ph.i185:                                      ; preds = %.lr.ph247.split
  %i.gi = load ptr, ptr %i.ev, align 8, !tbaa !26 ; 3 uses
  %wide.trip.count.i186 = zext nneg i32 %i.ga to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.y, %.lr.ph.i185
  %indvar.i187 = phi i64 [ 0, %.lr.ph.i185 ], [ %indvar.next.i191, %bb.y ] ; 3 uses
  %indvars.iv.i188 = phi i64 [ 1, %.lr.ph.i185 ], [ %indvars.iv.next.i189, %bb.y ] ; 4 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i188
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !27
  %i.gl = icmp eq i32 %i.gk, %i.gg
  br i1 %i.gl, label %.preheader.i192, label %bb.y

.preheader.i192:                                  ; preds = %bb.x
  %i.gm = trunc nuw nsw i64 %indvars.iv.i188 to i32
  %.122.i193 = add nuw nsw i32 %i.gm, 1
  %i.gn = icmp slt i32 %.122.i193, %i.ga
  br i1 %i.gn, label %.lr.ph25.i195, label %._crit_edge.i194

.lr.ph25.i195:                                    ; preds = %.preheader.i192
  %i.go = shl nuw nsw i64 %indvars.iv.i188, 2
  %i.gp = getelementptr nuw i8, ptr %i.gi, i64 %i.go
  %10 = shl nuw nsw i64 %indvar.i187, 2
  %scevgep.i196 = getelementptr nuw i8, ptr %i.gi, i64 %10
  %scevgep29.i197 = getelementptr nuw i8, ptr %scevgep.i196, i64 8
  %i.gq = add nsw i32 %i.ga, -3
  %i.gr = trunc i64 %indvar.i187 to i32
  %i.gs = sub i32 %i.gq, %i.gr
  %i.gt = zext i32 %i.gs to i64
  %i.gu = shl nuw nsw i64 %i.gt, 2
  %i.gv = add nuw nsw i64 %i.gu, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gp, ptr noundef nonnull align 4 dereferenceable(1) %scevgep29.i197, i64 %i.gv, i1 false), !tbaa !27
  %.pre.i198 = load i32, ptr %i.eu, align 4, !tbaa !19
  br label %._crit_edge.i194

bb.y:                                             ; preds = %bb.x
  %indvars.iv.next.i189 = add nuw nsw i64 %indvars.iv.i188, 1 ; 2 uses
  %exitcond.not.i190 = icmp eq i64 %indvars.iv.next.i189, %wide.trip.count.i186
  %indvar.next.i191 = add nuw nsw i64 %indvar.i187, 1
  br i1 %exitcond.not.i190, label %Vec_IntRemove1.exit199, label %bb.x, !llvm.loop !70

._crit_edge.i194:                                 ; preds = %.lr.ph25.i195, %.preheader.i192
  %i.gw = phi i32 [ %.pre.i198, %.lr.ph25.i195 ], [ %i.ga, %.preheader.i192 ]
  %i.gx = add nsw i32 %i.gw, -1                   ; 2 uses
  store i32 %i.gx, ptr %i.eu, align 4, !tbaa !19
  %.val97.pre = load i32, ptr %i.a, align 4, !tbaa !19
  br label %Vec_IntRemove1.exit199

Vec_IntRemove1.exit199:                           ; preds = %bb.y, %.lr.ph247.split, %._crit_edge.i194
  %.val97 = phi i32 [ %.val97.pre, %._crit_edge.i194 ], [ %.val97288, %.lr.ph247.split ], [ %.val97288, %bb.y ] ; 2 uses
  %i.gy = phi i32 [ %i.gx, %._crit_edge.i194 ], [ %i.ga, %.lr.ph247.split ], [ %i.ga, %bb.y ]
  %.018.i184 = phi i32 [ 1, %._crit_edge.i194 ], [ 0, %.lr.ph247.split ], [ 0, %bb.y ]
  %i.gz = add nuw nsw i32 %.018.i184, %.1246      ; 2 uses
  %indvars.iv.next281 = add nuw nsw i64 %indvars.iv280, 1 ; 2 uses
  %i.ha = sext i32 %.val97 to i64
  %i.hb = icmp slt i64 %indvars.iv.next281, %i.ha
  br i1 %i.hb, label %.lr.ph247.split, label %.critedge11, !llvm.loop !76

.critedge11:                                      ; preds = %Vec_IntRemove1.exit199, %bb.u, %.lr.ph247, %.critedge4.thread, %.critedge9.preheader, %bb.q, %bb.t, %.critedge4
  %.3 = phi i32 [ %i.dy, %.critedge4 ], [ %i.dy, %bb.q ], [ %i.dy, %bb.t ], [ %i.fx, %.critedge9.preheader ], [ %.0.lcssa325, %.lr.ph247 ], [ 2, %bb.u ], [ %i.ca, %.critedge4.thread ], [ %i.gz, %Vec_IntRemove1.exit199 ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind uwtable
define void @Fxch_DivPrint(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 5 uses
  %i.c = icmp ne i32 %1, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !57
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %.val.i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.i = sext i32 %1 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %.val.i.i, i64 %i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !27
  %i.l = getelementptr i8, ptr %i.e, i64 8
  %.val3.i.i = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.m = sext i32 %i.k to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.val3.i.i, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !58   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.o, ptr %i.p, align 8, !tbaa !60
  %i.q = getelementptr i8, ptr %i.b, i64 44       ; 5 uses
  store i32 %i.o, ptr %i.q, align 4, !tbaa !61
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = getelementptr i8, ptr %i.b, i64 48       ; 3 uses
  store ptr %i.r, ptr %i.s, align 8, !tbaa !62
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %1) ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !30
  %i.w = getelementptr i8, ptr %i.v, i64 8
  %.val26 = load ptr, ptr %i.w, align 8, !tbaa !38
  %i.x = getelementptr inbounds [4 x i8], ptr %.val26, i64 %i.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !39
  %i.z = fpext float %i.y to double
  %i.aa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.z) ; 0 uses
  %.val2528 = load i32, ptr %i.q, align 4, !tbaa !19 ; 2 uses
  %i.ab = icmp sgt i32 %.val2528, 0
  br i1 %i.ab, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.val2537 = phi i32 [ %.val25, %bb.c ], [ %.val2528, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.val23 = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.val23, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !27 ; 2 uses
  %i.ae = and i32 %i.ad, 1
  %.not22 = icmp eq i32 %i.ae, 0
  br i1 %.not22, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.af = ashr exact i32 %i.ad, 1
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.af) ; 0 uses
  %.val25.pre = load i32, ptr %i.q, align 4, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.val25 = phi i32 [ %.val2537, %.lr.ph ], [ %.val25.pre, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = sext i32 %.val25 to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.critedge, !llvm.loop !77

.critedge:                                        ; preds = %bb.c, %bb.a
  %i.aj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) ; 0 uses
  %.val2430 = load i32, ptr %i.q, align 4, !tbaa !19 ; 2 uses
  %i.ak = icmp sgt i32 %.val2430, 0
  br i1 %i.ak, label %.lr.ph32, label %.critedge2

.lr.ph32:                                         ; preds = %.critedge, %bb.e
  %.val2439 = phi i32 [ %.val24, %bb.e ], [ %.val2430, %.critedge ]
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.e ], [ 0, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %i.s, align 8, !tbaa !26
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv34
  %i.am = load i32, ptr %i.al, align 4, !tbaa !27 ; 2 uses
  %i.an = and i32 %i.am, 1
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph32
  %i.ao = ashr i32 %i.am, 1
  %i.ap = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.ao) ; 0 uses
  %.val24.pre = load i32, ptr %i.q, align 4, !tbaa !19
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph32, %bb.d
  %.val24 = phi i32 [ %.val2439, %.lr.ph32 ], [ %.val24.pre, %bb.d ] ; 2 uses
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %i.aq = sext i32 %.val24 to i64
  %i.ar = icmp slt i64 %indvars.iv.next35, %i.aq
  br i1 %i.ar, label %.lr.ph32, label %.critedge2, !llvm.loop !78

.critedge2:                                       ; preds = %bb.e, %.critedge
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.at = load i32, ptr %i.as, align 4, !tbaa !79
  %i.au = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.at) ; 0 uses
  %i.av = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.aw = getelementptr i8, ptr %i.av, i64 16
  %.val27 = load ptr, ptr %i.aw, align 8, !tbaa !53
  %i.ax = getelementptr i8, ptr %.val27, i64 4
  %.val27.val = load i32, ptr %i.ax, align 4, !tbaa !19
  %i.ay = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %.val27.val) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Fxch_DivIsNotConstant1(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !tbaa !26 ; 2 uses
  %i.b = load i32, ptr %.val5, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %.val5, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !27
  %i.e = getelementptr i8, ptr %0, i64 4
  %.val6 = load i32, ptr %i.e, align 4, !tbaa !19
  %i.f = icmp ne i32 %.val6, 2
  %i.g = xor i32 %i.d, %i.b
  %.mask = and i32 %i.g, -2
  %i.h = icmp ne i32 %.mask, 2
  %or.cond.not = select i1 %i.f, i1 true, i1 %i.h
  %.0 = zext i1 %or.cond.not to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !27
  %i.b = load i32, ptr %1, align 4, !tbaa !27
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #17

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
