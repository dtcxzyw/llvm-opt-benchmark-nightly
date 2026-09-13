Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abc?download=true
inline.NumInlined: 2413
inline.NumDeleted: 141
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 20
begin_hunk_0_@Abc_TwoExactPermRandomSeeded:bb.a
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !56
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1 ; 2 uses
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %wide.trip.count82.i
  br i1 %exitcond83.not.i, label %.critedge.preheader.i, label %.lr.ph.split.us.i, !llvm.loop !7

.critedge.preheader.i:                            ; preds = %bb.au, %.critedge
  br i1 %i.n, label %.lr.ph70.i, label %.thread.i

.critedge.i:                                      ; preds = %.lr.ph70.i
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %.thread59.i, label %.lr.ph70.i, !llvm.loop !8

.lr.ph70.i:                                       ; preds = %.critedge.preheader.i, %.critedge.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %.critedge.i ], [ 0, %.critedge.preheader.i ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.et, i64 %indvars.iv84.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !56
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %.thread59.i, label %.critedge.i

.thread.i:                                        ; preds = %bb.at, %bb.as, %.lr.ph.split.us.i, %.critedge.preheader.i
  %.4.i = phi i32 [ 1, %.critedge.preheader.i ], [ 0, %.lr.ph.split.us.i ], [ 0, %bb.as ], [ 0, %bb.at ] ; 2 uses
  %.not52.i = icmp eq ptr %i.et, null
  br i1 %.not52.i, label %Abc_TwoExactPermCheck.exit, label %.thread59.i

.thread59.i:                                      ; preds = %.lr.ph70.i, %.critedge.i, %.thread.i
  %.462.i = phi i32 [ %.4.i, %.thread.i ], [ 0, %.lr.ph70.i ], [ 1, %.critedge.i ]
  tail call void @free(ptr noundef nonnull %i.et) #37
  br label %Abc_TwoExactPermCheck.exit

Abc_TwoExactPermCheck.exit:                       ; preds = %.thread.i, %.thread59.i
  %.463.i = phi i32 [ %.4.i, %.thread.i ], [ %.462.i, %.thread59.i ]
  %.not = icmp eq i32 %.463.i, 0
  br i1 %.not, label %Abc_TwoExactPermAddDcs.exit.thread, label %bb.av

bb.av:                                            ; preds = %Abc_TwoExactPermCheck.exit
  br i1 %i.q, label %Abc_TwoExactPermAddDcs.exit, label %.preheader44.i

.preheader44.i:                                   ; preds = %bb.av
  br i1 %i.r, label %.lr.ph.split.i.preheader, label %Abc_TwoExactPermAddDcs.exit.thread

.lr.ph.split.i.preheader:                         ; preds = %.preheader44.i
  br i1 %min.iters.check, label %.lr.ph.split.i.preheader352, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.i.preheader
  %invariant.gep = getelementptr [4 x i8], ptr %i.z, i64 %i.s
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.fs, %vector.body ]
  %vec.phi350 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ft, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !56
  %wide.load351 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !56
  %i.fo = icmp sgt <4 x i32> %wide.load, splat (i32 -1)
  %i.fp = icmp sgt <4 x i32> %wide.load351, splat (i32 -1)
  %i.fq = zext <4 x i1> %i.fo to <4 x i32>
  %i.fr = zext <4 x i1> %i.fp to <4 x i32>
  %i.fs = add <4 x i32> %vec.phi, %i.fq           ; 2 uses
  %i.ft = add <4 x i32> %vec.phi350, %i.fr        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fu = icmp eq i64 %index.next, %n.vec
  br i1 %i.fu, label %middle.block, label %vector.body, !llvm.loop !1588

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ft, %i.fs
  %i.fv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.thread94.i, label %.lr.ph.split.i.preheader352

.lr.ph.split.i.preheader352:                      ; preds = %.lr.ph.split.i.preheader, %middle.block
  %indvars.iv.i159.ph = phi i64 [ %i.s, %.lr.ph.split.i.preheader ], [ %i.y, %middle.block ]
  %.03346.i.ph = phi i32 [ 0, %.lr.ph.split.i.preheader ], [ %i.fv, %middle.block ]
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader352, %.lr.ph.split.i
  %indvars.iv.i159 = phi i64 [ %indvars.iv.next.i161, %.lr.ph.split.i ], [ %indvars.iv.i159.ph, %.lr.ph.split.i.preheader352 ] ; 2 uses
  %.03346.i = phi i32 [ %i.fz, %.lr.ph.split.i ], [ %.03346.i.ph, %.lr.ph.split.i.preheader352 ]
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv.i159
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !56
  %i.fy = icmp sgt i32 %i.fx, -1
  %spec.select.i160 = zext i1 %i.fy to i32
  %i.fz = add nuw nsw i32 %.03346.i, %spec.select.i160 ; 2 uses
  %indvars.iv.next.i161 = add nsw i64 %indvars.iv.i159, 1 ; 2 uses
  %exitcond.not.i162 = icmp eq i64 %indvars.iv.next.i161, %i.e
  br i1 %exitcond.not.i162, label %._crit_edge.thread94.i, label %.lr.ph.split.i, !llvm.loop !1589

._crit_edge.thread94.i:                           ; preds = %.lr.ph.split.i, %middle.block
  %.lcssa343 = phi i32 [ %i.fv, %middle.block ], [ %i.fz, %.lr.ph.split.i ]
  %i.ga = icmp samesign ugt i32 %2, %.lcssa343
  br i1 %i.ga, label %Abc_TwoExactPermAddDcs.exit.thread, label %.preheader.us.us.i

