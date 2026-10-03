Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fsmpage?download=true
inline.NumInlined: 14
inline.NumDeleted: 5
begin_hunk_0_@fsm_search_avail:bb.a

.lr.ph77:                                         ; preds = %._crit_edge, %bb.q
  %.176 = phi i32 [ %.2, %bb.q ], [ %.045.lcssa, %._crit_edge ]
  %i.am = shl i32 %.176, 1                        ; 3 uses
  %i.an = icmp ult i32 %i.am, 8164
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph77
  %i.ao = or disjoint i32 %i.am, 1                ; 2 uses
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1
  %.not53 = icmp ult i8 %i.ar, %1
  br i1 %.not53, label %bb.f, label %bb.q, !llvm.loop !8

bb.f:                                             ; preds = %bb.e, %.lr.ph77
  %i.as = add i32 %i.am, 2                        ; 3 uses
  %i.at = icmp ult i32 %i.as, 8164
  br i1 %i.at, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.au = zext nneg i32 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %.not54 = icmp ult i8 %i.aw, %1
  br i1 %.not54, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @BufferGetTag(i32 noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #6
  %i.ax = call zeroext i1 @errstart(i32 noundef 14, ptr noundef null) #6
  br i1 %i.ax, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = load i32, ptr %i.b, align 4
  %i.az = load i32, ptr %4, align 4
  %i.ba = load i32, ptr %i.r, align 4
  %i.bb = load i32, ptr %i.s, align 4
  %i.bc = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str, i32 noundef %i.ay, i32 noundef %i.az, i32 noundef %i.ba, i32 noundef %i.bb) #6 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 277, ptr noundef nonnull @__func__.fsm_search_avail) #6
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.04660, label %.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @UnlockBuffer(i32 noundef %0) #6
  call void @LockBufferInternal(i32 noundef %0, i32 noundef 3) #6
  br label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.j
  br label %bb.l

