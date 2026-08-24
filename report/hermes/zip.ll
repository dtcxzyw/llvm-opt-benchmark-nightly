Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/zip?download=true
inline.NumInlined: 158
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 52
begin_hunk_0_@zip_central_dir_delete:bb.a
  %i.p = trunc nsw i64 %indvars.iv to i32
  %i.q = trunc nsw i64 %indvars.iv78 to i32       ; 2 uses
  %i.r = icmp eq i32 %2, %i.p
  br i1 %i.r, label %zip_central_dir_move.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !221    ; 3 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !222  ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 3 uses
  %i.w = zext i32 %i.v to i64                     ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = icmp eq i32 %2, %i.q
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv78
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.ab
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !279
  %i.ae = sub i64 %i.ad, %i.ab
  %gepdiff.i = sub i32 %i.aa, %i.v
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.049.i = phi i64 [ %i.ae, %bb.e ], [ 0, %bb.d ] ; 5 uses
  %.048.i = phi i32 [ %gepdiff.i, %bb.e ], [ 0, %bb.d ] ; 4 uses
  %.047.i = phi ptr [ %i.ac, %bb.e ], [ null, %bb.d ] ; 2 uses
  %i.af = icmp eq i32 %i.v, 0
  br i1 %i.af, label %bb.g, label %.loopexit54.i

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.s, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  %i.ag = load ptr, ptr %0, align 8, !tbaa !221
  %i.ah = tail call ptr @realloc(ptr noundef %i.ag, i64 noundef %.049.i) #35
  store ptr %i.ah, ptr %0, align 8, !tbaa !221
  br i1 %i.n, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !222 ; 2 uses
  %i.aj = add i64 %.05166, %indvar
  %i.ak = add i64 %i.aj, %indvar5
  %i.al = sub i64 %i.d, %i.ak                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.al, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.al, -8                      ; 3 uses
  %i.am = add i64 %indvars.iv78, %n.vec
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.048.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = getelementptr [4 x i8], ptr %i.ai, i64 %indvars.iv78
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ao = getelementptr [4 x i8], ptr %i.an, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.ao, align 4, !tbaa !3
  %wide.load7 = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %i.aq = sub <4 x i32> %wide.load, %broadcast.splat
  %i.ar = sub <4 x i32> %wide.load7, %broadcast.splat
  store <4 x i32> %i.aq, ptr %i.ao, align 4, !tbaa !3
  store <4 x i32> %i.ar, ptr %i.ap, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %indvars.iv78, %.lr.ph.i ], [ %i.am, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.at = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %indvars.iv.i ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !3
  %i.av = sub i32 %i.au, %.048.i
  store i32 %i.av, ptr %i.at, align 4, !tbaa !3
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count62.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %scalar.ph, !llvm.loop !404

.loopexit54.i:                                    ; preds = %bb.f
  %i.aw = mul i64 %.049.i, %i.w
  %.not.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i, label %.loopexit.i, label %bb.h

bb.h:                                             ; preds = %.loopexit54.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %.047.i, i64 %.049.i, i1 false)
  br i1 %i.n, label %.lr.ph57.i, label %.loopexit.i

.lr.ph57.i:                                       ; preds = %bb.h
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !222 ; 2 uses
  %i.ay = add i64 %.05166, %indvar
  %i.az = add i64 %i.ay, %indvar5
  %i.ba = sub i64 %i.d, %i.az                     ; 3 uses
  %min.iters.check9 = icmp ult i64 %i.ba, 8
  br i1 %min.iters.check9, label %scalar.ph8.preheader, label %vector.ph10

vector.ph10:                                      ; preds = %.lr.ph57.i
  %n.vec11 = and i64 %i.ba, -8                    ; 3 uses
  %i.bb = add i64 %indvars.iv78, %n.vec11
  %broadcast.splatinsert12 = insertelement <4 x i32> poison, i32 %.048.i, i64 0
  %broadcast.splat13 = shufflevector <4 x i32> %broadcast.splatinsert12, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bc = getelementptr [4 x i8], ptr %i.ax, i64 %indvars.iv78
  br label %vector.body14

vector.body14:                                    ; preds = %vector.body14, %vector.ph10
  %index15 = phi i64 [ 0, %vector.ph10 ], [ %index.next18, %vector.body14 ] ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.bc, i64 %index15 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %wide.load16 = load <4 x i32>, ptr %i.bd, align 4, !tbaa !3
  %wide.load17 = load <4 x i32>, ptr %i.be, align 4, !tbaa !3
  %i.bf = sub <4 x i32> %wide.load16, %broadcast.splat13
  %i.bg = sub <4 x i32> %wide.load17, %broadcast.splat13
  store <4 x i32> %i.bf, ptr %i.bd, align 4, !tbaa !3
  store <4 x i32> %i.bg, ptr %i.be, align 4, !tbaa !3
  %index.next18 = add nuw i64 %index15, 8         ; 2 uses
  %i.bh = icmp eq i64 %index.next18, %n.vec11
  br i1 %i.bh, label %middle.block19, label %vector.body14, !llvm.loop !405