.preheader.us.us.i:                               ; preds = %._crit_edge.thread94.i, %._crit_edge53.split.us.us.us.i
  %.03456.us.us.i = phi i32 [ %i.gl, %._crit_edge53.split.us.us.us.i ], [ 0, %._crit_edge.thread94.i ]
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ay, %.preheader.us.us.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %bb.ay ], [ %i.s, %.preheader.us.us.i ] ; 3 uses
  %.051.us.us.us.i = phi i32 [ %.1.us.us.us.i, %bb.ay ], [ 0, %.preheader.us.us.i ] ; 2 uses
  %.03150.us.us.us.i = phi i32 [ %.132.us.us.us.i, %bb.ay ], [ -1, %.preheader.us.us.i ] ; 2 uses
  %i.gb = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv76.i
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !56
  %i.gd = icmp sgt i32 %i.gc, -1
  br i1 %i.gd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ge = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.gf = add nsw i32 %.051.us.us.us.i, 1         ; 2 uses
  %i.gg = urem i32 %i.ge, %i.gf
  %i.gh = icmp eq i32 %i.gg, 0
  %i.gi = trunc nsw i64 %indvars.iv76.i to i32
  %spec.select.us.us.us.i = select i1 %i.gh, i32 %i.gi, i32 %.03150.us.us.us.i
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.132.us.us.us.i = phi i32 [ %.03150.us.us.us.i, %bb.aw ], [ %spec.select.us.us.us.i, %bb.ax ] ; 2 uses
  %.1.us.us.us.i = phi i32 [ %.051.us.us.us.i, %bb.aw ], [ %i.gf, %bb.ax ]
  %indvars.iv.next77.i = add nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %lftr.wideiv.i163 = trunc i64 %indvars.iv.next77.i to i32
  %exitcond79.not.i = icmp eq i32 %i.d, %lftr.wideiv.i163
  br i1 %exitcond79.not.i, label %._crit_edge53.split.us.us.us.i, label %bb.aw, !llvm.loop !9

._crit_edge53.split.us.us.us.i:                   ; preds = %bb.ay
  %i.gj = sext i32 %.132.us.us.us.i to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.gj
  store i32 -1, ptr %i.gk, align 4, !tbaa !56
  %i.gl = add nuw nsw i32 %.03456.us.us.i, 1      ; 2 uses
  %exitcond80.not.i = icmp eq i32 %i.gl, %2
  br i1 %exitcond80.not.i, label %Abc_TwoExactPermAddDcs.exit, label %.preheader.us.us.i, !llvm.loop !10

Abc_TwoExactPermAddDcs.exit:                      ; preds = %bb.av, %._crit_edge53.split.us.us.us.i
  %.not127 = icmp eq ptr %i.ab, null
  br i1 %.not127, label %.loopexit, label %bb.az

bb.az:                                            ; preds = %Abc_TwoExactPermAddDcs.exit
  tail call void @free(ptr noundef nonnull %i.ab) #37
  br label %.loopexit

Abc_TwoExactPermAddDcs.exit.thread:               ; preds = %.lr.ph207, %bb.v, %bb.aa, %bb.u, %._crit_edge.i, %._crit_edge.i151.us, %bb.i, %bb.m, %bb.j, %.lr.ph210, %.preheader44.i, %._crit_edge.thread94.i, %Abc_TwoExactPermCheck.exit, %._crit_edge218
  %.not125 = icmp eq ptr %i.ab, null
  br i1 %.not125, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %Abc_TwoExactPermAddDcs.exit.thread
  tail call void @free(ptr noundef nonnull %i.ab) #37
  br label %bb.bb

bb.bb:                                            ; preds = %Abc_TwoExactPermAddDcs.exit.thread, %bb.ba
  %.not126 = icmp eq ptr %i.z, null
  br i1 %.not126, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  tail call void @free(ptr noundef nonnull %i.z) #37
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bb, %bb.bc
  %i.gm = add nuw nsw i32 %.0115220, 1            ; 2 uses
  %exitcond255.not = icmp eq i32 %i.gm, 200
  br i1 %exitcond255.not, label %.loopexit, label %bb.b, !llvm.loop !1590

.loopexit:                                        ; preds = %bb.bd, %Abc_TwoExactPermAddDcs.exit, %bb.az
  %.2 = phi ptr [ %i.z, %Abc_TwoExactPermAddDcs.exit ], [ %i.z, %bb.az ], [ null, %bb.bd ]
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc noundef ptr @Abc_TwoExactPermRandom(i32 noundef %0, i32 noundef %1, i32 noundef range(i32 0, -2147483648) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 10 uses
  %i.b = add i32 %1, %0                           ; 4 uses
  %i.c = shl nsw i32 %1, 1                        ; 4 uses
  %i.d = sext i32 %i.c to i64                     ; 4 uses
  %i.e = shl nsw i64 %i.d, 2
  %i.f = icmp sgt i32 %1, 0                       ; 5 uses
  %i.g = add i32 %i.b, -2                         ; 2 uses
  %.not167 = icmp slt i32 %i.g, %0
  %i.h = icmp sgt i32 %0, 0
  %i.i = sext i32 %i.b to i64
  %i.j = sext i32 %0 to i64                       ; 3 uses
  %wide.trip.count82.i = zext i32 %1 to i64       ; 2 uses
  %invariant.op.i = add i32 %0, -1
  %i.k = icmp sgt i32 %i.b, 1
  %i.l = add nsw i32 %i.b, -1
  %wide.trip.count87.i = zext nneg i32 %i.l to i64
  %i.m = icmp eq i32 %2, 0
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.n = zext nneg i32 %smax to i64
  %i.o = shl nuw nsw i64 %i.n, 2
  %i.p = sext i32 %i.g to i64
  %i.q = sext i32 %1 to i64
  %invariant.op = sub i32 1, %0
  %min.iters.check = icmp ult i32 %i.c, 8
  %n.vec = and i64 %i.d, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.ba
  %.079166 = phi i32 [ 0, %bb.a ], [ %i.ic, %bb.ba ]
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.e) #38 ; 16 uses
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.r, i8 -1, i64 %i.o, i1 false), !tbaa !56
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.b
  br i1 %.not167, label %.preheader131.a, label %.lr.ph154