bb.l:                                             ; preds = %.preheader, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ 4094, %.preheader ] ; 6 uses
  %i.bd = shl nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv.i, 4082
  br i1 %i.be, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.bf = getelementptr i8, ptr %.0.i.i, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 29
  %i.bh = load i8, ptr %i.bg, align 1             ; 2 uses
  %.not32.i = icmp eq i64 %indvars.iv.i, 4081
  br i1 %.not32.i, label %.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bd
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2
  %i.bk = load i8, ptr %i.bj, align 1
  %.0..i = call i8 @llvm.umax.i8(i8 %i.bh, i8 %i.bk)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.n, %bb.m, %bb.l
  %.1.i = phi i8 [ %.0..i, %bb.n ], [ %i.bh, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.o, i64 %indvars.iv.i ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1
  %.not.i = icmp eq i8 %i.bm, %.1.i
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread.i
  store i8 %.1.i, ptr %i.bl, align 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not30.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not30.i, label %.loopexit, label %bb.l, !llvm.loop !0

bb.q:                                             ; preds = %bb.g, %bb.e
  %.2 = phi i32 [ %i.as, %bb.g ], [ %i.ao, %bb.e ] ; 3 uses
  %i.bn = icmp slt i32 %.2, 4095
  br i1 %i.bn, label %.lr.ph77, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge, %bb.q
  %.1.lcssa = phi i32 [ %.2, %bb.q ], [ %.045.lcssa, %._crit_edge ]
  %i.bo = trunc i32 %.1.lcssa to i16
  %i.bp = add i16 %i.bo, -4095                    ; 2 uses
  br i1 %.04660, label %.critedge, label %bb.r

bb.r:                                             ; preds = %._crit_edge._crit_edge
  %i.bq = call zeroext i1 @BufferBeginSetHintBits(i32 noundef %0) #6
  %i.br = zext i16 %i.bp to i32                   ; 3 uses
  br i1 %i.bq, label %bb.s, label %.loopexit55

bb.s:                                             ; preds = %bb.r
  %i.bs = zext i1 %2 to i32
  %i.bt = add nuw nsw i32 %i.br, %i.bs
  store i32 %i.bt, ptr %i.n, align 4
  call void @BufferFinishSetHintBits(i32 noundef %0, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %.loopexit55

.critedge:                                        ; preds = %._crit_edge._crit_edge
  %i.bu = zext i16 %i.bp to i32                   ; 2 uses
  %i.bv = zext i1 %2 to i32
  %i.bw = add nuw nsw i32 %i.bu, %i.bv
  store i32 %i.bw, ptr %i.n, align 4
  br label %.loopexit55

.loopexit55:                                      ; preds = %.loopexit, %bb.r, %bb.s, %.critedge, %BufferGetPage.exit
  %.049 = phi i32 [ %i.br, %bb.s ], [ -1, %BufferGetPage.exit ], [ %i.br, %bb.r ], [ %i.bu, %.critedge ], [ -1, %.loopexit ]
  ret i32 %.049
}

declare void @BufferGetTag(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #4

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #4

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

declare void @MarkBufferDirtyHint(i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

declare zeroext i1 @BufferBeginSetHintBits(i32 noundef) local_unnamed_addr #4

declare void @BufferFinishSetHintBits(i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef zeroext i1 @fsm_truncate_avail(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = add i32 %1, 4095                         ; 2 uses
  %i.c = icmp slt i32 %i.b, 8164
  br i1 %i.c, label %iter.check, label %fsm_rebuild_page.exit

iter.check:                                       ; preds = %bb.a
  %i.d = sext i32 %i.b to i64                     ; 2 uses
  %.add = add nsw i64 %i.d, 4                     ; 5 uses
  %i.e = sub nsw i64 8164, %i.d                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 8
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check17 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check17, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.f = and i64 %i.e, 24
  %n.vec = and i64 %i.e, -32                      ; 4 uses
  %i.g = add nsw i64 %.add, %n.vec
  %i.h = getelementptr i8, ptr %i.a, i64 %.add
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi18 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.i = getelementptr i8, ptr %i.h, i64 %index   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.i, align 1
  %wide.load19 = load <16 x i8>, ptr %i.j, align 1
  %i.k = icmp ne <16 x i8> %wide.load, zeroinitializer
  %i.l = icmp ne <16 x i8> %wide.load19, zeroinitializer
  %i.m = or <16 x i1> %vec.phi, %i.k              ; 2 uses
  %i.n = or <16 x i1> %vec.phi18, %i.l            ; 2 uses
  store <16 x i8> zeroinitializer, ptr %i.i, align 1
  store <16 x i8> zeroinitializer, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.n, %i.m
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.p = bitcast <16 x i1> %bin.rdx.fr to i16
  %i.q = icmp ne i16 %i.p, 0                      ; 3 uses
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.f, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !14

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %i.q, %vec.epilog.iter.check ], [ false, %vector.main.loop.iter.check ]
  %n.vec20 = and i64 %i.e, -8                     ; 3 uses
  %2 = add nsw i64 %.add, %n.vec20
  %broadcast.splatinsert = insertelement <8 x i1> poison, i1 %bc.merge.rdx, i64 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> poison, <8 x i32> zeroinitializer
  %i.r = getelementptr i8, ptr %i.a, i64 %.add
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index21 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi22 = phi <8 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %i.u, %vec.epilog.vector.body ]
  %i.s = getelementptr i8, ptr %i.r, i64 %index21 ; 2 uses
  %wide.load23 = load <8 x i8>, ptr %i.s, align 1
  %wide.load23.fr = freeze <8 x i8> %wide.load23
  %i.t = icmp ne <8 x i8> %wide.load23.fr, zeroinitializer
  %i.u = or <8 x i1> %vec.phi22, %i.t             ; 2 uses
  store <8 x i8> zeroinitializer, ptr %i.s, align 1
  %index.next24 = add nuw i64 %index21, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next24, %n.vec20
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !10

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.w = bitcast <8 x i1> %i.u to i8
  %i.x = icmp ne i8 %i.w, 0                       ; 2 uses
  %cmp.n25 = icmp eq i64 %i.e, %n.vec20
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.014.ph = phi i1 [ false, %iter.check ], [ %i.q, %vec.epilog.iter.check ], [ %i.x, %vec.epilog.middle.block ]
  %.010.idx13.ph = phi i64 [ %.add, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %2, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.014 = phi i1 [ %spec.select, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader ]
  %.010.idx13 = phi i64 [ %.010.add, %.lr.ph ], [ %.010.idx13.ph, %.lr.ph.preheader ] ; 2 uses
  %.010.ptr = getelementptr inbounds i8, ptr %i.a, i64 %.010.idx13 ; 2 uses
  %i.y = load i8, ptr %.010.ptr, align 1
  %.not = icmp ne i8 %i.y, 0
  %spec.select = select i1 %.not, i1 true, i1 %.014 ; 2 uses
  store i8 0, ptr %.010.ptr, align 1
  %.010.add = add nsw i64 %.010.idx13, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %.010.add, 8168
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %i.x, %vec.epilog.middle.block ], [ %i.q, %middle.block ], [ %spec.select, %.lr.ph ]
  br i1 %spec.select.lcssa, label %bb.b, label %fsm_rebuild_page.exit

bb.b:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %indvars.iv.i = phi i64 [ 4094, %bb.b ], [ %indvars.iv.next.i, %bb.g ] ; 6 uses
  %i.aa = shl nuw nsw i64 %indvars.iv.i, 1        ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.i, 4082
  br i1 %i.ab, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr i8, ptr %0, i64 %i.aa
  %i.ad = getelementptr i8, ptr %i.ac, i64 29
  %i.ae = load i8, ptr %i.ad, align 1             ; 2 uses
  %.not32.i = icmp eq i64 %indvars.iv.i, 4081
  br i1 %.not32.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 2
  %i.ah = load i8, ptr %i.ag, align 1
  %.0..i = tail call i8 @llvm.umax.i8(i8 %i.ae, i8 %i.ah)
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.c
  %.1.i = phi i8 [ %.0..i, %bb.e ], [ %i.ae, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv.i ; 2 uses
  %i.aj = load i8, ptr %i.ai, align 1
  %.not.i = icmp eq i8 %i.aj, %.1.i
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i
  store i8 %.1.i, ptr %i.ai, align 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not30.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not30.i, label %fsm_rebuild_page.exit, label %bb.c, !llvm.loop !0

fsm_rebuild_page.exit:                            ; preds = %bb.g, %bb.a, %._crit_edge
  %.0.lcssa16 = phi i1 [ false, %bb.a ], [ false, %._crit_edge ], [ true, %bb.g ]
  ret i1 %.0.lcssa16
}

declare void @UnlockBuffer(i32 noundef) local_unnamed_addr #4

declare void @LockBufferInternal(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #5

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
!9 = distinct !{!9, !5, !12, !13}
!10 = distinct !{!10, !5, !12, !13}
!11 = distinct !{!11, !5, !13, !12}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"branch_weights", i32 8, i32 24}
end_hunk_0
