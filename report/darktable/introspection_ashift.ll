inline.NumInlined: 378
inline.NumDeleted: 101
loop-unroll.NumCompletelyUnrolled: 41
loop-unroll.NumRuntimeUnrolled: 36
loop-unroll.NumUnrolled: 78
begin_hunk_0_@_get_near:bb.a
  %i.cg = add nuw nsw i32 %.05872, 1              ; 2 uses
  %i.ch = add i64 %.06071, 1
  %exitcond79.not = icmp eq i32 %i.cg, %i.bs
  br i1 %exitcond79.not, label %.thread, label %bb.o

.thread:                                          ; preds = %.critedge, %bb.p, %bb.m, %bb.l, %.lr.ph.split
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count
  br i1 %exitcond84.not, label %.loopexit68, label %.lr.ph.split

.loopexit68:                                      ; preds = %.thread, %.thread.us, %.loopexit.us, %.loopexit.us.thread, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_update_lines_count(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) unnamed_addr #15 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp sgt i32 %1, 0
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.split.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check25 = icmp ult i32 %1, 32
  br i1 %min.iters.check25, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.d = and i64 %wide.trip.count, 24
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %vec.phi = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi46, %vector.body ]
  %vec.phi26 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi47, %vector.body ]
  %vec.phi27 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi48, %vector.body ]
  %vec.phi28 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi49, %vector.body ]
  %vec.phi29 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi, %vector.body ]
  %vec.phi30 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi43, %vector.body ]
  %vec.phi31 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi44, %vector.body ]
  %vec.phi32 = phi <8 x i32> [ zeroinitializer, %vector.ph ], [ %predphi45, %vector.body ]
  %step.add = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %step.add.2 = add nuw <8 x i64> %vec.ind, splat (i64 16)
  %step.add.3 = add nuw <8 x i64> %vec.ind, splat (i64 24)
  %wide.gep = getelementptr inbounds nuw [64 x i8], ptr %0, <8 x i64> %vec.ind
  %wide.gep33 = getelementptr inbounds nuw [64 x i8], ptr %0, <8 x i64> %step.add
  %wide.gep34 = getelementptr inbounds nuw [64 x i8], ptr %0, <8 x i64> %step.add.2
  %wide.gep35 = getelementptr inbounds nuw [64 x i8], ptr %0, <8 x i64> %step.add.3
  %wide.gep36 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 36
  %wide.gep37 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep33, i64 36
  %wide.gep38 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep34, i64 36
  %wide.gep39 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep35, i64 36
  %wide.masked.gather = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep36, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !281
  %wide.masked.gather40 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep37, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !281
  %wide.masked.gather41 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep38, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !281
  %wide.masked.gather42 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep39, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !281
  %i.e = and <8 x i32> %wide.masked.gather, splat (i32 7) ; 2 uses
  %i.f = and <8 x i32> %wide.masked.gather40, splat (i32 7) ; 2 uses
  %i.g = and <8 x i32> %wide.masked.gather41, splat (i32 7) ; 2 uses
  %i.h = and <8 x i32> %wide.masked.gather42, splat (i32 7) ; 2 uses
  %i.i = icmp eq <8 x i32> %i.e, splat (i32 7)
  %i.j = icmp eq <8 x i32> %i.f, splat (i32 7)
  %i.k = icmp eq <8 x i32> %i.g, splat (i32 7)
  %i.l = icmp eq <8 x i32> %i.h, splat (i32 7)
  %i.m = icmp eq <8 x i32> %i.e, splat (i32 5)
  %i.n = icmp eq <8 x i32> %i.f, splat (i32 5)
  %i.o = icmp eq <8 x i32> %i.g, splat (i32 5)
  %i.p = icmp eq <8 x i32> %i.h, splat (i32 5)
  %i.q = zext <8 x i1> %i.i to <8 x i32>
  %predphi = add <8 x i32> %vec.phi29, %i.q       ; 2 uses
  %i.r = zext <8 x i1> %i.j to <8 x i32>
  %predphi43 = add <8 x i32> %vec.phi30, %i.r     ; 2 uses
  %i.s = zext <8 x i1> %i.k to <8 x i32>
  %predphi44 = add <8 x i32> %vec.phi31, %i.s     ; 2 uses
  %i.t = zext <8 x i1> %i.l to <8 x i32>
  %predphi45 = add <8 x i32> %vec.phi32, %i.t     ; 2 uses
  %i.u = zext <8 x i1> %i.m to <8 x i32>
  %predphi46 = add <8 x i32> %vec.phi, %i.u       ; 2 uses
  %i.v = zext <8 x i1> %i.n to <8 x i32>
  %predphi47 = add <8 x i32> %vec.phi26, %i.v     ; 2 uses
  %i.w = zext <8 x i1> %i.o to <8 x i32>
  %predphi48 = add <8 x i32> %vec.phi27, %i.w     ; 2 uses
  %i.x = zext <8 x i1> %i.p to <8 x i32>
  %predphi49 = add <8 x i32> %vec.phi28, %i.x     ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 32)
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !340

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i32> %predphi47, %predphi46
  %bin.rdx50 = add <8 x i32> %predphi48, %bin.rdx
  %bin.rdx51 = add <8 x i32> %predphi49, %bin.rdx50
  %i.z = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx51) ; 3 uses
  %bin.rdx52 = add <8 x i32> %predphi43, %predphi
  %bin.rdx53 = add <8 x i32> %predphi44, %bin.rdx52
  %bin.rdx54 = add <8 x i32> %predphi45, %bin.rdx53
  %i.aa = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx54) ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.d, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.split.preheader, label %vec.epilog.ph, !prof !341

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %bc.merge.rdx = phi i32 [ %i.z, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx55 = phi i32 [ %i.aa, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec56 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %i.ab = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  %i.ac = insertelement <8 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx55, i64 0
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %induction = or disjoint <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next66, %vec.epilog.vector.body ]
  %vec.ind58 = phi <8 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next67, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi59 = phi <8 x i32> [ %i.ab, %vec.epilog.ph ], [ %predphi65, %vec.epilog.vector.body ]
  %vec.phi60 = phi <8 x i32> [ %i.ac, %vec.epilog.ph ], [ %predphi64, %vec.epilog.vector.body ]
  %wide.gep61 = getelementptr inbounds nuw [64 x i8], ptr %0, <8 x i64> %vec.ind58
  %wide.gep62 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep61, i64 36
  %wide.masked.gather63 = tail call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep62, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !281
  %i.ad = and <8 x i32> %wide.masked.gather63, splat (i32 7) ; 2 uses
  %i.ae = icmp eq <8 x i32> %i.ad, splat (i32 7)
  %i.af = icmp eq <8 x i32> %i.ad, splat (i32 5)
  %i.ag = zext <8 x i1> %i.ae to <8 x i32>
  %predphi64 = add <8 x i32> %vec.phi60, %i.ag    ; 2 uses
  %i.ah = zext <8 x i1> %i.af to <8 x i32>
  %predphi65 = add <8 x i32> %vec.phi59, %i.ah    ; 2 uses
  %index.next66 = add nuw i64 %index57, 8         ; 2 uses
  %vec.ind.next67 = add nuw nsw <8 x i64> %vec.ind58, splat (i64 8)
  %i.ai = icmp eq i64 %index.next66, %n.vec56
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !342

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.aj = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %predphi65) ; 2 uses
  %i.ak = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %predphi64) ; 2 uses
  %cmp.n68 = icmp eq i64 %n.vec56, %wide.trip.count
  br i1 %cmp.n68, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec56, %vec.epilog.middle.block ]
  %.01319.ph = phi i32 [ 0, %iter.check ], [ %i.z, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ]
  %.01418.ph = phi i32 [ 0, %iter.check ], [ %i.aa, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ]
  br label %.lr.ph.split