.preheader131.a:                                  ; preds = %Abc_TwoExactPermAddRequired.exit, %._crit_edge
  br i1 %i.h, label %.lr.ph156, label %.preheader130

.lr.ph156:                                        ; preds = %.preheader131.a
  br i1 %i.f, label %.lr.ph.i92.preheader.us, label %Abc_TwoExactPermAddDcs.exit.thread

.lr.ph.i92.preheader.us:                          ; preds = %.lr.ph156, %Abc_TwoExactPermAddRequired.exit108.us
  %.277155.us = phi i32 [ %i.au, %Abc_TwoExactPermAddRequired.exit108.us ], [ 0, %.lr.ph156 ] ; 8 uses
  br label %.lr.ph.i92.us

.lr.ph.i92.us:                                    ; preds = %.lr.ph.i92.preheader.us, %bb.f
  %indvars.iv.i93.us = phi i64 [ %indvars.iv.next.i102.us, %bb.f ], [ 0, %.lr.ph.i92.preheader.us ] ; 3 uses
  %.031.i94.us = phi i32 [ %.2.i101.us, %bb.f ], [ -1, %.lr.ph.i92.preheader.us ] ; 4 uses
  %.02130.i95.us = phi i32 [ %.122.i100.us, %bb.f ], [ 0, %.lr.ph.i92.preheader.us ] ; 4 uses
  %.idx.i96.us = shl nuw nsw i64 %indvars.iv.i93.us, 3
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i96.us ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !56   ; 2 uses
  %i.u = icmp eq i32 %i.t, %.277155.us
  br i1 %i.u, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i92.us
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !56   ; 2 uses
  %i.x = icmp eq i32 %i.w, %.277155.us
  br i1 %i.x, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not27.i97.us = icmp eq i32 %i.t, -1
  %.not28.i98.us = icmp eq i32 %i.w, -1
  %or.cond.i99.us = or i1 %.not27.i97.us, %.not28.i98.us
  br i1 %or.cond.i99.us, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.z = add nsw i32 %.02130.i95.us, 1            ; 2 uses
  %i.aa = urem i32 %i.y, %i.z
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = trunc nsw i64 %indvars.iv.i93.us to i32
  %spec.select.i107.us = select i1 %i.ab, i32 %i.ac, i32 %.031.i94.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %.lr.ph.i92.us
  %.122.i100.us = phi i32 [ %i.z, %bb.e ], [ %.02130.i95.us, %.lr.ph.i92.us ], [ %.02130.i95.us, %bb.c ], [ %.02130.i95.us, %bb.d ]
  %.2.i101.us = phi i32 [ %spec.select.i107.us, %bb.e ], [ %.031.i94.us, %.lr.ph.i92.us ], [ %.031.i94.us, %bb.c ], [ %.031.i94.us, %bb.d ] ; 3 uses
  %indvars.iv.next.i102.us = add nuw nsw i64 %indvars.iv.i93.us, 1 ; 2 uses
  %i.ad = icmp eq i64 %indvars.iv.next.i102.us, %wide.trip.count82.i
  br i1 %i.ad, label %._crit_edge.i105.us, label %.lr.ph.i92.us, !llvm.loop !6

._crit_edge.i105.us:                              ; preds = %bb.f
  %i.ae = icmp sgt i32 %.2.i101.us, -1
  br i1 %i.ae, label %bb.g, label %Abc_TwoExactPermAddDcs.exit.thread.thread

bb.g:                                             ; preds = %._crit_edge.i105.us
  %i.af = shl nuw nsw i32 %.2.i101.us, 1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ag ; 4 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !56 ; 3 uses
  %i.aj = icmp eq i32 %i.ai, %.277155.us
  br i1 %i.aj, label %Abc_TwoExactPermAddDcs.exit.thread.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !56 ; 3 uses
  %i.am = icmp eq i32 %i.al, %.277155.us
  br i1 %i.am, label %Abc_TwoExactPermAddDcs.exit.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.an = icmp eq i32 %i.al, -1
  %i.ao = and i32 %i.al, %i.ai
  %or.cond.i.i106.us = icmp eq i32 %i.ao, -1
  br i1 %or.cond.i.i106.us, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ap = icmp eq i32 %i.ai, -1
  br i1 %i.ap, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.an, label %bb.l, label %Abc_TwoExactPermAddDcs.exit.thread.thread

bb.l:                                             ; preds = %bb.k
  store i32 %.277155.us, ptr %i.ak, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddRequired.exit108.us

bb.m:                                             ; preds = %bb.j
  store i32 %.277155.us, ptr %i.ah, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddRequired.exit108.us

bb.n:                                             ; preds = %bb.i
  %i.aq = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.ar = and i32 %i.aq, 1
  %i.as = zext nneg i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.as
  store i32 %.277155.us, ptr %i.at, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddRequired.exit108.us

Abc_TwoExactPermAddRequired.exit108.us:           ; preds = %bb.n, %bb.m, %bb.l
  %i.au = add nuw nsw i32 %.277155.us, 1          ; 2 uses
  %i.av = icmp slt i32 %i.au, %0
  br i1 %i.av, label %.lr.ph.i92.preheader.us, label %.preheader130, !llvm.loop !1591

