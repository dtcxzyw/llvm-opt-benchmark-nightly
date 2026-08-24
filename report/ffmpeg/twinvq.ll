Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/twinvq?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@eval_lpcenv_or_interp:bb.a

.lr.ph.i122.epil.preheader:                       ; preds = %interpolate.exit127.unr-lcssa, %.lr.ph.preheader.i120
  %indvars.iv.i123.epil.init = phi i64 [ 0, %.lr.ph.preheader.i120 ], [ %indvars.iv.next.i125.3, %interpolate.exit127.unr-lcssa ]
  %.01011.i124.epil.init = phi float [ %i.jt, %.lr.ph.preheader.i120 ], [ %i.kg, %interpolate.exit127.unr-lcssa ]
  %lcmp.mod216 = icmp ne i64 %xtraiter213, 0
  tail call void @llvm.assume(i1 %lcmp.mod216)
  br label %.lr.ph.i122.epil

.lr.ph.i122.epil:                                 ; preds = %.lr.ph.i122.epil, %.lr.ph.i122.epil.preheader
  %indvars.iv.i123.epil = phi i64 [ %indvars.iv.i123.epil.init, %.lr.ph.i122.epil.preheader ], [ %indvars.iv.next.i125.epil, %.lr.ph.i122.epil ] ; 2 uses
  %.01011.i124.epil = phi float [ %.01011.i124.epil.init, %.lr.ph.i122.epil.preheader ], [ %i.kj, %.lr.ph.i122.epil ]
  %epil.iter214 = phi i64 [ 0, %.lr.ph.i122.epil.preheader ], [ %epil.iter214.next, %.lr.ph.i122.epil ]
  %i.kj = fadd nsz float %i.jv, %.01011.i124.epil ; 2 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.jn, i64 %indvars.iv.i123.epil
  store float %i.kj, ptr %i.kk, align 4, !tbaa !63
  %indvars.iv.next.i125.epil = add nuw nsw i64 %indvars.iv.i123.epil, 1
  %epil.iter214.next = add i64 %epil.iter214, 1   ; 2 uses
  %epil.iter214.cmp.not = icmp eq i64 %epil.iter214.next, %xtraiter213
  br i1 %epil.iter214.cmp.not, label %interpolate.exit127, label %.lr.ph.i122.epil, !llvm.loop !154

interpolate.exit127:                              ; preds = %.lr.ph.i122.epil, %interpolate.exit127.unr-lcssa
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #6