._crit_edge:                                      ; preds = %bb.d, %middle.block, %vec.epilog.middle.block, %bb.a
  %.014.lcssa = phi i32 [ 0, %bb.a ], [ %i.ak, %vec.epilog.middle.block ], [ %i.aa, %middle.block ], [ %.115, %bb.d ]
  %.013.lcssa = phi i32 [ 0, %bb.a ], [ %i.aj, %vec.epilog.middle.block ], [ %i.z, %middle.block ], [ %.1, %bb.d ]
  store i32 %.014.lcssa, ptr %2, align 4, !tbaa !41
  store i32 %.013.lcssa, ptr %3, align 4, !tbaa !41
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.d
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ %indvars.iv.ph, %.lr.ph.split.preheader ] ; 2 uses
  %.01319 = phi i32 [ %.1, %bb.d ], [ %.01319.ph, %.lr.ph.split.preheader ] ; 3 uses
  %.01418 = phi i32 [ %.115, %bb.d ], [ %.01418.ph, %.lr.ph.split.preheader ] ; 3 uses
  %i.al = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.an = load i32, ptr %i.am, align 4, !tbaa !281
  %i.ao = and i32 %i.an, 7
  switch i32 %i.ao, label %bb.d [
    i32 7, label %bb.b
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph.split
  %i.ap = add nsw i32 %.01418, 1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph.split
  %i.aq = add nsw i32 %.01319, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.split, %bb.b, %bb.c
  %.115 = phi i32 [ %i.ap, %bb.b ], [ %.01418, %bb.c ], [ %.01418, %.lr.ph.split ] ; 2 uses
  %.1 = phi i32 [ %.01319, %bb.b ], [ %i.aq, %bb.c ], [ %.01319, %.lr.ph.split ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !343
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_pressed(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, double noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca float, align 4                    ; 6 uses
  %i.b = alloca float, align 4                    ; 6 uses
  %i.c = alloca [4 x float], align 16             ; 7 uses
  %i.d = alloca [2 x float], align 8              ; 6 uses
  %i.e = alloca [2 x float], align 4              ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !193 ; 40 uses
  %i.h = icmp eq i32 %5, 5
  %i.i = icmp eq i32 %4, 1                        ; 3 uses
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !195
  %i.l = call i32 @dt_dev_get_preview_size(ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #34
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 192 ; 9 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !269
  %i.o = icmp eq ptr %i.n, null                   ; 2 uses
  %i.p = icmp eq i32 %4, 3                        ; 5 uses
  %or.cond3 = and i1 %i.p, %i.o
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.11) #34
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store i32 1, ptr %i.q, align 8, !tbaa !252
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 140
  store float %1, ptr %i.r, align 4, !tbaa !253
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  store float %2, ptr %i.s, align 8, !tbaa !254
  br label %bb.ap

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 368 ; 6 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !297  ; 2 uses
  %.not198 = icmp ne i32 %i.u, 3
  %or.cond209 = and i1 %i.o, %.not198
  br i1 %or.cond209, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 680
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !232
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 36
  %i.y = load i32, ptr %i.x, align 4, !tbaa !250
  %i.z = icmp eq i32 %i.y, 2
  br i1 %i.z, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.12) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 348
  store i32 1, ptr %i.aa, align 4, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store float %1, ptr %i.c, align 16, !tbaa !14
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store float %2, ptr %i.ab, align 4, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store <2 x float> splat (float 1.000000e+00), ptr %i.ac, align 8, !tbaa !14
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !195 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 16, !tbaa !213
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ah = load i32, ptr %i.ag, align 16, !tbaa !214
  %i.ai = sitofp reassoc nsz arcp contract afn i32 %i.ah to double
  %i.aj = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.ad, ptr noundef %i.af, double noundef %i.ai, i32 noundef 1, ptr noundef nonnull %i.c, i64 noundef 2) #34 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 324
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 352
  %i.am = load <4 x float>, ptr %i.al, align 8, !tbaa !14 ; 2 uses
  %i.an = load <4 x float>, ptr %i.c, align 16
  %i.ao = load <2 x float>, ptr %i.ac, align 8, !tbaa !14
  %i.ap = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 1, i32 3>
  %i.aq = shufflevector <4 x float> %i.am, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.ar = fadd reassoc nsz arcp contract afn <4 x float> %i.ap, %i.aq
  %i.as = shufflevector <4 x float> %i.an, <4 x float> %i.ar, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.at = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.at, <4 x float> <float poison, float poison, float 5.000000e-01, float 5.000000e-01>, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.av = fsub reassoc nsz arcp contract afn <4 x float> %i.as, %i.au
  %i.aw = fmul reassoc nsz arcp contract afn <4 x float> %i.as, %i.au
  %i.ax = shufflevector <4 x float> %i.av, <4 x float> %i.aw, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  store <4 x float> %i.ax, ptr %i.ak, align 4, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  br label %bb.ap

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %i.u, -2
  %switch = icmp eq i32 %i.ay, 2
  br i1 %switch, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !299
  %i.bb = icmp sgt i32 %i.ba, -1
  br i1 %i.bb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  store i32 1, ptr %i.bc, align 8, !tbaa !322
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 324
  store float %1, ptr %i.bd, align 4, !tbaa !301
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store float %2, ptr %i.be, align 8, !tbaa !302
  br label %bb.ap

bb.k:                                             ; preds = %bb.h, %bb.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 228 ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !274
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 172 ; 5 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !330
  %i.bi = call i32 @gtk_accelerator_get_default_mod_mask() #34
  %i.bj = load i32, ptr @dt_modifier_shortcuts, align 4, !tbaa !41
  %i.bk = or i32 %i.bj, %6
  %i.bl = and i32 %i.bk, %i.bi
  %.not218 = icmp eq i32 %i.bl, 1
  br i1 %.not218, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 324
  store float %1, ptr %i.bm, align 4, !tbaa !301
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store float %2, ptr %i.bn, align 8, !tbaa !302
  %i.bo = select i1 %i.p, i32 2, i32 1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 164
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !300
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.11) #34
  br label %bb.ap

