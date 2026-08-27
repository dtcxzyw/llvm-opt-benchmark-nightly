Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/mss3?download=true
inline.NumInlined: 39
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 15
begin_hunk_0_@model_reset:bb.a
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %i.e = add nsw i32 %i.c, -1
  %.pre23 = sext i32 %i.e to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 1, ptr %i.f, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.g = load i32, ptr %i.b, align 4, !tbaa !74
  %i.h = add nsw i32 %i.g, -1
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !86

._crit_edge:                                      ; preds = %.lr.ph, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre23, %.._crit_edge_crit_edge ], [ %i.i, %.lr.ph ]
  %i.k = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre-phi
  store i32 0, ptr %i.k, align 4, !tbaa !58
  %i.l = load i32, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  store i32 %i.l, ptr %i.m, align 4, !tbaa !87
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  store i32 1, ptr %i.n, align 4, !tbaa !88
  %i.o = sext i32 %i.l to i64
  %i.p = getelementptr [4 x i8], ptr %0, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4       ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !58
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !58
  %i.t = load i32, ptr %i.n, align 4, !tbaa !88
  %i.u = add nsw i32 %i.t, -1                     ; 2 uses
  store i32 %i.u, ptr %i.n, align 4, !tbaa !88
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.b, label %._crit_edge.model_update.exit_crit_edge

._crit_edge.model_update.exit_crit_edge:          ; preds = %._crit_edge
  %.pre = load i32, ptr %i.b, align 4, !tbaa !74
  br label %model_update.exit

bb.b:                                             ; preds = %._crit_edge
  %i.v = load i32, ptr %i.m, align 4, !tbaa !87
  %i.w = load i32, ptr %i.a, align 4, !tbaa !85
  %i.x = add nsw i32 %i.w, %i.v                   ; 3 uses
  store i32 %i.x, ptr %i.a, align 4, !tbaa !85
  %i.y = icmp sgt i32 %i.x, 32768
  br i1 %i.y, label %bb.c, label %..loopexit_crit_edge.i

..loopexit_crit_edge.i:                           ; preds = %bb.b
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !74
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.a, align 4, !tbaa !85
  %i.z = load i32, ptr %i.b, align 4, !tbaa !74   ; 2 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %.lr.ph.i, label %model_update.exit

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ad = add nsw i32 %i.ac, 1
  %i.ae = ashr i32 %i.ad, 1                       ; 2 uses
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !58
  %i.af = load i32, ptr %i.a, align 4, !tbaa !85
  %i.ag = add nsw i32 %i.af, %i.ae                ; 2 uses
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !85
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ah = load i32, ptr %i.b, align 4, !tbaa !74  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next.i, %i.ai
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !89

.loopexit.i:                                      ; preds = %.lr.ph.i, %..loopexit_crit_edge.i
  %i.ak = phi i32 [ %.pre.i, %..loopexit_crit_edge.i ], [ %i.ah, %.lr.ph.i ] ; 2 uses
  %i.al = phi i32 [ %i.x, %..loopexit_crit_edge.i ], [ %i.ag, %.lr.ph.i ]
  %i.am = udiv i32 -2147483648, %i.al
  %i.an = icmp sgt i32 %i.ak, 0
  br i1 %i.an, label %.lr.ph41.i, label %model_update.exit

.lr.ph41.i:                                       ; preds = %.loopexit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph41.i
  %indvars.iv43.i = phi i64 [ 0, %.lr.ph41.i ], [ %indvars.iv.next44.i, %bb.d ] ; 3 uses
  %.040.i = phi i32 [ 0, %.lr.ph41.i ], [ %i.au, %bb.d ] ; 2 uses
  %i.ap = mul i32 %.040.i, %i.am
  %i.aq = lshr i32 %i.ap, 16
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv43.i
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !58
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv43.i
  %i.at = load i32, ptr %i.as, align 4, !tbaa !58
  %i.au = add nsw i32 %i.at, %.040.i
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %i.av = load i32, ptr %i.b, align 4, !tbaa !74  ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = icmp slt i64 %indvars.iv.next44.i, %i.aw
  br i1 %i.ax, label %bb.d, label %model_update.exit, !llvm.loop !90

model_update.exit:                                ; preds = %bb.d, %bb.c, %.loopexit.i, %._crit_edge.model_update.exit_crit_edge
  %i.ay = phi i32 [ %.pre, %._crit_edge.model_update.exit_crit_edge ], [ %i.z, %bb.c ], [ %i.ak, %.loopexit.i ], [ %i.av, %bb.d ]
  %i.az = add nsw i32 %i.ay, 6
  %i.ba = ashr i32 %i.az, 1                       ; 2 uses
  store i32 %i.ba, ptr %i.m, align 4, !tbaa !87
  store i32 %i.ba, ptr %i.n, align 4, !tbaa !88
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @model256_update(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = sext i32 %1 to i64
  %i.b = getelementptr inbounds [4 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !58
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !58
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2336 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84
  %i.g = add nsw i32 %i.f, -1                     ; 2 uses
  store i32 %i.g, ptr %i.e, align 4, !tbaa !84
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2328 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !83
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2048 ; 7 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82
  %i.l = add nsw i32 %i.k, %i.i                   ; 3 uses
  store i32 %i.l, ptr %i.j, align 4, !tbaa !82
  %i.m = icmp sgt i32 %i.l, 32768
  br i1 %i.m, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 4, !tbaa !82
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.c ], [ %indvars.iv.next.1, %bb.d ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !58
  %i.p = add nsw i32 %i.o, 1
  %i.q = ashr i32 %i.p, 1                         ; 2 uses
  store i32 %i.q, ptr %i.n, align 4, !tbaa !58
  %i.r = load i32, ptr %i.j, align 4, !tbaa !82
  %i.s = add nsw i32 %i.r, %i.q
  store i32 %i.s, ptr %i.j, align 4, !tbaa !82
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58
  %i.w = add nsw i32 %i.v, 1
  %i.x = ashr i32 %i.w, 1                         ; 2 uses
  store i32 %i.x, ptr %i.u, align 4, !tbaa !58
  %i.y = load i32, ptr %i.j, align 4, !tbaa !82
  %i.z = add nsw i32 %i.y, %i.x                   ; 2 uses
  store i32 %i.z, ptr %i.j, align 4, !tbaa !82
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 256
  br i1 %exitcond.not.1, label %.loopexit, label %bb.d, !llvm.loop !91

.loopexit:                                        ; preds = %bb.d, %bb.b
  %i.aa = phi i32 [ %i.l, %bb.b ], [ %i.z, %bb.d ]
  %i.ab = udiv i32 -2147483648, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 2052 ; 4 uses
  store i32 0, ptr %i.ac, align 4, !tbaa !58
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1024
  br label %bb.e

.preheader:                                       ; preds = %._crit_edge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 2324 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.ag = icmp slt i32 %.1.lcssa, %i.af
  br i1 %i.ag, label %.lr.ph58.preheader, label %._crit_edge59

.lr.ph58.preheader:                               ; preds = %.preheader
  %i.ah = zext nneg i32 %.1.lcssa to i64
  br label %.lr.ph58

bb.e:                                             ; preds = %.loopexit, %._crit_edge
  %indvars.iv64 = phi i64 [ 0, %.loopexit ], [ %indvars.iv.next65, %._crit_edge ] ; 4 uses
  %.056 = phi i32 [ 1, %.loopexit ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  %.04655 = phi i32 [ 0, %.loopexit ], [ %i.an, %._crit_edge ] ; 2 uses
  %i.ai = mul i32 %.04655, %i.ab                  ; 2 uses
  %i.aj = lshr i32 %i.ai, 16
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv64
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !58
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv64
  %i.am = load i32, ptr %i.al, align 4, !tbaa !58
  %i.an = add nsw i32 %i.am, %.04655
  %i.ao = lshr i32 %i.ai, 25                      ; 2 uses
  %.not5052 = icmp sgt i32 %.056, %i.ao
  br i1 %.not5052, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ap = sext i32 %.056 to i64                   ; 4 uses
  %i.aq = zext nneg i32 %i.ao to i64              ; 2 uses
  %i.ar = trunc i64 %indvars.iv64 to i32
  %i.as = add i32 %i.ar, -1                       ; 2 uses
  %i.at = add nuw nsw i64 %i.aq, 1
  %i.au = sub nsw i64 %i.at, %i.ap                ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.av = add nsw i64 %n.vec, %i.ap               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.ac, i64 %i.ap
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !58
  store <4 x i32> %broadcast.splat, ptr %i.aw, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv61.ph = phi i64 [ %i.ap, %.lr.ph ], [ %i.av, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %scalar.ph ], [ %indvars.iv61.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1 ; 2 uses
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %indvars.iv61
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !58
  %.not50.not = icmp slt i64 %indvars.iv61, %i.aq
  br i1 %.not50.not, label %scalar.ph, label %._crit_edge.loopexit, !llvm.loop !95

._crit_edge.loopexit:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next62.lcssa = phi i64 [ %i.av, %middle.block ], [ %indvars.iv.next62, %scalar.ph ]
  %i.az = trunc nuw nsw i64 %indvars.iv.next62.lcssa to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.e
  %.1.lcssa = phi i32 [ %.056, %bb.e ], [ %i.az, %._crit_edge.loopexit ] ; 3 uses
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1 ; 2 uses
  %exitcond67.not = icmp eq i64 %indvars.iv.next65, 256
  br i1 %exitcond67.not, label %.preheader, label %bb.e, !llvm.loop !96

.lr.ph58:                                         ; preds = %.lr.ph58.preheader, %.lr.ph58
  %indvars.iv69 = phi i64 [ %i.ah, %.lr.ph58.preheader ], [ %indvars.iv.next70, %.lr.ph58 ] ; 2 uses
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1 ; 2 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv69
  store i32 255, ptr %i.ba, align 4, !tbaa !58
  %i.bb = load i32, ptr %i.ae, align 4, !tbaa !80
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv.next70, %i.bc
  br i1 %i.bd, label %.lr.ph58, label %._crit_edge59, !llvm.loop !97

._crit_edge59:                                    ; preds = %.lr.ph58, %.preheader
  %i.be = load i32, ptr %i.h, align 4, !tbaa !83  ; 2 uses
  %i.bf = ashr i32 %i.be, 2
  %i.bg = add nsw i32 %i.bf, %i.be
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2332
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !79
  %spec.store.select = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bi) ; 2 uses
  store i32 %spec.store.select, ptr %i.h, align 4
  store i32 %spec.store.select, ptr %i.e, align 4, !tbaa !84
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge59
  ret void
}

declare i32 @ff_reget_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @reset_coders(ptr noundef %0, i32 noundef range(i32 1, 101) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2744
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72728
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80720
  %i.f = trunc nuw nsw i32 %1 to i16
  %.lhs.trunc = mul nuw nsw i16 %i.f, 7
  %i.g = udiv i16 %.lhs.trunc, 50
  %.zext = zext nneg i16 %i.g to i32
  %i.h = sub nuw nsw i32 17, %.zext
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %vector.ph
  %indvars.iv120 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next121, %vector.ph ] ; 7 uses
  %i.i = getelementptr inbounds nuw [744 x i8], ptr %i.a, i64 %indvars.iv120 ; 2 uses
  store i32 4, ptr %i.i, align 8, !tbaa !66
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %model_reset.exit
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %model_reset.exit ] ; 2 uses
  %i.k = getelementptr inbounds nuw [148 x i8], ptr %i.j, i64 %indvars.iv ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 132 ; 6 uses
  store i32 0, ptr %i.l, align 4, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 8 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !74   ; 2 uses
  %i.o = icmp sgt i32 %i.n, 1
  br i1 %i.o, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.c
  %i.p = add nsw i32 %i.n, -1
  %.pre23.i = sext i32 %i.p to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  store i32 1, ptr %i.q, align 4, !tbaa !58
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.m, align 4, !tbaa !74
  %i.s = add nsw i32 %i.r, -1
  %i.t = sext i32 %i.s to i64                     ; 2 uses
  %i.u = icmp slt i64 %indvars.iv.next.i, %i.t
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !86

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre23.i, %.._crit_edge_crit_edge.i ], [ %i.t, %.lr.ph.i ]
  %i.v = getelementptr inbounds [4 x i8], ptr %i.k, i64 %.pre-phi.i
  store i32 0, ptr %i.v, align 4, !tbaa !58
  %i.w = load i32, ptr %i.m, align 4, !tbaa !74   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 136 ; 3 uses
  store i32 %i.w, ptr %i.x, align 4, !tbaa !87
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 144 ; 4 uses
  store i32 1, ptr %i.y, align 4, !tbaa !88
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr [4 x i8], ptr %i.k, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -4     ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !58
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !58
  %i.ae = load i32, ptr %i.y, align 4, !tbaa !88
  %i.af = add nsw i32 %i.ae, -1                   ; 2 uses
  store i32 %i.af, ptr %i.y, align 4, !tbaa !88
  %.not.i.i = icmp eq i32 %i.af, 0
  br i1 %.not.i.i, label %bb.d, label %._crit_edge.model_update.exit_crit_edge.i