declare i32 @av_tx_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @ff_init_ff_sine_windows(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @construct_perm_table(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 34088
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !76   ; 3 uses
  %i.e = icmp eq i32 %1, 3
  br i1 %i.e, label %.split, label %.split38

.split:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 226
  %i.g = load i8, ptr %i.f, align 2, !tbaa !73
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = load ptr, ptr %0, align 8, !tbaa !55
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 356
  %i.k = load i32, ptr %i.j, align 4, !tbaa !56   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 34020 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !72
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33970 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33975
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.m, i32 noundef %i.k, i32 noundef %i.h, ptr noundef nonnull %i.n, i32 noundef 3)
  br label %bb.b

.split38:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.q = load i16, ptr %i.p, align 8, !tbaa !39
  %i.r = zext nneg i32 %1 to i64                  ; 5 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 8, !tbaa !57    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %.rhs.trunc = zext i8 %i.t to i16
  %i.v = udiv i16 %i.q, %.rhs.trunc
  %.zext = zext i16 %i.v to i32                   ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !55
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 356
  %i.y = load i32, ptr %i.x, align 4, !tbaa !56
  %i.z = mul nsw i32 %i.y, %i.u                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 34008
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.r ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !72
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33964
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.r ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33972
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.r
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.ac, i32 noundef %i.z, i32 noundef %.zext, ptr noundef nonnull %i.ae, i32 noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %.split38, %.split
  %i.ah = phi i64 [ 3, %.split ], [ %i.r, %.split38 ]
  %i.ai = phi ptr [ %i.l, %.split ], [ %i.ab, %.split38 ]
  %i.aj = phi ptr [ %i.n, %.split ], [ %i.ae, %.split38 ]
  %i.ak = phi ptr [ %i.o, %.split ], [ %i.ag, %.split38 ]
  %.036 = phi i32 [ %i.h, %.split ], [ %.zext, %.split38 ] ; 2 uses
  %.0 = phi i32 [ %i.k, %.split ], [ %i.z, %.split38 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.am = getelementptr inbounds nuw [8192 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !72 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader.preheader.i, label %transpose_perm.exit

.preheader.preheader.i:                           ; preds = %bb.b
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !62
  %i.aq = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ar = zext i8 %i.ap to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next27.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.as = icmp samesign uge i64 %indvars.iv26.i, %i.ar
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !62
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.aw = sext i32 %.019.i to i64
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv26.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next22.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.aw, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ax = mul nuw nsw i64 %indvars.iv21.i, %i.aq
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %i.ax
  %i.ay = load i16, ptr %gep.i, align 2, !tbaa !146
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.i
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !146
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !62
  %i.bb = zext i8 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next22.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !155

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bd = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.019.i, %.preheader.i ], [ %i.bd, %._crit_edge.loopexit.i ]
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next27.i, %i.aq
  br i1 %exitcond.not.i, label %transpose_perm.exit, label %.preheader.i, !llvm.loop !156

transpose_perm.exit:                              ; preds = %._crit_edge.i, %bb.b
  %i.be = mul nsw i32 %.0, %.036                  ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i41, label %linear_perm.exit

.lr.ph.preheader.i41:                             ; preds = %transpose_perm.exit
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i41
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i44, %.lr.ph.i42 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv.i43 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !146
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = srem i32 %i.bi, %.0
  %i.bk = mul nsw i32 %i.bj, %.036
  %i.bl = sdiv i32 %i.bi, %.0
  %i.bm = add nsw i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i16
  store i16 %i.bn, ptr %i.bg, align 2, !tbaa !146
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %wide.trip.count.i
  br i1 %exitcond.not.i45, label %linear_perm.exit, label %.lr.ph.i42, !llvm.loop !157

linear_perm.exit:                                 ; preds = %.lr.ph.i42, %transpose_perm.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @permutate_in_line(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 65536) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !62
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.b = icmp eq i32 %5, 2                        ; 2 uses
  %i.c = and i32 %1, 1
  %.not37 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.e = icmp sgt i32 %1, 0
  %i.f = mul i32 %3, %2                           ; 3 uses
  br i1 %i.e, label %.lr.ph43.split.us, label %._crit_edge

.lr.ph43.split.us:                                ; preds = %.lr.ph43
  %i.g = icmp eq i32 %2, 1
  %i.h = zext nneg i32 %1 to i64                  ; 5 uses
  br i1 %i.g, label %.lr.ph.us.us.preheader, label %.lr.ph43.split.us.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph43.split.us
  %i.i = add nsw i64 %i.h, -1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.critedge.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.critedge.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.j = trunc i64 %indvars.iv62 to i32
  %i.k = mul i32 %1, %i.j
  %smax = tail call i32 @llvm.smax.i32(i32 %i.k, i32 %i.f)
  %6 = trunc i64 %indvars.iv62 to i32
  %7 = mul i32 %1, %6
  %i.l = sub i32 %smax, %7
  %i.m = zext i32 %i.l to i64
  %umin = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.m) ; 2 uses
  %8 = mul nuw nsw i64 %indvars.iv62, %i.h        ; 3 uses
  %min.iters.check = icmp samesign ult i64 %umin, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us
  %i.n = add nuw nsw i64 %umin, 1                 ; 2 uses
  %i.o = and i64 %i.n, 7                          ; 2 uses
  %i.p = icmp eq i64 %i.o, 0
  %i.q = select i1 %i.p, i64 8, i64 %i.o
  %n.vec = sub nsw i64 %i.n, %i.q                 ; 2 uses
  %i.r = insertelement <8 x i64> poison, i64 %8, i64 0
  %i.s = shufflevector <8 x i64> %i.r, <8 x i64> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %8
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.t = insertelement <8 x i64> poison, i64 %index, i64 0
  %i.u = shufflevector <8 x i64> %i.t, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.v = or disjoint <8 x i64> %i.u, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.w = add nuw nsw <8 x i64> %i.v, %i.s
  %i.x = trunc <8 x i64> %i.w to <8 x i16>
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  store <8 x i16> %i.x, ptr %gep, align 2, !tbaa !146
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %scalar.ph.preheader, label %vector.body, !llvm.loop !158

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.us.us
  %indvars.iv57.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %bb.b ], [ %indvars.iv57.ph, %scalar.ph.preheader ] ; 2 uses
  %i.z = add nuw nsw i64 %indvars.iv57, %8        ; 3 uses
  %i.aa = trunc nuw i64 %i.z to i32
  %i.ab = icmp sgt i32 %i.f, %i.aa
  br i1 %i.ab, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %scalar.ph
  %i.ac = trunc i64 %i.z to i16
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.z
  store i16 %i.ac, ptr %i.ad, align 2, !tbaa !146
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %i.h
  br i1 %exitcond61.not, label %.critedge.us.us, label %scalar.ph, !llvm.loop !159