bb.m:                                             ; preds = %bb.k
  %i.bq = call reassoc nsz arcp contract afn float @dt_dev_get_zoomed_in() #34
  %i.br = fcmp reassoc nsz arcp contract afn oeq float %i.bq, 1.000000e+00
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 256
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !278
  %i.bu = icmp sgt i32 %i.bt, 0
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bv = phi i1 [ false, %bb.m ], [ %i.bu, %bb.n ]
  %i.bw = load i32, ptr %i.t, align 8, !tbaa !297
  %i.bx = and i32 %i.bw, -2
  %switch214 = icmp eq i32 %i.bx, 2
  %.str.13..str.14 = select i1 %switch214, ptr @.str.13, ptr @.str.14
  %i.by = call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull %.str.13..str.14) #34 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 168
  store float %i.by, ptr %i.bz, align 8, !tbaa !303
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 240
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !271
  %i.cc = getelementptr inbounds nuw i8, ptr %i.g, i64 248 ; 5 uses
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !272
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 256 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !278
  %i.cg = load float, ptr %i.a, align 4, !tbaa !14
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cg, %1
  %i.ci = load float, ptr %i.b, align 4, !tbaa !14
  %i.cj = fmul reassoc nsz arcp contract afn float %i.ci, %2
  %i.ck = load i32, ptr %i.t, align 8, !tbaa !297
  %i.cl = add i32 %i.ck, -4
  %narrow = icmp ult i32 %i.cl, -2
  %i.cm = zext i1 %narrow to i32
  call fastcc void @_get_near(ptr noundef %i.cb, ptr noundef %i.cd, i32 noundef %i.cf, float noundef %i.ch, float noundef %i.cj, float noundef %i.by, i32 noundef %i.cm)
  %i.cn = load i32, ptr %i.t, align 8, !tbaa !297 ; 3 uses
  %i.co = icmp eq i32 %i.cn, 3                    ; 4 uses
  %or.cond5 = and i1 %i.i, %i.co
  %i.cp = icmp eq i32 %i.cn, 2                    ; 2 uses
  %or.cond210 = or i1 %i.cp, %or.cond5
  br i1 %or.cond210, label %.preheader, label %.preheader221

.preheader221:                                    ; preds = %bb.o
  %i.cq = load i32, ptr %i.bh, align 4, !tbaa !330 ; 3 uses
  %i.cr = load i32, ptr %i.bf, align 4, !tbaa !274
  %i.cs = icmp eq i32 %i.cq, %i.cr
  br i1 %i.cs, label %.lr.ph227, label %._crit_edge228..thread_crit_edge