._crit_edge.model_update.exit_crit_edge.i:        ; preds = %._crit_edge.i
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !74
  br label %model_reset.exit

bb.d:                                             ; preds = %._crit_edge.i
  %i.ag = load i32, ptr %i.x, align 4, !tbaa !87
  %i.ah = load i32, ptr %i.l, align 4, !tbaa !85
  %i.ai = add nsw i32 %i.ah, %i.ag                ; 3 uses
  store i32 %i.ai, ptr %i.l, align 4, !tbaa !85
  %i.aj = icmp sgt i32 %i.ai, 32768
  br i1 %i.aj, label %bb.e, label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i:                         ; preds = %bb.d
  %.pre.i.i = load i32, ptr %i.m, align 4, !tbaa !74
  br label %.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.l, align 4, !tbaa !85
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !74  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i, label %model_reset.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i.i ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !58
  %i.ao = add nsw i32 %i.an, 1
  %i.ap = ashr i32 %i.ao, 1                       ; 2 uses
  store i32 %i.ap, ptr %i.am, align 4, !tbaa !58
  %i.aq = load i32, ptr %i.l, align 4, !tbaa !85
  %i.ar = add nsw i32 %i.aq, %i.ap                ; 2 uses
  store i32 %i.ar, ptr %i.l, align 4, !tbaa !85
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.as = load i32, ptr %i.m, align 4, !tbaa !74  ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next.i.i, %i.at
  br i1 %i.au, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !89

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %..loopexit_crit_edge.i.i
  %i.av = phi i32 [ %.pre.i.i, %..loopexit_crit_edge.i.i ], [ %i.as, %.lr.ph.i.i ] ; 2 uses
  %i.aw = phi i32 [ %i.ai, %..loopexit_crit_edge.i.i ], [ %i.ar, %.lr.ph.i.i ]
  %i.ax = udiv i32 -2147483648, %i.aw
  %i.ay = icmp sgt i32 %i.av, 0
  br i1 %i.ay, label %.lr.ph41.i.i, label %model_reset.exit

.lr.ph41.i.i:                                     ; preds = %.loopexit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph41.i.i
  %indvars.iv43.i.i = phi i64 [ 0, %.lr.ph41.i.i ], [ %indvars.iv.next44.i.i, %bb.f ] ; 3 uses
  %.040.i.i = phi i32 [ 0, %.lr.ph41.i.i ], [ %i.bf, %bb.f ] ; 2 uses
  %i.ba = mul i32 %.040.i.i, %i.ax
  %i.bb = lshr i32 %i.ba, 16
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv43.i.i
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !58
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv43.i.i
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !58
  %i.bf = add nsw i32 %i.be, %.040.i.i
  %indvars.iv.next44.i.i = add nuw nsw i64 %indvars.iv43.i.i, 1 ; 2 uses
end_hunk_0
begin_hunk_1_@decode_image_block:bb.a
  %i.de = icmp slt i32 %.031..030.i, 4
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %rac_get_model_sym.exit
  %i.df = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.bo
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !58
  br label %model256_update.exit

bb.q:                                             ; preds = %rac_get_model_sym.exit
  %i.dh = load i32, ptr %i.p, align 8, !tbaa !62  ; 2 uses
  %i.di = lshr i32 %i.dh, 15                      ; 4 uses
  store i32 %i.di, ptr %i.p, align 8, !tbaa !62
  %i.dj = load i32, ptr %i.q, align 4, !tbaa !61  ; 2 uses
  %i.dk = udiv i32 %i.dj, %i.di                   ; 2 uses
  %i.dl = lshr i32 %i.dk, 9
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.dm ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !58 ; 4 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !58 ; 2 uses
  %i.dr = add nsw i32 %i.do, 1
  %i.ds = icmp sgt i32 %i.dq, %i.do
  br i1 %i.ds, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.q
  %i.dt = add nsw i32 %i.dq, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph.i
  %.03745.i = phi i32 [ %i.dt, %.lr.ph.i ], [ %..037.i, %bb.r ] ; 2 uses
  %.04044.i = phi i32 [ %i.do, %.lr.ph.i ], [ %.040..i, %bb.r ] ; 2 uses
  %i.du = add nsw i32 %.04044.i, %.03745.i
  %i.dv = ashr i32 %i.du, 1                       ; 3 uses
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !58
  %.not43.i = icmp ugt i32 %i.dy, %i.dk           ; 2 uses
  %.040..i = select i1 %.not43.i, i32 %.04044.i, i32 %i.dv ; 3 uses
  %..037.i = select i1 %.not43.i, i32 %i.dv, i32 %.03745.i ; 2 uses
  %i.dz = add nsw i32 %.040..i, 1                 ; 2 uses
  %i.ea = icmp sgt i32 %..037.i, %i.dz
  br i1 %i.ea, label %bb.r, label %._crit_edge.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %bb.r, %bb.q
  %.040.lcssa.i = phi i32 [ %i.do, %bb.q ], [ %.040..i, %bb.r ] ; 4 uses
  %.lcssa.i = phi i32 [ %i.dr, %bb.q ], [ %i.dz, %bb.r ]
  %i.eb = sext i32 %.040.lcssa.i to i64           ; 2 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !58
  %i.ee = mul i32 %i.ed, %i.di                    ; 2 uses
  %.not.i41 = icmp eq i32 %.040.lcssa.i, 255
  br i1 %.not.i41, label %bb.t, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %i.ef = sext i32 %.lcssa.i to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ef
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !58
  %i.ei = mul i32 %i.eh, %i.di
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge.i
  %.0.i42 = phi i32 [ %i.ei, %bb.s ], [ %i.dh, %._crit_edge.i ]
  %i.ej = sub i32 %i.dj, %i.ee                    ; 2 uses
  store i32 %i.ej, ptr %i.q, align 4, !tbaa !61
  %i.ek = sub i32 %.0.i42, %i.ee                  ; 3 uses
  store i32 %i.ek, ptr %i.p, align 8, !tbaa !62
  %i.el = icmp ult i32 %i.ek, 16777216
  br i1 %i.el, label %bb.u, label %rac_get_model256_sym.exit

bb.u:                                             ; preds = %bb.t
  %i.em = load ptr, ptr %i.r, align 8, !tbaa !60
  %.promoted15.i.i44 = load ptr, ptr %0, align 8, !tbaa !59
  br label %bb.v

bb.v:                                             ; preds = %bb.ab, %bb.u
  %i.en = phi ptr [ %i.ex, %bb.ab ], [ %.promoted15.i.i44, %bb.u ] ; 5 uses
  %i.eo = phi i32 [ %i.fa, %bb.ab ], [ %i.ej, %bb.u ]
  %i.ep = phi i32 [ %i.eq, %bb.ab ], [ %i.ek, %bb.u ] ; 2 uses
  %i.eq = shl nuw i32 %i.ep, 8                    ; 3 uses
  store i32 %i.eq, ptr %i.p, align 8, !tbaa !62
  %i.er = shl i32 %i.eo, 8                        ; 4 uses
  store i32 %i.er, ptr %i.q, align 4, !tbaa !61
  %i.es = icmp ult ptr %i.en, %i.em
  br i1 %i.es, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.et = getelementptr inbounds nuw i8, ptr %i.en, i64 1 ; 2 uses
  store ptr %i.et, ptr %0, align 8, !tbaa !59
  %i.eu = load i8, ptr %i.en, align 1, !tbaa !51
  %i.ev = zext i8 %i.eu to i32
  %i.ew = or disjoint i32 %i.er, %i.ev
  br label %.sink.split.i.i46

bb.x:                                             ; preds = %bb.v
  %.not.i.i45 = icmp eq i32 %i.er, 0
  br i1 %.not.i.i45, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 1, ptr %i.s, align 8, !tbaa !63
  br label %.sink.split.i.i46

.sink.split.i.i46:                                ; preds = %bb.y, %bb.w
  %.sink.i.i47 = phi i32 [ 1, %bb.y ], [ %i.ew, %bb.w ] ; 2 uses
  %.ph.i.i48 = phi ptr [ %i.en, %bb.y ], [ %i.et, %bb.w ]
  store i32 %.sink.i.i47, ptr %i.q, align 4, !tbaa !61
  br label %bb.z

bb.z:                                             ; preds = %.sink.split.i.i46, %bb.x
  %i.ex = phi ptr [ %i.en, %bb.x ], [ %.ph.i.i48, %.sink.split.i.i46 ]
  %i.ey = phi i32 [ %i.er, %bb.x ], [ %.sink.i.i47, %.sink.split.i.i46 ] ; 2 uses
  %i.ez = icmp ugt i32 %i.ey, %i.eq
  br i1 %i.ez, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store i32 1, ptr %i.s, align 8, !tbaa !63
  store i32 1, ptr %i.q, align 4, !tbaa !61
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.fa = phi i32 [ 1, %bb.aa ], [ %i.ey, %bb.z ]
  %i.fb = icmp ugt i32 %i.ep, 65535
  br i1 %i.fb, label %rac_get_model256_sym.exit, label %bb.v