.critedge.us.us:                                  ; preds = %scalar.ph, %bb.b
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.ae = load i8, ptr %4, align 1, !tbaa !62
  %i.af = zext i8 %i.ae to i64
  %i.ag = icmp samesign ult i64 %indvars.iv.next63, %i.af
  br i1 %i.ag, label %.lr.ph.us.us, label %._crit_edge, !llvm.loop !160

.lr.ph43.split.us.split:                          ; preds = %.lr.ph43.split.us, %.critedge.us
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.critedge.us ], [ 0, %.lr.ph43.split.us ] ; 5 uses
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph43.split.us.split
  br i1 %.not37, label %.thread.us, label %.lr.ph.us

bb.d:                                             ; preds = %.lr.ph43.split.us.split
  %i.ah = srem i32 %1, %2
  %.not.us = icmp eq i32 %i.ah, 0
  br i1 %.not.us, label %.thread.us, label %.lr.ph.us

.thread.us:                                       ; preds = %bb.d, %bb.c
  %i.ai = load i8, ptr %i.d, align 1, !tbaa !62
  %i.aj = zext i8 %i.ai to i64
  %i.ak = icmp eq i64 %indvars.iv54, %i.aj
  br i1 %i.ak, label %.lr.ph.us, label %bb.e

bb.e:                                             ; preds = %.thread.us
  %i.al = select i1 %i.b, i64 1, i64 %indvars.iv54
  %spec.select.us = mul nuw nsw i64 %i.al, %indvars.iv54
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.e, %.thread.us, %bb.d, %bb.c
  %.0.us = phi i64 [ %spec.select.us, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.thread.us ]
  %i.am = mul nuw nsw i64 %indvars.iv54, %i.h     ; 2 uses
  %i.an = trunc nuw i64 %i.am to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ao = add nuw nsw i64 %indvars.iv, %i.am      ; 2 uses
  %i.ap = trunc nuw i64 %i.ao to i32
  %i.aq = icmp sgt i32 %i.f, %i.ap
  br i1 %i.aq, label %bb.g, label %.critedge.us

bb.g:                                             ; preds = %bb.f
  %i.ar = add nuw nsw i64 %indvars.iv, %.0.us
  %i.as = trunc nuw i64 %i.ar to i32
  %i.at = srem i32 %i.as, %1
  %i.au = add nsw i32 %i.at, %i.an
  %i.av = trunc i32 %i.au to i16
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ao
  store i16 %i.av, ptr %i.aw, align 2, !tbaa !146
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge.us, label %bb.f, !llvm.loop !161

