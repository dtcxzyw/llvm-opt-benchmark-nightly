Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_convolve?download=true
inline.NumInlined: 16
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@get_xoutput:bb.a
  br i1 %i.bh, label %scalar.ph82.preheader, label %vector.body88, !llvm.loop !238

._crit_edge52:                                    ; preds = %scalar.ph82, %scalar.ph82.prol.loopexit
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %.loopexit, label %.lr.ph51, !llvm.loop !239

scalar.ph82:                                      ; preds = %scalar.ph82.prol.loopexit, %scalar.ph82
  %indvars.iv62 = phi i64 [ %indvars.iv.next63.1, %scalar.ph82 ], [ %indvars.iv62.unr, %scalar.ph82.prol.loopexit ] ; 4 uses
  %gep76 = getelementptr [8 x i8], ptr %invariant.gep75, i64 %indvars.iv62
  %i.bi = load float, ptr %gep76, align 4, !tbaa !98
  %i.bj = fmul nsz float %i.f, %i.bi
  %i.bk = fptosi float %i.bj to i32               ; 3 uses
  %.not.i = icmp ult i32 %i.bk, 256
  %isnotneg.i = icmp sgt i32 %i.bk, -1
  %i.bl = sext i1 %isnotneg.i to i8
  %i.bm = trunc nuw i32 %i.bk to i8
  %.0.i = select i1 %.not.i, i8 %i.bm, i8 %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv62
  store i8 %.0.i, ptr %i.bn, align 1, !tbaa !54
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %gep76.1 = getelementptr [8 x i8], ptr %invariant.gep75, i64 %indvars.iv.next63
  %i.bo = load float, ptr %gep76.1, align 4, !tbaa !98
  %i.bp = fmul nsz float %i.f, %i.bo
  %i.bq = fptosi float %i.bp to i32               ; 3 uses
  %.not.i.1 = icmp ult i32 %i.bq, 256
  %isnotneg.i.1 = icmp sgt i32 %i.bq, -1
  %i.br = sext i1 %isnotneg.i.1 to i8
  %i.bs = trunc nuw i32 %i.bq to i8
  %.0.i.1 = select i1 %.not.i.1, i8 %i.bs, i8 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next63
  store i8 %.0.i.1, ptr %i.bt, align 1, !tbaa !54
  %indvars.iv.next63.1 = add nuw nsw i64 %indvars.iv62, 2 ; 2 uses
  %exitcond66.not.1 = icmp eq i64 %indvars.iv.next63.1, %wide.trip.count65
  br i1 %exitcond66.not.1, label %._crit_edge52, label %scalar.ph82, !llvm.loop !240

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv57 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next58, %._crit_edge ] ; 3 uses
  %i.bu = mul nsw i64 %indvars.iv57, %i.p
  %i.bv = getelementptr inbounds i8, ptr %i.k, i64 %i.bu ; 2 uses
  %i.bw = mul nsw i64 %indvars.iv57, %i.q
  %invariant.gep = getelementptr [8 x i8], ptr %1, i64 %i.bw ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.bx = getelementptr [8 x i8], ptr %invariant.gep, i64 %index
  %wide.vec = load <8 x float>, ptr %i.bx, align 4, !tbaa !98
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.by = fmul nsz <4 x float> %broadcast.splat, %strided.vec
  %i.bz = fptosi <4 x float> %i.by to <4 x i32>   ; 2 uses
  %i.ca = icmp slt <4 x i32> %i.bz, zeroinitializer
  %i.cb = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bz, <4 x i32> %broadcast.splat79)
  %i.cc = trunc <4 x i32> %i.cb to <4 x i16>
  %i.cd = select <4 x i1> %i.ca, <4 x i16> zeroinitializer, <4 x i16> %i.cc
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %index
  store <4 x i16> %i.cd, ptr %i.ce, align 2, !tbaa !104
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %scalar.ph.preheader, label %vector.body, !llvm.loop !241

