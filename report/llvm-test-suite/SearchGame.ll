Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/SearchGame?download=true
inline.NumInlined: 33
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@transpose:bb.a

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
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !4
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = and i64 %.sroa.0.0.copyload, 288230371856744448
  %.not20 = icmp eq i64 %i.i, 0
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = lshr i64 %.sroa.0.0.copyload, 58
  %i.k = and i64 %i.j, 7
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.l, align 4, !tbaa !4
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8306069
  br i1 %exitcond.not, label %.preheader.preheader, label %bb.a, !llvm.loop !16

.preheader.preheader:                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.p = load <2 x i32>, ptr %i.o, align 4, !tbaa !4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.r = load <2 x i32>, ptr %i.q, align 4, !tbaa !4 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4    ; 2 uses
  %i.u = shufflevector <2 x i32> %i.r, <2 x i32> %i.p, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.v = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.u)
  %op.rdx = add i32 %i.v, %i.t                    ; 2 uses
  %i.w = icmp sgt i32 %op.rdx, 0
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader.preheader
  %i.x = sitofp <2 x i32> %i.p to <2 x double>
  %i.y = uitofp nneg i32 %op.rdx to double        ; 2 uses
  %i.z = insertelement <2 x double> poison, double %i.y, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ab = fdiv <2 x double> %i.x, %i.aa           ; 2 uses
  %i.ac = sitofp <2 x i32> %i.r to <2 x double>
  %i.ad = fdiv <2 x double> %i.ac, %i.aa          ; 2 uses
  %i.ae = sitofp i32 %i.t to double
  %i.af = fdiv double %i.ae, %i.y
  %i.ag = extractelement <2 x double> %i.ab, i64 0
  %i.ah = extractelement <2 x double> %i.ab, i64 1
  %i.ai = extractelement <2 x double> %i.ad, i64 0
  %i.aj = extractelement <2 x double> %i.ad, i64 1
  %i.ak = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.ag, double noundef %i.ah, double noundef %i.ai, double noundef %i.aj, double noundef %i.af) ; 0 uses
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
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 12), align 4, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 168), align 8, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 48), align 16, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 160), align 16, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 140), align 4, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 28), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 76), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 132), align 4, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 112), align 16, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 56), align 8, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @history, i64 104), align 8, !tbaa !4
  store <4 x i32> <i32 10, i32 3, i32 4, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 -4), align 4, !tbaa !4
  store <4 x i32> <i32 7, i32 10, i32 13, i32 13>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 84), align 4, !tbaa !4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 216), align 8, !tbaa !4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 384), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 208), align 16, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 364), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 204), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 244), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 356), align 4, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 336), align 16, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 224), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 272), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 328), align 8, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 308), align 4, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 252), align 4, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @history, i64 300), align 4, !tbaa !4
  store <4 x i32> <i32 3, i32 10, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 188), align 4, !tbaa !4
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

bb.l:                                             ; preds = %.lr.ph178
  %i.bj = lshr i64 %i.bh, 6
  %i.bk = and i64 %i.bj, %i.bh                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 12
  %i.bm = and i64 %i.bl, %i.bk
  %.not.i.i129 = icmp eq i64 %i.bm, 0
  br i1 %.not.i.i129, label %bb.m, label %islegalhaswon.exit132.thread

bb.m:                                             ; preds = %bb.l
  %i.bn = lshr i64 %i.bh, 7
  %i.bo = and i64 %i.bn, %i.bh                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 14
  %i.bq = and i64 %i.bp, %i.bo
  %.not17.i.i130 = icmp eq i64 %i.bq, 0
  br i1 %.not17.i.i130, label %bb.n, label %islegalhaswon.exit132.thread

bb.n:                                             ; preds = %bb.m
  %i.br = lshr i64 %i.bh, 8
  %i.bs = and i64 %i.br, %i.bh                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 16
  %i.bu = and i64 %i.bt, %i.bs
  %.not18.i.i131 = icmp eq i64 %i.bu, 0
  br i1 %.not18.i.i131, label %islegalhaswon.exit132, label %islegalhaswon.exit132.thread

islegalhaswon.exit132:                            ; preds = %bb.n
  %i.bv = lshr i64 %i.bh, 1
  %i.bw = and i64 %i.bv, %i.bh                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = and i64 %i.bx, %i.bw
  %.not151 = icmp eq i64 %i.by, 0
  br i1 %.not151, label %.critedge.backedge, label %islegalhaswon.exit132.thread

.critedge.backedge:                               ; preds = %islegalhaswon.exit132, %.lr.ph178
  %exitcond192.not = icmp eq i64 %indvars.iv.next190, 6
  br i1 %exitcond192.not, label %.thread142, label %.lr.ph178, !llvm.loop !17

