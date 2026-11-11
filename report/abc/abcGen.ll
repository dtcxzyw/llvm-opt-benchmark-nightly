Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcGen?download=true
inline.NumInlined: 292
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@Abc_WriteBoothPartialProducts:bb.a

Mini_AigStop.exit:                                ; preds = %._crit_edge, %bb.h
  tail call void @free(ptr noundef nonnull %i.b) #22
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_WriteBooth(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %1, 2
  br i1 %i.a, label %Abc_Base10Log.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.b = add i32 %1, -1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.013.i = phi i32 [ %i.d, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ]
  %.0812.i = phi i32 [ %i.c, %.lr.ph.i ], [ %i.b, %.lr.ph.preheader.i ] ; 2 uses
  %i.c = udiv i32 %.0812.i, 10
  %i.d = add nuw nsw i32 %.013.i, 1               ; 2 uses
  %.not.i = icmp ult i32 %.0812.i, 10
  br i1 %.not.i, label %.lr.ph.preheader.i98, label %.lr.ph.i, !llvm.loop !0

Abc_Base10Log.exit:                               ; preds = %bb.a
  %i.e = icmp eq i32 %1, 0
  br i1 %i.e, label %Abc_Base10Log.exit104, label %.lr.ph.preheader.i98

.lr.ph.preheader.i98:                             ; preds = %.lr.ph.i, %Abc_Base10Log.exit
  %.09.i153 = phi i32 [ 1, %Abc_Base10Log.exit ], [ %i.d, %.lr.ph.i ]
  %i.f = shl i32 %1, 1                            ; 2 uses
  %i.g = add i32 %i.f, -1
  br label %.lr.ph.i99

.lr.ph.i99:                                       ; preds = %.lr.ph.i99, %.lr.ph.preheader.i98
  %.013.i100 = phi i32 [ %i.i, %.lr.ph.i99 ], [ 0, %.lr.ph.preheader.i98 ]
  %.0812.i101 = phi i32 [ %i.h, %.lr.ph.i99 ], [ %i.g, %.lr.ph.preheader.i98 ] ; 2 uses
  %i.h = udiv i32 %.0812.i101, 10
  %i.i = add nuw nsw i32 %.013.i100, 1            ; 2 uses
  %.not.i102 = icmp ult i32 %.0812.i101, 10
  br i1 %.not.i102, label %Abc_Base10Log.exit104, label %.lr.ph.i99, !llvm.loop !0

Abc_Base10Log.exit104:                            ; preds = %.lr.ph.i99, %Abc_Base10Log.exit
  %i.j = phi i32 [ 0, %Abc_Base10Log.exit ], [ %i.f, %.lr.ph.i99 ] ; 7 uses
  %.09.i154 = phi i32 [ 0, %Abc_Base10Log.exit ], [ %.09.i153, %.lr.ph.i99 ] ; 7 uses
  %.09.i103 = phi i32 [ 0, %Abc_Base10Log.exit ], [ %i.i, %.lr.ph.i99 ] ; 10 uses
  %i.k = add nsw i32 %1, 1
  %i.l = sdiv i32 %i.k, 2
  %i.m = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %1) #22 ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.28, i64 7, i64 1, ptr %0) ; 0 uses
  %i.n = icmp sgt i32 %1, 0                       ; 4 uses
  br i1 %i.n, label %.lr.ph, label %._crit_edge116.critedge

.lr.ph:                                           ; preds = %Abc_Base10Log.exit104, %.lr.ph
  %.085110 = phi i32 [ %i.p, %.lr.ph ], [ 0, %Abc_Base10Log.exit104 ] ; 2 uses
  %i.o = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.29, i32 noundef %.09.i154, i32 noundef %.085110) #22 ; 0 uses
  %i.p = add nuw nsw i32 %.085110, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.p, %1
  br i1 %exitcond.not, label %.lr.ph112, label %.lr.ph, !llvm.loop !146

.lr.ph112:                                        ; preds = %.lr.ph, %.lr.ph112
  %.1111 = phi i32 [ %i.r, %.lr.ph112 ], [ 0, %.lr.ph ] ; 2 uses
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.30, i32 noundef %.09.i154, i32 noundef %.1111) #22 ; 0 uses
  %i.r = add nuw nsw i32 %.1111, 1                ; 2 uses
  %exitcond137.not = icmp eq i32 %i.r, %1
  br i1 %exitcond137.not, label %._crit_edge, label %.lr.ph112, !llvm.loop !147

._crit_edge:                                      ; preds = %.lr.ph112
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  %fwrite89 = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %0) ; 0 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  br label %.lr.ph115