.lr.ph154:                                        ; preds = %._crit_edge, %Abc_TwoExactPermAddRequired.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TwoExactPermAddRequired.exit ], [ %i.p, %._crit_edge ] ; 3 uses
  %i.aw = trunc nsw i64 %indvars.iv to i32        ; 8 uses
  %.reass.reass.reass = add i32 %i.aw, %invariant.op ; 2 uses
  %i.ax = icmp slt i32 %.reass.reass.reass, %1
  br i1 %i.ax, label %.lr.ph.preheader.i, label %Abc_TwoExactPermAddDcs.exit.thread

.lr.ph.preheader.i:                               ; preds = %.lr.ph154
  %i.ay = sext i32 %.reass.reass.reass to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ay, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.r ] ; 3 uses
  %.031.i = phi i32 [ -1, %.lr.ph.preheader.i ], [ %.2.i, %bb.r ] ; 4 uses
  %.02130.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.122.i, %bb.r ] ; 4 uses
  %.idx.i = shl nsw i64 %indvars.iv.i, 3
  %i.az = getelementptr inbounds i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !56 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, %i.aw
  br i1 %i.bb, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !56 ; 2 uses
  %i.be = icmp eq i32 %i.bd, %i.aw
  br i1 %i.be, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not27.i = icmp eq i32 %i.ba, -1
  %.not28.i = icmp eq i32 %i.bd, -1
  %or.cond.i = or i1 %.not27.i, %.not28.i
  br i1 %or.cond.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bf = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.bg = add nsw i32 %.02130.i, 1                ; 2 uses
  %i.bh = urem i32 %i.bf, %i.bg
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = trunc nsw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.bi, i32 %i.bj, i32 %.031.i
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %.lr.ph.i
  %.122.i = phi i32 [ %i.bg, %bb.q ], [ %.02130.i, %.lr.ph.i ], [ %.02130.i, %bb.o ], [ %.02130.i, %bb.p ]
  %.2.i = phi i32 [ %spec.select.i, %bb.q ], [ %.031.i, %.lr.ph.i ], [ %.031.i, %bb.o ], [ %.031.i, %bb.p ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %1, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !6

._crit_edge.i:                                    ; preds = %bb.r
  %i.bk = icmp sgt i32 %.2.i, -1
  br i1 %i.bk, label %bb.s, label %Abc_TwoExactPermAddDcs.exit.thread.thread

bb.s:                                             ; preds = %._crit_edge.i
  %i.bl = shl nuw nsw i32 %.2.i, 1
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.bm ; 4 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56 ; 3 uses
  %i.bp = icmp eq i32 %i.bo, %i.aw
  br i1 %i.bp, label %Abc_TwoExactPermAddDcs.exit.thread.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !56 ; 3 uses
  %i.bs = icmp eq i32 %i.br, %i.aw
  br i1 %i.bs, label %Abc_TwoExactPermAddDcs.exit.thread.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bt = icmp eq i32 %i.br, -1
  %i.bu = and i32 %i.br, %i.bo
  %or.cond.i.i = icmp eq i32 %i.bu, -1
  br i1 %or.cond.i.i, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.bw = and i32 %i.bv, 1
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bx
  store i32 %i.aw, ptr %i.by, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddRequired.exit

bb.w:                                             ; preds = %bb.u
  %i.bz = icmp eq i32 %i.bo, -1
  br i1 %i.bz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.aw, ptr %i.bn, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddRequired.exit

bb.y:                                             ; preds = %bb.w
  br i1 %i.bt, label %bb.z, label %Abc_TwoExactPermAddDcs.exit.thread.thread

bb.z:                                             ; preds = %bb.y
  store i32 %i.aw, ptr %i.bq, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddRequired.exit

Abc_TwoExactPermAddRequired.exit:                 ; preds = %bb.v, %bb.x, %bb.z
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ca = icmp sgt i64 %indvars.iv, %i.j
  br i1 %i.ca, label %.lr.ph154, label %.preheader131.a, !llvm.loop !1592

.preheader130:                                    ; preds = %Abc_TwoExactPermAddRequired.exit108.us, %.preheader131.a
  br i1 %i.f, label %.lr.ph163, label %.critedge

.lr.ph163:                                        ; preds = %.preheader130, %bb.ap
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %bb.ap ], [ 0, %.preheader130 ] ; 3 uses
  %i.cb = add nsw i64 %indvars.iv189, %i.j        ; 2 uses
  %i.cc = shl nuw nsw i64 %indvars.iv189, 1       ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cc ; 9 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 5 uses
  %i.cf = load i32, ptr %i.cd, align 4, !tbaa !56
  %.not87 = icmp eq i32 %i.cf, -1
  br i1 %.not87, label %.preheader.preheader, label %bb.ae