bb.o:                                             ; preds = %haswon.exit
  br i1 %.not118, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %.089161, 1
  %i.ca = sext i32 %.089161 to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ca
  store i32 %i.ao, ptr %i.cb, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.c
  %.1 = phi i32 [ %.089161, %bb.o ], [ %i.bz, %bb.p ], [ %.089161, %bb.c ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.r, label %bb.c, !llvm.loop !18

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp eq i32 %.1, 0
  br i1 %i.cc, label %islegalhaswon.exit132.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = icmp eq i32 %i.d, 40
  br i1 %i.cd, label %islegalhaswon.exit132.thread, label %bb.t

.thread142:                                       ; preds = %.critedge.backedge, %bb.k
  %i.ce = icmp eq i32 %i.d, 40
  br i1 %i.ce, label %islegalhaswon.exit132.thread, label %.thread145

bb.t:                                             ; preds = %bb.s
  %i.cf = icmp eq i32 %.1, 1
  br i1 %i.cf, label %..thread145_crit_edge, label %bb.u

..thread145_crit_edge:                            ; preds = %bb.t
  %.pre220 = load i32, ptr %i.a, align 16, !tbaa !4 ; 2 uses
  %.phi.trans.insert221 = sext i32 %.pre220 to i64 ; 2 uses
  %.phi.trans.insert222 = getelementptr inbounds i8, ptr @height, i64 %.phi.trans.insert221
  %.pre223 = load i8, ptr %.phi.trans.insert222, align 1, !tbaa !8 ; 2 uses
  %.pre224 = sext i8 %.pre223 to i64
  %.pre225 = and i64 %.pre224, 4294967295
  %.pre227 = shl nuw i64 1, %.pre225
  br label %.thread145

.thread145:                                       ; preds = %.thread142, %..thread145_crit_edge
  %.pre-phi230 = phi i64 [ %.phi.trans.insert221, %..thread145_crit_edge ], [ %indvars.iv, %.thread142 ]
  %.pre-phi228 = phi i64 [ %.pre227, %..thread145_crit_edge ], [ %i.o, %.thread142 ]
  %i.cg = phi i8 [ %.pre223, %..thread145_crit_edge ], [ %i.l, %.thread142 ]
  %i.ch = phi i32 [ %.pre220, %..thread145_crit_edge ], [ %i.ao, %.thread142 ]
  %i.ci = getelementptr inbounds i8, ptr @height, i64 %.pre-phi230
  %i.cj = add i8 %i.cg, 1
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !8
  %i.ck = zext nneg i32 %i.f to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.ck ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !9
  %i.cn = xor i64 %.pre-phi228, %i.cm
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !9
  %i.co = add nsw i32 %i.d, 1
  store i32 %i.co, ptr @nplies, align 4, !tbaa !4
  %i.cp = sext i32 %i.d to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.cp
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !4
  %i.cr = sub nsw i32 6, %1
  %i.cs = sub nsw i32 6, %0
  %i.ct = tail call i32 @ab(i32 noundef %i.cr, i32 noundef %i.cs)
  %i.cu = sub nsw i32 6, %i.ct
  %i.cv = load i32, ptr @nplies, align 4, !tbaa !4
  %i.cw = add nsw i32 %i.cv, -1                   ; 3 uses
  store i32 %i.cw, ptr @nplies, align 4, !tbaa !4
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr @height, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !8
  %i.de = sext i8 %i.dd to i64
  %i.df = and i64 %i.de, 4294967295
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i32 %i.cw, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !9
  %i.dl = xor i64 %i.dg, %i.dk
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !9
  br label %islegalhaswon.exit132.thread

bb.u:                                             ; preds = %bb.t
  %i.dm = zext nneg i32 %i.f to i64               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !9
  %i.dp = load i64, ptr @color, align 16, !tbaa !9
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @color, i64 8), align 8, !tbaa !9
  %i.dr = add i64 %i.do, 4432676798593
  %i.ds = add i64 %i.dr, %i.dp
  %i.dt = add i64 %i.ds, %i.dq                    ; 4 uses
  %i.du = icmp slt i32 %i.d, 10
  br i1 %i.du, label %.preheader.i.i, label %hash.exit.i

