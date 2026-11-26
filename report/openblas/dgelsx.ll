Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgelsx?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgelsx_:bb.a
  %i.hn = icmp ult i64 %i.hl, 7
  br i1 %i.hn, label %..loopexit369_crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv407 = phi i64 [ %indvars.iv.next408.7, %vec.epilog.scalar.ph ], [ %indvars.iv407.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 9 uses
  %i.ho = mul nsw i64 %indvars.iv407, %i.gt
  %gep459 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.ho
  store double 0.000000e+00, ptr %gep459, align 8, !tbaa !27
  %indvars.iv.next408 = add nuw nsw i64 %indvars.iv407, 1
  %i.hp = mul nsw i64 %indvars.iv.next408, %i.gt
  %gep459.1 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.hp
  store double 0.000000e+00, ptr %gep459.1, align 8, !tbaa !27
  %indvars.iv.next408.1 = add nuw nsw i64 %indvars.iv407, 2
  %i.hq = mul nsw i64 %indvars.iv.next408.1, %i.gt
  %gep459.2 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.hq
  store double 0.000000e+00, ptr %gep459.2, align 8, !tbaa !27
  %indvars.iv.next408.2 = add nuw nsw i64 %indvars.iv407, 3
  %i.hr = mul nsw i64 %indvars.iv.next408.2, %i.gt
  %gep459.3 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.hr
  store double 0.000000e+00, ptr %gep459.3, align 8, !tbaa !27
  %indvars.iv.next408.3 = add nuw nsw i64 %indvars.iv407, 4
  %i.hs = mul nsw i64 %indvars.iv.next408.3, %i.gt
  %gep459.4 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.hs
  store double 0.000000e+00, ptr %gep459.4, align 8, !tbaa !27
  %indvars.iv.next408.4 = add nuw nsw i64 %indvars.iv407, 5
  %i.ht = mul nsw i64 %indvars.iv.next408.4, %i.gt
  %gep459.5 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.ht
  store double 0.000000e+00, ptr %gep459.5, align 8, !tbaa !27
  %indvars.iv.next408.5 = add nuw nsw i64 %indvars.iv407, 6
  %i.hu = mul nsw i64 %indvars.iv.next408.5, %i.gt
  %gep459.6 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.hu
  store double 0.000000e+00, ptr %gep459.6, align 8, !tbaa !27
  %indvars.iv.next408.6 = add nuw nsw i64 %indvars.iv407, 7
  %i.hv = mul nsw i64 %indvars.iv.next408.6, %i.gt
  %gep459.7 = getelementptr [8 x i8], ptr %invariant.gep458, i64 %i.hv
  store double 0.000000e+00, ptr %gep459.7, align 8, !tbaa !27
  %indvars.iv.next408.7 = add nuw nsw i64 %indvars.iv407, 8 ; 2 uses
  %exitcond411.not.7 = icmp eq i64 %indvars.iv.next408.7, %wide.trip.count410
  br i1 %exitcond411.not.7, label %..loopexit369_crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !18

._crit_edge386.split.thread:                      ; preds = %..loopexit369_crit_edge, %.lr.ph385
  store i32 %i.gs, ptr %i.b, align 4
  store i32 %i.gr, ptr %i.a, align 4, !tbaa !25
  %.not351387 = icmp slt i32 %i.gr, 1
  br i1 %.not351387, label %.loopexit, label %.lr.ph390.preheader

.lr.ph390.preheader:                              ; preds = %._crit_edge386.split.thread
  %i.hw = sext i32 %i.s to i64
  %invariant.gep460 = getelementptr [8 x i8], ptr %i.u, i64 %i.hw
  br label %.lr.ph390

.lr.ph390:                                        ; preds = %.lr.ph390.preheader, %.lr.ph390
  %indvars.iv417 = phi i64 [ 1, %.lr.ph390.preheader ], [ %indvars.iv.next418, %.lr.ph390 ] ; 5 uses
  %i.hx = load i32, ptr %1, align 4, !tbaa !25
  %i.hy = load i32, ptr %9, align 4, !tbaa !25    ; 2 uses
  %i.hz = add i32 %i.hx, 1
  %i.ia = sub i32 %i.hz, %i.hy
  store i32 %i.ia, ptr %i.b, align 4, !tbaa !25
  %i.ib = add nsw i32 %i.hy, 1                    ; 2 uses
  %i.ic = mul nsw i32 %i.ib, %i.p
  %i.id = sext i32 %i.ic to i64
  %i.ie = getelementptr [8 x i8], ptr %i.r, i64 %indvars.iv417
  %i.if = getelementptr [8 x i8], ptr %i.ie, i64 %i.id
  %i.ig = load i32, ptr %i.k, align 4, !tbaa !25  ; 2 uses
  %i.ih = sext i32 %i.ig to i64
  %i.ii = getelementptr [8 x i8], ptr %i.w, i64 %indvars.iv417
  %i.ij = getelementptr [8 x i8], ptr %i.ii, i64 %i.ih
  %gep461 = getelementptr [8 x i8], ptr %invariant.gep460, i64 %indvars.iv417
  %i.ik = add nsw i32 %i.ib, %i.s
  %i.il = sext i32 %i.ik to i64
  %i.im = getelementptr inbounds [8 x i8], ptr %i.u, i64 %i.il
  %i.in = shl i32 %i.ig, 1
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr [8 x i8], ptr %i.w, i64 %i.io
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  call void @dlatzm_(ptr noundef nonnull @.str.6, ptr noundef nonnull %i.b, ptr noundef nonnull %2, ptr noundef nonnull %i.if, ptr noundef nonnull %4, ptr noundef nonnull %i.ij, ptr noundef %gep461, ptr noundef %i.im, ptr noundef nonnull %6, ptr noundef %i.iq) #4
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 1
  %i.ir = load i32, ptr %i.a, align 4, !tbaa !25
  %i.is = sext i32 %i.ir to i64
  %.not351.not = icmp slt i64 %indvars.iv417, %i.is
  br i1 %.not351.not, label %.lr.ph390, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %.lr.ph390, %bb.r, %._crit_edge386.split.thread
  %i.it = load i32, ptr %2, align 4, !tbaa !25    ; 3 uses
  store i32 %i.it, ptr %i.a, align 4, !tbaa !25
  %.not352401 = icmp slt i32 %i.it, 1
  br i1 %.not352401, label %bb.y, label %.lr.ph404

.lr.ph404:                                        ; preds = %.loopexit
  %i.iu = load i32, ptr %1, align 4, !tbaa !25    ; 6 uses
  %.not353391 = icmp slt i32 %i.iu, 1
  %i.iv = load i32, ptr %i.k, align 4
  %i.iw = shl i32 %i.iv, 1                        ; 3 uses
  br i1 %.not353391, label %._crit_edge405, label %.lr.ph404.split.preheader

.lr.ph404.split.preheader:                        ; preds = %.lr.ph404
  %i.ix = sext i32 %i.iw to i64                   ; 2 uses
  %i.iy = add nuw i32 %i.iu, 1
  %i.iz = sext i32 %i.s to i64
  %i.ja = add nuw i32 %i.it, 1
  %wide.trip.count434 = zext i32 %i.ja to i64
  %wide.trip.count423 = zext i32 %i.iy to i64     ; 2 uses
  %invariant.gep462 = getelementptr [8 x i8], ptr %i.w, i64 %i.ix ; 3 uses
  %invariant.gep464 = getelementptr [8 x i8], ptr %i.w, i64 %i.ix
  %i.jb = zext nneg i32 %i.iu to i64              ; 5 uses
  %min.iters.check504 = icmp ult i32 %i.iu, 4
  %min.iters.check506 = icmp ult i32 %i.iu, 16
  %i.jc = and i64 %i.jb, 12
  %n.vec508 = and i64 %i.jb, 2147483632           ; 4 uses
  %i.jd = or disjoint i64 %n.vec508, 1
  %cmp.n513 = icmp eq i64 %n.vec508, %i.jb
  %min.epilog.iters.check517 = icmp eq i64 %i.jc, 0
  %n.vec520 = and i64 %i.jb, 2147483644           ; 3 uses
  %i.je = or disjoint i64 %n.vec520, 1
  %cmp.n525 = icmp eq i64 %n.vec520, %i.jb
  br label %iter.check514

iter.check514:                                    ; preds = %._crit_edge400, %.lr.ph404.split.preheader
  %indvars.iv430 = phi i64 [ 1, %.lr.ph404.split.preheader ], [ %indvars.iv.next431, %._crit_edge400 ] ; 2 uses
  br i1 %min.iters.check504, label %.lr.ph394.preheader, label %vector.main.loop.iter.check505

vector.main.loop.iter.check505:                   ; preds = %iter.check514
  br i1 %min.iters.check506, label %vec.epilog.ph518, label %vector.body509

vector.body509:                                   ; preds = %vector.main.loop.iter.check505, %vector.body509
  %index510 = phi i64 [ %index.next511, %vector.body509 ], [ 0, %vector.main.loop.iter.check505 ] ; 2 uses
  %i.jf = getelementptr [8 x i8], ptr %invariant.gep462, i64 %index510 ; 4 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 8
  %i.jh = getelementptr i8, ptr %i.jf, i64 40
  %i.ji = getelementptr i8, ptr %i.jf, i64 72
  %i.jj = getelementptr i8, ptr %i.jf, i64 104
  store <4 x double> splat (double 1.000000e+00), ptr %i.jg, align 8, !tbaa !27
  store <4 x double> splat (double 1.000000e+00), ptr %i.jh, align 8, !tbaa !27
  store <4 x double> splat (double 1.000000e+00), ptr %i.ji, align 8, !tbaa !27
  store <4 x double> splat (double 1.000000e+00), ptr %i.jj, align 8, !tbaa !27
  %index.next511 = add nuw i64 %index510, 16      ; 2 uses
  %i.jk = icmp eq i64 %index.next511, %n.vec508
  br i1 %i.jk, label %middle.block512, label %vector.body509, !llvm.loop !20

middle.block512:                                  ; preds = %vector.body509
  br i1 %cmp.n513, label %.lr.ph399, label %vec.epilog.iter.check515

vec.epilog.iter.check515:                         ; preds = %middle.block512
  br i1 %min.epilog.iters.check517, label %.lr.ph394.preheader, label %vec.epilog.ph518, !prof !34

vec.epilog.ph518:                                 ; preds = %vector.main.loop.iter.check505, %vec.epilog.iter.check515
  %vec.epilog.resume.val519 = phi i64 [ %n.vec508, %vec.epilog.iter.check515 ], [ 0, %vector.main.loop.iter.check505 ]
  br label %vec.epilog.vector.body521

vec.epilog.vector.body521:                        ; preds = %vec.epilog.vector.body521, %vec.epilog.ph518
  %index522 = phi i64 [ %vec.epilog.resume.val519, %vec.epilog.ph518 ], [ %index.next523, %vec.epilog.vector.body521 ] ; 2 uses
  %i.jl = getelementptr [8 x i8], ptr %invariant.gep462, i64 %index522
  %i.jm = getelementptr i8, ptr %i.jl, i64 8
  store <4 x double> splat (double 1.000000e+00), ptr %i.jm, align 8, !tbaa !27
  %index.next523 = add nuw i64 %index522, 4       ; 2 uses
  %i.jn = icmp eq i64 %index.next523, %n.vec520
  br i1 %i.jn, label %vec.epilog.middle.block524, label %vec.epilog.vector.body521, !llvm.loop !21

vec.epilog.middle.block524:                       ; preds = %vec.epilog.vector.body521
  br i1 %cmp.n525, label %.lr.ph399, label %.lr.ph394.preheader

.lr.ph394.preheader:                              ; preds = %iter.check514, %vec.epilog.iter.check515, %vec.epilog.middle.block524
  %indvars.iv420.ph = phi i64 [ 1, %iter.check514 ], [ %i.jd, %vec.epilog.iter.check515 ], [ %i.je, %vec.epilog.middle.block524 ]
  br label %.lr.ph394

.lr.ph394:                                        ; preds = %.lr.ph394.preheader, %.lr.ph394
  %indvars.iv420 = phi i64 [ %indvars.iv.next421, %.lr.ph394 ], [ %indvars.iv420.ph, %.lr.ph394.preheader ] ; 2 uses
  %gep463 = getelementptr [8 x i8], ptr %invariant.gep462, i64 %indvars.iv420
  store double 1.000000e+00, ptr %gep463, align 8, !tbaa !27
  %indvars.iv.next421 = add nuw nsw i64 %indvars.iv420, 1 ; 2 uses
  %exitcond424.not = icmp eq i64 %indvars.iv.next421, %wide.trip.count423
  br i1 %exitcond424.not, label %.lr.ph399, label %.lr.ph394, !llvm.loop !22

.lr.ph399:                                        ; preds = %.lr.ph394, %vec.epilog.middle.block524, %middle.block512
  %i.jo = mul nsw i64 %indvars.iv430, %i.iz       ; 2 uses
  %invariant.gep466 = getelementptr [8 x i8], ptr %i.u, i64 %i.jo
  %i.jp = getelementptr [8 x i8], ptr %i.u, i64 %i.jo
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph399, %bb.x
  %indvars.iv425 = phi i64 [ 1, %.lr.ph399 ], [ %indvars.iv.next426, %bb.x ] ; 7 uses
  %gep465 = getelementptr [8 x i8], ptr %invariant.gep464, i64 %indvars.iv425
  %i.jq = load double, ptr %gep465, align 8, !tbaa !27
  %i.jr = fcmp oeq double %i.jq, 1.000000e+00
  br i1 %i.jr, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv425
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !25 ; 2 uses
  %i.ju = zext i32 %i.jt to i64
  %.not355 = icmp eq i64 %indvars.iv425, %i.ju
  br i1 %.not355, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %gep467 = getelementptr [8 x i8], ptr %invariant.gep466, i64 %indvars.iv425 ; 2 uses
  %i.jv = load double, ptr %gep467, align 8, !tbaa !27
  %i.jw = trunc nuw nsw i64 %indvars.iv425 to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.0319.a = phi i32 [ %i.jw, %bb.u ], [ %12, %bb.v ]
  %.0316 = phi double [ %i.jv, %bb.u ], [ %.0, %bb.v ]
  %12 = phi i32 [ %i.jt, %bb.u ], [ %i.kc, %bb.v ] ; 3 uses
  %i.jx = sext i32 %12 to i64                     ; 2 uses
  %.0.in = getelementptr [8 x i8], ptr %i.jp, i64 %i.jx ; 2 uses
  %.0 = load double, ptr %.0.in, align 8, !tbaa !27 ; 2 uses
  store double %.0316, ptr %.0.in, align 8, !tbaa !27
  %i.jy = add nsw i32 %.0319.a, %i.iw
  %i.jz = sext i32 %i.jy to i64
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.jz
  store double 0.000000e+00, ptr %i.ka, align 8, !tbaa !27
  %i.kb = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.jx
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !25 ; 2 uses
  %i.kd = zext i32 %i.kc to i64
  %.not357 = icmp eq i64 %indvars.iv425, %i.kd
  br i1 %.not357, label %bb.w, label %bb.v

bb.w:                                             ; preds = %bb.v
  store double %.0, ptr %gep467, align 8, !tbaa !27
  %i.ke = add nsw i32 %12, %i.iw
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.kf
  store double 0.000000e+00, ptr %i.kg, align 8, !tbaa !27
  br label %bb.x

bb.x:                                             ; preds = %bb.s, %bb.w, %bb.t
  %indvars.iv.next426 = add nuw nsw i64 %indvars.iv425, 1 ; 2 uses
  %exitcond429.not = icmp eq i64 %indvars.iv.next426, %wide.trip.count423
  br i1 %exitcond429.not, label %._crit_edge400, label %bb.s, !llvm.loop !23

._crit_edge400:                                   ; preds = %bb.x
  %indvars.iv.next431 = add nuw nsw i64 %indvars.iv430, 1 ; 2 uses
  %exitcond435.not = icmp eq i64 %indvars.iv.next431, %wide.trip.count434
  br i1 %exitcond435.not, label %._crit_edge405, label %iter.check514, !llvm.loop !24

._crit_edge405:                                   ; preds = %._crit_edge400, %.lr.ph404
  store i32 %i.iu, ptr %i.b, align 4, !tbaa !25
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge405, %.loopexit
  br i1 %brmerge, label %.sink.split472, label %bb.z

.sink.split472:                                   ; preds = %bb.y
  %.mux = select i1 %or.cond, ptr %i.o, ptr %i.l  ; 2 uses
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.c, ptr noundef nonnull %.mux, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %11) #4
  call void @dlascl_(ptr noundef nonnull @.str.11, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %.mux, ptr noundef nonnull %i.c, ptr noundef nonnull %9, ptr noundef nonnull %9, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %11) #4
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.sink.split472
  br i1 %or.cond366.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.o, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %11) #4
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  br i1 %i.bk, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @dlascl_(ptr noundef nonnull @.str.4, ptr noundef nonnull @c__0, ptr noundef nonnull @c__0, ptr noundef nonnull %i.l, ptr noundef nonnull %i.d, ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %11) #4
  br label %bb.ad