.lr.ph115:                                        ; preds = %._crit_edge, %.lr.ph115
  %.2113 = phi i32 [ %i.t, %.lr.ph115 ], [ 0, %._crit_edge ] ; 2 uses
  %i.s = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.41, i32 noundef %.09.i103, i32 noundef %.2113) #22 ; 0 uses
  %i.t = add nuw nsw i32 %.2113, 1                ; 2 uses
  %exitcond138.not = icmp eq i32 %i.t, %smax
  br i1 %exitcond138.not, label %._crit_edge116, label %.lr.ph115, !llvm.loop !148

._crit_edge116.critedge:                          ; preds = %Abc_Base10Log.exit104
  %fputc.c = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %fwrite89.c = tail call i64 @fwrite(ptr nonnull @.str.31, i64 8, i64 1, ptr %0) ; 0 uses
  br label %._crit_edge116

._crit_edge116:                                   ; preds = %.lr.ph115, %._crit_edge116.critedge
  %fputc91 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  tail call void @Abc_WriteBoothPartialProducts(ptr noundef %0, i32 noundef %1)
  br i1 %i.n, label %.lr.ph119.preheader, label %.preheader107

.lr.ph119.preheader:                              ; preds = %._crit_edge116
  %smax139 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  br label %.lr.ph119

.preheader107:                                    ; preds = %._crit_edge116
  %.not129 = icmp slt i32 %1, -2
  br i1 %.not129, label %._crit_edge134, label %.lr.ph131

.lr.ph131:                                        ; preds = %.lr.ph119, %.preheader107
  %.not95125 = icmp slt i32 %1, 0
  %smax141 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1) ; 2 uses
  %smax145 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  %smax147 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0) ; 3 uses
  %i.u = add nuw nsw i32 %smax147, 1
  br label %.backedge

.lr.ph119:                                        ; preds = %.lr.ph119.preheader, %.lr.ph119
  %.3117 = phi i32 [ %i.w, %.lr.ph119 ], [ 0, %.lr.ph119.preheader ] ; 2 uses
  %i.v = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.42, i32 noundef %.09.i154, i32 noundef 0, i32 noundef %.09.i103, i32 noundef %.3117) #22 ; 0 uses
  %i.w = add nuw nsw i32 %.3117, 1                ; 2 uses
  %exitcond140.not = icmp eq i32 %i.w, %smax139
  br i1 %exitcond140.not, label %.lr.ph131, label %.lr.ph119, !llvm.loop !149

.preheader:                                       ; preds = %._crit_edge128
  br i1 %i.n, label %.lr.ph133.preheader, label %._crit_edge134

.lr.ph133.preheader:                              ; preds = %.preheader
  %smax149 = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  br label %.lr.ph133

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph131
  %.0130 = phi i32 [ 0, %.lr.ph131 ], [ %.0130.be, %.backedge.backedge ] ; 6 uses
  %i.x = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, i32 noundef %i.j) #22 ; 0 uses
  br i1 %i.n, label %.lr.ph122, label %.preheader105

.lr.ph122:                                        ; preds = %.backedge, %.lr.ph122
  %.4120 = phi i32 [ %i.z, %.lr.ph122 ], [ 0, %.backedge ] ; 3 uses
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %.09.i103, i32 noundef %.4120, i32 noundef %.09.i154, i32 noundef %.0130, i32 noundef %.09.i103, i32 noundef %.4120) #22 ; 0 uses
  %i.z = add nuw nsw i32 %.4120, 1                ; 2 uses
  %exitcond142.not = icmp eq i32 %i.z, %smax141
  br i1 %exitcond142.not, label %.lr.ph124, label %.lr.ph122, !llvm.loop !150

.preheader105:                                    ; preds = %.backedge
  br i1 %.not95125, label %._crit_edge128.thread, label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph124, %.preheader105
  %i.aa = add nuw nsw i32 %.0130, 1               ; 2 uses
  br label %bb.b

.lr.ph124:                                        ; preds = %.lr.ph122, %.lr.ph124
  %.5123 = phi i32 [ %i.ac, %.lr.ph124 ], [ 0, %.lr.ph122 ] ; 3 uses
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %.09.i103, i32 noundef %.5123, i32 noundef %.09.i154, i32 noundef %.0130, i32 noundef %.09.i103, i32 noundef %.5123) #22 ; 0 uses
  %i.ac = add nuw nsw i32 %.5123, 1               ; 2 uses
  %exitcond144.not = icmp eq i32 %i.ac, %smax141
  br i1 %exitcond144.not, label %.lr.ph127, label %.lr.ph124, !llvm.loop !151