.preheader.i.i:                                   ; preds = %bb.u
  %.not13.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not13.i.i, label %hash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01114.i.i = phi i64 [ %i.dy, %.lr.ph.i.i ], [ %i.dt, %.preheader.i.i ] ; 2 uses
  %i.dv = shl i64 %.015.i.i, 7
  %i.dw = and i64 %.01114.i.i, 127
  %i.dx = or disjoint i64 %i.dw, %i.dv            ; 2 uses
  %i.dy = lshr i64 %.01114.i.i, 7                 ; 2 uses
  %.not.i.i134 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i134, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dt)
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i, %bb.u
  %.1.i.i = phi i64 [ %i.dt, %bb.u ], [ 0, %.preheader.i.i ], [ %i.dz, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ea = lshr i64 %.1.i.i, 23                    ; 3 uses
  %i.eb = trunc i64 %i.ea to i32                  ; 4 uses
  store i32 %i.eb, ptr @lock, align 4, !tbaa !4
  %i.ec = urem i64 %.1.i.i, 8306069               ; 3 uses
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  store i32 %i.ed, ptr @htindex, align 4, !tbaa !4
  %i.ee = load ptr, ptr @ht, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  %.sroa.0.0.copyload.i = load i64, ptr %i.ef, align 4, !tbaa !8 ; 4 uses
  %i.eg = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.eh = and i32 %i.eg, 67108863
  %i.ei = icmp eq i32 %i.eh, %i.eb
  br i1 %i.ei, label %bb.v, label %bb.w

bb.v:                                             ; preds = %hash.exit.i
  %i.ej = lshr i64 %.sroa.0.0.copyload.i, 61
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  br label %transpose.exit

bb.w:                                             ; preds = %hash.exit.i
  %i.el = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.em = trunc nuw i64 %i.el to i32
  %i.en = and i32 %i.em, 67108863
  %i.eo = icmp eq i32 %i.en, %i.eb
  br i1 %i.eo, label %bb.x, label %transpose.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ep = lshr i64 %.sroa.0.0.copyload.i, 58
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = and i32 %i.eq, 7
  br label %transpose.exit

transpose.exit:                                   ; preds = %bb.v, %bb.x
  %.0.i133 = phi i32 [ %i.ek, %bb.v ], [ %i.er, %bb.x ] ; 2 uses
  switch i32 %.0.i133, label %islegalhaswon.exit132.thread [
    i32 0, label %transpose.exit.thread
    i32 2, label %bb.y
    i32 4, label %bb.z
  ]

bb.y:                                             ; preds = %transpose.exit
  %i.es = icmp sgt i32 %0, 2
  br i1 %i.es, label %islegalhaswon.exit132.thread, label %transpose.exit.thread

bb.z:                                             ; preds = %transpose.exit
  %i.et = icmp slt i32 %1, 4
  br i1 %i.et, label %islegalhaswon.exit132.thread, label %transpose.exit.thread

transpose.exit.thread:                            ; preds = %bb.w, %transpose.exit, %bb.y, %bb.z
  %.0.i133148.neg = phi i32 [ 4, %bb.y ], [ 2, %bb.z ], [ 6, %transpose.exit ], [ 6, %bb.w ]
  %.0105 = phi i32 [ %0, %bb.y ], [ 3, %bb.z ], [ %0, %transpose.exit ], [ %0, %bb.w ]
  %.0104 = phi i32 [ 3, %bb.y ], [ %1, %bb.z ], [ %1, %transpose.exit ], [ %1, %bb.w ] ; 2 uses
  %i.eu = load i64, ptr @posed, align 8, !tbaa !9
  %i.ev = icmp sgt i32 %.1, 0
  br i1 %i.ev, label %.lr.ph173, label %.loopexit

.lr.ph173:                                        ; preds = %transpose.exit.thread
  %i.ew = getelementptr inbounds nuw [196 x i8], ptr @history, i64 %i.dm ; 8 uses
  %i.ex = sub nsw i32 6, %.0104
  %scevgep200 = getelementptr i8, ptr %i.a, i64 -4
  %i.ey = zext nneg i32 %.1 to i64
  %wide.trip.count209 = zext nneg i32 %.1 to i64  ; 4 uses
  %i.ez = add nsw i64 %wide.trip.count209, -2
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph173, %bb.af
  %indvar = phi i64 [ 0, %.lr.ph173 ], [ %indvar.next, %bb.af ] ; 3 uses
  %i.fa = phi i32 [ %i.d, %.lr.ph173 ], [ %i.ht, %bb.af ] ; 3 uses
  %indvars.iv214 = phi i32 [ 0, %.lr.ph173 ], [ %indvars.iv.next215, %bb.af ] ; 4 uses
  %indvars.iv205 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next206, %bb.af ] ; 5 uses
  %indvars.iv193 = phi i64 [ 1, %.lr.ph173 ], [ %indvars.iv.next194, %bb.af ] ; 5 uses
  %.091172 = phi i32 [ 1, %.lr.ph173 ], [ %.293, %bb.af ] ; 2 uses
  %.1106170 = phi i32 [ %.0105, %.lr.ph173 ], [ %.2107, %bb.af ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv205 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next206, %i.ey
  %i.fe = trunc nuw nsw i64 %indvars.iv205 to i32 ; 4 uses
  br i1 %i.fd, label %.lr.ph.preheader, label %._crit_edge168

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.ff = sext i32 %i.fc to i64
  %i.fg = getelementptr inbounds i8, ptr @height, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8
  %i.fi = sext i8 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4  ; 3 uses
  %i.fl = sub i64 %indvar, %wide.trip.count209
  %i.fm = and i64 %i.fl, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fm, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv193
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr @height, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !8
  %i.fs = sext i8 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, %i.fk
  %i.fw = trunc nuw nsw i64 %indvars.iv193 to i32
  %spec.select.prol = select i1 %i.fv, i32 %i.fw, i32 %i.fe ; 2 uses
  %spec.select125.prol = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 %i.fk)
  %indvars.iv.next196.prol = add nuw nsw i64 %indvars.iv193, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %indvars.iv195.unr = phi i64 [ %indvars.iv193, %.lr.ph.preheader ], [ %indvars.iv.next196.prol, %.lr.ph.prol ]
  %.094164.unr = phi i32 [ %i.fk, %.lr.ph.preheader ], [ %spec.select125.prol, %.lr.ph.prol ]
  %.096163.unr = phi i32 [ %i.fe, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.fx = icmp eq i64 %i.ez, %indvar
  br i1 %i.fx, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph ], [ %indvars.iv195.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.094164 = phi i32 [ %spec.select125.1, %.lr.ph ], [ %.094164.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %.096163 = phi i32 [ %spec.select.1, %.lr.ph ], [ %.096163.unr, %.lr.ph.prol.loopexit ]
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv195
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr @height, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !8
  %i.gd = sext i8 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, %.094164
  %i.gh = trunc nuw nsw i64 %indvars.iv195 to i32
  %spec.select = select i1 %i.gg, i32 %i.gh, i32 %.096163
  %spec.select125 = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %.094164) ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next196
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !4
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr @height, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = sext i8 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4  ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, %spec.select125
  %i.gr = trunc nuw nsw i64 %indvars.iv.next196 to i32
  %spec.select.1 = select i1 %i.gq, i32 %i.gr, i32 %spec.select ; 2 uses
  %spec.select125.1 = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 %spec.select125)
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond199.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count209
  br i1 %exitcond199.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %spec.select.lcssa = phi i32 [ %spec.select.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select.1, %.lr.ph ] ; 2 uses
  %.phi.trans.insert = sext i32 %spec.select.lcssa to i64 ; 3 uses
  %.phi.trans.insert219 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert219, align 4, !tbaa !4 ; 2 uses
  %i.gs = icmp slt i64 %indvars.iv205, %.phi.trans.insert
  br i1 %i.gs, label %.lr.ph167.preheader, label %._crit_edge168

