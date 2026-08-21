Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/SearchGame?download=true
inline.NumInlined: 32
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emptyTT:bb.a
bb.b:                                             ; preds = %bb.c, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.c ] ; 6 uses
  %i.a = load ptr, ptr @ht, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  store i64 0, ptr %i.b, align 4, !tbaa !8
  %exitcond.not = icmp eq i64 %indvars.iv, 8306068
  br i1 %exitcond.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr @ht, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.e, align 4, !tbaa !8
  %i.f = load ptr, ptr @ht, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 0, ptr %i.h, align 4, !tbaa !8
  %i.i = load ptr, ptr @ht, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store i64 0, ptr %i.k, align 4, !tbaa !8
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  br label %bb.b

bb.d:                                             ; preds = %bb.b
  store i64 0, ptr @posed, align 8, !tbaa !9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @hash() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @nplies, align 4, !tbaa !4 ; 2 uses
  %i.b = and i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = load i64, ptr @color, align 16, !tbaa !9
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @color, i64 8), align 8, !tbaa !9
  %i.h = add i64 %i.e, 4432676798593
  %i.i = add i64 %i.h, %i.f
  %i.j = add i64 %i.i, %i.g                       ; 4 uses
  %i.k = icmp slt i32 %i.a, 10
  br i1 %i.k, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %bb.a
  %.not13 = icmp eq i64 %i.j, 0
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.015 = phi i64 [ %i.n, %.lr.ph ], [ 0, %.preheader ]
  %.01114 = phi i64 [ %i.o, %.lr.ph ], [ %i.j, %.preheader ] ; 2 uses
  %i.l = shl i64 %.015, 7
  %i.m = and i64 %.01114, 127
  %i.n = or disjoint i64 %i.l, %i.m               ; 2 uses
  %i.o = lshr i64 %.01114, 7                      ; 2 uses
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !15

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.j)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.preheader, %._crit_edge.loopexit, %bb.a
  %.1 = phi i64 [ %i.j, %bb.a ], [ 0, %.preheader ], [ %i.p, %._crit_edge.loopexit ] ; 2 uses
  %i.q = lshr i64 %.1, 23
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr @lock, align 4, !tbaa !4
  %i.s = urem i64 %.1, 8306069
  %i.t = trunc nuw nsw i64 %i.s to i32
  store i32 %i.t, ptr @htindex, align 4, !tbaa !4
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 8) i32 @transpose() local_unnamed_addr #11 {
bb.a:
  %i.a = load i32, ptr @nplies, align 4, !tbaa !4 ; 2 uses
  %i.b = and i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.c
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = load i64, ptr @color, align 16, !tbaa !9
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @color, i64 8), align 8, !tbaa !9
  %i.h = add i64 %i.e, 4432676798593
  %i.i = add i64 %i.h, %i.f
  %i.j = add i64 %i.i, %i.g                       ; 4 uses
  %i.k = icmp slt i32 %i.a, 10
  br i1 %i.k, label %.preheader.i, label %hash.exit

.preheader.i:                                     ; preds = %bb.a
  %.not13.i = icmp eq i64 %i.j, 0
  br i1 %.not13.i, label %hash.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.015.i = phi i64 [ %i.n, %.lr.ph.i ], [ 0, %.preheader.i ]
  %.01114.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.j, %.preheader.i ] ; 2 uses
  %i.l = shl i64 %.015.i, 7
  %i.m = and i64 %.01114.i, 127
  %i.n = or disjoint i64 %i.m, %i.l               ; 2 uses
  %i.o = lshr i64 %.01114.i, 7                    ; 2 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !15

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.j)
  br label %hash.exit

hash.exit:                                        ; preds = %bb.a, %.preheader.i, %._crit_edge.loopexit.i
  %.1.i = phi i64 [ %i.j, %bb.a ], [ 0, %.preheader.i ], [ %i.p, %._crit_edge.loopexit.i ] ; 2 uses
  %i.q = lshr i64 %.1.i, 23
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  store i32 %i.r, ptr @lock, align 4, !tbaa !4
  %i.s = urem i64 %.1.i, 8306069                  ; 2 uses
  %i.t = trunc nuw nsw i64 %i.s to i32
  store i32 %i.t, ptr @htindex, align 4, !tbaa !4
  %i.u = load ptr, ptr @ht, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  %.sroa.0.0.copyload = load i64, ptr %i.v, align 4, !tbaa !8 ; 4 uses
  %i.w = trunc i64 %.sroa.0.0.copyload to i32
  %i.x = and i32 %i.w, 67108863
  %i.y = icmp eq i32 %i.x, %i.r
  br i1 %i.y, label %bb.b, label %bb.c