middle.block19:                                   ; preds = %vector.body14
  %cmp.n20 = icmp eq i64 %i.ba, %n.vec11
  br i1 %cmp.n20, label %.loopexit.i, label %scalar.ph8.preheader

scalar.ph8.preheader:                             ; preds = %.lr.ph57.i, %middle.block19
  %indvars.iv59.i.ph = phi i64 [ %indvars.iv78, %.lr.ph57.i ], [ %i.bb, %middle.block19 ]
  br label %scalar.ph8

scalar.ph8:                                       ; preds = %scalar.ph8.preheader, %scalar.ph8
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %scalar.ph8 ], [ %indvars.iv59.i.ph, %scalar.ph8.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %indvars.iv59.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = sub i32 %i.bj, %.048.i
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !3
  %indvars.iv.next60.i = add nsw i64 %indvars.iv59.i, 1 ; 2 uses
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %wide.trip.count62.i
  br i1 %exitcond63.not.i, label %.loopexit.i, label %scalar.ph8, !llvm.loop !406

.loopexit.i:                                      ; preds = %scalar.ph8, %scalar.ph, %middle.block19, %middle.block, %bb.g, %bb.h, %.loopexit54.i
  %i.bl = add i64 %.049.i, %i.w
  store i64 %i.bl, ptr %i.c, align 8, !tbaa !279
  br label %zip_central_dir_move.exit

zip_central_dir_move.exit:                        ; preds = %bb.c, %.loopexit.i
  %i.bm = icmp sgt i32 %2, %i.q
  br i1 %i.bm, label %.preheader63, label %.preheader59.lr.ph, !llvm.loop !407

.preheader59:                                     ; preds = %._crit_edge, %.preheader59.lr.ph
  %.05070 = phi i32 [ 0, %.preheader59.lr.ph ], [ %i.cp, %._crit_edge ] ; 3 uses
  %.369 = phi i64 [ 0, %.preheader59.lr.ph ], [ %indvars.iv84, %._crit_edge ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader59
  %indvar24 = phi i64 [ %indvar.next25, %bb.i ], [ 0, %.preheader59 ] ; 2 uses
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %bb.i ], [ %.369, %.preheader59 ] ; 6 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv81
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3
  %.not = icmp eq i32 %i.bo, 0
  %i.bp = icmp slt i64 %indvars.iv81, %i.f
  %i.bq = and i1 %i.bp, %.not
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1
  %indvar.next25 = add i64 %indvar24, 1
  br i1 %i.bq, label %bb.i, label %bb.j, !llvm.loop !408

bb.j:                                             ; preds = %bb.i
  %i.br = trunc nsw i64 %indvars.iv81 to i32      ; 3 uses
  %i.bs = icmp eq i32 %2, %i.br
  br i1 %i.bs, label %._crit_edge71, label %.preheader58

.preheader58:                                     ; preds = %bb.j, %.preheader58
  %indvar22 = phi i64 [ %indvar.next23, %.preheader58 ], [ 0, %bb.j ] ; 3 uses
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.preheader58 ], [ %indvars.iv81, %bb.j ] ; 9 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv84
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = icmp ne i32 %i.bu, 0
  %i.bw = icmp slt i64 %indvars.iv84, %i.f
  %i.bx = and i1 %i.bw, %i.bv
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %indvar.next23 = add i64 %indvar22, 1
  br i1 %i.bx, label %.preheader58, label %.preheader, !llvm.loop !409

.preheader:                                       ; preds = %.preheader58
  %i.by = trunc nsw i64 %indvars.iv84 to i32      ; 3 uses
  %i.bz = icmp sgt i32 %2, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  %i.ca = sub i32 %.05070, %i.br
  %i.cb = add i32 %i.ca, %i.by
  br label %._crit_edge71

.lr.ph:                                           ; preds = %.preheader
  %i.cc = load ptr, ptr %i.e, align 8, !tbaa !222 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv81 ; 2 uses
  %i.cd = add i64 %indvar24, %.369
  %3 = add i64 %indvar22, %i.cd
  %i.ce = add i64 %indvars.iv84, 1
  %4 = tail call i64 @llvm.smax.i64(i64 %i.ce, i64 %i.d)
  %i.cf = sub i64 %4, %3                          ; 3 uses
  %min.iters.check27 = icmp ult i64 %i.cf, 8
  %i.cg = shl i64 %indvar22, 2
  %diff.check = icmp ugt i64 %i.cg, -32
  %or.cond = select i1 %min.iters.check27, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph26.preheader, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph
  %n.vec29 = and i64 %i.cf, -8                    ; 4 uses
  %i.ch = add i64 %indvars.iv84, %n.vec29
  %i.ci = getelementptr [4 x i8], ptr %i.cc, i64 %indvars.iv84
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next34, %vector.body30 ] ; 3 uses
  %i.cj = getelementptr [4 x i8], ptr %i.ci, i64 %index31 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load32 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %wide.load33 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !3
  %i.cl = getelementptr [4 x i8], ptr %invariant.gep, i64 %index31 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  store <4 x i32> %wide.load32, ptr %i.cl, align 4, !tbaa !3
  store <4 x i32> %wide.load33, ptr %i.cm, align 4, !tbaa !3
  %index.next34 = add nuw i64 %index31, 8         ; 2 uses
  %i.cn = icmp eq i64 %index.next34, %n.vec29
  br i1 %i.cn, label %middle.block35, label %vector.body30, !llvm.loop !410

