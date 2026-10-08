Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/tif_predict?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 9
begin_hunk_0_@horDiff64:bb.a
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !57
  %i.bl = getelementptr inbounds i8, ptr %.041, i64 -8
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %.split
  %.3 = phi ptr [ %i.bl, %.loopexit ], [ %.041, %.split ] ; 3 uses
  %i.bm = load i64, ptr %.3, align 8, !tbaa !57
  %i.bn = getelementptr inbounds [8 x i8], ptr %.3, i64 %.fr49 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !57
  %i.bp = sub i64 %i.bo, %i.bm
  store i64 %i.bp, ptr %i.bn, align 8, !tbaa !57
  %i.bq = getelementptr inbounds i8, ptr %.3, i64 -8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.split
  %.4 = phi ptr [ %i.bq, %bb.e ], [ %.041, %.split ] ; 3 uses
  %i.br = load i64, ptr %.4, align 8, !tbaa !57
  %i.bs = getelementptr inbounds [8 x i8], ptr %.4, i64 %.fr49 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !57
  %i.bu = sub i64 %i.bt, %i.br
  store i64 %i.bu, ptr %i.bs, align 8, !tbaa !57
  %i.bv = getelementptr inbounds i8, ptr %.4, i64 -8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.split
  %.5 = phi ptr [ %i.bv, %bb.f ], [ %.041, %.split ] ; 3 uses
  %i.bw = load i64, ptr %.5, align 8, !tbaa !57
  %i.bx = getelementptr inbounds [8 x i8], ptr %.5, i64 %.fr49 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !57
  %i.bz = sub i64 %i.by, %i.bw
  store i64 %i.bz, ptr %i.bx, align 8, !tbaa !57
  %i.ca = getelementptr inbounds i8, ptr %.5, i64 -8
  br label %bb.h

bb.h:                                             ; preds = %.split, %bb.g
  %.6 = phi ptr [ %i.ca, %bb.g ], [ %.041, %.split ]
  %i.cb = sub nsw i64 %.040, %.fr49               ; 2 uses
  %i.cc = icmp sgt i64 %i.cb, 0
  br i1 %i.cc, label %.split, label %.loopexit46