.lr.ph167.preheader:                              ; preds = %._crit_edge
  %i.gt = add i32 %spec.select.lcssa, -1
  %i.gu = zext i32 %i.gt to i64                   ; 2 uses
  %i.gv = shl nuw nsw i64 %i.gu, 2
  %i.gw = sub nsw i64 %.phi.trans.insert, %i.gu
  %i.gx = shl nsw i64 %i.gw, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.gx
  %scevgep201 = getelementptr i8, ptr %scevgep200, i64 %i.gx
  %i.gy = add nuw nsw i64 %i.gv, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep201, i64 %i.gy, i1 false), !tbaa !4
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %bb.aa, %.lr.ph167.preheader, %._crit_edge
  %i.gz = phi i32 [ %.pre, %._crit_edge ], [ %.pre, %.lr.ph167.preheader ], [ %i.fc, %bb.aa ] ; 3 uses
  store i32 %i.gz, ptr %i.fb, align 4, !tbaa !4
  %i.ha = sext i32 %i.gz to i64                   ; 2 uses
  %i.hb = getelementptr inbounds i8, ptr @height, i64 %i.ha ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !8   ; 2 uses
  %i.hd = add i8 %i.hc, 1
  store i8 %i.hd, ptr %i.hb, align 1, !tbaa !8
  %i.he = sext i8 %i.hc to i64
  %i.hf = and i64 %i.he, 4294967295
  %i.hg = shl nuw i64 1, %i.hf
  %i.hh = and i32 %i.fa, 1
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.hi ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !9
  %i.hl = xor i64 %i.hk, %i.hg
  store i64 %i.hl, ptr %i.hj, align 8, !tbaa !9
  %i.hm = add nsw i32 %i.fa, 1
  store i32 %i.hm, ptr @nplies, align 4, !tbaa !4
  %i.hn = sext i32 %i.fa to i64
  %i.ho = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.hn
  store i32 %i.gz, ptr %i.ho, align 4, !tbaa !4
  %i.hp = sub nsw i32 6, %.1106170
  %i.hq = tail call i32 @ab(i32 noundef %i.ex, i32 noundef %i.hp) ; 2 uses
  %i.hr = sub nsw i32 6, %i.hq                    ; 7 uses
  %i.hs = load i32, ptr @nplies, align 4, !tbaa !4 ; 2 uses
  %i.ht = add nsw i32 %i.hs, -1                   ; 7 uses
  store i32 %i.ht, ptr @nplies, align 4, !tbaa !4
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !4
  %i.hx = sext i32 %i.hw to i64
  %i.hy = getelementptr inbounds i8, ptr @height, i64 %i.hx ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !8
  %i.ia = add i8 %i.hz, -1                        ; 2 uses
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !8
  %i.ib = sext i8 %i.ia to i64
  %i.ic = and i64 %i.ib, 4294967295
  %i.id = shl nuw i64 1, %i.ic
  %i.ie = and i32 %i.ht, 1
  %i.if = zext nneg i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.if ; 2 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !9
  %i.ii = xor i64 %i.id, %i.ih
  store i64 %i.ii, ptr %i.ig, align 8, !tbaa !9
  %i.ij = icmp sgt i32 %i.hr, %.091172
  br i1 %i.ij, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %._crit_edge168
  %i.ik = icmp sgt i32 %i.hr, %.1106170
  %i.il = icmp sgt i32 %i.hs, 0
  %or.cond = and i1 %i.ik, %i.il
  br i1 %or.cond, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not121 = icmp slt i32 %i.hr, %.0104
  br i1 %.not121, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.im = getelementptr inbounds i8, ptr @height, i64 %i.ha
  %i.in = icmp eq i32 %i.hq, 3
  %i.io = add nsw i32 %.1, -1
  %i.ip = icmp sgt i32 %i.io, %i.fe
  %spec.select126 = select i1 %i.ip, i32 4, i32 3
  %.192 = select i1 %i.in, i32 %spec.select126, i32 %i.hr ; 2 uses
  %.not122 = icmp eq i64 %indvars.iv205, 0
  br i1 %.not122, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ad
  %wide.trip.count217 = zext nneg i32 %indvars.iv214 to i64 ; 2 uses
  %xtraiter296 = and i64 %wide.trip.count217, 1
  %i.iq = icmp eq i32 %indvars.iv214, 1
  br i1 %i.iq, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count217, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv211 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next212.1, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.is = load i32, ptr %i.ir, align 8, !tbaa !4
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr @height, i64 %i.it
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !8
  %i.iw = sext i8 %i.iv to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iw ; 2 uses
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !4
  %i.iz = add nsw i32 %i.iy, -1
  store i32 %i.iz, ptr %i.ix, align 4, !tbaa !4
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4
  %i.jd = sext i32 %i.jc to i64
  %i.je = getelementptr inbounds i8, ptr @height, i64 %i.jd
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !8
  %i.jg = sext i8 %i.jf to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !4
  %i.jj = add nsw i32 %i.ji, -1
  store i32 %i.jj, ptr %i.jh, align 4, !tbaa !4
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !20

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod297.not = icmp eq i64 %xtraiter296, 0
  br i1 %lcmp.mod297.not, label %bb.ae, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next212.1, %.unr-lcssa ]
  %lcmp.mod298 = trunc i32 %indvars.iv214 to i1
  tail call void @llvm.assume(i1 %lcmp.mod298)
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211.epil.init
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !4
  %i.jm = sext i32 %i.jl to i64
  %i.jn = getelementptr inbounds i8, ptr @height, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !8
  %i.jp = sext i8 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4
  %i.js = add nsw i32 %i.jr, -1
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %i.jt = load i8, ptr %i.im, align 1, !tbaa !8
  %i.ju = sext i8 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !4
  %i.jx = add nsw i32 %i.jw, %i.fe
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !4
  br label %.loopexit