bb.b:                                             ; preds = %hash.exit
  %i.z = lshr i64 %.sroa.0.0.copyload, 61
  %i.aa = trunc nuw nsw i64 %i.z to i32
  br label %bb.e

bb.c:                                             ; preds = %hash.exit
  %i.ab = lshr i64 %.sroa.0.0.copyload, 32
  %i.ac = trunc nuw i64 %i.ab to i32
  %i.ad = and i32 %i.ac, 67108863
  %i.ae = icmp eq i32 %i.ad, %i.r
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.af = lshr i64 %.sroa.0.0.copyload, 58
  %i.ag = trunc nuw nsw i64 %i.af to i32
  %i.ah = and i32 %i.ag, 7
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ %i.aa, %bb.b ], [ %i.ah, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @transtore(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #12 {
bb.a:
  %i.a = load i64, ptr @posed, align 8, !tbaa !9
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr @posed, align 8, !tbaa !9
  %i.c = load ptr, ptr @ht, align 8, !tbaa !13
  %i.d = sext i32 %0 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.e, align 4, !tbaa !8 ; 3 uses
  %i.f = trunc i64 %.sroa.0.0.copyload to i32     ; 2 uses
  %i.g = and i32 %i.f, 67108863
  %i.h = icmp ne i32 %i.g, %1
  %i.i = lshr i32 %i.f, 26
  %.not = icmp slt i32 %3, %i.i
  %or.cond = and i1 %i.h, %.not
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = and i64 %.sroa.0.0.copyload, 2305843004918726656
  %i.k = and i32 %2, 7
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw i64 %i.l, 61
  %i.n = shl i32 %3, 26
  %i.o = zext i32 %i.n to i64
  %i.p = and i32 %1, 67108863
  %.masked16 = zext nneg i32 %i.p to i64
  %.masked = or disjoint i64 %i.j, %.masked16
  %i.q = or disjoint i64 %.masked, %i.m
  %i.r = or disjoint i64 %i.q, %i.o
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = and i32 %1, 67108863
  %i.t = zext nneg i32 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 32
  %i.v = and i64 %.sroa.0.0.copyload, -2305843004918726657
  %i.w = or disjoint i64 %i.v, %i.u
  %i.x = and i32 %2, 7
  %i.y = zext nneg i32 %i.x to i64
  %i.z = shl nuw nsw i64 %i.y, 58
  %i.aa = or disjoint i64 %i.w, %i.z
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0 = phi i64 [ %i.r, %bb.b ], [ %i.aa, %bb.c ]
  store i64 %.sroa.0.0, ptr %i.e, align 4, !tbaa !8
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @htstat() local_unnamed_addr #3 {
.preheader21:
  %i.a = alloca [8 x i32], align 16               ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false), !tbaa !4
  %i.b = load ptr, ptr @ht, align 8, !tbaa !13
  br label %bb.a

bb.a:                                             ; preds = %.preheader21, %bb.e
  %indvars.iv = phi i64 [ 0, %.preheader21 ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv
  %.sroa.0.0.copyload = load i64, ptr %i.c, align 4, !tbaa !8 ; 4 uses
  %i.d = and i64 %.sroa.0.0.copyload, 67108863
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %.sroa.0.0.copyload, 61
  %0 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %i.f = load i32, ptr %0, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %0, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = and i64 %.sroa.0.0.copyload, 288230371856744448
  %.not20 = icmp eq i64 %i.h, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = lshr i64 %.sroa.0.0.copyload, 58
  %i.j = and i64 %i.i, 7
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.k = load i32, ptr %1, align 4, !tbaa !4
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %1, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8306069
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.a, !llvm.loop !16

.preheader.preheader:                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = load <2 x i32>, ptr %i.m, align 4, !tbaa !4 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4    ; 2 uses
  %i.s = shufflevector <2 x i32> %i.p, <2 x i32> %i.n, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.s)
  %op.rdx = add i32 %i.t, %i.r                    ; 2 uses
  %i.u = icmp sgt i32 %op.rdx, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.preheader
  %i.v = sitofp <2 x i32> %i.n to <2 x double>
  %i.w = uitofp nneg i32 %op.rdx to double        ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.w, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.z = fdiv <2 x double> %i.v, %i.y             ; 2 uses
  %i.aa = sitofp <2 x i32> %i.p to <2 x double>
  %i.ab = fdiv <2 x double> %i.aa, %i.y           ; 2 uses
  %i.ac = sitofp i32 %i.r to double
  %i.ad = fdiv double %i.ac, %i.w
  %i.ae = extractelement <2 x double> %i.z, i64 0
  %i.af = extractelement <2 x double> %i.z, i64 1
  %i.ag = extractelement <2 x double> %i.ab, i64 0
  %i.ah = extractelement <2 x double> %i.ab, i64 1
  %i.ai = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ae, double noundef %i.af, double noundef %i.ag, double noundef %i.ah, double noundef %i.ad) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @millisecs() local_unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr @millisecs.Time, align 8, !tbaa !9 ; 2 uses
  %i.b = add nsw i64 %i.a, 1
  store i64 %i.b, ptr @millisecs.Time, align 8, !tbaa !9
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @min(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @llvm.smin.i32(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @max(i32 noundef %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @llvm.smax.i32(i32 %0, i32 %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @inithistory() local_unnamed_addr #0 {
.preheader26:
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 20), align 4, !tbaa !4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 188), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 16), align 16, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 184), align 8, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 168), align 8, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr @history, align 16, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 48), align 16, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 160), align 16, !tbaa !4
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @history, i64 44), align 4, !tbaa !4
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @history, i64 156), align 4, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 140), align 4, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 28), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 76), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 132), align 4, !tbaa !4
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @history, i64 72), align 8, !tbaa !4
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @history, i64 128), align 16, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 112), align 16, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 56), align 8, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @history, i64 104), align 8, !tbaa !4
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @history, i64 100), align 4, !tbaa !4
  store <4 x i32> <i32 7, i32 10, i32 13, i32 13>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 84), align 4, !tbaa !4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 216), align 8, !tbaa !4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 384), align 16, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 212), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 380), align 4, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 364), align 4, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 196), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 244), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 356), align 4, !tbaa !4
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @history, i64 240), align 16, !tbaa !4
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @history, i64 352), align 16, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 336), align 16, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 224), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 272), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 328), align 8, !tbaa !4
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @history, i64 268), align 4, !tbaa !4
  store i32 8, ptr getelementptr inbounds nuw (i8, ptr @history, i64 324), align 4, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 308), align 4, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 252), align 4, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @history, i64 300), align 4, !tbaa !4
  store i32 10, ptr getelementptr inbounds nuw (i8, ptr @history, i64 296), align 8, !tbaa !4
  store <4 x i32> <i32 7, i32 10, i32 13, i32 13>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 280), align 8, !tbaa !4
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 8) i32 @ab(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [7 x i32], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.b = load i64, ptr @nodes, align 8, !tbaa !9
  %i.c = add i64 %i.b, 1
  store i64 %i.c, ptr @nodes, align 8, !tbaa !9
  %i.d = load i32, ptr @nplies, align 4, !tbaa !4 ; 9 uses
  %i.e = icmp eq i32 %i.d, 41
  br i1 %i.e, label %islegalhaswon.exit132.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = and i32 %i.d, 1                          ; 3 uses
  %i.g = xor i32 %i.f, 1
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8, !tbaa !9    ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.q
  %indvars.iv = phi i64 [ 0, %bb.b ], [ %indvars.iv.next, %bb.q ] ; 6 uses
  %.089161 = phi i32 [ 0, %bb.b ], [ %.1, %bb.q ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr @height, i64 %indvars.iv
  %i.l = load i8, ptr %i.k, align 1, !tbaa !8     ; 2 uses
  %i.m = sext i8 %i.l to i64
  %i.n = and i64 %i.m, 4294967295                 ; 2 uses
  %i.o = shl nuw i64 1, %i.n                      ; 2 uses
  %i.p = or i64 %i.o, %i.j                        ; 9 uses
  %i.q = and i64 %i.p, 283691315109952
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.r = shl i64 2, %i.n
  %i.s = or i64 %i.r, %i.j                        ; 9 uses
  %i.t = and i64 %i.s, 283691315109952
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %islegalhaswon.exit

bb.e:                                             ; preds = %bb.d
  %i.u = lshr i64 %i.s, 6
  %i.v = and i64 %i.u, %i.s                       ; 2 uses
  %i.w = lshr i64 %i.v, 12
  %i.x = and i64 %i.w, %i.v
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %bb.f, label %islegalhaswon.exit

bb.f:                                             ; preds = %bb.e
  %i.y = lshr i64 %i.s, 7
  %i.z = and i64 %i.y, %i.s                       ; 2 uses
  %i.aa = lshr i64 %i.z, 14
  %i.ab = and i64 %i.aa, %i.z
  %.not17.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not17.i.i, label %bb.g, label %islegalhaswon.exit

bb.g:                                             ; preds = %bb.f
  %i.ac = lshr i64 %i.s, 8
  %i.ad = and i64 %i.ac, %i.s                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 16
  %i.af = and i64 %i.ae, %i.ad
  %.not18.i.i = icmp eq i64 %i.af, 0
  br i1 %.not18.i.i, label %bb.h, label %islegalhaswon.exit

bb.h:                                             ; preds = %bb.g
  %i.ag = lshr i64 %i.s, 1
  %i.ah = and i64 %i.ag, %i.s                     ; 2 uses
  %i.ai = lshr i64 %i.ah, 2
  %i.aj = and i64 %i.ai, %i.ah
  %.not150 = icmp eq i64 %i.aj, 0
  br label %islegalhaswon.exit

islegalhaswon.exit:                               ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %.not118 = phi i1 [ true, %bb.d ], [ %.not150, %bb.h ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ] ; 2 uses
  %i.ak = lshr i64 %i.p, 6
  %i.al = and i64 %i.ak, %i.p                     ; 2 uses
  %i.am = lshr i64 %i.al, 12
  %i.an = and i64 %i.am, %i.al
  %.not.i127 = icmp eq i64 %i.an, 0
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  br i1 %.not.i127, label %bb.i, label %haswon.exit.thread

bb.i:                                             ; preds = %islegalhaswon.exit
  %i.ap = lshr i64 %i.p, 7
  %i.aq = and i64 %i.ap, %i.p                     ; 2 uses
  %i.ar = lshr i64 %i.aq, 14
  %i.as = and i64 %i.ar, %i.aq
  %.not17.i = icmp eq i64 %i.as, 0
  br i1 %.not17.i, label %bb.j, label %haswon.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.at = lshr i64 %i.p, 8
  %i.au = and i64 %i.at, %i.p                     ; 2 uses
  %i.av = lshr i64 %i.au, 16
  %i.aw = and i64 %i.av, %i.au
  %.not18.i = icmp eq i64 %i.aw, 0
  br i1 %.not18.i, label %haswon.exit, label %haswon.exit.thread

haswon.exit:                                      ; preds = %bb.j
  %i.ax = lshr i64 %i.p, 1
  %i.ay = and i64 %i.ax, %i.p                     ; 2 uses
  %i.az = lshr i64 %i.ay, 2
  %i.ba = and i64 %i.az, %i.ay
  %.not149 = icmp eq i64 %i.ba, 0
  br i1 %.not149, label %bb.o, label %haswon.exit.thread

haswon.exit.thread:                               ; preds = %bb.j, %bb.i, %islegalhaswon.exit, %haswon.exit
  br i1 %.not118, label %bb.k, label %islegalhaswon.exit132.thread

bb.k:                                             ; preds = %haswon.exit.thread
  %i.bb = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.bb, label %.lr.ph178, label %.thread142

.lr.ph178:                                        ; preds = %bb.k, %.critedge.backedge
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %.critedge.backedge ], [ %indvars.iv, %bb.k ]
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr @height, i64 %indvars.iv.next190
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !8
  %i.be = sext i8 %i.bd to i64
  %i.bf = and i64 %i.be, 4294967295
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = or i64 %i.bg, %i.j                      ; 9 uses
  %i.bi = and i64 %i.bh, 283691315109952
  %.not.i128 = icmp eq i64 %i.bi, 0
  br i1 %.not.i128, label %bb.l, label %.critedge.backedge

end_hunk_0