.lr.ph227:                                        ; preds = %.preheader221
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 220 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.g, i64 232 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.g, i64 224 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 236 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 2 uses
  br i1 %i.p, label %.lr.ph227.split.us.outer, label %.lr.ph227.split.preheader

.lr.ph227.split.preheader:                        ; preds = %.lr.ph227
  %.pre = load i32, ptr %i.ce, align 8, !tbaa !278 ; 5 uses
  %i.cy = icmp sgt i32 %.pre, 0
  br i1 %i.cy, label %.lr.ph299.preheader, label %._crit_edge228

.lr.ph299.preheader:                              ; preds = %.lr.ph227.split.preheader
  %i.cz = icmp eq i32 %.pre, 1
  br i1 %i.cz, label %.lr.ph299.epil.preheader, label %.lr.ph299.preheader.new

.lr.ph299.preheader.new:                          ; preds = %.lr.ph299.preheader
  %i.da = and i32 %.pre, 2147483646
  %unroll_iter = zext nneg i32 %i.da to i64
  %i.db = load ptr, ptr %i.cc, align 8, !tbaa !272 ; 2 uses
  br label %.lr.ph299

.lr.ph227.split.us.outer:                         ; preds = %.lr.ph227, %.split275
  %.pre255263.ph = phi i32 [ %.pre255, %.split275 ], [ %i.cq, %.lr.ph227 ]
  %.pre254260.ph = phi i32 [ %.pre254, %.split275 ], [ %i.cq, %.lr.ph227 ]
  %indvars.iv243.ph = phi i64 [ %indvars.iv.next244276, %.split275 ], [ 0, %.lr.ph227 ] ; 2 uses
  %.0182226.us.ph = phi i32 [ 1, %.split275 ], [ 0, %.lr.ph227 ] ; 2 uses
  %i.dc = load i32, ptr %i.ce, align 8, !tbaa !278
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = icmp slt i64 %indvars.iv243.ph, %i.dd
  br i1 %i.de, label %.lr.ph302.preheader, label %._crit_edge228

.lr.ph302.preheader:                              ; preds = %.lr.ph227.split.us.outer
  %i.df = load ptr, ptr %i.cc, align 8, !tbaa !272
  br label %.lr.ph302

.lr.ph302:                                        ; preds = %.lr.ph302.preheader, %.lr.ph227.split.us.backedge
  %.0182226.us301 = phi i32 [ %.0182226.us.be, %.lr.ph227.split.us.backedge ], [ %.0182226.us.ph, %.lr.ph302.preheader ]
  %indvars.iv243300 = phi i64 [ %indvars.iv.next244, %.lr.ph227.split.us.backedge ], [ %indvars.iv243.ph, %.lr.ph302.preheader ] ; 9 uses
  %i.dg = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %indvars.iv243300
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !298
  %i.dj = icmp eq i32 %i.di, 0
  br i1 %i.dj, label %.lr.ph227.split.us.backedge, label %bb.p

end_hunk_0
begin_hunk_1_@button_pressed:bb.a
  br label %.lr.ph227.split

.lr.ph227.split:                                  ; preds = %.lr.ph299, %bb.ae
  %.1183 = phi i32 [ %.0182226298, %.lr.ph299 ], [ 1, %bb.ae ]
  %indvars.iv.next = or disjoint i64 %indvars.iv297, 1 ; 2 uses
  %i.gg = getelementptr inbounds nuw [48 x i8], ptr %i.db, i64 %indvars.iv.next
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 12
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !298
  %i.gj = icmp eq i32 %i.gi, 0
  %brmerge.1 = or i1 %i.gj, %i.co
  br i1 %brmerge.1, label %.lr.ph227.split.1, label %bb.af

bb.af:                                            ; preds = %.lr.ph227.split
  %i.gk = load ptr, ptr %i.m, align 8, !tbaa !269
  %i.gl = getelementptr inbounds nuw [64 x i8], ptr %i.gk, i64 %indvars.iv.next
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 36 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !281
  %i.go = or i32 %i.gn, 4
  store i32 %i.go, ptr %i.gm, align 4, !tbaa !281
  br label %.lr.ph227.split.1