bb.af:                                            ; preds = %._crit_edge168, %bb.ac, %bb.ab
  %.2107 = phi i32 [ %i.hr, %bb.ac ], [ %.1106170, %bb.ab ], [ %.1106170, %._crit_edge168 ]
  %.293 = phi i32 [ %i.hr, %bb.ac ], [ %i.hr, %bb.ab ], [ %.091172, %._crit_edge168 ] ; 2 uses
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1
  %exitcond210.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count209
  %indvars.iv.next215 = add nuw nsw i32 %indvars.iv214, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond210.not, label %.loopexit, label %bb.aa, !llvm.loop !21

.loopexit:                                        ; preds = %bb.af, %transpose.exit.thread, %bb.ad, %bb.ae
  %i.jy = phi i32 [ %i.ht, %bb.ae ], [ %i.ht, %bb.ad ], [ %i.d, %transpose.exit.thread ], [ %i.ht, %bb.af ]
  %.3 = phi i32 [ %.192, %bb.ae ], [ %.192, %bb.ad ], [ 1, %transpose.exit.thread ], [ %.293, %bb.af ] ; 2 uses
  %i.jz = load i64, ptr @posed, align 8, !tbaa !9 ; 2 uses
  %i.ka = sub i64 %i.jz, %i.eu
  %i.kb = lshr i64 %i.ka, 1
  %i.kc = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.kb, i1 false)
  %i.kd = trunc nuw nsw i64 %i.kc to i32
  %i.ke = sub nuw nsw i32 64, %i.kd               ; 3 uses
  %i.kf = icmp eq i32 %.3, %.0.i133148.neg
  %spec.store.select = select i1 %i.kf, i32 3, i32 %.3 ; 5 uses
  %i.kg = add i64 %i.jz, 1
  store i64 %i.kg, ptr @posed, align 8, !tbaa !9
  %i.kh = load ptr, ptr @ht, align 8, !tbaa !13
  %i.ki = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.ec ; 2 uses
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.ki, align 4, !tbaa !8 ; 3 uses
  %i.kj = trunc i64 %.sroa.0.0.copyload.i135 to i32 ; 2 uses
  %i.kk = and i32 %i.kj, 67108863
  %i.kl = icmp ne i32 %i.kk, %i.eb
  %i.km = lshr i32 %i.kj, 26
  %.not.i136 = icmp samesign ult i32 %i.ke, %i.km
  %or.cond.i = and i1 %i.kl, %.not.i136
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.kn = and i64 %.sroa.0.0.copyload.i135, 2305843004918726656
  %i.ko = and i32 %spec.store.select, 7
  %i.kp = zext nneg i32 %i.ko to i64
  %i.kq = shl nuw i64 %i.kp, 61
  %i.kr = shl nuw i32 %i.ke, 26
  %i.ks = zext i32 %i.kr to i64
  %.masked16.i = and i64 %i.ea, 67108863
  %.masked.i = or disjoint i64 %.masked16.i, %i.kn
  %i.kt = or disjoint i64 %.masked.i, %i.kq
  %i.ku = or disjoint i64 %i.kt, %i.ks
  br label %transtore.exit

bb.ah:                                            ; preds = %.loopexit
  %i.kv = shl i64 %i.ea, 32
  %i.kw = and i64 %i.kv, 288230371856744448
  %i.kx = and i64 %.sroa.0.0.copyload.i135, -2305843004918726657
  %i.ky = or disjoint i64 %i.kw, %i.kx
  %i.kz = and i32 %spec.store.select, 7
  %i.la = zext nneg i32 %i.kz to i64
  %i.lb = shl nuw nsw i64 %i.la, 58
end_hunk_0
begin_hunk_1_@solve:bb.a
  %i.bx = lshr i64 %i.bv, 6
  %i.by = and i64 %i.bx, %i.bv                    ; 2 uses
  %i.bz = lshr i64 %i.by, 12
  %i.ca = and i64 %i.bz, %i.by
  %.not.i.i.2 = icmp eq i64 %i.ca, 0
  br i1 %.not.i.i.2, label %bb.k, label %haswon.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.cb = lshr i64 %i.bv, 7
  %i.cc = and i64 %i.cb, %i.bv                    ; 2 uses
  %i.cd = lshr i64 %i.cc, 14
  %i.ce = and i64 %i.cd, %i.cc
  %.not17.i.i.2 = icmp eq i64 %i.ce, 0
  br i1 %.not17.i.i.2, label %bb.l, label %haswon.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.cf = lshr i64 %i.bv, 8
  %i.cg = and i64 %i.cf, %i.bv                    ; 2 uses
  %i.ch = lshr i64 %i.cg, 16
  %i.ci = and i64 %i.ch, %i.cg
  %.not18.i.i.2 = icmp eq i64 %i.ci, 0
  br i1 %.not18.i.i.2, label %islegalhaswon.exit.2, label %haswon.exit.thread

islegalhaswon.exit.2:                             ; preds = %bb.l
  %i.cj = lshr i64 %i.bv, 1
  %i.ck = and i64 %i.cj, %i.bv                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 2
  %i.cm = and i64 %i.cl, %i.ck
  %.not.2 = icmp eq i64 %i.cm, 0
  br i1 %.not.2, label %islegalhaswon.exit.thread14.2, label %haswon.exit.thread

islegalhaswon.exit.thread14.2:                    ; preds = %islegalhaswon.exit.2, %islegalhaswon.exit.thread14.1
  %i.cn = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 3), align 1, !tbaa !8
  %i.co = sext i8 %i.cn to i64
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = or i64 %i.cq, %i.y                      ; 9 uses
  %i.cs = and i64 %i.cr, 283691315109952
  %.not.i10.3 = icmp eq i64 %i.cs, 0
  br i1 %.not.i10.3, label %bb.m, label %islegalhaswon.exit.thread14.3