rac_get_model256_sym.exit:                        ; preds = %bb.ab, %bb.t
  %i.fc = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eb ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !58
  %i.fe = add nsw i32 %i.fd, 1
  store i32 %i.fe, ptr %i.fc, align 4, !tbaa !58
  %i.ff = load i32, ptr %i.v, align 4, !tbaa !84
  %i.fg = add nsw i32 %i.ff, -1                   ; 2 uses
  store i32 %i.fg, ptr %i.v, align 4, !tbaa !84
  %.not.i49 = icmp eq i32 %i.fg, 0
  br i1 %.not.i49, label %bb.ac, label %model256_update.exit

bb.ac:                                            ; preds = %rac_get_model256_sym.exit
  %i.fh = load i32, ptr %i.w, align 4, !tbaa !83
  %i.fi = load i32, ptr %i.x, align 4, !tbaa !82
  %i.fj = add nsw i32 %i.fi, %i.fh                ; 3 uses
  store i32 %i.fj, ptr %i.x, align 4, !tbaa !82
  %i.fk = icmp sgt i32 %i.fj, 32768
  br i1 %i.fk, label %bb.ad, label %.loopexit.i

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %i.x, align 4, !tbaa !82
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ae, %bb.ad
  %indvars.iv.i = phi i64 [ 0, %bb.ad ], [ %indvars.iv.next.i.1, %bb.ae ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !58
  %i.fn = add nsw i32 %i.fm, 1
  %i.fo = ashr i32 %i.fn, 1                       ; 2 uses
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !58
  %i.fp = load i32, ptr %i.x, align 4, !tbaa !82
  %i.fq = add nsw i32 %i.fp, %i.fo
  store i32 %i.fq, ptr %i.x, align 4, !tbaa !82
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4 ; 2 uses
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !58
  %i.fu = add nsw i32 %i.ft, 1
  %i.fv = ashr i32 %i.fu, 1                       ; 2 uses
  store i32 %i.fv, ptr %i.fs, align 4, !tbaa !58
  %i.fw = load i32, ptr %i.x, align 4, !tbaa !82
  %i.fx = add nsw i32 %i.fw, %i.fv                ; 2 uses
  store i32 %i.fx, ptr %i.x, align 4, !tbaa !82
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %bb.ae, !llvm.loop !91

.loopexit.i:                                      ; preds = %bb.ae, %bb.ac
  %i.fy = phi i32 [ %i.fj, %bb.ac ], [ %i.fx, %bb.ae ]
  %i.fz = udiv i32 -2147483648, %i.fy
  store i32 0, ptr %i.t, align 4, !tbaa !58
  br label %bb.af

.preheader.i:                                     ; preds = %._crit_edge.i51
  %i.ga = load i32, ptr %i.y, align 4, !tbaa !80
  %i.gb = icmp slt i32 %.1.lcssa.i, %i.ga
  br i1 %i.gb, label %.lr.ph58.preheader.i, label %._crit_edge59.i

.lr.ph58.preheader.i:                             ; preds = %.preheader.i
  %i.gc = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph58.i

bb.af:                                            ; preds = %._crit_edge.i51, %.loopexit.i
  %indvars.iv64.i = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next65.i, %._crit_edge.i51 ] ; 4 uses
  %.056.i = phi i32 [ 1, %.loopexit.i ], [ %.1.lcssa.i, %._crit_edge.i51 ] ; 3 uses
  %.04655.i = phi i32 [ 0, %.loopexit.i ], [ %i.gi, %._crit_edge.i51 ] ; 2 uses
  %i.gd = mul i32 %.04655.i, %i.fz                ; 2 uses
  %i.ge = lshr i32 %i.gd, 16
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv64.i
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !58
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv64.i
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !58
  %i.gi = add nsw i32 %i.gh, %.04655.i
  %i.gj = lshr i32 %i.gd, 25                      ; 2 uses
  %.not5052.i = icmp sgt i32 %.056.i, %i.gj
  br i1 %.not5052.i, label %._crit_edge.i51, label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.af
  %i.gk = sext i32 %.056.i to i64                 ; 4 uses
  %i.gl = zext nneg i32 %i.gj to i64              ; 2 uses
  %i.gm = trunc i64 %indvars.iv64.i to i32
  %i.gn = add i32 %i.gm, -1                       ; 2 uses
  %i.go = add nuw nsw i64 %i.gl, 1
  %i.gp = sub nsw i64 %i.go, %i.gk                ; 3 uses
  %min.iters.check = icmp ult i64 %i.gp, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i50
  %n.vec = and i64 %i.gp, -8                      ; 3 uses
  %i.gq = add nsw i64 %n.vec, %i.gk               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gn, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.t, i64 %i.gk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !58
  store <4 x i32> %broadcast.splat, ptr %i.gr, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gp, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i50, %middle.block
  %indvars.iv61.i.ph = phi i64 [ %i.gk, %.lr.ph.i50 ], [ %i.gq, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %scalar.ph ], [ %indvars.iv61.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv61.i
  store i32 %i.gn, ptr %i.gt, align 4, !tbaa !58
  %.not50.not.i = icmp slt i64 %indvars.iv61.i, %i.gl
  br i1 %.not50.not.i, label %scalar.ph, label %._crit_edge.loopexit.i, !llvm.loop !111

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %indvars.iv.next62.i.lcssa = phi i64 [ %i.gq, %middle.block ], [ %indvars.iv.next62.i, %scalar.ph ]
  %i.gu = trunc nuw nsw i64 %indvars.iv.next62.i.lcssa to i32
  br label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %._crit_edge.loopexit.i, %bb.af
  %.1.lcssa.i = phi i32 [ %.056.i, %bb.af ], [ %i.gu, %._crit_edge.loopexit.i ] ; 3 uses
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 256
  br i1 %exitcond67.not.i, label %.preheader.i, label %bb.af, !llvm.loop !96

.lr.ph58.i:                                       ; preds = %.lr.ph58.i, %.lr.ph58.preheader.i
  %indvars.iv69.i = phi i64 [ %i.gc, %.lr.ph58.preheader.i ], [ %indvars.iv.next70.i, %.lr.ph58.i ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv69.i
  store i32 255, ptr %i.gv, align 4, !tbaa !58
  %i.gw = load i32, ptr %i.y, align 4, !tbaa !80
  %i.gx = sext i32 %i.gw to i64
  %i.gy = icmp slt i64 %indvars.iv.next70.i, %i.gx
  br i1 %i.gy, label %.lr.ph58.i, label %._crit_edge59.i, !llvm.loop !97

._crit_edge59.i:                                  ; preds = %.lr.ph58.i, %.preheader.i
  %i.gz = load i32, ptr %i.w, align 4, !tbaa !83  ; 2 uses
  %i.ha = ashr i32 %i.gz, 2
  %i.hb = add nsw i32 %i.ha, %i.gz
  %i.hc = load i32, ptr %i.z, align 4, !tbaa !79
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.hb, i32 %i.hc) ; 2 uses
  store i32 %spec.store.select.i, ptr %i.w, align 4
  store i32 %spec.store.select.i, ptr %i.v, align 4, !tbaa !84
  br label %model256_update.exit

model256_update.exit:                             ; preds = %._crit_edge59.i, %rac_get_model256_sym.exit, %bb.p
  %.sink101 = phi i32 [ %i.dg, %bb.p ], [ %.040.lcssa.i, %rac_get_model256_sym.exit ], [ %.040.lcssa.i, %._crit_edge59.i ]
  %i.hd = trunc i32 %.sink101 to i8
  %i.he = getelementptr inbounds nuw i8, ptr %.03862, i64 %indvars.iv72
  store i8 %i.hd, ptr %i.he, align 1, !tbaa !51
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %bb.ag, label %bb.c, !llvm.loop !112

bb.ag:                                            ; preds = %model256_update.exit
  %i.hf = getelementptr inbounds i8, ptr %.03862, i64 %3
  %i.hg = add nuw nsw i32 %.03663, 1              ; 2 uses
  %exitcond77.not = icmp eq i32 %i.hg, %4
  br i1 %exitcond77.not, label %bb.ah, label %.preheader, !llvm.loop !113

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @decode_dct_block(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i64 noundef range(i64 -2147483648, 2147483648) %3, i32 noundef range(i32 8, 17) %4, ptr noundef initializes((0, 256)) %5, i32 noundef range(i32 -2147483648, 4095) %6, i32 noundef range(i32 -2147483648, 4095) %7) unnamed_addr #1 {
.preheader.lr.ph:
  %i.a = lshr i32 %4, 3                           ; 4 uses
  %i.b = mul nsw i32 %7, %i.a
  %i.c = mul nsw i32 %6, %i.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 324 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 300 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 308 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 14 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 320 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 316
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 2376 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1348 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2660 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2652 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2372 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 2648 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 2656
  %i.y = shl nsw i64 %3, 3
  %i.z = sext i32 %i.c to i64
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.bb
  %.046 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.iy, %bb.bb ] ; 2 uses
  %.02545 = phi ptr [ %2, %.preheader.lr.ph ], [ %i.ix, %bb.bb ] ; 2 uses
  %i.aa = add nsw i32 %.046, %i.b                 ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %decode_dct.exit.thread34
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %decode_dct.exit.thread34 ] ; 3 uses
  %i.ab = add nsw i64 %indvars.iv, %i.z           ; 3 uses
  %i.ac = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = mul i32 %i.aa, %i.ad
  %i.af = trunc nsw i64 %i.ab to i32
  %i.ag = add i32 %i.ae, %i.af                    ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %5, i8 0, i64 256, i1 false)
  %i.ah = tail call fastcc i32 @decode_coeff(ptr noundef %0, ptr noundef nonnull %i.e) ; 4 uses
  %.not87.i = icmp eq i64 %i.ab, 0                ; 2 uses
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !45  ; 6 uses
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not87.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ai = add nsw i32 %i.ag, -1
  %i.aj = sext i32 %i.ai to i64                   ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !58 ; 2 uses
  %i.am = load i64, ptr %i.d, align 8, !tbaa !39  ; 2 uses
  %i.an = sub nsw i64 %i.aj, %i.am
  %i.ao = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !58 ; 2 uses
  %i.aq = sext i32 %i.ag to i64
  %i.ar = sub nsw i64 %i.aq, %i.am
  %i.as = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !58 ; 2 uses
  %i.au = sub nsw i32 %i.at, %i.ap
  %i.av = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.aw = sub nsw i32 %i.al, %i.ap
  %i.ax = tail call i32 @llvm.abs.i32(i32 %i.aw, i1 true)
  %.not89.i = icmp samesign ugt i32 %i.av, %i.ax
  %.pn.i = select i1 %.not89.i, i32 %i.at, i32 %i.al
  %.0.i = add nsw i32 %.pn.i, %i.ah
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.ay = sext i32 %i.ag to i64
  %i.az = load i64, ptr %i.d, align 8, !tbaa !39
  %i.ba = sub nsw i64 %i.ay, %i.az
  %i.bb = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !58
  %i.bd = add nsw i32 %i.bc, %i.ah
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  br i1 %.not87.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr [4 x i8], ptr %.pre.i, i64 %i.ab
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !58
  %i.bh = add nsw i32 %i.bg, %i.ah
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.1.i = phi i32 [ %.0.i, %bb.c ], [ %i.bd, %bb.d ], [ %i.bh, %bb.f ], [ %i.ah, %bb.e ] ; 2 uses
  %i.bi = sext i32 %i.ag to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.bi
  store i32 %.1.i, ptr %i.bj, align 4, !tbaa !58
  %i.bk = load i16, ptr %i.f, align 8, !tbaa !114
  %i.bl = zext i16 %i.bk to i32
  %i.bm = mul nsw i32 %.1.i, %i.bl
  store i32 %i.bm, ptr %5, align 4, !tbaa !58
  br label %bb.h