.lr.ph227.split.1:                                ; preds = %bb.af, %.lr.ph227.split
  %.1183.1 = phi i32 [ %.1183, %.lr.ph227.split ], [ 1, %bb.af ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv297, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge228.loopexit313.unr-lcssa, label %.lr.ph299

._crit_edge228.loopexit313.unr-lcssa:             ; preds = %.lr.ph227.split.1
  %i.gp = and i32 %.pre, 1
  %lcmp.mod.not = icmp eq i32 %i.gp, 0
  br i1 %lcmp.mod.not, label %._crit_edge228, label %.lr.ph299.epil.preheader

.lr.ph299.epil.preheader:                         ; preds = %._crit_edge228.loopexit313.unr-lcssa, %.lr.ph299.preheader
  %.0182226298.epil.init = phi i32 [ 0, %.lr.ph299.preheader ], [ %.1183.1, %._crit_edge228.loopexit313.unr-lcssa ]
  %indvars.iv297.epil.init = phi i64 [ 0, %.lr.ph299.preheader ], [ %indvars.iv.next.1, %._crit_edge228.loopexit313.unr-lcssa ] ; 2 uses
  %lcmp.mod315 = trunc i32 %.pre to i1
  call void @llvm.assume(i1 %lcmp.mod315)
  %i.gq = load ptr, ptr %i.cc, align 8, !tbaa !272
  %i.gr = getelementptr inbounds nuw [48 x i8], ptr %i.gq, i64 %indvars.iv297.epil.init
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !298
  %i.gu = icmp eq i32 %i.gt, 0
  %brmerge.epil = or i1 %i.gu, %i.co
  br i1 %brmerge.epil, label %._crit_edge228, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph299.epil.preheader
  %i.gv = load ptr, ptr %i.m, align 8, !tbaa !269
  %i.gw = getelementptr inbounds nuw [64 x i8], ptr %i.gv, i64 %indvars.iv297.epil.init
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 36 ; 2 uses
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !281
  %i.gz = or i32 %i.gy, 4
  store i32 %i.gz, ptr %i.gx, align 4, !tbaa !281
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %._crit_edge228.loopexit313.unr-lcssa, %bb.ag, %.lr.ph299.epil.preheader, %.lr.ph227.split.us.outer, %.lr.ph227.split.us.backedge, %.lr.ph227.split.preheader
  %.0182.lcssa = phi i32 [ %.0182226.us.be, %.lr.ph227.split.us.backedge ], [ %.0182226.us.ph, %.lr.ph227.split.us.outer ], [ 0, %.lr.ph227.split.preheader ], [ %.1183.1, %._crit_edge228.loopexit313.unr-lcssa ], [ %.0182226298.epil.init, %.lr.ph299.epil.preheader ], [ 1, %bb.ag ]
  %.not219 = icmp eq i32 %.0182.lcssa, 0
  br i1 %.not219, label %._crit_edge228..thread_crit_edge, label %._crit_edge228.thread

._crit_edge228..thread_crit_edge:                 ; preds = %.preheader221, %._crit_edge228
  %.pre256 = load i32, ptr %i.t, align 8, !tbaa !297
  br label %.thread

.thread:                                          ; preds = %._crit_edge228..thread_crit_edge, %.critedge212
  %i.ha = phi i32 [ %.pre256, %._crit_edge228..thread_crit_edge ], [ %i.cn, %.critedge212 ]
  %i.hb = icmp eq i32 %i.ha, 3
  %or.cond7 = and i1 %i.i, %i.hb
  br i1 %or.cond7, label %bb.ah, label %._crit_edge228.thread

bb.ah:                                            ; preds = %.thread
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 376
  store i32 1, ptr %i.hc, align 8, !tbaa !322
  %i.hd = getelementptr inbounds nuw i8, ptr %i.g, i64 324
  store float %1, ptr %i.hd, align 4, !tbaa !301
  %i.he = getelementptr inbounds nuw i8, ptr %i.g, i64 328
  store float %2, ptr %i.he, align 8, !tbaa !302
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.hf = load float, ptr %i.a, align 4, !tbaa !14
  %i.hg = fmul reassoc nsz arcp contract afn float %i.hf, %1
  store float %i.hg, ptr %i.e, align 4, !tbaa !14
  %i.hh = getelementptr inbounds nuw i8, ptr %i.e, i64 4 ; 2 uses
  %i.hi = load float, ptr %i.b, align 4, !tbaa !14
  %i.hj = fmul reassoc nsz arcp contract afn float %i.hi, %2
  store float %i.hj, ptr %i.hh, align 4, !tbaa !14
  %i.hk = load ptr, ptr %i.j, align 8, !tbaa !195 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 96
  %i.hm = load ptr, ptr %i.hl, align 16, !tbaa !213
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.ho = load i32, ptr %i.hn, align 16, !tbaa !214
  %i.hp = sitofp reassoc nsz arcp contract afn i32 %i.ho to double
  %i.hq = call i32 @dt_dev_distort_backtransform_plus(ptr noundef %i.hk, ptr noundef %i.hm, double noundef %i.hp, i32 noundef 1, ptr noundef nonnull %i.e, i64 noundef 1) #34 ; 0 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.g, i64 216 ; 3 uses
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !270 ; 4 uses
  %i.ht = add nsw i32 %i.hs, 1                    ; 3 uses
  %i.hu = icmp sgt i32 %i.hs, 49
  br i1 %i.hu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hv = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #34
  call void (ptr, ...) @dt_control_log(ptr noundef %i.hv, i32 noundef 50) #34
  %.pre257 = load i32, ptr %i.hr, align 8, !tbaa !270
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.hw = phi i32 [ %.pre257, %bb.ai ], [ %i.hs, %bb.ah ] ; 3 uses
  %i.hx = sext i32 %i.ht to i64
  %i.hy = shl nsw i64 %i.hx, 6
  %i.hz = call noalias ptr @malloc(i64 noundef %i.hy) #33 ; 7 uses
  %i.ia = icmp sgt i32 %i.hw, 0
  %.pre259 = load ptr, ptr %i.m, align 8, !tbaa !269 ; 7 uses
  br i1 %i.ia, label %.lr.ph235.preheader, label %._crit_edge

.lr.ph235.preheader:                              ; preds = %bb.aj
  %i.ib = zext nneg i32 %i.hw to i64              ; 2 uses
  %xtraiter321 = and i64 %i.ib, 3                 ; 3 uses
  %i.ic = icmp ult i32 %i.hw, 4
  br i1 %i.ic, label %.lr.ph235.epil.preheader, label %.lr.ph235.preheader.new

.lr.ph235.preheader.new:                          ; preds = %.lr.ph235.preheader
  %unroll_iter325 = and i64 %i.ib, 2147483644
  br label %.lr.ph235

._crit_edge:                                      ; preds = %bb.aj
  %.not208 = icmp eq ptr %.pre259, null
  br i1 %.not208, label %bb.ak, label %._crit_edge.thread

.lr.ph235:                                        ; preds = %.lr.ph235, %.lr.ph235.preheader.new
  %indvars.iv251 = phi i64 [ 0, %.lr.ph235.preheader.new ], [ %indvars.iv.next252.3, %.lr.ph235 ] ; 6 uses
  %niter326 = phi i64 [ 0, %.lr.ph235.preheader.new ], [ %niter326.next.3, %.lr.ph235 ]
  %i.id = getelementptr inbounds nuw [64 x i8], ptr %i.hz, i64 %indvars.iv251
  %i.ie = getelementptr inbounds nuw [64 x i8], ptr %.pre259, i64 %indvars.iv251
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.id, ptr noundef nonnull align 16 dereferenceable(64) %i.ie, i64 64, i1 false), !tbaa.struct !348
  %indvars.iv.next252 = or disjoint i64 %indvars.iv251, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [64 x i8], ptr %i.hz, i64 %indvars.iv.next252
  %i.ig = getelementptr inbounds nuw [64 x i8], ptr %.pre259, i64 %indvars.iv.next252
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.if, ptr noundef nonnull align 16 dereferenceable(64) %i.ig, i64 64, i1 false), !tbaa.struct !348
  %indvars.iv.next252.1 = or disjoint i64 %indvars.iv251, 2 ; 2 uses
  %i.ih = getelementptr inbounds nuw [64 x i8], ptr %i.hz, i64 %indvars.iv.next252.1
  %i.ii = getelementptr inbounds nuw [64 x i8], ptr %.pre259, i64 %indvars.iv.next252.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ih, ptr noundef nonnull align 16 dereferenceable(64) %i.ii, i64 64, i1 false), !tbaa.struct !348
  %indvars.iv.next252.2 = or disjoint i64 %indvars.iv251, 3 ; 2 uses
  %i.ij = getelementptr inbounds nuw [64 x i8], ptr %i.hz, i64 %indvars.iv.next252.2
  %i.ik = getelementptr inbounds nuw [64 x i8], ptr %.pre259, i64 %indvars.iv.next252.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.ij, ptr noundef nonnull align 16 dereferenceable(64) %i.ik, i64 64, i1 false), !tbaa.struct !348
  %indvars.iv.next252.3 = add nuw nsw i64 %indvars.iv251, 4 ; 2 uses
  %niter326.next.3 = add i64 %niter326, 4         ; 2 uses
  %niter326.ncmp.3.not = icmp eq i64 %niter326.next.3, %unroll_iter325
  br i1 %niter326.ncmp.3.not, label %._crit_edge.thread.loopexit.unr-lcssa, label %.lr.ph235