bb.m:                                             ; preds = %islegalhaswon.exit.thread14.2
  %i.ct = lshr i64 %i.cr, 6
  %i.cu = and i64 %i.ct, %i.cr                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 12
  %i.cw = and i64 %i.cv, %i.cu
  %.not.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.3, label %bb.n, label %haswon.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cx = lshr i64 %i.cr, 7
  %i.cy = and i64 %i.cx, %i.cr                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 14
  %i.da = and i64 %i.cz, %i.cy
  %.not17.i.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not17.i.i.3, label %bb.o, label %haswon.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.db = lshr i64 %i.cr, 8
  %i.dc = and i64 %i.db, %i.cr                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 16
  %i.de = and i64 %i.dd, %i.dc
  %.not18.i.i.3 = icmp eq i64 %i.de, 0
  br i1 %.not18.i.i.3, label %islegalhaswon.exit.3, label %haswon.exit.thread

islegalhaswon.exit.3:                             ; preds = %bb.o
  %i.df = lshr i64 %i.cr, 1
  %i.dg = and i64 %i.df, %i.cr                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = and i64 %i.dh, %i.dg
  %.not.3 = icmp eq i64 %i.di, 0
  br i1 %.not.3, label %islegalhaswon.exit.thread14.3, label %haswon.exit.thread

islegalhaswon.exit.thread14.3:                    ; preds = %islegalhaswon.exit.3, %islegalhaswon.exit.thread14.2
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 4), align 4, !tbaa !8
  %i.dk = sext i8 %i.dj to i64
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = or i64 %i.dm, %i.y                      ; 9 uses
  %i.do = and i64 %i.dn, 283691315109952
  %.not.i10.4 = icmp eq i64 %i.do, 0
  br i1 %.not.i10.4, label %bb.p, label %islegalhaswon.exit.thread14.4

bb.p:                                             ; preds = %islegalhaswon.exit.thread14.3
  %i.dp = lshr i64 %i.dn, 6
  %i.dq = and i64 %i.dp, %i.dn                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 12
  %i.ds = and i64 %i.dr, %i.dq
  %.not.i.i.4 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.4, label %bb.q, label %haswon.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.dt = lshr i64 %i.dn, 7
  %i.du = and i64 %i.dt, %i.dn                    ; 2 uses
  %i.dv = lshr i64 %i.du, 14
  %i.dw = and i64 %i.dv, %i.du
  %.not17.i.i.4 = icmp eq i64 %i.dw, 0
  br i1 %.not17.i.i.4, label %bb.r, label %haswon.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dx = lshr i64 %i.dn, 8
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 16
  %i.ea = and i64 %i.dz, %i.dy
  %.not18.i.i.4 = icmp eq i64 %i.ea, 0
  br i1 %.not18.i.i.4, label %islegalhaswon.exit.4, label %haswon.exit.thread

islegalhaswon.exit.4:                             ; preds = %bb.r
  %i.eb = lshr i64 %i.dn, 1
  %i.ec = and i64 %i.eb, %i.dn                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = and i64 %i.ed, %i.ec
  %.not.4 = icmp eq i64 %i.ee, 0
  br i1 %.not.4, label %islegalhaswon.exit.thread14.4, label %haswon.exit.thread

islegalhaswon.exit.thread14.4:                    ; preds = %islegalhaswon.exit.4, %islegalhaswon.exit.thread14.3
  %i.ef = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 5), align 1, !tbaa !8
  %i.eg = sext i8 %i.ef to i64
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = shl nuw i64 1, %i.eh
  %i.ej = or i64 %i.ei, %i.y                      ; 9 uses
  %i.ek = and i64 %i.ej, 283691315109952
  %.not.i10.5 = icmp eq i64 %i.ek, 0
  br i1 %.not.i10.5, label %bb.s, label %islegalhaswon.exit.thread14.5

bb.s:                                             ; preds = %islegalhaswon.exit.thread14.4
  %i.el = lshr i64 %i.ej, 6
  %i.em = and i64 %i.el, %i.ej                    ; 2 uses
  %i.en = lshr i64 %i.em, 12
  %i.eo = and i64 %i.en, %i.em
  %.not.i.i.5 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.5, label %bb.t, label %haswon.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ep = lshr i64 %i.ej, 7
  %i.eq = and i64 %i.ep, %i.ej                    ; 2 uses
  %i.er = lshr i64 %i.eq, 14
  %i.es = and i64 %i.er, %i.eq
  %.not17.i.i.5 = icmp eq i64 %i.es, 0
  br i1 %.not17.i.i.5, label %bb.u, label %haswon.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.et = lshr i64 %i.ej, 8
  %i.eu = and i64 %i.et, %i.ej                    ; 2 uses
  %i.ev = lshr i64 %i.eu, 16
  %i.ew = and i64 %i.ev, %i.eu
  %.not18.i.i.5 = icmp eq i64 %i.ew, 0
  br i1 %.not18.i.i.5, label %islegalhaswon.exit.5, label %haswon.exit.thread

islegalhaswon.exit.5:                             ; preds = %bb.u
  %i.ex = lshr i64 %i.ej, 1
  %i.ey = and i64 %i.ex, %i.ej                    ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = and i64 %i.ez, %i.ey
  %.not.5 = icmp eq i64 %i.fa, 0
  br i1 %.not.5, label %islegalhaswon.exit.thread14.5, label %haswon.exit.thread

islegalhaswon.exit.thread14.5:                    ; preds = %islegalhaswon.exit.5, %islegalhaswon.exit.thread14.4
  %i.fb = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 6), align 2, !tbaa !8
  %i.fc = sext i8 %i.fb to i64
  %i.fd = and i64 %i.fc, 4294967295
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = or i64 %i.fe, %i.y                      ; 9 uses
  %i.fg = and i64 %i.ff, 283691315109952
  %.not.i10.6 = icmp eq i64 %i.fg, 0
  br i1 %.not.i10.6, label %bb.v, label %islegalhaswon.exit.thread14.6