.critedge.us:                                     ; preds = %bb.f, %bb.g
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.ax = load i8, ptr %4, align 1, !tbaa !62
  %i.ay = zext i8 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next55, %i.ay
  br i1 %i.az, label %.lr.ph43.split.us.split, label %._crit_edge, !llvm.loop !160

._crit_edge:                                      ; preds = %.critedge.us, %.critedge.us.us, %.lr.ph43, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }

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
!9 = !{!10, !14, i64 24}
!10 = !{!"AVPacket", !11, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !15, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !12, i64 80, !11, i64 88, !16, i64 96}
!11 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!16 = !{!"AVRational", !6, i64 0, !6, i64 4}
!17 = !{!10, !6, i64 32}
!18 = !{!19, !12, i64 32}
!19 = !{!"AVCodecContext", !20, i64 0, !6, i64 8, !6, i64 12, !21, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !22, i64 40, !12, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !16, i64 84, !16, i64 92, !16, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !16, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !23, i64 204, !23, i64 208, !23, i64 212, !23, i64 216, !23, i64 220, !23, i64 224, !23, i64 228, !23, i64 232, !23, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !24, i64 288, !24, i64 296, !24, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !25, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !23, i64 428, !23, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !26, i64 456, !13, i64 464, !13, i64 472, !23, i64 480, !23, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !27, i64 536, !12, i64 544, !11, i64 552, !11, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !28, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !15, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !12, i64 816, !13, i64 824, !29, i64 832, !6, i64 840, !30, i64 848, !6, i64 856, !6, i64 860}
!20 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!21 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!22 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!23 = !{!"float", !7, i64 0}
!24 = !{!"p1 short", !12, i64 0}
!25 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!26 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!27 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!28 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!29 = !{!"p1 int", !12, i64 0}
!30 = !{!"p2 _ZTS15AVFrameSideData", !31, i64 0}
!31 = !{!"any p2 pointer", !12, i64 0}
!32 = !{!33, !36, i64 64}
!33 = !{!"TwinVQContext", !34, i64 0, !35, i64 8, !7, i64 16, !7, i64 40, !36, i64 64, !6, i64 72, !7, i64 76, !7, i64 236, !7, i64 1196, !7, i64 33964, !7, i64 33972, !7, i64 33976, !7, i64 33992, !7, i64 34008, !37, i64 34024, !37, i64 34032, !37, i64 34040, !7, i64 34048, !6, i64 34056, !7, i64 34064, !37, i64 34088, !6, i64 34096, !6, i64 34100, !6, i64 34104, !7, i64 34108, !6, i64 36740, !12, i64 36744, !12, i64 36752, !12, i64 36760}
!34 = !{!"p1 _ZTS14AVCodecContext", !12, i64 0}
!35 = !{!"p1 _ZTS17AVFloatDSPContext", !12, i64 0}
!36 = !{!"p1 _ZTS13TwinVQModeTab", !12, i64 0}
!37 = !{!"p1 float", !12, i64 0}
!38 = !{!33, !6, i64 34056}
!39 = !{!40, !41, i64 192}
!40 = !{!"TwinVQModeTab", !7, i64 0, !41, i64 192, !7, i64 194, !37, i64 200, !7, i64 208, !7, i64 209, !7, i64 210, !7, i64 211, !24, i64 216, !7, i64 224, !7, i64 225, !7, i64 226, !7, i64 227, !41, i64 228}
!41 = !{!"short", !7, i64 0}
!42 = !{!33, !6, i64 34100}
!43 = !{!44, !6, i64 112}
!44 = !{!"AVFrame", !7, i64 0, !7, i64 64, !45, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !16, i64 124, !13, i64 136, !13, i64 144, !16, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !46, i64 248, !6, i64 256, !30, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !47, i64 312, !6, i64 320, !11, i64 328, !11, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !12, i64 376, !25, i64 384, !13, i64 408, !6, i64 416}
!45 = !{!"p2 omnipotent char", !31, i64 0}
!46 = !{!"p2 _ZTS11AVBufferRef", !31, i64 0}
!47 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
end_hunk_0