._crit_edge:                                      ; preds = %scalar.ph
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %.loopexit, label %.lr.ph, !llvm.loop !242

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cg = load float, ptr %gep, align 4, !tbaa !98
  %i.ch = fmul nsz float %i.f, %i.cg
  %i.ci = fptosi float %i.ch to i32               ; 2 uses
  %i.cj = icmp slt i32 %i.ci, 0
  %..i = tail call i32 @llvm.smin.i32(i32 %i.ci, i32 %i.c)
  %i.ck = trunc i32 %..i to i16
  %i.cl = select i1 %i.cj, i16 0, i16 %i.ck
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %indvars.iv
  store i16 %i.cl, ptr %i.cm, align 2, !tbaa !104
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !243

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge52, %.preheader44, %.lr.ph48, %.preheader, %.lr.ph54
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @complex_divide(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.c = load ptr, ptr %1, align 8, !tbaa !74     ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !75   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1572
  %i.g = load float, ptr %i.f, align 4, !tbaa !94 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.i = load i32, ptr %i.h, align 4, !tbaa !72   ; 4 uses
  %i.j = sext i32 %i.i to i64                     ; 5 uses
  %i.k = sext i32 %2 to i64
  %i.l = mul nsw i64 %i.j, %i.k
  %i.m = sext i32 %3 to i64                       ; 2 uses
  %i.n = sdiv i64 %i.l, %i.m                      ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = add nsw i32 %2, 1
  %i.q = sext i32 %i.p to i64
  %i.r = mul nsw i64 %i.j, %i.q
  %i.s = sdiv i64 %i.r, %i.m                      ; 2 uses
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp slt i32 %i.o, %i.t
  %i.v = icmp sgt i32 %i.i, 0
  %or.cond = and i1 %i.u, %i.v
  br i1 %or.cond, label %.lr.ph.preheader, label %._crit_edge58.split

.lr.ph.preheader:                                 ; preds = %bb.a
  %sext = shl i64 %i.n, 32
  %i.w = ashr exact i64 %sext, 32                 ; 2 uses
  %sext67 = shl i64 %i.s, 32                      ; 2 uses
  %wide.trip.count63 = ashr exact i64 %sext67, 32
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 4 uses
  %i.x = mul nsw i64 %i.w, %i.j
  %i.y = shl i64 %i.x, 3                          ; 3 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.y
  %i.z = ashr exact i64 %sext67, 29
  %i.aa = add nsw i64 %i.z, -8
  %i.ab = mul i64 %i.aa, %i.j                     ; 2 uses
  %i.ac = shl nuw nsw i64 %wide.trip.count, 3     ; 2 uses
  %i.ad = add i64 %i.ab, %i.ac
  %i.ae = add i64 %i.ad, -4                       ; 2 uses
  %scevgep68 = getelementptr i8, ptr %i.c, i64 %i.ae
  %scevgep69 = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep70 = getelementptr i8, ptr %i.e, i64 %i.ae
  %i.af = or disjoint i64 %i.y, 4                 ; 2 uses
  %scevgep71 = getelementptr i8, ptr %i.c, i64 %i.af
  %i.ag = add i64 %i.ab, %i.ac                    ; 2 uses
  %scevgep72 = getelementptr i8, ptr %i.c, i64 %i.ag
  %scevgep73 = getelementptr i8, ptr %i.e, i64 %i.af
  %scevgep74 = getelementptr i8, ptr %i.e, i64 %i.ag
  %min.iters.check = icmp ult i32 %i.i, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep70
  %bound1 = icmp ult ptr %scevgep69, %scevgep68
  %found.conflict = and i1 %bound0, %bound1
  %bound075 = icmp ult ptr %scevgep71, %scevgep74
  %bound176 = icmp ult ptr %scevgep73, %scevgep72
  %found.conflict77 = and i1 %bound075, %bound176
  %conflict.rdx = or i1 %found.conflict, %found.conflict77
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.g, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv60 = phi i64 [ %i.w, %.lr.ph.preheader ], [ %indvars.iv.next61, %._crit_edge ] ; 2 uses
  %i.ah = mul nsw i64 %indvars.iv60, %i.j         ; 2 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.ai = add nsw i64 %index, %i.ah               ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ai ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.aj, align 4, !tbaa !63 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 2 uses
  %strided.vec78 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 2 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ai
  %wide.vec79 = load <8 x float>, ptr %i.ak, align 4, !tbaa !63 ; 2 uses
  %strided.vec80 = shufflevector <8 x float> %wide.vec79, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6> ; 4 uses
  %strided.vec81 = shufflevector <8 x float> %wide.vec79, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7> ; 4 uses
  %i.al = fmul nsz <4 x float> %strided.vec81, %strided.vec81
  %i.am = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec80, <4 x float> %strided.vec80, <4 x float> %i.al)
  %i.an = fadd nsz <4 x float> %broadcast.splat, %i.am ; 2 uses
  %i.ao = fmul nsz <4 x float> %strided.vec78, %strided.vec81
  %i.ap = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec80, <4 x float> %strided.vec, <4 x float> %i.ao)
  %i.aq = fdiv nsz <4 x float> %i.ap, %i.an
  %i.ar = fneg nsz <4 x float> %strided.vec
  %i.as = fmul nsz <4 x float> %strided.vec81, %i.ar
  %i.at = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %strided.vec80, <4 x float> %strided.vec78, <4 x float> %i.as)
  %i.au = fdiv nsz <4 x float> %i.at, %i.an
  %interleaved.vec = shufflevector <4 x float> %i.aq, <4 x float> %i.au, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.aj, align 4, !tbaa !63
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !244

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.aw = add nsw i64 %indvars.iv, %i.ah          ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.aw ; 2 uses
  %4 = load float, ptr %i.ay, align 4, !tbaa !98  ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !100    ; 4 uses
  %i.az = fmul nsz float %6, %6
  %7 = tail call nsz float @llvm.fmuladd.f32(float %4, float %4, float %i.az)
  %8 = fadd nsz float %i.g, %7
  %9 = load <2 x float>, ptr %i.ax, align 4, !tbaa !63 ; 3 uses
  %i.ba = extractelement <2 x float> %9, i64 0
  %i.bb = fneg nsz float %i.ba
  %10 = fmul nsz float %6, %i.bb
  %11 = extractelement <2 x float> %9, i64 1
  %i.bc = fmul nsz float %11, %6
  %12 = insertelement <2 x float> poison, float %4, i64 0
  %i.bd = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %13 = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = insertelement <2 x float> %13, float %10, i64 1
  %i.bf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %9, <2 x float> %i.be)
  %i.bg = insertelement <2 x float> poison, float %8, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fdiv nsz <2 x float> %i.bf, %i.bh
  store <2 x float> %i.bi, ptr %i.ax, align 4, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !245

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge58.split, label %.lr.ph, !llvm.loop !246