bb.v:                                             ; preds = %islegalhaswon.exit.thread14.5
  %i.fh = lshr i64 %i.ff, 6
  %i.fi = and i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 12
  %i.fk = and i64 %i.fj, %i.fi
  %.not.i.i.6 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.6, label %bb.w, label %haswon.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.fl = lshr i64 %i.ff, 7
  %i.fm = and i64 %i.fl, %i.ff                    ; 2 uses
  %i.fn = lshr i64 %i.fm, 14
  %i.fo = and i64 %i.fn, %i.fm
  %.not17.i.i.6 = icmp eq i64 %i.fo, 0
  br i1 %.not17.i.i.6, label %bb.x, label %haswon.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.fp = lshr i64 %i.ff, 8
  %i.fq = and i64 %i.fp, %i.ff                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 16
  %i.fs = and i64 %i.fr, %i.fq
  %.not18.i.i.6 = icmp eq i64 %i.fs, 0
  br i1 %.not18.i.i.6, label %islegalhaswon.exit.6, label %haswon.exit.thread

islegalhaswon.exit.6:                             ; preds = %bb.x
  %i.ft = lshr i64 %i.ff, 1
  %i.fu = and i64 %i.ft, %i.ff                    ; 2 uses
  %i.fv = lshr i64 %i.fu, 2
  %i.fw = and i64 %i.fv, %i.fu
  %.not.6 = icmp eq i64 %i.fw, 0
  br i1 %.not.6, label %islegalhaswon.exit.thread14.6, label %haswon.exit.thread

islegalhaswon.exit.thread14.6:                    ; preds = %islegalhaswon.exit.6, %islegalhaswon.exit.thread14.5
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 20), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 12), align 4, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 168), align 8, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 48), align 16, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 160), align 16, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 140), align 4, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 28), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 76), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 132), align 4, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 112), align 16, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 56), align 8, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @history, i64 104), align 8, !tbaa !4
  store <4 x i32> <i32 10, i32 3, i32 4, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 -4), align 4, !tbaa !4
  store <4 x i32> <i32 7, i32 10, i32 13, i32 13>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 84), align 4, !tbaa !4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 216), align 8, !tbaa !4
  store i32 3, ptr getelementptr inbounds nuw (i8, ptr @history, i64 384), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 208), align 16, !tbaa !4
  store <4 x i32> <i32 3, i32 4, i32 5, i32 5>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 364), align 4, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 204), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 244), align 4, !tbaa !4
  store i32 4, ptr getelementptr inbounds nuw (i8, ptr @history, i64 356), align 4, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 336), align 16, !tbaa !4
  store <4 x i32> <i32 4, i32 6, i32 8, i32 8>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 224), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 272), align 16, !tbaa !4
  store i32 5, ptr getelementptr inbounds nuw (i8, ptr @history, i64 328), align 8, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 308), align 4, !tbaa !4
  store <4 x i32> <i32 5, i32 8, i32 11, i32 11>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 252), align 4, !tbaa !4
  store i32 7, ptr getelementptr inbounds nuw (i8, ptr @history, i64 300), align 4, !tbaa !4
  store <4 x i32> <i32 3, i32 10, i32 3, i32 4>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 188), align 4, !tbaa !4
  store <4 x i32> <i32 7, i32 10, i32 13, i32 13>, ptr getelementptr inbounds nuw (i8, ptr @history, i64 280), align 8, !tbaa !4
  %i.fx = load i64, ptr @millisecs.Time, align 8, !tbaa !9 ; 2 uses
  %i.fy = add nsw i64 %i.fx, 1
  store i64 %i.fy, ptr @millisecs.Time, align 8, !tbaa !9
  store i64 %i.fx, ptr @msecs, align 8, !tbaa !9
  %i.fz = tail call i32 @ab(i32 noundef 1, i32 noundef 5)
  %i.ga = load i64, ptr @millisecs.Time, align 8, !tbaa !9
  %i.gb = add i64 %i.ga, 1                        ; 2 uses
  store i64 %i.gb, ptr @millisecs.Time, align 8, !tbaa !9
  %i.gc = load i64, ptr @msecs, align 8, !tbaa !9
  %i.gd = sub i64 %i.gb, %i.gc
  store i64 %i.gd, ptr @msecs, align 8, !tbaa !9
  br label %haswon.exit.thread