bb.b:                                             ; preds = %.lr.ph127, %bb.b
  %.6126 = phi i32 [ 0, %.lr.ph127 ], [ %i.ae, %bb.b ] ; 4 uses
  %i.ad = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %.09.i103, i32 noundef %.6126, i32 noundef %.09.i154, i32 noundef %i.aa, i32 noundef %.09.i103, i32 noundef %.6126) #22 ; 0 uses
  %i.ae = add nuw nsw i32 %.6126, 1
  %exitcond146.not = icmp eq i32 %.6126, %smax145
  br i1 %exitcond146.not, label %._crit_edge128, label %bb.b, !llvm.loop !152

._crit_edge128:                                   ; preds = %bb.b
  %fputc97 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %exitcond148.not = icmp eq i32 %.0130, %smax147
  br i1 %exitcond148.not, label %.preheader, label %.backedge.backedge

.backedge.backedge:                               ; preds = %._crit_edge128, %._crit_edge128.thread
  %.0130.be = phi i32 [ %i.aa, %._crit_edge128 ], [ %.pre, %._crit_edge128.thread ]
  br label %.backedge, !llvm.loop !153

._crit_edge128.thread:                            ; preds = %.preheader105
  %.pre = add nuw nsw i32 %.0130, 1
  %fputc97158 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  %exitcond148.not159 = icmp eq i32 %.0130, %smax147
  br i1 %exitcond148.not159, label %._crit_edge134, label %.backedge.backedge

.lr.ph133:                                        ; preds = %.lr.ph133.preheader, %.lr.ph133
  %.7132 = phi i32 [ %i.ag, %.lr.ph133 ], [ 0, %.lr.ph133.preheader ] ; 3 uses
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %.09.i154, i32 noundef %i.u, i32 noundef %.09.i103, i32 noundef %.7132, i32 noundef %.09.i103, i32 noundef %.7132) #22 ; 0 uses
  %i.ag = add nuw nsw i32 %.7132, 1               ; 2 uses
  %exitcond150.not = icmp eq i32 %i.ag, %smax149
  br i1 %exitcond150.not, label %._crit_edge134, label %.lr.ph133, !llvm.loop !154

._crit_edge134:                                   ; preds = %._crit_edge128.thread, %.lr.ph133, %.preheader107, %.preheader
  %fwrite92 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 5, i64 1, ptr %0) ; 0 uses
  %fputc94 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  tail call void @Abc_WriteAdder(ptr noundef %0, i32 noundef %i.j)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenBooth(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.38) ; 3 uses
  %i.b = tail call ptr (...) @Extra_TimeStamp() #22
  %i.c = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.186, i32 noundef %1, ptr noundef %i.b) #22 ; 0 uses
  tail call void @Abc_WriteBooth(ptr noundef %i.a, i32 noundef %1)
  %i.d = tail call i32 @fclose(ptr noundef %i.a)  ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_GenGraph(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [10 x [10 x i8]], align 16        ; 12 uses
  %i.b = alloca [100 x [2 x i8]], align 16        ; 10 uses
  %i.c = add nsw i32 %1, -1
  %i.d = mul nsw i32 %i.c, %1                     ; 2 uses
  %2 = sdiv i32 %i.d, 2
  %i.e = icmp slt i32 %i.d, 12
  %i.f = add nsw i32 %2, -5
  %i.g = shl nuw i32 1, %i.f
  %i.h = select i1 %i.e, i32 1, i32 %i.g
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @calloc(i64 noundef %i.i, i64 noundef 4) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(100) %i.a, i8 0, i64 100, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %i.b, i8 0, i64 200, i1 false)
  %i.k = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.k, label %.lr.ph143.preheader, label %.preheader133.lr.ph

.lr.ph143.preheader:                              ; preds = %bb.a
  %i.l = add nsw i32 %1, -2
  br label %.lr.ph143

.loopexit135.loopexit:                            ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.al, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %indvars.iv.next, %vec.epilog.scalar.ph ]
  %i.m = trunc nuw i64 %indvars.iv.next.lcssa to i8
  br label %.loopexit135

.loopexit135:                                     ; preds = %.loopexit135.loopexit, %.lr.ph143
  %.188.lcssa = phi i8 [ %.087142, %.lr.ph143 ], [ %i.m, %.loopexit135.loopexit ] ; 4 uses
  %exitcond187.not = icmp eq i32 %i.x, %1
  br i1 %exitcond187.not, label %.preheader134, label %.lr.ph143, !llvm.loop !155