.preheader.preheader:                             ; preds = %.lr.ph163
  %i.cg = trunc nsw i64 %i.cb to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.ad
  %.070159 = phi i32 [ %i.cq, %bb.ad ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.ch = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.ci = urem i32 %i.ch, %i.cg                   ; 3 uses
  %i.cj = load i32, ptr %i.ce, align 4, !tbaa !56 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, %i.ci
  br i1 %i.ck, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %.preheader
  %i.cl = icmp eq i32 %i.cj, -1
  br i1 %i.cl, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cm = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.cn = and i32 %i.cm, 1
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.co
  store i32 %i.ci, ptr %i.cp, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddFanin.exit

bb.ac:                                            ; preds = %bb.aa
  store i32 %i.ci, ptr %i.cd, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddFanin.exit

bb.ad:                                            ; preds = %.preheader
  %i.cq = add nuw nsw i32 %.070159, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.cq, 100
  br i1 %exitcond.not, label %Abc_TwoExactPermAddFanin.exit, label %.preheader, !llvm.loop !1593

Abc_TwoExactPermAddFanin.exit:                    ; preds = %bb.ad, %bb.ac, %bb.ab
  %.070136 = phi i32 [ %.070159, %bb.ab ], [ %.070159, %bb.ac ], [ 100, %bb.ad ]
  %i.cr = icmp ne i32 %.070136, 100
  %spec.select = zext i1 %i.cr to i32
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph163, %Abc_TwoExactPermAddFanin.exit
  %.5 = phi i32 [ %spec.select, %Abc_TwoExactPermAddFanin.exit ], [ 1, %.lr.ph163 ] ; 2 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cc
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !56
  %.not87.1 = icmp eq i32 %i.cu, -1
  br i1 %.not87.1, label %.preheader.preheader.1, label %bb.an

.preheader.preheader.1:                           ; preds = %bb.ae
  %i.cv = trunc nsw i64 %i.cb to i32
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.am, %.preheader.preheader.1
  %.070159.1 = phi i32 [ %i.dj, %bb.am ], [ 0, %.preheader.preheader.1 ] ; 2 uses
  %i.cw = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.cx = urem i32 %i.cw, %i.cv                   ; 5 uses
  %i.cy = load i32, ptr %i.cd, align 4, !tbaa !56 ; 3 uses
  %i.cz = icmp eq i32 %i.cy, %i.cx
  br i1 %i.cz, label %bb.am, label %bb.af

bb.af:                                            ; preds = %.preheader.1
  %i.da = load i32, ptr %i.ce, align 4, !tbaa !56 ; 3 uses
  %i.db = icmp eq i32 %i.da, %i.cx
  br i1 %i.db, label %bb.am, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = icmp eq i32 %i.da, -1
  %i.dd = and i32 %i.da, %i.cy
  %or.cond.i109.1 = icmp eq i32 %i.dd, -1
  br i1 %or.cond.i109.1, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.de = icmp eq i32 %i.cy, -1
  br i1 %i.de, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %i.dc, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  store i32 %i.cx, ptr %i.ce, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddFanin.exit.1

bb.ak:                                            ; preds = %bb.ah
  store i32 %i.cx, ptr %i.cd, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddFanin.exit.1

bb.al:                                            ; preds = %bb.ag
  %i.df = tail call i32 @Abc_Random(i32 noundef 0) #37
  %i.dg = and i32 %i.df, 1
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %i.dh
  store i32 %i.cx, ptr %i.di, align 4, !tbaa !56
  br label %Abc_TwoExactPermAddFanin.exit.1

bb.am:                                            ; preds = %bb.ai, %bb.af, %.preheader.1
  %i.dj = add i32 %.070159.1, 1                   ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.dj, 100
  br i1 %exitcond.1.not, label %Abc_TwoExactPermAddFanin.exit.1.thread, label %.preheader.1, !llvm.loop !1593

Abc_TwoExactPermAddFanin.exit.1:                  ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dk = icmp eq i32 %.070159.1, 100
  br i1 %i.dk, label %Abc_TwoExactPermAddFanin.exit.1.thread, label %bb.an

Abc_TwoExactPermAddFanin.exit.1.thread:           ; preds = %bb.am, %Abc_TwoExactPermAddFanin.exit.1
  br label %bb.an

bb.an:                                            ; preds = %Abc_TwoExactPermAddFanin.exit.1.thread, %Abc_TwoExactPermAddFanin.exit.1, %bb.ae
  %.5.1 = phi i32 [ %.5, %bb.ae ], [ 0, %Abc_TwoExactPermAddFanin.exit.1.thread ], [ %.5, %Abc_TwoExactPermAddFanin.exit.1 ]
  %i.dl = load i32, ptr %i.cd, align 4, !tbaa !56 ; 2 uses
  %i.dm = load i32, ptr %i.ce, align 4, !tbaa !56 ; 2 uses
  %i.dn = icmp sgt i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 %i.dm, ptr %i.cd, align 4, !tbaa !56
  store i32 %i.dl, ptr %i.ce, align 4, !tbaa !56
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.do = icmp slt i64 %indvars.iv.next190, %i.q
  %i.dp = icmp ne i32 %.5.1, 0                    ; 2 uses
  %i.dq = and i1 %i.do, %i.dp
  br i1 %i.dq, label %.lr.ph163, label %._crit_edge164, !llvm.loop !1594

._crit_edge164:                                   ; preds = %bb.ap
  br i1 %i.dp, label %.critedge, label %Abc_TwoExactPermAddDcs.exit.thread

.critedge:                                        ; preds = %.preheader130, %._crit_edge164
  %i.dr = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #41 ; 5 uses
  br i1 %i.f, label %.lr.ph.split.i, label %.critedge.preheader.i

.critedge.preheader.i:                            ; preds = %._crit_edge.i116, %.critedge
  br i1 %i.k, label %.lr.ph70.i, label %.thread.i

.lr.ph.split.i:                                   ; preds = %.critedge, %._crit_edge.i116
  %indvars.iv.i111 = phi i64 [ %indvars.iv.next.i114, %._crit_edge.i116 ], [ 0, %.critedge ] ; 6 uses
  %indvars78.i = trunc i64 %indvars.iv.i111 to i32
  %.idx101.i = shl nuw nsw i64 %indvars.iv.i111, 3
  %i.ds = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx101.i ; 7 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !56 ; 10 uses
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !56 ; 4 uses
  %i.dx = icmp slt i32 %i.dw, 0
  br i1 %i.dx, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dy = add nsw i64 %indvars.iv.i111, %i.j      ; 2 uses
  %i.dz = zext nneg i32 %i.dt to i64
  %.not.i112 = icmp sle i64 %i.dy, %i.dz
  %i.ea = zext nneg i32 %i.dw to i64
  %.not49.i = icmp sle i64 %i.dy, %i.ea
  %or.cond53.not65.i = or i1 %.not.i112, %.not49.i
  %i.eb = icmp eq i32 %i.dt, %i.dw
  %or.cond54.i = or i1 %i.eb, %or.cond53.not65.i
  br i1 %or.cond54.i, label %bb.as, label %.thread102.i

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.lr.ph.split.i
  %.not73.i = icmp eq i64 %indvars.iv.i111, 0
  br i1 %.not73.i, label %.thread.i, label %bb.at

.thread102.i:                                     ; preds = %bb.ar
  %.not73104.i = icmp eq i64 %indvars.iv.i111, 0
  br i1 %.not73104.i, label %._crit_edge.i116, label %bb.at

bb.at:                                            ; preds = %.thread102.i, %bb.as
  %.not50.old106.i = phi i1 [ false, %.thread102.i ], [ true, %bb.as ]
  %.reass.i = add i32 %invariant.op.i, %indvars78.i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  %3 = getelementptr i8, ptr %i.ds, i64 -8
  %i.ec = load i32, ptr %3, align 4, !tbaa !56    ; 3 uses
  %.not.i.i = icmp eq i32 %i.ec, %.reass.i
  br i1 %.not.i.i, label %bb.au, label %.thread.i.i

bb.au:                                            ; preds = %bb.at
  %i.ed = getelementptr i8, ptr %i.ds, i64 -4
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !56 ; 2 uses
  %i.ef = icmp eq i32 %i.ee, %.reass.i
  br i1 %i.ef, label %.preheader28.1.thread.i.i, label %._crit_edge.1.thread.i.i

.thread.i.i:                                      ; preds = %bb.at
  store i32 %i.ec, ptr %i.a, align 16, !tbaa !56
  %i.eg = getelementptr i8, ptr %i.ds, i64 -4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !56 ; 3 uses
  %i.ei = icmp ne i32 %i.eh, %.reass.i
  %i.ej = icmp ne i32 %i.ec, %i.eh
  %or.cond.i.i113 = and i1 %i.ei, %i.ej
  br i1 %or.cond.i.i113, label %._crit_edge.1.thread.i.i, label %.preheader28.1.i.i

._crit_edge.1.thread.i.i:                         ; preds = %.thread.i.i, %bb.au
  %i.ek = phi i32 [ %i.eh, %.thread.i.i ], [ %i.ee, %bb.au ]
  %.3626568.i.i = phi i32 [ 1, %.thread.i.i ], [ 0, %bb.au ] ; 2 uses
  %i.el = add nuw nsw i32 %.3626568.i.i, 1
  %i.em = zext nneg i32 %.3626568.i.i to i64
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.em
  store i32 %i.ek, ptr %i.en, align 4, !tbaa !56
  br label %.preheader28.1.i.i

.preheader28.1.i.i:                               ; preds = %._crit_edge.1.thread.i.i, %.thread.i.i
  %.3.1.i.i = phi i32 [ 1, %.thread.i.i ], [ %i.el, %._crit_edge.1.thread.i.i ] ; 5 uses
  %i.eo = icmp eq i32 %i.dt, %.reass.i
  br i1 %i.eo, label %bb.av, label %.lr.ph.preheader.146.i.i

.preheader28.1.thread.i.i:                        ; preds = %bb.au
  %i.ep = icmp eq i32 %i.dt, %.reass.i
  br i1 %i.ep, label %.thread76.i.i, label %._crit_edge.156.thread.i.i

.lr.ph.preheader.146.i.i:                         ; preds = %.preheader28.1.i.i
  %wide.trip.count.145.i.i = zext nneg i32 %.3.1.i.i to i64 ; 3 uses
  %min.iters.check304 = icmp ult i32 %.3.1.i.i, 8
  br i1 %min.iters.check304, label %.lr.ph.151.i.i.preheader, label %vector.ph305

vector.ph305:                                     ; preds = %.lr.ph.preheader.146.i.i
  %n.vec306 = and i64 %wide.trip.count.145.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert307 = insertelement <4 x i32> poison, i32 %i.dt, i64 0
  %broadcast.splat308 = shufflevector <4 x i32> %broadcast.splatinsert307, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body309

vector.body309:                                   ; preds = %vector.body309, %vector.ph305
  %index310 = phi i64 [ 0, %vector.ph305 ], [ %index.next315, %vector.body309 ] ; 2 uses
  %vec.phi311 = phi <4 x i32> [ zeroinitializer, %vector.ph305 ], [ %i.ew, %vector.body309 ]
  %vec.phi312 = phi <4 x i32> [ zeroinitializer, %vector.ph305 ], [ %i.ex, %vector.body309 ]
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index310 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load313 = load <4 x i32>, ptr %i.eq, align 16, !tbaa !56
  %wide.load314 = load <4 x i32>, ptr %i.er, align 16, !tbaa !56
  %i.es = icmp eq <4 x i32> %wide.load313, %broadcast.splat308
  %i.et = icmp eq <4 x i32> %wide.load314, %broadcast.splat308
  %i.eu = zext <4 x i1> %i.es to <4 x i32>
  %i.ev = zext <4 x i1> %i.et to <4 x i32>
  %i.ew = or <4 x i32> %vec.phi311, %i.eu         ; 2 uses
  %i.ex = or <4 x i32> %vec.phi312, %i.ev         ; 2 uses
  %index.next315 = add nuw i64 %index310, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next315, %n.vec306
  br i1 %i.ey, label %middle.block316, label %vector.body309, !llvm.loop !1595

middle.block316:                                  ; preds = %vector.body309
  %bin.rdx317 = or <4 x i32> %i.ex, %i.ew
  %i.ez = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx317) ; 2 uses
  %cmp.n318 = icmp eq i64 %n.vec306, %wide.trip.count.145.i.i
  br i1 %cmp.n318, label %._crit_edge.156.i.i, label %.lr.ph.151.i.i.preheader