._crit_edge.thread.loopexit.unr-lcssa:            ; preds = %.lr.ph235
  %lcmp.mod323.not = icmp eq i64 %xtraiter321, 0
  br i1 %lcmp.mod323.not, label %._crit_edge.thread, label %.lr.ph235.epil.preheader

.lr.ph235.epil.preheader:                         ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph235.preheader
  %indvars.iv251.epil.init = phi i64 [ 0, %.lr.ph235.preheader ], [ %indvars.iv.next252.3, %._crit_edge.thread.loopexit.unr-lcssa ]
  %lcmp.mod324 = icmp ne i64 %xtraiter321, 0
  call void @llvm.assume(i1 %lcmp.mod324)
  br label %.lr.ph235.epil

.lr.ph235.epil:                                   ; preds = %.lr.ph235.epil, %.lr.ph235.epil.preheader
  %indvars.iv251.epil = phi i64 [ %indvars.iv251.epil.init, %.lr.ph235.epil.preheader ], [ %indvars.iv.next252.epil, %.lr.ph235.epil ] ; 3 uses
  %epil.iter322 = phi i64 [ 0, %.lr.ph235.epil.preheader ], [ %epil.iter322.next, %.lr.ph235.epil ]
  %i.il = getelementptr inbounds nuw [64 x i8], ptr %i.hz, i64 %indvars.iv251.epil
  %i.im = getelementptr inbounds nuw [64 x i8], ptr %.pre259, i64 %indvars.iv251.epil
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.il, ptr noundef nonnull align 16 dereferenceable(64) %i.im, i64 64, i1 false), !tbaa.struct !348
  %indvars.iv.next252.epil = add nuw nsw i64 %indvars.iv251.epil, 1
  %epil.iter322.next = add i64 %epil.iter322, 1   ; 2 uses
  %epil.iter322.cmp.not = icmp eq i64 %epil.iter322.next, %xtraiter321
  br i1 %epil.iter322.cmp.not, label %._crit_edge.thread, label %.lr.ph235.epil, !llvm.loop !350

._crit_edge.thread:                               ; preds = %._crit_edge.thread.loopexit.unr-lcssa, %.lr.ph235.epil, %._crit_edge
  call void @free(ptr noundef nonnull %.pre259) #34
  br label %bb.ak