.preheader134:                                    ; preds = %.loopexit135
  %i.n = zext i8 %.188.lcssa to i32               ; 2 uses
  %i.o = shl nuw i32 1, %i.n                      ; 2 uses
  %.not178 = icmp eq i8 %.188.lcssa, 31
  br i1 %.not178, label %._crit_edge, label %.preheader133.lr.ph

.preheader133.lr.ph:                              ; preds = %bb.a, %.preheader134
  %i.p = phi i32 [ %i.o, %.preheader134 ], [ 1, %bb.a ] ; 2 uses
  %i.q = phi i32 [ %i.n, %.preheader134 ], [ 0, %bb.a ]
  %.087.lcssa219 = phi i8 [ %.188.lcssa, %.preheader134 ], [ 0, %bb.a ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.p, i32 1)
  %wide.trip.count = zext i8 %.087.lcssa219 to i64 ; 2 uses
  %wide.trip.count205 = zext i32 %1 to i64        ; 4 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.s = icmp eq i8 %.087.lcssa219, 1             ; 0 uses
  %unroll_iter = and i64 %wide.trip.count, 254
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod255 = trunc i8 %.087.lcssa219 to i1
  %xtraiter256 = and i64 %wide.trip.count205, 1
  %i.t = icmp eq i32 %1, 1
  %unroll_iter260 = and i64 %wide.trip.count205, 2147483646
  %lcmp.mod257.not = icmp eq i64 %xtraiter256, 0
  %lcmp.mod259 = trunc i32 %1 to i1
  br label %.preheader133

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %.loopexit135
  %.087142 = phi i8 [ %.188.lcssa, %.loopexit135 ], [ 0, %.lr.ph143.preheader ] ; 2 uses
  %.095141 = phi i32 [ %i.x, %.loopexit135 ], [ 0, %.lr.ph143.preheader ] ; 3 uses
  %i.u = sub i32 %i.l, %.095141                   ; 3 uses
  %i.v = zext i32 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 5 uses
  %i.x = add nuw nsw i32 %.095141, 1              ; 8 uses
  %i.y = icmp slt i32 %i.x, %1
  br i1 %i.y, label %iter.check, label %.loopexit135