.lr.ph.151.i.i.preheader:                         ; preds = %.lr.ph.preheader.146.i.i, %middle.block316
  %indvars.iv.147.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.146.i.i ], [ %n.vec306, %middle.block316 ]
  %.030.148.i.i.ph = phi i32 [ 0, %.lr.ph.preheader.146.i.i ], [ %i.ez, %middle.block316 ]
  br label %.lr.ph.151.i.i

.lr.ph.151.i.i:                                   ; preds = %.lr.ph.151.i.i.preheader, %.lr.ph.151.i.i
  %indvars.iv.147.i.i = phi i64 [ %indvars.iv.next.149.i.i, %.lr.ph.151.i.i ], [ %indvars.iv.147.i.i.ph, %.lr.ph.151.i.i.preheader ] ; 2 uses
  %.030.148.i.i = phi i32 [ %i.fe, %.lr.ph.151.i.i ], [ %.030.148.i.i.ph, %.lr.ph.151.i.i.preheader ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.147.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !56
  %i.fc = icmp eq i32 %i.fb, %i.dt
  %i.fd = zext i1 %i.fc to i32
  %i.fe = or i32 %.030.148.i.i, %i.fd             ; 2 uses
  %indvars.iv.next.149.i.i = add nuw nsw i64 %indvars.iv.147.i.i, 1 ; 2 uses
  %exitcond.150.not.i.i = icmp eq i64 %indvars.iv.next.149.i.i, %wide.trip.count.145.i.i
  br i1 %exitcond.150.not.i.i, label %._crit_edge.156.i.i, label %.lr.ph.151.i.i, !llvm.loop !1596

._crit_edge.156.i.i:                              ; preds = %.lr.ph.151.i.i, %middle.block316
  %.lcssa278 = phi i32 [ %i.ez, %middle.block316 ], [ %i.fe, %.lr.ph.151.i.i ]
  %i.ff = icmp eq i32 %.lcssa278, 0
  br i1 %i.ff, label %._crit_edge.156.thread.i.i, label %bb.av

._crit_edge.156.thread.i.i:                       ; preds = %.preheader28.1.thread.i.i, %._crit_edge.156.i.i
  %.3.1707275.i.i = phi i32 [ %.3.1.i.i, %._crit_edge.156.i.i ], [ 0, %.preheader28.1.thread.i.i ] ; 2 uses
  %i.fg = add nuw nsw i32 %.3.1707275.i.i, 1
  %i.fh = zext nneg i32 %.3.1707275.i.i to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fh
  store i32 %i.dt, ptr %i.fi, align 4, !tbaa !56
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.156.thread.i.i, %._crit_edge.156.i.i, %.preheader28.1.i.i
  %.3.157.i.i = phi i32 [ %.3.1.i.i, %.preheader28.1.i.i ], [ %.3.1.i.i, %._crit_edge.156.i.i ], [ %i.fg, %._crit_edge.156.thread.i.i ] ; 5 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !56 ; 5 uses
  %i.fl = icmp eq i32 %i.fk, %.reass.i
  br i1 %i.fl, label %Abc_TwoExactPermCountDistinct.exit.i, label %.preheader.1.1.i.i

.thread76.i.i:                                    ; preds = %.preheader28.1.thread.i.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !56 ; 2 uses
  %i.fo = icmp eq i32 %i.fn, %i.dt
  br i1 %i.fo, label %Abc_TwoExactPermCountDistinct.exit.thread.i, label %._crit_edge.1.1.thread.i.i

Abc_TwoExactPermCountDistinct.exit.thread.i:      ; preds = %.thread76.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  br label %.thread.i

.preheader.1.1.i.i:                               ; preds = %bb.av
  %wide.trip.count.1.1.i.i = zext nneg i32 %.3.157.i.i to i64 ; 3 uses
  %min.iters.check286 = icmp ult i32 %.3.157.i.i, 8
  br i1 %min.iters.check286, label %.lr.ph.1.1.i.i.preheader, label %vector.ph287

vector.ph287:                                     ; preds = %.preheader.1.1.i.i
  %n.vec288 = and i64 %wide.trip.count.1.1.i.i, 2147483640 ; 3 uses
  %broadcast.splatinsert289 = insertelement <4 x i32> poison, i32 %i.fk, i64 0
  %broadcast.splat290 = shufflevector <4 x i32> %broadcast.splatinsert289, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body291

vector.body291:                                   ; preds = %vector.body291, %vector.ph287
  %index292 = phi i64 [ 0, %vector.ph287 ], [ %index.next297, %vector.body291 ] ; 2 uses
  %vec.phi293 = phi <4 x i32> [ zeroinitializer, %vector.ph287 ], [ %i.fv, %vector.body291 ]
  %vec.phi294 = phi <4 x i32> [ zeroinitializer, %vector.ph287 ], [ %i.fw, %vector.body291 ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index292 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %wide.load295 = load <4 x i32>, ptr %i.fp, align 16, !tbaa !56
  %wide.load296 = load <4 x i32>, ptr %i.fq, align 16, !tbaa !56
  %i.fr = icmp eq <4 x i32> %wide.load295, %broadcast.splat290
  %i.fs = icmp eq <4 x i32> %wide.load296, %broadcast.splat290
  %i.ft = zext <4 x i1> %i.fr to <4 x i32>
  %i.fu = zext <4 x i1> %i.fs to <4 x i32>
  %i.fv = or <4 x i32> %vec.phi293, %i.ft         ; 2 uses
  %i.fw = or <4 x i32> %vec.phi294, %i.fu         ; 2 uses
  %index.next297 = add nuw i64 %index292, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next297, %n.vec288
  br i1 %i.fx, label %middle.block298, label %vector.body291, !llvm.loop !1597

middle.block298:                                  ; preds = %vector.body291
  %bin.rdx299 = or <4 x i32> %i.fw, %i.fv
  %i.fy = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx299) ; 2 uses
  %cmp.n300 = icmp eq i64 %n.vec288, %wide.trip.count.1.1.i.i
  br i1 %cmp.n300, label %._crit_edge.1.1.i.i, label %.lr.ph.1.1.i.i.preheader

.lr.ph.1.1.i.i.preheader:                         ; preds = %.preheader.1.1.i.i, %middle.block298
  %indvars.iv.1.1.i.i.ph = phi i64 [ 0, %.preheader.1.1.i.i ], [ %n.vec288, %middle.block298 ]
  %.030.1.1.i.i.ph = phi i32 [ 0, %.preheader.1.1.i.i ], [ %i.fy, %middle.block298 ]
  br label %.lr.ph.1.1.i.i

.lr.ph.1.1.i.i:                                   ; preds = %.lr.ph.1.1.i.i.preheader, %.lr.ph.1.1.i.i
  %indvars.iv.1.1.i.i = phi i64 [ %indvars.iv.next.1.1.i.i, %.lr.ph.1.1.i.i ], [ %indvars.iv.1.1.i.i.ph, %.lr.ph.1.1.i.i.preheader ] ; 2 uses
  %.030.1.1.i.i = phi i32 [ %i.gd, %.lr.ph.1.1.i.i ], [ %.030.1.1.i.i.ph, %.lr.ph.1.1.i.i.preheader ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.1.1.i.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !56
  %i.gb = icmp eq i32 %i.ga, %i.fk
  %i.gc = zext i1 %i.gb to i32
  %i.gd = or i32 %.030.1.1.i.i, %i.gc             ; 2 uses
  %indvars.iv.next.1.1.i.i = add nuw nsw i64 %indvars.iv.1.1.i.i, 1 ; 2 uses
  %exitcond.1.1.not.i.i = icmp eq i64 %indvars.iv.next.1.1.i.i, %wide.trip.count.1.1.i.i
  br i1 %exitcond.1.1.not.i.i, label %._crit_edge.1.1.i.i, label %.lr.ph.1.1.i.i, !llvm.loop !1598

._crit_edge.1.1.i.i:                              ; preds = %.lr.ph.1.1.i.i, %middle.block298
  %.lcssa279 = phi i32 [ %i.fy, %middle.block298 ], [ %i.gd, %.lr.ph.1.1.i.i ]
  %i.ge = icmp eq i32 %.lcssa279, 0
  br i1 %i.ge, label %._crit_edge.1.1.thread.i.i, label %Abc_TwoExactPermCountDistinct.exit.i

._crit_edge.1.1.thread.i.i:                       ; preds = %._crit_edge.1.1.i.i, %.thread76.i.i
  %i.gf = phi i32 [ %i.fk, %._crit_edge.1.1.i.i ], [ %i.fn, %.thread76.i.i ]
  %.3.157788083.i.i = phi i32 [ %.3.157.i.i, %._crit_edge.1.1.i.i ], [ 0, %.thread76.i.i ]
  %i.gg = add nuw nsw i32 %.3.157788083.i.i, 1
  br label %Abc_TwoExactPermCountDistinct.exit.i

Abc_TwoExactPermCountDistinct.exit.i:             ; preds = %._crit_edge.1.1.thread.i.i, %._crit_edge.1.1.i.i, %bb.av
  %i.gh = phi i32 [ %.reass.i, %bb.av ], [ %i.fk, %._crit_edge.1.1.i.i ], [ %i.gf, %._crit_edge.1.1.thread.i.i ]
  %.3.1.1.i.i = phi i32 [ %.3.157.i.i, %bb.av ], [ %.3.157.i.i, %._crit_edge.1.1.i.i ], [ %i.gg, %._crit_edge.1.1.thread.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  %.3.1.1.i.fr.i = freeze i32 %.3.1.1.i.i
  %i.gi = icmp ult i32 %.3.1.1.i.fr.i, 3
  %or.cond64.i = or i1 %.not50.old106.i, %i.gi
  br i1 %or.cond64.i, label %.thread.i, label %._crit_edge.i116

._crit_edge.i116:                                 ; preds = %.thread102.i, %Abc_TwoExactPermCountDistinct.exit.i
  %i.gj = phi i32 [ %i.gh, %Abc_TwoExactPermCountDistinct.exit.i ], [ %i.dw, %.thread102.i ]
  %i.gk = sext i32 %i.dt to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.gk ; 2 uses
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !56
  %i.gn = add nsw i32 %i.gm, 1
  store i32 %i.gn, ptr %i.gl, align 4, !tbaa !56
  %i.go = sext i32 %i.gj to i64
  %i.gp = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !56
  %i.gr = add nsw i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !56
  %indvars.iv.next.i114 = add nuw nsw i64 %indvars.iv.i111, 1 ; 2 uses
  %exitcond.not.i115 = icmp eq i64 %indvars.iv.next.i114, %wide.trip.count82.i
  br i1 %exitcond.not.i115, label %.critedge.preheader.i, label %.lr.ph.split.i, !llvm.loop !7

.critedge.i:                                      ; preds = %.lr.ph70.i
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %wide.trip.count87.i
  br i1 %exitcond88.not.i, label %.thread59.i, label %.lr.ph70.i, !llvm.loop !8

.lr.ph70.i:                                       ; preds = %.critedge.preheader.i, %.critedge.i
end_hunk_0