bb.ak:                                            ; preds = %._crit_edge.thread, %._crit_edge
  store ptr %i.hz, ptr %i.m, align 8, !tbaa !269
  store i32 %i.ht, ptr %i.hr, align 8, !tbaa !270
  %i.in = sext i32 %i.hs to i64
  %i.io = getelementptr inbounds [64 x i8], ptr %i.hz, i64 %i.in
  %i.ip = load float, ptr %i.e, align 4, !tbaa !14 ; 2 uses
  %i.iq = load float, ptr %i.hh, align 4, !tbaa !14 ; 2 uses
  call fastcc void @_draw_basic_line(ptr noundef %i.io, float noundef %i.ip, float noundef %i.iq, float noundef %i.ip, float noundef %i.iq, i32 noundef 7)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.g, i64 220 ; 2 uses
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !344
  %i.it = add nsw i32 %i.is, 1
  store i32 %i.it, ptr %i.ir, align 4, !tbaa !344
  %i.iu = getelementptr inbounds nuw i8, ptr %i.g, i64 232 ; 2 uses
  %i.iv = load float, ptr %i.iu, align 8, !tbaa !345
  %i.iw = fadd reassoc nsz arcp contract afn float %i.iv, 1.000000e+00
  store float %i.iw, ptr %i.iu, align 8, !tbaa !345
  %i.ix = shl nsw i32 %i.ht, 1
  %i.iy = add nsw i32 %i.ix, -1
  %i.iz = getelementptr inbounds nuw i8, ptr %i.g, i64 372
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !299
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  br label %bb.ap

._crit_edge228.thread:                            ; preds = %.split275, %.thread, %._crit_edge228
  %.2184217 = phi i1 [ false, %.thread ], [ true, %._crit_edge228 ], [ true, %.split275 ] ; 2 uses
  %or.cond9 = or i1 %i.bv, %.2184217              ; 2 uses
  br i1 %or.cond9, label %bb.al, label %bb.am

bb.al:                                            ; preds = %._crit_edge228.thread
  %.mux = select i1 %i.p, i64 160, i64 156
  %.str.16.mux = select i1 %i.p, ptr @.str.16, ptr @.str.17
  call void @dt_control_change_cursor(ptr noundef nonnull %.str.16.mux) #34
  %i.ja = getelementptr inbounds nuw i8, ptr %i.g, i64 %.mux
  store i32 1, ptr %i.ja, align 4, !tbaa !41
  br label %bb.am

bb.am:                                            ; preds = %._crit_edge228.thread, %bb.al
  br i1 %.2184217, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.jb = load ptr, ptr %i.m, align 8, !tbaa !269
  %i.jc = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !270
  %i.je = getelementptr inbounds nuw i8, ptr %i.g, i64 220
  %i.jf = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  call fastcc void @_update_lines_count(ptr noundef %i.jb, i32 noundef %i.jd, ptr noundef nonnull %i.je, ptr noundef nonnull %i.jf)
  %i.jg = load i32, ptr %i.bf, align 4, !tbaa !274
  %i.jh = add nsw i32 %i.jg, 1
  store i32 %i.jh, ptr %i.bf, align 4, !tbaa !274
  %i.ji = load i32, ptr %i.bh, align 4, !tbaa !330
  %i.jj = add nsw i32 %i.ji, 1
  store i32 %i.jj, ptr %i.bh, align 4, !tbaa !330
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.jk = zext i1 %or.cond9 to i32
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ac, %bb.ak, %bb.ao, %.critedge212, %bb.g, %bb.f, %bb.b, %bb.l, %bb.j, %bb.d
  %.3 = phi i32 [ 1, %bb.d ], [ 1, %bb.j ], [ 1, %bb.l ], [ 0, %bb.f ], [ 1, %bb.b ], [ 1, %bb.g ], [ 1, %bb.ac ], [ %i.jk, %bb.ao ], [ 1, %bb.ak ], [ 0, %.critedge212 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %bb.ap
  %.4 = phi i32 [ %.3, %bb.ap ], [ 1, %bb.a ]
  ret i32 %.4
}

declare void @dt_control_change_cursor(ptr noundef) local_unnamed_addr #7

declare float @dt_dev_get_zoomed_in() local_unnamed_addr #7