bb.h:                                             ; preds = %.backedge.i, %bb.g
  %.075102.i = phi i32 [ 1, %bb.g ], [ %.075.be.i, %.backedge.i ] ; 2 uses
  %i.bn = load i32, ptr %i.j, align 8, !tbaa !62  ; 2 uses
  %i.bo = lshr i32 %i.bn, 15                      ; 4 uses
  store i32 %i.bo, ptr %i.j, align 8, !tbaa !62
  %i.bp = load i32, ptr %i.k, align 4, !tbaa !61  ; 2 uses
  %i.bq = udiv i32 %i.bp, %i.bo                   ; 2 uses
  %i.br = lshr i32 %i.bq, 9
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !58 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !58 ; 2 uses
  %i.bx = add nsw i32 %i.bu, 1
  %i.by = icmp sgt i32 %i.bw, %i.bu
  br i1 %i.by, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h
  %i.bz = add nsw i32 %i.bw, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i
  %.03745.i = phi i32 [ %i.bz, %.lr.ph.i ], [ %..037.i, %bb.i ] ; 2 uses
  %.04044.i = phi i32 [ %i.bu, %.lr.ph.i ], [ %.040..i, %bb.i ] ; 2 uses
  %i.ca = add nsw i32 %.04044.i, %.03745.i
  %i.cb = ashr i32 %i.ca, 1                       ; 3 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !58
  %.not43.i = icmp ugt i32 %i.ce, %i.bq           ; 2 uses
  %.040..i = select i1 %.not43.i, i32 %.04044.i, i32 %i.cb ; 3 uses
  %..037.i = select i1 %.not43.i, i32 %i.cb, i32 %.03745.i ; 2 uses
  %i.cf = add nsw i32 %.040..i, 1                 ; 2 uses
  %i.cg = icmp sgt i32 %..037.i, %i.cf
  br i1 %i.cg, label %bb.i, label %._crit_edge.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %bb.i, %bb.h
  %.040.lcssa.i = phi i32 [ %i.bu, %bb.h ], [ %.040..i, %bb.i ] ; 5 uses
  %.lcssa.i = phi i32 [ %i.bx, %bb.h ], [ %i.cf, %bb.i ]
  %i.ch = sext i32 %.040.lcssa.i to i64           ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !58
  %i.ck = mul i32 %i.cj, %i.bo                    ; 2 uses
  %.not.i27 = icmp eq i32 %.040.lcssa.i, 255
  br i1 %.not.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.cl = sext i32 %.lcssa.i to i64
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !58
  %i.co = mul i32 %i.cn, %i.bo
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i
  %.0.i28 = phi i32 [ %i.co, %bb.j ], [ %i.bn, %._crit_edge.i ]
  %i.cp = sub i32 %i.bp, %i.ck                    ; 2 uses
  store i32 %i.cp, ptr %i.k, align 4, !tbaa !61
  %i.cq = sub i32 %.0.i28, %i.ck                  ; 3 uses
  store i32 %i.cq, ptr %i.j, align 8, !tbaa !62
  %i.cr = icmp ult i32 %i.cq, 16777216
  br i1 %i.cr, label %bb.l, label %rac_get_model256_sym.exit

bb.l:                                             ; preds = %bb.k
  %i.cs = load ptr, ptr %i.l, align 8, !tbaa !60
  %.promoted15.i.i = load ptr, ptr %0, align 8, !tbaa !59
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %bb.l
  %i.ct = phi ptr [ %i.dd, %bb.s ], [ %.promoted15.i.i, %bb.l ] ; 5 uses
  %i.cu = phi i32 [ %i.dg, %bb.s ], [ %i.cp, %bb.l ]
  %i.cv = phi i32 [ %i.cw, %bb.s ], [ %i.cq, %bb.l ] ; 2 uses
  %i.cw = shl nuw i32 %i.cv, 8                    ; 3 uses
  store i32 %i.cw, ptr %i.j, align 8, !tbaa !62
  %i.cx = shl i32 %i.cu, 8                        ; 4 uses
  store i32 %i.cx, ptr %i.k, align 4, !tbaa !61
  %i.cy = icmp ult ptr %i.ct, %i.cs
  br i1 %i.cy, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 2 uses
  store ptr %i.cz, ptr %0, align 8, !tbaa !59
  %i.da = load i8, ptr %i.ct, align 1, !tbaa !51
  %i.db = zext i8 %i.da to i32
  %i.dc = or disjoint i32 %i.cx, %i.db
  br label %.sink.split.i.i

bb.o:                                             ; preds = %bb.m
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 1, ptr %i.m, align 8, !tbaa !63
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.p, %bb.n
  %.sink.i.i = phi i32 [ 1, %bb.p ], [ %i.dc, %bb.n ] ; 2 uses
  %.ph.i.i = phi ptr [ %i.ct, %bb.p ], [ %i.cz, %bb.n ]
  store i32 %.sink.i.i, ptr %i.k, align 4, !tbaa !61
  br label %bb.q

bb.q:                                             ; preds = %.sink.split.i.i, %bb.o
  %i.dd = phi ptr [ %i.ct, %bb.o ], [ %.ph.i.i, %.sink.split.i.i ]
  %i.de = phi i32 [ %i.cx, %bb.o ], [ %.sink.i.i, %.sink.split.i.i ] ; 2 uses
  %i.df = icmp ugt i32 %i.de, %i.cw
  br i1 %i.df, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.m, align 8, !tbaa !63
  store i32 1, ptr %i.k, align 4, !tbaa !61
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dg = phi i32 [ 1, %bb.r ], [ %i.de, %bb.q ]
  %i.dh = icmp ugt i32 %i.cv, 65535
  br i1 %i.dh, label %rac_get_model256_sym.exit, label %bb.m

rac_get_model256_sym.exit:                        ; preds = %bb.s, %bb.k
  %i.di = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ch ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !58
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !58
  %i.dl = load i32, ptr %i.t, align 4, !tbaa !84
  %i.dm = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dm, ptr %i.t, align 4, !tbaa !84
  %.not.i29 = icmp eq i32 %i.dm, 0
  br i1 %.not.i29, label %bb.t, label %model256_update.exit

bb.t:                                             ; preds = %rac_get_model256_sym.exit
  %i.dn = load i32, ptr %i.u, align 4, !tbaa !83
  %i.do = load i32, ptr %i.v, align 4, !tbaa !82
  %i.dp = add nsw i32 %i.do, %i.dn                ; 3 uses
  store i32 %i.dp, ptr %i.v, align 4, !tbaa !82
  %i.dq = icmp sgt i32 %i.dp, 32768
  br i1 %i.dq, label %bb.u, label %.loopexit.i

bb.u:                                             ; preds = %bb.t
  store i32 0, ptr %i.v, align 4, !tbaa !82
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %indvars.iv.i = phi i64 [ 0, %bb.u ], [ %indvars.iv.next.i.1, %bb.v ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !58
  %i.dt = add nsw i32 %i.ds, 1
  %i.du = ashr i32 %i.dt, 1                       ; 2 uses
  store i32 %i.du, ptr %i.dr, align 4, !tbaa !58
  %i.dv = load i32, ptr %i.v, align 4, !tbaa !82
  %i.dw = add nsw i32 %i.dv, %i.du
  store i32 %i.dw, ptr %i.v, align 4, !tbaa !82
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !58
  %i.ea = add nsw i32 %i.dz, 1
  %i.eb = ashr i32 %i.ea, 1                       ; 2 uses
  store i32 %i.eb, ptr %i.dy, align 4, !tbaa !58
  %i.ec = load i32, ptr %i.v, align 4, !tbaa !82
  %i.ed = add nsw i32 %i.ec, %i.eb                ; 2 uses
  store i32 %i.ed, ptr %i.v, align 4, !tbaa !82
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %bb.v, !llvm.loop !91

.loopexit.i:                                      ; preds = %bb.v, %bb.t
  %i.ee = phi i32 [ %i.dp, %bb.t ], [ %i.ed, %bb.v ]
  %i.ef = udiv i32 -2147483648, %i.ee
  store i32 0, ptr %i.r, align 8, !tbaa !58
  br label %bb.w

.preheader.i:                                     ; preds = %._crit_edge.i31
  %i.eg = load i32, ptr %i.w, align 8, !tbaa !80
  %i.eh = icmp slt i32 %.1.lcssa.i, %i.eg
  br i1 %i.eh, label %.lr.ph58.preheader.i, label %._crit_edge59.i

.lr.ph58.preheader.i:                             ; preds = %.preheader.i
  %i.ei = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph58.i

bb.w:                                             ; preds = %._crit_edge.i31, %.loopexit.i
  %indvars.iv64.i = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next65.i, %._crit_edge.i31 ] ; 4 uses
  %.056.i = phi i32 [ 1, %.loopexit.i ], [ %.1.lcssa.i, %._crit_edge.i31 ] ; 3 uses
  %.04655.i = phi i32 [ 0, %.loopexit.i ], [ %i.eo, %._crit_edge.i31 ] ; 2 uses
  %i.ej = mul i32 %.04655.i, %i.ef                ; 2 uses
  %i.ek = lshr i32 %i.ej, 16
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv64.i
  store i32 %i.ek, ptr %i.el, align 4, !tbaa !58
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv64.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !58
  %i.eo = add nsw i32 %i.en, %.04655.i
  %i.ep = lshr i32 %i.ej, 25                      ; 2 uses
  %.not5052.i = icmp sgt i32 %.056.i, %i.ep
  br i1 %.not5052.i, label %._crit_edge.i31, label %.lr.ph.i30