bb.ad:                                            ; preds = %bb.k, %bb.o, %bb.ab, %bb.ac, %bb.aa, %bb.g, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @xerbla_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare double @dlamch_(ptr noundef) local_unnamed_addr #2

declare void @dlabad_(ptr noundef, ptr noundef) local_unnamed_addr #2

declare double @dlange_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlascl_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaset_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dgeqpf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlaic1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtzrqf_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dorm2r_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dtrsm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @dlatzm_(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, i1 false, !"LVerDomain"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !30, !31, !32}
!12 = distinct !{!12, !33}
!13 = distinct !{!13, !30, !31}
!14 = distinct !{!14, !30}
!15 = distinct !{!15, !30, !31, !32}
!16 = distinct !{!16, !30, !31, !32}
!17 = distinct !{!17, !33}
!18 = distinct !{!18, !30, !31}
!19 = distinct !{!19, !30}
!20 = distinct !{!20, !30, !31, !32}
!21 = distinct !{!21, !30, !31, !32}
!22 = distinct !{!22, !30, !32, !31}
!23 = distinct !{!23, !30}
!24 = distinct !{!24, !30}
!25 = !{!5, !5, i64 0}
!26 = !{!"double", !4, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!9}
!29 = !{!10}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = !{!"llvm.loop.unroll.disable"}
!34 = !{!"branch_weights", i32 4, i32 12}
end_hunk_0