declare float @dt_conf_get_float(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal fastcc void @_draw_basic_line(ptr nofree noundef writeonly captures(none) initializes((0, 40), (48, 60)) %0, float noundef %1, float noundef %2, float noundef %3, float noundef %4, i32 noundef range(i32 5, 8) %5) unnamed_addr #18 {
bb.a:
  store float %1, ptr %0, align 16, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store float %2, ptr %i.a, align 4, !tbaa !14
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float 1.000000e+00, ptr %i.b, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %3, ptr %i.c, align 4, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %4, ptr %i.d, align 16, !tbaa !14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !14
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = fsub reassoc nsz arcp contract afn float %2, %4 ; 3 uses
  %i.h = fsub reassoc nsz arcp contract afn float %3, %1 ; 3 uses
  %i.i = fmul reassoc nsz arcp contract afn float %4, %1
  %i.j = fmul reassoc nsz arcp contract afn float %3, %2
  %i.k = fsub reassoc nsz arcp contract afn float %i.i, %i.j ; 3 uses
  %i.l = fmul reassoc nsz arcp contract afn float %i.g, %i.g
  %i.m = fmul reassoc nsz arcp contract afn float %i.h, %i.h ; 2 uses
  %i.n = fadd reassoc nsz arcp contract afn float %i.l, %i.m
  %i.o = fmul reassoc nsz arcp contract afn float %i.k, %i.k
  %i.p = fadd reassoc nsz arcp contract afn float %i.n, %i.o ; 2 uses
  %i.q = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.p)
  %i.r = fcmp reassoc nsz arcp contract afn ogt float %i.p, 0.000000e+00
  %i.s = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.q
  %i.t = select reassoc nsz arcp contract afn i1 %i.r, float %i.s, float 1.000000e+00 ; 3 uses
  %i.u = fmul reassoc nsz arcp contract afn float %i.t, %i.g ; 2 uses
  %i.v = fmul reassoc nsz arcp contract afn float %i.t, %i.h ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.x = fmul reassoc nsz arcp contract afn float %i.t, %i.k
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.z = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.u, float noundef %i.v) #35 ; 2 uses
  %i.aa = fcmp reassoc nsz arcp contract afn ogt float %i.z, 0.000000e+00
  %i.ab = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.z
  %i.ac = select reassoc nsz arcp contract afn i1 %i.aa, float %i.ab, float 1.000000e+00 ; 3 uses
  %i.ad = fmul reassoc nsz arcp contract afn float %i.ac, %i.u
  store float %i.ad, ptr %i.f, align 16, !tbaa !14
  %i.ae = fmul reassoc nsz arcp contract afn float %i.ac, %i.v
  store float %i.ae, ptr %i.w, align 4, !tbaa !14
  %i.af = fmul reassoc nsz arcp contract afn float %i.ac, %i.x
  store float %i.af, ptr %i.y, align 8, !tbaa !14
  %i.ag = fsub reassoc nsz arcp contract afn float %4, %2 ; 2 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.ag
  %i.ai = fadd reassoc nsz arcp contract afn float %i.ah, %i.m
  %i.aj = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ai)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.aj, ptr %i.ak, align 8, !tbaa !279
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 28
  store <2 x float> splat (float 1.000000e+00), ptr %i.al, align 4, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %5, ptr %i.am, align 4, !tbaa !281
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @button_released(ptr noundef %0, float noundef %1, float noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca float, align 4                    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.d = load ptr, ptr %i.c, align 16, !tbaa !193 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !195
  %i.g = call i32 @dt_dev_get_preview_size(ptr noundef %i.f, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #34 ; 0 uses
  call void @dt_control_change_cursor(ptr noundef nonnull @.str.18) #34
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 380 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !323
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %i.h, align 4, !tbaa !323
  call fastcc void @_draw_save_lines_to_params(ptr noundef nonnull %0)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 136 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !252
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.k, align 8, !tbaa !252
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 140
  %i.n = load float, ptr %i.m, align 4, !tbaa !253
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 144
  %i.p = load float, ptr %i.o, align 8, !tbaa !254
  %i.q = load float, ptr %i.a, align 4, !tbaa !14
  %i.r = load float, ptr %i.b, align 4, !tbaa !14
  %i.s = call reassoc nsz arcp contract afn fastcc float @_calculate_straightening(ptr noundef nonnull %0, float noundef %1, float noundef %2, float noundef %i.n, float noundef %i.p, float noundef %i.q, float noundef %i.r, float noundef %5) ; 3 uses
  %i.t = fcmp reassoc nsz arcp contract afn oeq float %i.s, 0.000000e+00
  br i1 %i.t, label %bb.al, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !351
  %i.v = call reassoc nsz arcp contract afn float @dt_bauhaus_slider_get(ptr noundef %i.u) #34
  %i.w = fsub reassoc nsz arcp contract afn float %i.v, %i.s ; 2 uses
  %i.x = load ptr, ptr %i.d, align 8, !tbaa !351
  call void @dt_bauhaus_slider_set(ptr noundef %i.x, float noundef %i.w) #34
  %i.y = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.19, i32 noundef 5) #34
  %i.z = fneg reassoc nsz arcp contract afn float %i.s
  %i.aa = fpext reassoc nsz arcp contract afn float %i.z to double
  %i.ab = fpext reassoc nsz arcp contract afn float %i.w to double
  call void (ptr, ...) @dt_toast_log(ptr noundef %i.y, double noundef %i.aa, double noundef %i.ab) #34
  br label %bb.al

bb.f:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 376 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !322
  %.not106 = icmp eq i32 %i.ad, 0
  br i1 %.not106, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 216
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !270 ; 3 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %bb.g

.lr.ph:                                           ; preds = %.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 192
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !269
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 220 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 232 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 228 ; 2 uses
  %.promoted = load i32, ptr %i.al, align 4, !tbaa !274
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.h

._crit_edge:                                      ; preds = %bb.l
  %i.am = add i32 %i.af, %.promoted
  store i32 %i.am, ptr %i.al, align 4, !tbaa !274
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.preheader
  store i32 0, ptr %i.ac, align 8, !tbaa !322
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 372
  store i32 -1, ptr %i.an, align 4, !tbaa !299
  call fastcc void @_draw_save_lines_to_params(ptr noundef %0)
  call void @dt_control_queue_redraw_center() #34
  br label %bb.al

bb.h:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.ai, i64 %indvars.iv ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 36 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !281 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.as = load <2 x float>, ptr %i.ao, align 16, !tbaa !14
  %i.at = load <2 x float>, ptr %i.ar, align 4, !tbaa !14
  %i.au = fsub reassoc nsz arcp contract afn <2 x float> %i.as, %i.at
  %i.av = call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.au) ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aw = fcmp ule <2 x float> %i.av, %shift
  %i.ax = extractelement <2 x i1> %i.aw, i64 0    ; 2 uses
end_hunk_1