haswon.exit.thread:                               ; preds = %bb.f, %bb.e, %bb.d, %islegalhaswon.exit, %bb.g, %bb.h, %bb.i, %islegalhaswon.exit.1, %bb.j, %bb.k, %bb.l, %islegalhaswon.exit.2, %bb.m, %bb.n, %bb.o, %islegalhaswon.exit.3, %bb.p, %bb.q, %bb.r, %islegalhaswon.exit.4, %bb.s, %bb.t, %bb.u, %islegalhaswon.exit.5, %bb.v, %bb.w, %bb.x, %islegalhaswon.exit.6, %bb.c, %bb.b, %bb.a, %haswon.exit, %islegalhaswon.exit.thread14.6
  %.08 = phi i32 [ %i.fz, %islegalhaswon.exit.thread14.6 ], [ 1, %haswon.exit ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ], [ 5, %islegalhaswon.exit.6 ], [ 5, %bb.x ], [ 5, %bb.w ], [ 5, %bb.v ], [ 5, %islegalhaswon.exit.5 ], [ 5, %bb.u ], [ 5, %bb.t ], [ 5, %bb.s ], [ 5, %islegalhaswon.exit.4 ], [ 5, %bb.r ], [ 5, %bb.q ], [ 5, %bb.p ], [ 5, %islegalhaswon.exit.3 ], [ 5, %bb.o ], [ 5, %bb.n ], [ 5, %bb.m ], [ 5, %islegalhaswon.exit.2 ], [ 5, %bb.l ], [ 5, %bb.k ], [ 5, %bb.j ], [ 5, %islegalhaswon.exit.1 ], [ 5, %bb.i ], [ 5, %bb.h ], [ 5, %bb.g ], [ 5, %islegalhaswon.exit ], [ 5, %bb.d ], [ 5, %bb.e ], [ 5, %bb.f ]
  ret i32 %.08
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(66448552) ptr @calloc(i64 noundef 8306069, i64 noundef 8) #17
  store ptr %i.a, ptr @ht, align 8, !tbaa !13
  %i.b = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 7, i32 noundef 6) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 8306069) ; 0 uses
  store i32 0, ptr @nplies, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @color, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 0, i8 7, i8 14, i8 21>, ptr @height, align 4, !tbaa !8
  store i8 28, ptr getelementptr inbounds nuw (i8, ptr @height, i64 4), align 4, !tbaa !8
  store i8 35, ptr getelementptr inbounds nuw (i8, ptr @height, i64 5), align 1, !tbaa !8
  store i8 42, ptr getelementptr inbounds nuw (i8, ptr @height, i64 6), align 2, !tbaa !8
  %i.e = load ptr, ptr @stdin, align 8, !tbaa !22
  %i.f = tail call i32 @getc(ptr noundef %i.e), !inline_history !24 ; 2 uses
  %cond1820 = icmp eq i32 %i.f, -1
  br i1 %cond1820, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %i.g = phi i32 [ %.be, %.lr.ph.backedge ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = add i32 %i.g, -49                        ; 3 uses
  %or.cond = icmp ult i32 %i.h, 7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @height, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %i.l = add i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 1, !tbaa !8
  %i.m = sext i8 %i.k to i64
  %i.n = and i64 %i.m, 4294967295
  %i.o = shl nuw i64 1, %i.n
  %i.p = load i32, ptr @nplies, align 4, !tbaa !4 ; 3 uses
  %i.q = and i32 %i.p, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = xor i64 %i.t, %i.o
  store i64 %i.u, ptr %i.s, align 8, !tbaa !9
  %i.v = add nsw i32 %i.p, 1
  store i32 %i.v, ptr @nplies, align 4, !tbaa !4
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.w
  store i32 %i.h, ptr %i.x, align 4, !tbaa !4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %cond15 = icmp eq i32 %i.g, 10
  br i1 %cond15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr @stdin, align 8, !tbaa !22
  %i.z = tail call i32 @getc(ptr noundef %i.y), !inline_history !24 ; 2 uses
  %cond = icmp eq i32 %i.z, -1
  br i1 %cond, label %._crit_edge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.d, %emptyTT.exit
  %.be = phi i32 [ %i.z, %bb.d ], [ %i.bj, %emptyTT.exit ]
  br label %.lr.ph, !llvm.loop !25

bb.e:                                             ; preds = %bb.c
  %i.aa = load i32, ptr @nplies, align 4, !tbaa !4
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr @nplies, align 4, !tbaa !4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i, label %printMoves.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @moves, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ag) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr @nplies, align 4, !tbaa !4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %printMoves.exit, !llvm.loop !11

printMoves.exit:                                  ; preds = %.lr.ph.i, %bb.e
  %i.al = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %printMoves.exit
  %indvars.iv.i16 = phi i64 [ 0, %printMoves.exit ], [ %indvars.iv.next.i17.3, %bb.g ] ; 6 uses
  %i.am = load ptr, ptr @ht, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i16
  store i64 0, ptr %i.an, align 4, !tbaa !8
  %exitcond.not.i = icmp eq i64 %indvars.iv.i16, 8306068
  br i1 %exitcond.not.i, label %emptyTT.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr @ht, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.aq, align 4, !tbaa !8
  %i.ar = load ptr, ptr @ht, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 0, ptr %i.at, align 4, !tbaa !8
  %i.au = load ptr, ptr @ht, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 0, ptr %i.aw, align 4, !tbaa !8
  %indvars.iv.next.i17.3 = add nuw nsw i64 %indvars.iv.i16, 4
  br label %bb.f

emptyTT.exit:                                     ; preds = %bb.f
  store i64 0, ptr @posed, align 8, !tbaa !9
  %i.ax = tail call i32 @solve()                  ; 2 uses
  %i.ay = load i64, ptr @posed, align 8, !tbaa !9
  %i.az = lshr i64 %i.ay, 1
  %i.ba = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = sub nuw nsw i32 64, %i.bb
  %i.bd = sext i32 %i.ax to i64
  %i.be = getelementptr inbounds i8, ptr @.str.3, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = sext i8 %i.bf to i32
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.ax, i32 noundef %i.bg, i32 noundef %i.bc) ; 0 uses
  tail call void @htstat()
  store i32 0, ptr @nplies, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @color, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 0, i8 7, i8 14, i8 21>, ptr @height, align 4, !tbaa !8
  store i8 28, ptr getelementptr inbounds nuw (i8, ptr @height, i64 4), align 4, !tbaa !8
  store i8 35, ptr getelementptr inbounds nuw (i8, ptr @height, i64 5), align 1, !tbaa !8
  store i8 42, ptr getelementptr inbounds nuw (i8, ptr @height, i64 6), align 2, !tbaa !8
  %i.bi = load ptr, ptr @stdin, align 8, !tbaa !22
  %i.bj = tail call i32 @getc(ptr noundef %i.bi), !inline_history !24 ; 2 uses
  %cond18 = icmp eq i32 %i.bj, -1
  br i1 %cond18, label %._crit_edge, label %.lr.ph.backedge

._crit_edge:                                      ; preds = %emptyTT.exit, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_1