iter.check:                                       ; preds = %.lr.ph143
  %i.z = trunc i32 %.095141 to i8                 ; 3 uses
  %i.aa = zext i8 %.087142 to i64                 ; 5 uses
  %min.iters.check = icmp ult i32 %i.u, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check234 = icmp ult i32 %i.u, 15
  br i1 %min.iters.check234, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %i.w, 12
  %n.vec = and i64 %i.w, 8589934576               ; 5 uses
  %i.ac = add nuw nsw i64 %n.vec, %i.aa           ; 2 uses
  %i.ad = trunc i64 %n.vec to i32
  %i.ae = add i32 %i.x, %i.ad                     ; 2 uses
  %broadcast.splatinsert = insertelement <8 x i8> poison, i8 %i.z, i64 0 ; 2 uses
  %i.af = trunc i32 %i.x to i8
  %broadcast.splatinsert235 = insertelement <8 x i8> poison, i8 %i.af, i64 0
  %broadcast.splat236 = shufflevector <8 x i8> %broadcast.splatinsert235, <8 x i8> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i8> %broadcast.splat236, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i8> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <8 x i8> %vec.ind, splat (i8 8)
  %i.ag = add nuw i64 %index, %i.aa               ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.ag
  %i.ai = getelementptr [2 x i8], ptr %i.b, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %interleaved.vec = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %vec.ind, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.ah, align 2, !tbaa !23
  %interleaved.vec237 = shufflevector <8 x i8> %broadcast.splatinsert, <8 x i8> %step.add, <16 x i32> <i32 0, i32 8, i32 0, i32 9, i32 0, i32 10, i32 0, i32 11, i32 0, i32 12, i32 0, i32 13, i32 0, i32 14, i32 0, i32 15>
  store <16 x i8> %interleaved.vec237, ptr %i.aj, align 2, !tbaa !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <8 x i8> %vec.ind, splat (i8 16)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %.loopexit135.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !167

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.ae, %vec.epilog.iter.check ], [ %i.x, %vector.main.loop.iter.check ]
  %n.vec238 = and i64 %i.w, 8589934588            ; 4 uses
  %i.al = add nuw nsw i64 %n.vec238, %i.aa        ; 2 uses
  %i.am = trunc i64 %n.vec238 to i32
  %i.an = add i32 %i.x, %i.am
  %broadcast.splatinsert239 = insertelement <4 x i8> poison, i8 %i.z, i64 0
  %i.ao = trunc i32 %bc.resume.val to i8
  %broadcast.splatinsert241 = insertelement <4 x i8> poison, i8 %i.ao, i64 0
  %broadcast.splat242 = shufflevector <4 x i8> %broadcast.splatinsert241, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction243 = add <4 x i8> %broadcast.splat242, <i8 0, i8 1, i8 2, i8 3>
  %invariant.gep = getelementptr [2 x i8], ptr %i.b, i64 %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index244 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next247, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind245 = phi <4 x i8> [ %induction243, %vec.epilog.ph ], [ %vec.ind.next248, %vec.epilog.vector.body ] ; 2 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index244
  %interleaved.vec246 = shufflevector <4 x i8> %broadcast.splatinsert239, <4 x i8> %vec.ind245, <8 x i32> <i32 0, i32 4, i32 0, i32 5, i32 0, i32 6, i32 0, i32 7>
  store <8 x i8> %interleaved.vec246, ptr %gep, align 2, !tbaa !23
  %index.next247 = add nuw i64 %index244, 4       ; 2 uses
  %vec.ind.next248 = add <4 x i8> %vec.ind245, splat (i8 4)
  %i.ap = icmp eq i64 %index.next247, %n.vec238
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !157

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n249 = icmp eq i64 %i.w, %n.vec238
  br i1 %cmp.n249, label %.loopexit135.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ]
  %.091139.ph = phi i32 [ %i.x, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.091139 = phi i32 [ %i.at, %vec.epilog.scalar.ph ], [ %.091139.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  store i8 %i.z, ptr %i.aq, align 2, !tbaa !23
  %i.ar = trunc i32 %.091139 to i8
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 1
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = add nuw nsw i32 %.091139, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.at, %1
  br i1 %exitcond.not, label %.loopexit135.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !158

.preheader133:                                    ; preds = %.preheader133.lr.ph, %bb.h
  %i.au = phi i8 [ 0, %.preheader133.lr.ph ], [ %i.dp, %bb.h ]
  %i.av = phi i8 [ 0, %.preheader133.lr.ph ], [ %i.do, %bb.h ]
  %.097161 = phi i32 [ 0, %.preheader133.lr.ph ], [ %i.dq, %bb.h ] ; 6 uses
  switch i8 %.087.lcssa219, label %.lr.ph146 [
    i8 0, label %.preheader132
    i8 1, label %.lr.ph146.epil.preheader
  ]

.preheader132.loopexit.unr-lcssa:                 ; preds = %.lr.ph146
  br i1 %lcmp.mod.not, label %.preheader132.loopexit, label %.lr.ph146.epil.preheader

.lr.ph146.epil.preheader:                         ; preds = %.preheader133, %.preheader132.loopexit.unr-lcssa
  %indvars.iv188.epil.init = phi i64 [ 0, %.preheader133 ], [ %indvars.iv.next189.1, %.preheader132.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod255)
  %i.aw = trunc nuw nsw i64 %indvars.iv188.epil.init to i32
  %i.ax = lshr i32 %.097161, %i.aw
  %i.ay = trunc i32 %i.ax to i8
  %i.az = and i8 %i.ay, 1                         ; 2 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %indvars.iv188.epil.init ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %i.bd = zext i8 %i.bc to i64                    ; 2 uses
  %i.be = getelementptr inbounds nuw [10 x i8], ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.ba, align 2, !tbaa !23
  %i.bg = zext i8 %i.bf to i64                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.bg
  store i8 %i.az, ptr %i.bh, align 1, !tbaa !23
  %i.bi = getelementptr inbounds nuw [10 x i8], ptr %i.a, i64 %i.bg
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bd
  store i8 %i.az, ptr %i.bj, align 1, !tbaa !23
  br label %.preheader132.loopexit

.preheader132.loopexit:                           ; preds = %.preheader132.loopexit.unr-lcssa, %.lr.ph146.epil.preheader
  %.pre = load i8, ptr %i.r, align 1              ; 2 uses
  br label %.preheader132

.preheader132:                                    ; preds = %.preheader133, %.preheader132.loopexit
  %i.bk = phi i8 [ %.pre, %.preheader132.loopexit ], [ %i.au, %.preheader133 ] ; 4 uses
  %i.bl = phi i8 [ %.pre, %.preheader132.loopexit ], [ %i.av, %.preheader133 ] ; 2 uses
  %.not115158 = icmp eq i8 %i.bl, 0
end_hunk_0