.lr.ph.i30:                                       ; preds = %bb.w
  %i.eq = sext i32 %.056.i to i64                 ; 4 uses
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  %i.es = trunc i64 %indvars.iv64.i to i32
  %i.et = add i32 %i.es, -1                       ; 2 uses
  %i.eu = add nuw nsw i64 %i.er, 1
  %i.ev = sub nsw i64 %i.eu, %i.eq                ; 3 uses
  %min.iters.check = icmp ult i64 %i.ev, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i30
  %n.vec = and i64 %i.ev, -8                      ; 3 uses
  %i.ew = add nsw i64 %n.vec, %i.eq               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.et, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.r, i64 %i.eq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !58
  store <4 x i32> %broadcast.splat, ptr %i.ex, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ey = icmp eq i64 %index.next, %n.vec
  br i1 %i.ey, label %middle.block, label %vector.body, !llvm.loop !116

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ev, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i30, %middle.block
  %indvars.iv61.i.ph = phi i64 [ %i.eq, %.lr.ph.i30 ], [ %i.ew, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %scalar.ph ], [ %indvars.iv61.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv61.i
  store i32 %i.et, ptr %i.ez, align 4, !tbaa !58
  %.not50.not.i = icmp slt i64 %indvars.iv61.i, %i.er
  br i1 %.not50.not.i, label %scalar.ph, label %._crit_edge.loopexit.i, !llvm.loop !117

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %indvars.iv.next62.i.lcssa = phi i64 [ %i.ew, %middle.block ], [ %indvars.iv.next62.i, %scalar.ph ]
  %i.fa = trunc nuw nsw i64 %indvars.iv.next62.i.lcssa to i32
  br label %._crit_edge.i31

._crit_edge.i31:                                  ; preds = %._crit_edge.loopexit.i, %bb.w
  %.1.lcssa.i = phi i32 [ %.056.i, %bb.w ], [ %i.fa, %._crit_edge.loopexit.i ] ; 3 uses
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 256
  br i1 %exitcond67.not.i, label %.preheader.i, label %bb.w, !llvm.loop !96

.lr.ph58.i:                                       ; preds = %.lr.ph58.i, %.lr.ph58.preheader.i
  %indvars.iv69.i = phi i64 [ %i.ei, %.lr.ph58.preheader.i ], [ %indvars.iv.next70.i, %.lr.ph58.i ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv69.i
  store i32 255, ptr %i.fb, align 4, !tbaa !58
  %i.fc = load i32, ptr %i.w, align 8, !tbaa !80
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next70.i, %i.fd
  br i1 %i.fe, label %.lr.ph58.i, label %._crit_edge59.i, !llvm.loop !97

._crit_edge59.i:                                  ; preds = %.lr.ph58.i, %.preheader.i
  %i.ff = load i32, ptr %i.u, align 4, !tbaa !83  ; 2 uses
  %i.fg = ashr i32 %i.ff, 2
  %i.fh = add nsw i32 %i.fg, %i.ff
  %i.fi = load i32, ptr %i.x, align 8, !tbaa !79
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.fh, i32 %i.fi) ; 2 uses
  store i32 %spec.store.select.i, ptr %i.u, align 4
  store i32 %spec.store.select.i, ptr %i.t, align 4, !tbaa !84
  br label %model256_update.exit

model256_update.exit:                             ; preds = %rac_get_model256_sym.exit, %._crit_edge59.i
  switch i32 %.040.lcssa.i, label %bb.y [
    i32 0, label %decode_dct.exit.thread34
    i32 240, label %bb.x
  ]

bb.x:                                             ; preds = %model256_update.exit
  %i.fj = add nsw i32 %.075102.i, 16
  br label %.backedge.i

.backedge.i:                                      ; preds = %bb.ba, %bb.x
  %.075.be.i = phi i32 [ %i.fj, %bb.x ], [ %i.iu, %bb.ba ] ; 3 uses
  %i.fk = icmp slt i32 %.075.be.i, 64
  br i1 %i.fk, label %bb.h, label %decode_dct.exit, !llvm.loop !118

bb.y:                                             ; preds = %model256_update.exit
  %i.fl = and i32 %.040.lcssa.i, 15               ; 3 uses
  %.not91.i = icmp eq i32 %i.fl, 0
  br i1 %.not91.i, label %decode_dct.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fm = ashr i32 %.040.lcssa.i, 4
  %i.fn = add nsw i32 %i.fm, %.075102.i           ; 3 uses
  %i.fo = icmp sgt i32 %i.fn, 63
  br i1 %i.fo, label %decode_dct.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fp = load i32, ptr %i.i, align 4, !tbaa !119
  %i.fq = load i32, ptr %i.j, align 8, !tbaa !62  ; 2 uses
  %i.fr = lshr i32 %i.fq, 13
  %i.fs = mul i32 %i.fr, %i.fp                    ; 4 uses
  %i.ft = load i32, ptr %i.k, align 4, !tbaa !61  ; 3 uses
  %.not100.i = icmp ult i32 %i.ft, %i.fs          ; 3 uses
  br i1 %.not100.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fu = sub nuw i32 %i.ft, %i.fs                ; 2 uses
  store i32 %i.fu, ptr %i.k, align 4, !tbaa !61
  %i.fv = sub i32 %i.fq, %i.fs
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.promoted14.i.i.i = phi i32 [ %i.fu, %bb.ab ], [ %i.ft, %bb.aa ] ; 2 uses
  %storemerge.i.i = phi i32 [ %i.fv, %bb.ab ], [ %i.fs, %bb.aa ] ; 4 uses
  store i32 %storemerge.i.i, ptr %i.j, align 8, !tbaa !62
  %i.fw = icmp ult i32 %storemerge.i.i, 16777216
  br i1 %i.fw, label %bb.ad, label %rac_normalise.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  %i.fx = load ptr, ptr %i.l, align 8, !tbaa !60
  %.promoted15.i.i.i = load ptr, ptr %0, align 8, !tbaa !59
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ak, %bb.ad
  %i.fy = phi ptr [ %i.gi, %bb.ak ], [ %.promoted15.i.i.i, %bb.ad ] ; 5 uses
  %i.fz = phi i32 [ %i.gl, %bb.ak ], [ %.promoted14.i.i.i, %bb.ad ]
  %i.ga = phi i32 [ %i.gb, %bb.ak ], [ %storemerge.i.i, %bb.ad ] ; 2 uses
  %i.gb = shl nuw i32 %i.ga, 8                    ; 4 uses
  store i32 %i.gb, ptr %i.j, align 8, !tbaa !62
  %i.gc = shl i32 %i.fz, 8                        ; 4 uses
  store i32 %i.gc, ptr %i.k, align 4, !tbaa !61
  %i.gd = icmp ult ptr %i.fy, %i.fx
  br i1 %i.gd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fy, i64 1 ; 2 uses
  store ptr %i.ge, ptr %0, align 8, !tbaa !59
  %i.gf = load i8, ptr %i.fy, align 1, !tbaa !51
  %i.gg = zext i8 %i.gf to i32
  %i.gh = or disjoint i32 %i.gc, %i.gg
  br label %.sink.split.i.i.i

bb.ag:                                            ; preds = %bb.ae
  %.not.i.i.i = icmp eq i32 %i.gc, 0
  br i1 %.not.i.i.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 1, ptr %i.m, align 8, !tbaa !63
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.ah, %bb.af
  %.sink.i.i.i = phi i32 [ 1, %bb.ah ], [ %i.gh, %bb.af ] ; 2 uses
  %.ph.i.i.i = phi ptr [ %i.fy, %bb.ah ], [ %i.ge, %bb.af ]
  store i32 %.sink.i.i.i, ptr %i.k, align 4, !tbaa !61
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split.i.i.i, %bb.ag
  %i.gi = phi ptr [ %i.fy, %bb.ag ], [ %.ph.i.i.i, %.sink.split.i.i.i ]
  %i.gj = phi i32 [ %i.gc, %bb.ag ], [ %.sink.i.i.i, %.sink.split.i.i.i ] ; 2 uses
  %i.gk = icmp ugt i32 %i.gj, %i.gb
  br i1 %i.gk, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store i32 1, ptr %i.m, align 8, !tbaa !63
  store i32 1, ptr %i.k, align 4, !tbaa !61
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gl = phi i32 [ 1, %bb.aj ], [ %i.gj, %bb.ai ] ; 2 uses
  %i.gm = icmp ugt i32 %i.ga, 65535
  br i1 %i.gm, label %rac_normalise.exit.i.i, label %bb.ae

rac_normalise.exit.i.i:                           ; preds = %bb.ak, %bb.ac
  %i.gn = phi i32 [ %.promoted14.i.i.i, %bb.ac ], [ %i.gl, %bb.ak ] ; 2 uses
  %i.go = phi i32 [ %storemerge.i.i, %bb.ac ], [ %i.gb, %bb.ak ]
  br i1 %.not100.i, label %bb.al, label %bb.am

bb.al:                                            ; preds = %rac_normalise.exit.i.i
  %i.gp = load i32, ptr %i.n, align 8, !tbaa !120
  %i.gq = add i32 %i.gp, 1
  store i32 %i.gq, ptr %i.n, align 8, !tbaa !120
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %rac_normalise.exit.i.i
  %i.gr = load i32, ptr %i.o, align 8, !tbaa !121
  %i.gs = add nsw i32 %i.gr, -1                   ; 2 uses
  store i32 %i.gs, ptr %i.o, align 8, !tbaa !121
  %.not28.i.i.i = icmp eq i32 %i.gs, 0
  br i1 %.not28.i.i.i, label %bb.an, label %rac_get_model2_sym.exit.i

bb.an:                                            ; preds = %bb.am
  %i.gt = load i32, ptr %i.h, align 4, !tbaa !122 ; 3 uses
  %i.gu = load i32, ptr %i.p, align 8, !tbaa !101
  %i.gv = add i32 %i.gu, %i.gt                    ; 4 uses
  store i32 %i.gv, ptr %i.p, align 8, !tbaa !101
  %i.gw = icmp ugt i32 %i.gv, 8192
  br i1 %i.gw, label %bb.ao, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.an
  %.pre.i.i.i = load i32, ptr %i.n, align 8, !tbaa !120
  br label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.gx = add i32 %i.gv, 1
  %i.gy = lshr i32 %i.gx, 1                       ; 5 uses
  store i32 %i.gy, ptr %i.p, align 8, !tbaa !101
  %i.gz = load i32, ptr %i.n, align 8, !tbaa !120
  %i.ha = add i32 %i.gz, 1
end_hunk_1
begin_hunk_2_@decode_haar_block:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.preheader107, %model256_update.exit
  %indvars.iv = phi i64 [ 0, %.preheader107 ], [ %indvars.iv.next, %model256_update.exit ] ; 4 uses
  %i.y = icmp samesign ult i64 %indvars.iv, %i.w
  %or.cond = select i1 %i.y, i1 %i.x, i1 false
  %i.z = load i32, ptr %i.d, align 8, !tbaa !62   ; 3 uses
  %i.aa = lshr i32 %i.z, 15                       ; 5 uses
  store i32 %i.aa, ptr %i.d, align 8, !tbaa !62
  br i1 %or.cond, label %bb.c, label %bb.s

bb.c:                                             ; preds = %bb.b
  %i.ab = load i32, ptr %i.g, align 4, !tbaa !61  ; 2 uses
  %i.ac = udiv i32 %i.ab, %i.aa                   ; 2 uses
  %i.ad = lshr i32 %i.ac, 9
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !58 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !58 ; 2 uses
  %i.aj = add nsw i32 %i.ag, 1
  %i.ak = icmp sgt i32 %i.ai, %i.ag
  br i1 %i.ak, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.al = add nsw i32 %i.ai, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.03745.i = phi i32 [ %i.al, %.lr.ph.i ], [ %..037.i, %bb.d ] ; 2 uses
  %.04044.i = phi i32 [ %i.ag, %.lr.ph.i ], [ %.040..i, %bb.d ] ; 2 uses
  %i.am = add nsw i32 %.04044.i, %.03745.i
  %i.an = ashr i32 %i.am, 1                       ; 3 uses
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !58
  %.not43.i = icmp ugt i32 %i.aq, %i.ac           ; 2 uses
  %.040..i = select i1 %.not43.i, i32 %.04044.i, i32 %i.an ; 3 uses
  %..037.i = select i1 %.not43.i, i32 %i.an, i32 %.03745.i ; 2 uses
  %i.ar = add nsw i32 %.040..i, 1                 ; 2 uses
  %i.as = icmp sgt i32 %..037.i, %i.ar
  br i1 %i.as, label %bb.d, label %._crit_edge.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %.040.lcssa.i = phi i32 [ %i.ag, %bb.c ], [ %.040..i, %bb.d ] ; 4 uses
  %.lcssa.i = phi i32 [ %i.aj, %bb.c ], [ %i.ar, %bb.d ]
  %i.at = sext i32 %.040.lcssa.i to i64           ; 2 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !58
  %i.aw = mul i32 %i.av, %i.aa                    ; 2 uses
  %.not.i93 = icmp eq i32 %.040.lcssa.i, 255
  br i1 %.not.i93, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i
  %i.ax = sext i32 %.lcssa.i to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !58
  %i.ba = mul i32 %i.az, %i.aa
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %.0.i94 = phi i32 [ %i.ba, %bb.e ], [ %i.z, %._crit_edge.i ]
  %i.bb = sub i32 %i.ab, %i.aw                    ; 2 uses
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !61
  %i.bc = sub i32 %.0.i94, %i.aw                  ; 3 uses
  store i32 %i.bc, ptr %i.d, align 8, !tbaa !62
  %i.bd = icmp ult i32 %i.bc, 16777216
  br i1 %i.bd, label %bb.g, label %rac_get_model256_sym.exit

bb.g:                                             ; preds = %bb.f
  %i.be = load ptr, ptr %i.h, align 8, !tbaa !60
  %.promoted15.i.i = load ptr, ptr %0, align 8, !tbaa !59
  br label %bb.h

bb.h:                                             ; preds = %bb.n, %bb.g
  %i.bf = phi ptr [ %i.bp, %bb.n ], [ %.promoted15.i.i, %bb.g ] ; 5 uses
  %i.bg = phi i32 [ %i.bs, %bb.n ], [ %i.bb, %bb.g ]
  %i.bh = phi i32 [ %i.bi, %bb.n ], [ %i.bc, %bb.g ] ; 2 uses
  %i.bi = shl nuw i32 %i.bh, 8                    ; 3 uses
  store i32 %i.bi, ptr %i.d, align 8, !tbaa !62
  %i.bj = shl i32 %i.bg, 8                        ; 4 uses
  store i32 %i.bj, ptr %i.g, align 4, !tbaa !61
  %i.bk = icmp ult ptr %i.bf, %i.be
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !59
  %i.bm = load i8, ptr %i.bf, align 1, !tbaa !51
  %i.bn = zext i8 %i.bm to i32
  %i.bo = or disjoint i32 %i.bj, %i.bn
  br label %.sink.split.i.i

bb.j:                                             ; preds = %bb.h
  %.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.i, align 8, !tbaa !63
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.k, %bb.i
  %.sink.i.i = phi i32 [ 1, %bb.k ], [ %i.bo, %bb.i ] ; 2 uses
  %.ph.i.i = phi ptr [ %i.bf, %bb.k ], [ %i.bl, %bb.i ]
  store i32 %.sink.i.i, ptr %i.g, align 4, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %.sink.split.i.i, %bb.j
  %i.bp = phi ptr [ %i.bf, %bb.j ], [ %.ph.i.i, %.sink.split.i.i ]
  %i.bq = phi i32 [ %i.bj, %bb.j ], [ %.sink.i.i, %.sink.split.i.i ] ; 2 uses
  %i.br = icmp ugt i32 %i.bq, %i.bi
  br i1 %i.br, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 1, ptr %i.i, align 8, !tbaa !63
  store i32 1, ptr %i.g, align 4, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = phi i32 [ 1, %bb.m ], [ %i.bq, %bb.l ]
  %i.bt = icmp ugt i32 %i.bh, 65535
  br i1 %i.bt, label %rac_get_model256_sym.exit, label %bb.h

rac_get_model256_sym.exit:                        ; preds = %bb.n, %bb.f
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.at ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !58
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !58
  %i.bx = load i32, ptr %i.q, align 4, !tbaa !84
  %i.by = add nsw i32 %i.bx, -1                   ; 2 uses
  store i32 %i.by, ptr %i.q, align 4, !tbaa !84
  %.not.i97 = icmp eq i32 %i.by, 0
  br i1 %.not.i97, label %bb.o, label %model256_update.exit

bb.o:                                             ; preds = %rac_get_model256_sym.exit
  %i.bz = load i32, ptr %i.r, align 4, !tbaa !83
  %i.ca = load i32, ptr %i.s, align 4, !tbaa !82
  %i.cb = add nsw i32 %i.ca, %i.bz                ; 3 uses
  store i32 %i.cb, ptr %i.s, align 4, !tbaa !82
  %i.cc = icmp sgt i32 %i.cb, 32768
  br i1 %i.cc, label %bb.p, label %.loopexit.i

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.s, align 4, !tbaa !82
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.i = phi i64 [ 0, %bb.p ], [ %indvars.iv.next.i.1, %bb.q ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !58
  %i.cf = add nsw i32 %i.ce, 1
  %i.cg = ashr i32 %i.cf, 1                       ; 2 uses
  store i32 %i.cg, ptr %i.cd, align 4, !tbaa !58
  %i.ch = load i32, ptr %i.s, align 4, !tbaa !82
  %i.ci = add nsw i32 %i.ch, %i.cg
  store i32 %i.ci, ptr %i.s, align 4, !tbaa !82
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !58
  %i.cm = add nsw i32 %i.cl, 1
  %i.cn = ashr i32 %i.cm, 1                       ; 2 uses
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !58
  %i.co = load i32, ptr %i.s, align 4, !tbaa !82
  %i.cp = add nsw i32 %i.co, %i.cn                ; 2 uses
  store i32 %i.cp, ptr %i.s, align 4, !tbaa !82
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %.loopexit.i, label %bb.q, !llvm.loop !91

.loopexit.i:                                      ; preds = %bb.q, %bb.o
  %i.cq = phi i32 [ %i.cb, %bb.o ], [ %i.cp, %bb.q ]
  %i.cr = udiv i32 -2147483648, %i.cq
  store i32 0, ptr %i.o, align 4, !tbaa !58
  br label %bb.r

.preheader.i:                                     ; preds = %._crit_edge.i99
  %i.cs = load i32, ptr %i.t, align 4, !tbaa !80
  %i.ct = icmp slt i32 %.1.lcssa.i, %i.cs
  br i1 %i.ct, label %.lr.ph58.preheader.i, label %._crit_edge59.i

.lr.ph58.preheader.i:                             ; preds = %.preheader.i
  %i.cu = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph58.i

bb.r:                                             ; preds = %._crit_edge.i99, %.loopexit.i
  %indvars.iv64.i = phi i64 [ 0, %.loopexit.i ], [ %indvars.iv.next65.i, %._crit_edge.i99 ] ; 4 uses
  %.056.i = phi i32 [ 1, %.loopexit.i ], [ %.1.lcssa.i, %._crit_edge.i99 ] ; 3 uses
  %.04655.i = phi i32 [ 0, %.loopexit.i ], [ %i.da, %._crit_edge.i99 ] ; 2 uses
  %i.cv = mul i32 %.04655.i, %i.cr                ; 2 uses
  %i.cw = lshr i32 %i.cv, 16
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv64.i
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !58
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv64.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !58
  %i.da = add nsw i32 %i.cz, %.04655.i
  %i.db = lshr i32 %i.cv, 25                      ; 2 uses
  %.not5052.i = icmp sgt i32 %.056.i, %i.db
  br i1 %.not5052.i, label %._crit_edge.i99, label %.lr.ph.i98

.lr.ph.i98:                                       ; preds = %bb.r
  %i.dc = sext i32 %.056.i to i64                 ; 4 uses
  %i.dd = zext nneg i32 %i.db to i64              ; 2 uses
  %i.de = trunc i64 %indvars.iv64.i to i32
  %i.df = add i32 %i.de, -1                       ; 2 uses
  %i.dg = add nuw nsw i64 %i.dd, 1
  %i.dh = sub nsw i64 %i.dg, %i.dc                ; 3 uses
  %min.iters.check = icmp ult i64 %i.dh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i98
  %n.vec = and i64 %i.dh, -8                      ; 3 uses
  %i.di = add nsw i64 %n.vec, %i.dc               ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.df, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep194 = getelementptr [4 x i8], ptr %i.o, i64 %i.dc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep194, i64 %index ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !58
  store <4 x i32> %broadcast.splat, ptr %i.dj, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dh, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i98, %middle.block
  %indvars.iv61.i.ph = phi i64 [ %i.dc, %.lr.ph.i98 ], [ %i.di, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv61.i = phi i64 [ %indvars.iv.next62.i, %scalar.ph ], [ %indvars.iv61.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.next62.i = add nsw i64 %indvars.iv61.i, 1 ; 2 uses
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.o, i64 %indvars.iv61.i
  store i32 %i.df, ptr %i.dl, align 4, !tbaa !58
  %.not50.not.i = icmp slt i64 %indvars.iv61.i, %i.dd
  br i1 %.not50.not.i, label %scalar.ph, label %._crit_edge.loopexit.i, !llvm.loop !126

._crit_edge.loopexit.i:                           ; preds = %scalar.ph, %middle.block
  %indvars.iv.next62.i.lcssa = phi i64 [ %i.di, %middle.block ], [ %indvars.iv.next62.i, %scalar.ph ]
  %i.dm = trunc nuw nsw i64 %indvars.iv.next62.i.lcssa to i32
  br label %._crit_edge.i99

._crit_edge.i99:                                  ; preds = %._crit_edge.loopexit.i, %bb.r
  %.1.lcssa.i = phi i32 [ %.056.i, %bb.r ], [ %i.dm, %._crit_edge.loopexit.i ] ; 3 uses
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1 ; 2 uses
  %exitcond67.not.i = icmp eq i64 %indvars.iv.next65.i, 256
  br i1 %exitcond67.not.i, label %.preheader.i, label %bb.r, !llvm.loop !96

.lr.ph58.i:                                       ; preds = %.lr.ph58.i, %.lr.ph58.preheader.i
  %indvars.iv69.i = phi i64 [ %i.cu, %.lr.ph58.preheader.i ], [ %indvars.iv.next70.i, %.lr.ph58.i ] ; 2 uses
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv69.i
  store i32 255, ptr %i.dn, align 4, !tbaa !58
  %i.do = load i32, ptr %i.t, align 4, !tbaa !80
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next70.i, %i.dp
  br i1 %i.dq, label %.lr.ph58.i, label %._crit_edge59.i, !llvm.loop !97

._crit_edge59.i:                                  ; preds = %.lr.ph58.i, %.preheader.i
  %i.dr = load i32, ptr %i.r, align 4, !tbaa !83  ; 2 uses
  %i.ds = ashr i32 %i.dr, 2
  %i.dt = add nsw i32 %i.ds, %i.dr
  %i.du = load i32, ptr %i.u, align 4, !tbaa !79
  %spec.store.select.i = tail call i32 @llvm.smin.i32(i32 %i.dt, i32 %i.du) ; 2 uses
  store i32 %spec.store.select.i, ptr %i.r, align 4
  store i32 %spec.store.select.i, ptr %i.q, align 4, !tbaa !84
  br label %model256_update.exit

bb.s:                                             ; preds = %bb.b
  %i.dv = load i32, ptr %i.e, align 4, !tbaa !74  ; 2 uses
  %i.dw = ashr i32 %i.dv, 1
  %i.dx = load i32, ptr %i.g, align 4, !tbaa !61  ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %bb.s
  %.031.i = phi i32 [ 0, %bb.s ], [ %.031..030.i, %bb.t ]
  %.030.i = phi i32 [ %i.dw, %bb.s ], [ %i.ed, %bb.t ] ; 3 uses
  %.028.i = phi i32 [ %i.dv, %bb.s ], [ %.030..028.i, %bb.t ]
  %.026.i = phi i32 [ 0, %bb.s ], [ %.026..i, %bb.t ]
  %.0.i100 = phi i32 [ %i.z, %bb.s ], [ %..0.i, %bb.t ]
  %i.dy = sext i32 %.030.i to i64
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dy
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !58
  %i.eb = mul i32 %i.ea, %i.aa                    ; 3 uses
  %.not.i101 = icmp ugt i32 %i.eb, %i.dx          ; 4 uses
  %.031..030.i = select i1 %.not.i101, i32 %.031.i, i32 %.030.i ; 8 uses
  %.030..028.i = select i1 %.not.i101, i32 %.030.i, i32 %.028.i ; 2 uses
  %.026..i = select i1 %.not.i101, i32 %.026.i, i32 %i.eb ; 3 uses
  %..0.i = select i1 %.not.i101, i32 %i.eb, i32 %.0.i100 ; 2 uses
  %i.ec = add nsw i32 %.030..028.i, %.031..030.i
  %i.ed = ashr i32 %i.ec, 1                       ; 2 uses
  %.not36.i = icmp eq i32 %i.ed, %.031..030.i
  br i1 %.not36.i, label %bb.u, label %bb.t, !llvm.loop !108

bb.u:                                             ; preds = %bb.t
  %i.ee = sub i32 %i.dx, %.026..i                 ; 2 uses
  store i32 %i.ee, ptr %i.g, align 4, !tbaa !61
  %i.ef = sub i32 %..0.i, %.026..i                ; 3 uses
  store i32 %i.ef, ptr %i.d, align 8, !tbaa !62
  %i.eg = icmp ult i32 %i.ef, 16777216
  br i1 %i.eg, label %bb.v, label %rac_normalise.exit.i

bb.v:                                             ; preds = %bb.u
  %i.eh = load ptr, ptr %i.h, align 8, !tbaa !60
  %.promoted15.i.i102 = load ptr, ptr %0, align 8, !tbaa !59
  br label %bb.w

bb.w:                                             ; preds = %bb.ac, %bb.v
  %i.ei = phi ptr [ %i.es, %bb.ac ], [ %.promoted15.i.i102, %bb.v ] ; 5 uses
  %i.ej = phi i32 [ %i.ev, %bb.ac ], [ %i.ee, %bb.v ]
  %i.ek = phi i32 [ %i.el, %bb.ac ], [ %i.ef, %bb.v ] ; 2 uses
  %i.el = shl nuw i32 %i.ek, 8                    ; 3 uses
  store i32 %i.el, ptr %i.d, align 8, !tbaa !62
  %i.em = shl i32 %i.ej, 8                        ; 4 uses
  store i32 %i.em, ptr %i.g, align 4, !tbaa !61
  %i.en = icmp ult ptr %i.ei, %i.eh
  br i1 %i.en, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 1 ; 2 uses
  store ptr %i.eo, ptr %0, align 8, !tbaa !59
  %i.ep = load i8, ptr %i.ei, align 1, !tbaa !51
  %i.eq = zext i8 %i.ep to i32
  %i.er = or disjoint i32 %i.em, %i.eq
  br label %.sink.split.i.i104

bb.y:                                             ; preds = %bb.w
  %.not.i.i103 = icmp eq i32 %i.em, 0
  br i1 %.not.i.i103, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 1, ptr %i.i, align 8, !tbaa !63
  br label %.sink.split.i.i104

.sink.split.i.i104:                               ; preds = %bb.z, %bb.x
  %.sink.i.i105 = phi i32 [ 1, %bb.z ], [ %i.er, %bb.x ] ; 2 uses
  %.ph.i.i106 = phi ptr [ %i.ei, %bb.z ], [ %i.eo, %bb.x ]
  store i32 %.sink.i.i105, ptr %i.g, align 4, !tbaa !61
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split.i.i104, %bb.y
  %i.es = phi ptr [ %i.ei, %bb.y ], [ %.ph.i.i106, %.sink.split.i.i104 ]
  %i.et = phi i32 [ %i.em, %bb.y ], [ %.sink.i.i105, %.sink.split.i.i104 ] ; 2 uses
  %i.eu = icmp ugt i32 %i.et, %i.el
  br i1 %i.eu, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 1, ptr %i.i, align 8, !tbaa !63
  store i32 1, ptr %i.g, align 4, !tbaa !61
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ev = phi i32 [ 1, %bb.ab ], [ %i.et, %bb.aa ]
  %i.ew = icmp ugt i32 %i.ek, 65535
  br i1 %i.ew, label %rac_normalise.exit.i, label %bb.w

rac_normalise.exit.i:                             ; preds = %bb.ac, %bb.u
  %i.ex = sext i32 %.031..030.i to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !58
  %i.fa = add nsw i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !58
  %i.fb = load i32, ptr %i.j, align 4, !tbaa !88
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.j, align 4, !tbaa !88
  %.not.i37.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i37.i, label %bb.ad, label %rac_get_model_sym.exit

bb.ad:                                            ; preds = %rac_normalise.exit.i
  %i.fd = load i32, ptr %i.k, align 4, !tbaa !87
  %i.fe = load i32, ptr %i.l, align 4, !tbaa !85
  %i.ff = add nsw i32 %i.fe, %i.fd                ; 3 uses
  store i32 %i.ff, ptr %i.l, align 4, !tbaa !85
  %i.fg = icmp sgt i32 %i.ff, 32768
  br i1 %i.fg, label %bb.ae, label %..loopexit_crit_edge.i.i

..loopexit_crit_edge.i.i:                         ; preds = %bb.ad
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !74
  br label %.loopexit.i.i

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.l, align 4, !tbaa !85
  %i.fh = load i32, ptr %i.e, align 4, !tbaa !74
  %i.fi = icmp sgt i32 %i.fh, 0
  br i1 %i.fi, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.ae, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %bb.ae ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.i ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !58
  %i.fl = add nsw i32 %i.fk, 1
  %i.fm = ashr i32 %i.fl, 1                       ; 2 uses
  store i32 %i.fm, ptr %i.fj, align 4, !tbaa !58
  %i.fn = load i32, ptr %i.l, align 4, !tbaa !85
  %i.fo = add nsw i32 %i.fn, %i.fm                ; 2 uses
  store i32 %i.fo, ptr %i.l, align 4, !tbaa !85
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fp = load i32, ptr %i.e, align 4, !tbaa !74  ; 2 uses
  %i.fq = sext i32 %i.fp to i64
  %i.fr = icmp slt i64 %indvars.iv.next.i.i, %i.fq
  br i1 %i.fr, label %.lr.ph.i.i, label %.loopexit.i.i, !llvm.loop !89

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i, %..loopexit_crit_edge.i.i
  %i.fs = phi i32 [ %.pre.i.i, %..loopexit_crit_edge.i.i ], [ %i.fp, %.lr.ph.i.i ]
  %i.ft = phi i32 [ %i.ff, %..loopexit_crit_edge.i.i ], [ %i.fo, %.lr.ph.i.i ]
  %i.fu = udiv i32 -2147483648, %i.ft
end_hunk_2
begin_hunk_3_@decode_coeff:bb.a
  %i.at = load i8, ptr %i.am, align 1, !tbaa !51
  %i.au = zext i8 %i.at to i32
  %i.av = or disjoint i32 %i.aq, %i.au
  br label %.sink.split.i.i16

bb.q:                                             ; preds = %bb.o
  %.not.i.i15 = icmp eq i32 %i.aq, 0
  br i1 %.not.i.i15, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 1, ptr %i.al, align 8, !tbaa !63
  br label %.sink.split.i.i16

.sink.split.i.i16:                                ; preds = %bb.r, %bb.p
  %.sink.i.i17 = phi i32 [ 1, %bb.r ], [ %i.av, %bb.p ] ; 2 uses
  %.ph.i.i18 = phi ptr [ %i.am, %bb.r ], [ %i.as, %bb.p ]
  store i32 %.sink.i.i17, ptr %i.e, align 4, !tbaa !61
  br label %bb.s

bb.s:                                             ; preds = %.sink.split.i.i16, %bb.q
  %i.aw = phi ptr [ %i.am, %bb.q ], [ %.ph.i.i18, %.sink.split.i.i16 ]
  %i.ax = phi i32 [ %i.aq, %bb.q ], [ %.sink.i.i17, %.sink.split.i.i16 ] ; 2 uses
  %i.ay = icmp ugt i32 %i.ax, %i.ap
  br i1 %i.ay, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 1, ptr %i.al, align 8, !tbaa !63
  store i32 1, ptr %i.e, align 4, !tbaa !61
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = phi i32 [ 1, %bb.t ], [ %i.ax, %bb.s ]
  %i.ba = icmp ugt i32 %i.ao, 65535
  br i1 %i.ba, label %rac_get_bits.exit, label %bb.o

rac_get_bits.exit:                                ; preds = %bb.u, %bb.m
  %i.bb = add nsw i32 %i.ag, %i.ae
  br label %bb.v

bb.v:                                             ; preds = %rac_get_bits.exit, %rac_get_bit.exit
  %.0 = phi i32 [ %i.bb, %rac_get_bits.exit ], [ %i.a, %rac_get_bit.exit ] ; 2 uses
  %i.bc = sub nsw i32 0, %.0
  %spec.select = select i1 %.not19, i32 %i.bc, i32 %.0
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  %.1 = phi i32 [ %spec.select, %bb.v ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @rac_get_model256_sym(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = lshr i32 %i.b, 15                        ; 4 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !61   ; 2 uses
  %i.f = udiv i32 %i.e, %i.c                      ; 2 uses
  %i.g = lshr i32 %i.f, 9
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 2052
  %i.i = zext nneg i32 %i.g to i64
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !58   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !58   ; 2 uses
  %i.n = add nsw i32 %i.k, 1
  %i.o = icmp sgt i32 %i.m, %i.k
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = add nsw i32 %i.m, 1
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.03745 = phi i32 [ %i.p, %.lr.ph ], [ %..037, %bb.b ] ; 2 uses
  %.04044 = phi i32 [ %i.k, %.lr.ph ], [ %.040., %bb.b ] ; 2 uses
  %i.r = add nsw i32 %.03745, %.04044
  %i.s = ashr i32 %i.r, 1                         ; 3 uses
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !58
  %.not43 = icmp ugt i32 %i.v, %i.f               ; 2 uses
  %.040. = select i1 %.not43, i32 %.04044, i32 %i.s ; 3 uses
  %..037 = select i1 %.not43, i32 %i.s, i32 %.03745 ; 2 uses
  %i.w = add nsw i32 %.040., 1                    ; 2 uses
  %i.x = icmp sgt i32 %..037, %i.w
  br i1 %i.x, label %bb.b, label %._crit_edge, !llvm.loop !109

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.040.lcssa = phi i32 [ %i.k, %bb.a ], [ %.040., %bb.b ] ; 4 uses
  %.lcssa = phi i32 [ %i.n, %bb.a ], [ %i.w, %bb.b ]
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.z = sext i32 %.040.lcssa to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !58
  %i.ac = mul i32 %i.ab, %i.c                     ; 2 uses
  %.not = icmp eq i32 %.040.lcssa, 255
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ad = sext i32 %.lcssa to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.y, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !58
  %i.ag = mul i32 %i.af, %i.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.0 = phi i32 [ %i.ag, %bb.c ], [ %i.b, %._crit_edge ]
  %i.ah = sub i32 %i.e, %i.ac                     ; 2 uses
  store i32 %i.ah, ptr %i.d, align 4, !tbaa !61
  %i.ai = sub i32 %.0, %i.ac                      ; 3 uses
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !62
  %i.aj = icmp ult i32 %i.ai, 16777216
  br i1 %i.aj, label %bb.e, label %rac_normalise.exit

bb.e:                                             ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !60
  %.promoted15.i = load ptr, ptr %0, align 8, !tbaa !59
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %bb.e
  %i.an = phi ptr [ %i.ax, %bb.l ], [ %.promoted15.i, %bb.e ] ; 5 uses
  %i.ao = phi i32 [ %i.ba, %bb.l ], [ %i.ah, %bb.e ]
  %i.ap = phi i32 [ %i.aq, %bb.l ], [ %i.ai, %bb.e ] ; 2 uses
  %i.aq = shl nuw i32 %i.ap, 8                    ; 3 uses
  store i32 %i.aq, ptr %i.a, align 8, !tbaa !62
  %i.ar = shl i32 %i.ao, 8                        ; 4 uses
  store i32 %i.ar, ptr %i.d, align 4, !tbaa !61
  %i.as = icmp ult ptr %i.an, %i.al
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 1 ; 2 uses
  store ptr %i.at, ptr %0, align 8, !tbaa !59
  %i.au = load i8, ptr %i.an, align 1, !tbaa !51
  %i.av = zext i8 %i.au to i32
  %i.aw = or disjoint i32 %i.ar, %i.av
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr %i.am, align 8, !tbaa !63
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.g
  %.sink.i = phi i32 [ 1, %bb.i ], [ %i.aw, %bb.g ] ; 2 uses
  %.ph.i = phi ptr [ %i.an, %bb.i ], [ %i.at, %bb.g ]
  store i32 %.sink.i, ptr %i.d, align 4, !tbaa !61
  br label %bb.j

bb.j:                                             ; preds = %.sink.split.i, %bb.h
  %i.ax = phi ptr [ %i.an, %bb.h ], [ %.ph.i, %.sink.split.i ]
  %i.ay = phi i32 [ %i.ar, %bb.h ], [ %.sink.i, %.sink.split.i ] ; 2 uses
  %i.az = icmp ugt i32 %i.ay, %i.aq
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 1, ptr %i.am, align 8, !tbaa !63
  store i32 1, ptr %i.d, align 4, !tbaa !61
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = phi i32 [ 1, %bb.k ], [ %i.ay, %bb.j ]
  %i.bb = icmp ugt i32 %i.ap, 65535
  br i1 %i.bb, label %rac_normalise.exit, label %bb.f

rac_normalise.exit:                               ; preds = %bb.l, %bb.d
  tail call fastcc void @model256_update(ptr noundef %1, i32 noundef %.040.lcssa)
  ret i32 %.040.lcssa
}

declare void @ff_mss34_dct_put(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @av_frame_free(ptr noundef) local_unnamed_addr #3

declare void @av_freep(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!30, !31, i64 0}
!30 = !{!"MSS3Context", !31, i64 0, !32, i64 8, !6, i64 16, !33, i64 24, !7, i64 56, !7, i64 2288, !7, i64 2744, !7, i64 72728, !7, i64 80720, !7, i64 88208, !7, i64 88464}
!31 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!32 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!33 = !{!"RangeCoder", !16, i64 0, !16, i64 8, !6, i64 16, !6, i64 20, !6, i64 24}
!34 = !{!10, !6, i64 112}
!35 = !{!10, !6, i64 116}
!36 = !{!30, !6, i64 16}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!40, !15, i64 8}
!40 = !{!"DCTBlockCoder", !26, i64 0, !15, i64 8, !6, i64 16, !6, i64 20, !7, i64 24, !41, i64 152, !42, i64 300, !43, i64 324}
!41 = !{!"Model", !7, i64 0, !7, i64 64, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !6, i64 144}
!42 = !{!"Model2", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20}
!43 = !{!"Model256", !7, i64 0, !7, i64 1024, !6, i64 2048, !7, i64 2052, !6, i64 2324, !6, i64 2328, !6, i64 2332, !6, i64 2336}
!44 = !{!40, !6, i64 16}
!45 = !{!40, !26, i64 0}
!46 = !{!30, !32, i64 8}
!47 = !{!10, !6, i64 136}
!48 = !{!49, !16, i64 24}
!49 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!50 = !{!49, !6, i64 32}
!51 = !{!7, !7, i64 0}
!52 = !{!53, !6, i64 276}
!53 = !{!"AVFrame", !7, i64 0, !7, i64 64, !54, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !55, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !56, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!54 = !{!"p2 omnipotent char", !28, i64 0}
!55 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!56 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!57 = !{!53, !6, i64 120}
!58 = !{!6, !6, i64 0}
!59 = !{!33, !16, i64 0}
!60 = !{!33, !16, i64 8}
!61 = !{!33, !6, i64 20}
!62 = !{!33, !6, i64 16}
!63 = !{!33, !6, i64 24}
!64 = !{!16, !16, i64 0}
!65 = distinct !{!65, !38}
!66 = !{!67, !6, i64 0}
!67 = !{!"BlockTypeContext", !6, i64 0, !7, i64 4}
!68 = !{!69, !6, i64 0}
!69 = !{!"FillBlockCoder", !6, i64 0, !41, i64 4}
!70 = distinct !{!70, !38}
!71 = distinct !{!71, !38}
!72 = distinct !{!72, !38}
!73 = distinct !{!73, !38}
!74 = !{!41, !6, i64 128}
!75 = !{!41, !6, i64 140}
!76 = distinct !{!76, !38}
!77 = distinct !{!77, !38}
!78 = distinct !{!78, !38}
!79 = !{!43, !6, i64 2332}
!80 = !{!43, !6, i64 2324}
!81 = distinct !{!81, !38}
!82 = !{!43, !6, i64 2048}
!83 = !{!43, !6, i64 2328}
!84 = !{!43, !6, i64 2336}
!85 = !{!41, !6, i64 132}
!86 = distinct !{!86, !38}
!87 = !{!41, !6, i64 136}
!88 = !{!41, !6, i64 144}
!89 = distinct !{!89, !38}
!90 = distinct !{!90, !38}
!91 = distinct !{!91, !38}
!92 = distinct !{!92, !38, !93, !94}
!93 = !{!"llvm.loop.isvectorized", i32 1}
!94 = !{!"llvm.loop.unroll.runtime.disable"}
!95 = distinct !{!95, !38, !94, !93}
!96 = distinct !{!96, !38}
!97 = distinct !{!97, !38}
!98 = distinct !{!98, !38}
!99 = distinct !{!99, !38}
!100 = !{!40, !6, i64 20}
!101 = !{!42, !6, i64 20}
!102 = !{!42, !6, i64 16}
!103 = !{!104, !6, i64 0}
!104 = !{!"HaarBlockCoder", !6, i64 0, !6, i64 4, !43, i64 8, !41, i64 2348}
!105 = !{!104, !6, i64 4}
!106 = distinct !{!106, !38}
!107 = distinct !{!107, !38}
!108 = distinct !{!108, !38}
!109 = distinct !{!109, !38}
!110 = distinct !{!110, !38, !93, !94}
!111 = distinct !{!111, !38, !94, !93}
!112 = distinct !{!112, !38}
!113 = distinct !{!113, !38}
!114 = !{!115, !115, i64 0}
!115 = !{!"short", !7, i64 0}
!116 = distinct !{!116, !38, !93, !94}
!117 = distinct !{!117, !38, !94, !93}
!118 = distinct !{!118, !38}
!119 = !{!42, !6, i64 8}
!120 = !{!42, !6, i64 12}
!121 = !{!42, !6, i64 4}
!122 = !{!42, !6, i64 0}
!123 = distinct !{!123, !38}
!124 = distinct !{!124, !38}
!125 = distinct !{!125, !38, !93, !94}
!126 = distinct !{!126, !38, !94, !93}
!127 = distinct !{!127, !38}
!128 = distinct !{!128, !38}
!129 = distinct !{!129, !38}
end_hunk_3