.loopexit46:                                      ; preds = %bb.h, %.loopexit59, %bb.c, %bb.b
  %.042 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %.loopexit59 ], [ 1, %bb.h ]
  ret i32 %.042
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeRow(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %2) #10 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @PredictorEncodeRow.module, ptr noundef nonnull @.str.31, i64 noundef %2) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = tail call i32 %i.f(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2) #10
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !47
  %i.j = tail call i32 %i.i(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2, i16 noundef zeroext %3) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.j, %bb.e ], [ 0, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @PredictorEncodeTile(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i16 noundef zeroext %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = tail call ptr @_TIFFmallocExt(ptr noundef %0, i64 noundef %2) #10 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i64 noundef %2) #10
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr align 1 %1, i64 %2, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !50   ; 4 uses
  %i.g = srem i64 %2, %i.f
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.h = icmp sgt i64 %2, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.33) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.038 = phi ptr [ %i.c, %.lr.ph ], [ %i.m, %bb.e ] ; 2 uses
  %.03437 = phi i64 [ %2, %.lr.ph ], [ %i.l, %bb.e ]
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, ptr noundef %.038, i64 noundef %i.f) #10 ; 0 uses
  %i.l = sub nsw i64 %.03437, %i.f                ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.038, i64 %i.f
  %i.n = icmp sgt i64 %i.l, 0
  br i1 %i.n, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.q = tail call i32 %i.p(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i64 noundef %2, i16 noundef zeroext %3) #10
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.c) #10
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.d, %bb.b
  %.035 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ %i.q, %._crit_edge ]
  ret i32 %.035
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff16(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff16(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 2
  tail call void @TIFFSwabArrayOfShort(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff32(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff32(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 4
  tail call void @TIFFSwabArrayOfLong(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @swabHorDiff64(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i32 @horDiff64(ptr noundef %0, ptr noundef %1, i64 noundef %2)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sdiv i64 %2, 8
  tail call void @TIFFSwabArrayOfLong8(ptr noundef %1, i64 noundef %i.b) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @fpDiff(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49
  %.fr100 = freeze i64 %i.d                       ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.f = load i16, ptr %i.e, align 4, !tbaa !58
  %i.g = lshr i16 %i.f, 3                         ; 6 uses
  %i.h = zext nneg i16 %i.g to i64                ; 3 uses
  %i.i = zext nneg i16 %i.g to i64                ; 3 uses
  %i.j = sdiv i64 %2, %i.i                        ; 5 uses
  %i.k = mul nsw i64 %.fr100, %i.i
  %i.l = srem i64 %2, %i.k
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ptr, ...) @TIFFErrorExtR(ptr noundef nonnull %0, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.35) #10
  br label %.loopexit89

bb.c:                                             ; preds = %bb.a
  %i.m = tail call ptr @_TIFFmallocExt(ptr noundef nonnull %0, i64 noundef %2) #10 ; 4 uses
  %.not84 = icmp eq ptr %i.m, null
  br i1 %.not84, label %.loopexit89, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_TIFFmemcpy(ptr noundef nonnull %i.m, ptr noundef %1, i64 noundef %2) #10
  %i.n = icmp sgt i64 %i.j, 0
  %i.o = icmp ne i16 %i.g, 0
  %or.cond = and i1 %i.n, %i.o
  br i1 %or.cond, label %.preheader.preheader, label %._crit_edge92.split

.preheader.preheader:                             ; preds = %bb.d
  %wide.trip.count = zext nneg i16 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.p = icmp eq i16 %i.g, 1
  %unroll_iter = and i64 %wide.trip.count, 8190
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod130 = trunc i16 %i.g to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.07791 = phi i64 [ %i.al, %._crit_edge ], [ 0, %.preheader.preheader ] ; 3 uses
  %invariant.gep = getelementptr i8, ptr %1, i64 %.07791 ; 3 uses
  %i.q = mul nuw nsw i64 %.07791, %i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q ; 3 uses
  br i1 %i.p, label %.epil.preheader, label %.preheader.new

.preheader.new:                                   ; preds = %.preheader, %.preheader.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.new ], [ 0, %.preheader ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.new ], [ 0, %.preheader ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.t = load i8, ptr %i.s, align 1, !tbaa !51
  %i.u = xor i64 %indvars.iv, -1
  %i.v = add nsw i64 %i.u, %i.h
  %i.w = and i64 %i.v, 4294967295
  %i.x = mul nuw nsw i64 %i.j, %i.w
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.x
  store i8 %i.t, ptr %gep, align 1, !tbaa !51
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !51
  %i.ab = xor i64 %indvars.iv, 4294967294
  %i.ac = add nuw i64 %i.ab, %i.h
  %i.ad = and i64 %i.ac, 4294967295
  %i.ae = mul nuw nsw i64 %i.j, %i.ad
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.ae
  store i8 %i.aa, ptr %gep.1, align 1, !tbaa !51
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.preheader.new

._crit_edge.unr-lcssa:                            ; preds = %.preheader.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod130)
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.epil.init
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !51
  %i.ah = xor i64 %indvars.iv.epil.init, -1
  %i.ai = add nsw i64 %i.ah, %i.h
  %i.aj = and i64 %i.ai, 4294967295
  %i.ak = mul nuw nsw i64 %i.j, %i.aj
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %i.ak
  store i8 %i.ag, ptr %gep.epil, align 1, !tbaa !51
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.al = add nuw nsw i64 %.07791, 1              ; 2 uses
  %exitcond103.not = icmp eq i64 %i.al, %i.j
  br i1 %exitcond103.not, label %._crit_edge92.split, label %.preheader

._crit_edge92.split:                              ; preds = %._crit_edge, %bb.d
  tail call void @_TIFFfreeExt(ptr noundef nonnull %0, ptr noundef nonnull %i.m) #10
  %i.am = icmp sgt i64 %2, %.fr100
  br i1 %i.am, label %.lr.ph99, label %.loopexit89

.lr.ph99:                                         ; preds = %._crit_edge92.split
  %i.an = getelementptr i8, ptr %1, i64 %2
  %i.ao = xor i64 %.fr100, -1
  %i.ap = getelementptr i8, ptr %i.an, i64 %i.ao  ; 2 uses
  %i.aq = add i64 %.fr100, -4                     ; 10 uses
  %i.ar = icmp sgt i64 %.fr100, 4
  br i1 %i.ar, label %iter.check.preheader, label %.lr.ph99.split

iter.check.preheader:                             ; preds = %.lr.ph99
  %min.iters.check = icmp ult i64 %i.aq, 8
  %min.iters.check111 = icmp ult i64 %i.aq, 32
  %i.as = and i64 %i.aq, 24
  %n.vec = and i64 %i.aq, -32                     ; 4 uses
  %i.at = sub i64 0, %n.vec
  %i.au = and i64 %i.aq, 31
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.as, 0
  %n.vec116 = and i64 %i.aq, -8                   ; 3 uses
  %i.av = sub i64 0, %n.vec116
  %i.aw = and i64 %i.aq, 7
  %cmp.n123 = icmp eq i64 %i.aq, %n.vec116
  br label %iter.check

iter.check:                                       ; preds = %iter.check.preheader, %.loopexit126
  %.07697.us = phi ptr [ %i.cj, %.loopexit126 ], [ %i.ap, %iter.check.preheader ] ; 5 uses
  %.17896.us = phi i64 [ %i.ck, %.loopexit126 ], [ %2, %iter.check.preheader ]
  br i1 %min.iters.check, label %.lr.ph.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check111, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ax = getelementptr i8, ptr %.07697.us, i64 %i.at ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ay = sub i64 0, %index
  %next.gep = getelementptr i8, ptr %.07697.us, i64 %i.ay ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %next.gep, i64 %.fr100 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -15 ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -31 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ba, align 1, !tbaa !51
  %wide.load112 = load <16 x i8>, ptr %i.bb, align 1, !tbaa !51
  %i.bc = getelementptr i8, ptr %next.gep, i64 -15
  %i.bd = getelementptr i8, ptr %next.gep, i64 -31
  %wide.load113 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !51
  %wide.load114 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !51
  %i.be = sub <16 x i8> %wide.load, %wide.load113
  %i.bf = sub <16 x i8> %wide.load112, %wide.load114
  store <16 x i8> %i.be, ptr %i.ba, align 1, !tbaa !51
  store <16 x i8> %i.bf, ptr %i.bb, align 1, !tbaa !51
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.ax, i64 1
  br i1 %cmp.n, label %.loopexit126, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.lr.ph.us.preheader, label %vec.epilog.ph, !prof !59

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.bh = getelementptr i8, ptr %.07697.us, i64 %i.av ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index117 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next121, %vec.epilog.vector.body ] ; 2 uses
  %i.bi = sub i64 0, %index117
  %next.gep118 = getelementptr i8, ptr %.07697.us, i64 %i.bi ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep118, i64 %.fr100
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -7 ; 2 uses
  %wide.load119 = load <8 x i8>, ptr %i.bk, align 1, !tbaa !51
  %i.bl = getelementptr i8, ptr %next.gep118, i64 -7
  %wide.load120 = load <8 x i8>, ptr %i.bl, align 1, !tbaa !51
  %i.bm = sub <8 x i8> %wide.load119, %wide.load120
  store <8 x i8> %i.bm, ptr %i.bk, align 1, !tbaa !51
  %index.next121 = add nuw i64 %index117, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next121, %n.vec116
  br i1 %i.bn, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !99

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %ind.escape122 = getelementptr i8, ptr %i.bh, i64 1
  br i1 %cmp.n123, label %.loopexit126, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.094.us.ph = phi i64 [ %i.aq, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.aw, %vec.epilog.middle.block ]
  %.193.us.ph = phi ptr [ %.07697.us, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.lr.ph.us
  %.094.us = phi i64 [ %i.bs, %.lr.ph.us ], [ %.094.us.ph, %.lr.ph.us.preheader ] ; 2 uses
  %.193.us = phi ptr [ %i.br, %.lr.ph.us ], [ %.193.us.ph, %.lr.ph.us.preheader ] ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.193.us, i64 %.fr100 ; 2 uses
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !51
  %i.bq = load i8, ptr %.193.us, align 1, !tbaa !51
  %.narrow88.us = sub i8 %i.bp, %i.bq
  store i8 %.narrow88.us, ptr %i.bo, align 1, !tbaa !51
  %i.br = getelementptr inbounds i8, ptr %.193.us, i64 -1 ; 2 uses
  %i.bs = add nsw i64 %.094.us, -1
  %i.bt = icmp sgt i64 %.094.us, 1
  br i1 %i.bt, label %.lr.ph.us, label %.loopexit126, !llvm.loop !100

.loopexit126:                                     ; preds = %.lr.ph.us, %vec.epilog.middle.block, %middle.block
  %.193.us.lcssa = phi ptr [ %ind.escape122, %vec.epilog.middle.block ], [ %ind.escape, %middle.block ], [ %.193.us, %.lr.ph.us ] ; 4 uses
  %.lcssa = phi ptr [ %i.bh, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.br, %.lr.ph.us ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.lcssa, i64 %.fr100 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !51
  %i.bw = load i8, ptr %.lcssa, align 1, !tbaa !51
  %.narrow.us = sub i8 %i.bv, %i.bw
  store i8 %.narrow.us, ptr %i.bu, align 1, !tbaa !51
  %i.bx = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -2 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.fr100 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !51
  %i.ca = load i8, ptr %i.bx, align 1, !tbaa !51
  %.narrow85.us = sub i8 %i.bz, %i.ca
  store i8 %.narrow85.us, ptr %i.by, align 1, !tbaa !51
  %i.cb = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.fr100 ; 2 uses
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !51
  %i.ce = load i8, ptr %i.cb, align 1, !tbaa !51
  %.narrow86.us = sub i8 %i.cd, %i.ce
  store i8 %.narrow86.us, ptr %i.cc, align 1, !tbaa !51
  %i.cf = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -4 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.fr100 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !51
  %i.ci = load i8, ptr %i.cf, align 1, !tbaa !51
  %.narrow87.us = sub i8 %i.ch, %i.ci
  store i8 %.narrow87.us, ptr %i.cg, align 1, !tbaa !51
  %i.cj = getelementptr inbounds i8, ptr %.193.us.lcssa, i64 -5
  %i.ck = sub nsw i64 %.17896.us, %.fr100         ; 2 uses
  %i.cl = icmp sgt i64 %i.ck, %.fr100
  br i1 %i.cl, label %iter.check, label %.loopexit89

.lr.ph99.split:                                   ; preds = %.lr.ph99, %bb.h
  %.07697 = phi ptr [ %.6, %bb.h ], [ %i.ap, %.lr.ph99 ] ; 7 uses
end_hunk_0