._crit_edge58.split:                              ; preds = %._crit_edge, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #11

declare void @av_freep(ptr noundef) local_unnamed_addr #4

declare void @av_tx_uninit(ptr noundef) local_unnamed_addr #4

declare void @ff_framesync_uninit(ptr noundef) local_unnamed_addr #4

declare i32 @ff_framesync_activate(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_input_secondary(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !57   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !37
  %.not = icmp sgt i32 %i.g, %i.k
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !38
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !38
  %.not6 = icmp sgt i32 %i.m, %i.o
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.b, i32 noundef 16, ptr noundef nonnull @.str.26) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ -22, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { nounwind willreturn memory(read) }

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
!9 = !{!10, !12, i64 72}
!10 = !{!"AVFilterContext", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !16, i64 32, !6, i64 40, !15, i64 48, !16, i64 56, !6, i64 64, !12, i64 72, !18, i64 80, !6, i64 88, !6, i64 92, !14, i64 96, !6, i64 104, !19, i64 112, !6, i64 120}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS8AVFilter", !12, i64 0}
!14 = !{!"p1 omnipotent char", !12, i64 0}
!15 = !{!"p1 _ZTS11AVFilterPad", !12, i64 0}
!16 = !{!"p2 _ZTS12AVFilterLink", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p1 _ZTS13AVFilterGraph", !12, i64 0}
!19 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!20 = !{!10, !13, i64 8}
!21 = !{!22, !14, i64 0}
!22 = !{!"AVFilter", !14, i64 0, !14, i64 8, !15, i64 16, !15, i64 24, !11, i64 32, !6, i64 40}
!23 = !{!12, !12, i64 0}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{!26, !25}
!27 = !{!28, !29, i64 16}
!28 = !{!"AVFilterLink", !29, i64 0, !15, i64 8, !29, i64 16, !15, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !30, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !31, i64 72, !30, i64 96, !32, i64 104, !6, i64 112, !6, i64 116, !33, i64 120, !33, i64 168}
!29 = !{!"p1 _ZTS15AVFilterContext", !12, i64 0}
!30 = !{!"AVRational", !6, i64 0, !6, i64 4}
!31 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!32 = !{!"p2 _ZTS15AVFrameSideData", !17, i64 0}
!33 = !{!"AVFilterFormatsConfig", !34, i64 0, !34, i64 8, !35, i64 16, !34, i64 24, !34, i64 32, !34, i64 40}
!34 = !{!"p1 _ZTS15AVFilterFormats", !12, i64 0}
!35 = !{!"p1 _ZTS22AVFilterChannelLayouts", !12, i64 0}
!36 = !{!28, !6, i64 36}
!37 = !{!28, !6, i64 40}
!38 = !{!28, !6, i64 44}
!39 = !{!40, !7, i64 9}
!40 = !{!"AVPixFmtDescriptor", !14, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !41, i64 16, !7, i64 24, !14, i64 104}
!41 = !{!"long", !7, i64 0}
!42 = !{!6, !6, i64 0}
!43 = !{!40, !7, i64 10}
!44 = !{!40, !7, i64 8}
!45 = !{!46, !6, i64 1576}
!46 = !{!"ConvolveContext", !11, i64 0, !47, i64 8, !7, i64 104, !7, i64 616, !7, i64 1128, !7, i64 1160, !7, i64 1192, !7, i64 1208, !7, i64 1224, !7, i64 1240, !7, i64 1256, !7, i64 1272, !7, i64 1288, !7, i64 1304, !7, i64 1336, !7, i64 1368, !7, i64 1400, !7, i64 1432, !7, i64 1464, !7, i64 1496, !7, i64 1528, !6, i64 1560, !6, i64 1564, !6, i64 1568, !49, i64 1572, !6, i64 1576, !7, i64 1580, !12, i64 1600, !12, i64 1608, !12, i64 1616, !12, i64 1624}
!47 = !{!"FFFrameSync", !11, i64 0, !29, i64 8, !6, i64 16, !30, i64 20, !41, i64 32, !12, i64 40, !12, i64 48, !6, i64 56, !6, i64 60, !7, i64 64, !7, i64 65, !48, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92}
!48 = !{!"p1 _ZTS13FFFrameSyncIn", !12, i64 0}
!49 = !{!"float", !7, i64 0}
!50 = !{!51, !6, i64 16}
!51 = !{!"AVComponentDescriptor", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!52 = !{!46, !6, i64 1560}
!53 = distinct !{!53, !25}
!54 = !{!7, !7, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"p1 _ZTS14AVComplexFloat", !12, i64 0}
!57 = !{!10, !16, i64 32}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 _ZTS12AVFilterLink", !12, i64 0}
!60 = !{!28, !29, i64 0}
!61 = !{!46, !12, i64 48}
!62 = distinct !{!62, !25}
!63 = !{!49, !49, i64 0}
!64 = distinct !{!64, !25}
!65 = !{!47, !29, i64 8}
!66 = !{!10, !16, i64 56}
!67 = !{!68, !68, i64 0}
!68 = !{!"p1 _ZTS7AVFrame", !12, i64 0}
!69 = !{!46, !6, i64 1564}
!70 = !{!71, !6, i64 32}
!71 = !{!"ThreadData", !56, i64 0, !56, i64 8, !56, i64 16, !56, i64 24, !6, i64 32, !6, i64 36}
!72 = !{!71, !6, i64 36}
!73 = !{!46, !12, i64 1600}
!74 = !{!71, !56, i64 0}
!75 = !{!71, !56, i64 8}
!76 = !{!71, !56, i64 16}
!77 = !{!71, !56, i64 24}
!78 = !{!46, !6, i64 1568}
!79 = !{!46, !12, i64 1616}
!80 = !{!46, !12, i64 1624}
!81 = !{!46, !12, i64 1608}
!82 = distinct !{!82, !25}
!83 = !{!84, !84, i64 0}
!84 = !{!"p1 _ZTS11AVTXContext", !12, i64 0}
!85 = distinct !{!85, !25}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !25}
!90 = distinct !{!90, !25}
end_hunk_0