middle.block35:                                   ; preds = %vector.body30
  %cmp.n36 = icmp eq i64 %i.cf, %n.vec29
  br i1 %cmp.n36, label %._crit_edge, label %scalar.ph26.preheader

scalar.ph26.preheader:                            ; preds = %.lr.ph, %middle.block35
  %indvars.iv92.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec29, %middle.block35 ]
  %indvars.iv90.ph = phi i64 [ %indvars.iv84, %.lr.ph ], [ %i.ch, %middle.block35 ]
  br label %scalar.ph26

._crit_edge:                                      ; preds = %scalar.ph26, %middle.block35
  %i.co = sub i32 %.05070, %i.br
  %i.cp = add i32 %i.co, %i.by
  br label %.preheader59

scalar.ph26:                                      ; preds = %scalar.ph26.preheader, %scalar.ph26
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %scalar.ph26 ], [ %indvars.iv92.ph, %scalar.ph26.preheader ] ; 2 uses
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %scalar.ph26 ], [ %indvars.iv90.ph, %scalar.ph26.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %indvars.iv90
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv92
  store i32 %i.cr, ptr %gep, align 4, !tbaa !3
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %indvars.iv.next91 = add nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.cs = icmp slt i64 %indvars.iv.next91, %i.f
  br i1 %i.cs, label %scalar.ph26, label %._crit_edge, !llvm.loop !411

._crit_edge71:                                    ; preds = %bb.j, %bb.a, %._crit_edge.thread
  %.050.lcssa = phi i32 [ %i.cb, %._crit_edge.thread ], [ 0, %bb.a ], [ %.05070, %bb.j ]
  %i.ct = sub nsw i32 %2, %.050.lcssa
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.cv, ptr %i.cw, align 8, !tbaa !412
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #28

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #28

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @mkdir(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umin.i16(i16, i16) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #30

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #31

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #32

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #30

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #32 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #33 = { nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { nounwind allocsize(1) }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind allocsize(0,1) }
attributes #38 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = !{!16, !4, i64 88}
!16 = !{!"mz_stream_s", !17, i64 0, !4, i64 8, !19, i64 16, !17, i64 24, !4, i64 32, !19, i64 40, !17, i64 48, !20, i64 56, !18, i64 64, !18, i64 72, !18, i64 80, !4, i64 88, !19, i64 96, !19, i64 104}
!17 = !{!"p1 omnipotent char", !18, i64 0}
!18 = !{!"any pointer", !5, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p1 _ZTS17mz_internal_state", !18, i64 0}
!21 = !{!16, !19, i64 96}
!22 = !{!16, !19, i64 104}
!23 = !{!16, !19, i64 16}
!24 = !{!16, !18, i64 64}
!25 = !{!16, !18, i64 72}
!26 = !{!16, !18, i64 80}
!27 = !{!16, !20, i64 56}
!28 = !{!29, !4, i64 16}
!29 = !{!"", !18, i64 0, !18, i64 8, !4, i64 16, !5, i64 20, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !4, i64 124, !4, i64 128, !4, i64 132, !18, i64 136, !18, i64 144, !30, i64 152, !30, i64 160, !4, i64 168, !17, i64 176, !19, i64 184, !19, i64 192, !5, i64 200, !5, i64 33226, !5, i64 34954, !5, i64 36682, !5, i64 37546, !5, i64 103082, !5, i64 168618, !5, i64 234154}
!30 = !{!"p1 long", !18, i64 0}
!31 = !{!29, !4, i64 28}
!32 = !{!29, !17, i64 48}
!33 = !{!29, !17, i64 56}
!34 = !{!29, !4, i64 80}
!35 = !{!29, !17, i64 64}
!36 = !{!29, !17, i64 72}
!37 = !{!29, !4, i64 132}
!38 = !{!29, !4, i64 108}
!39 = !{!29, !4, i64 104}
!40 = !{!29, !4, i64 100}
!41 = !{!29, !18, i64 0}
!42 = !{!29, !18, i64 8}
end_hunk_0
