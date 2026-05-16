begin_hunk_0_@ExtractGreen_SSE2:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !3
  %wide.load78 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !3
  %i.ar = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.as = lshr <4 x i32> %wide.load78, splat (i32 8)
  %i.at = trunc <4 x i32> %i.ar to <4 x i8>
  %i.au = trunc <4 x i32> %i.as to <4 x i8>
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  store <4 x i8> %i.at, ptr %i.av, align 1, !tbaa !9
  store <4 x i8> %i.au, ptr %i.aw, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.am, %n.vec
  br i1 %cmp.n, label %._crit_edge66, label %.lr.ph65.preheader79

.lr.ph65.preheader79:                             ; preds = %.lr.ph65.preheader, %middle.block
  %indvars.iv73.ph = phi i64 [ %i.al, %.lr.ph65.preheader ], [ %i.an, %middle.block ]
  br label %.lr.ph65

.lr.ph65:                                         ; preds = %.lr.ph65.preheader79, %.lr.ph65
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %.lr.ph65 ], [ %indvars.iv73.ph, %.lr.ph65.preheader79 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv73
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  %i.ba = lshr i32 %i.az, 8
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv73
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !9
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge66, label %.lr.ph65, !llvm.loop !36

._crit_edge66:                                    ; preds = %.lr.ph65, %middle.block, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha8b_SSE2(ptr noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = sext i32 %1 to i64
  %.not37 = icmp slt i32 %1, 16
  br i1 %.not37, label %.preheader, label %.lr.ph40

bb.b:                                             ; preds = %.lr.ph40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next39, 16 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.a
  br i1 %.not, label %.preheader, label %.lr.ph40, !llvm.loop !37

.preheader:                                       ; preds = %bb.b, %bb.a
  %indvars.iv.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next39, %bb.b ] ; 2 uses
  %i.b = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  %i.c = icmp sgt i32 %1, %i.b
  br i1 %i.c, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext i32 %1 to i64
  br label %.lr.ph

.lr.ph40:                                         ; preds = %bb.a, %bb.b
  %indvars.iv.next39 = phi i64 [ %indvars.iv.next, %bb.b ], [ 16, %bb.a ] ; 3 uses
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv38
  %i.e = load <16 x i8>, ptr %i.d, align 1, !tbaa !9
  %i.f = icmp ne <16 x i8> %i.e, splat (i8 -1)
  %i.g = bitcast <16 x i1> %i.f to i16
  %.not20 = icmp eq i16 %i.g, 0
  br i1 %.not20, label %bb.b, label %.loopexit, !llvm.loop !37

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !38

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %indvars.iv30 = phi i64 [ %indvars.iv.lcssa, %.lr.ph.preheader ], [ %indvars.iv.next31, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv30
  %i.i = load i8, ptr %i.h, align 1, !tbaa !9
  %.not19 = icmp eq i8 %i.i, -1
  br i1 %.not19, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph40, %.lr.ph, %bb.c, %.preheader
  %.2 = phi i32 [ 0, %.preheader ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph40 ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @HasAlpha32b_SSE2(ptr noundef readonly captures(none) %0, i32 noundef %1) #3 {
bb.a:
  %i.a = shl nsw i32 %1, 2
  %i.b = add nsw i32 %i.a, -3                     ; 2 uses
  %i.c = sext i32 %i.b to i64                     ; 4 uses
  %.not99 = icmp slt i32 %1, 17
  br i1 %.not99, label %.preheader69.preheader, label %.lr.ph102

bb.b:                                             ; preds = %.lr.ph102
  %indvars.iv.next = add nuw nsw i64 %indvars.iv.next101, 64 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next, %i.c
  br i1 %.not, label %.preheader69.preheader, label %.lr.ph102, !llvm.loop !39

.preheader69.preheader:                           ; preds = %bb.b, %bb.a
  %indvars.iv.lcssa = phi i64 [ 0, %bb.a ], [ %indvars.iv.next101, %bb.b ] ; 3 uses
  %indvars.iv.next85103 = or disjoint i64 %indvars.iv.lcssa, 32 ; 2 uses
  %.not64104 = icmp sgt i64 %indvars.iv.next85103, %i.c
  br i1 %.not64104, label %.preheader, label %.lr.ph107

.lr.ph102:                                        ; preds = %bb.a, %bb.b
  %indvars.iv.next101 = phi i64 [ %indvars.iv.next, %bb.b ], [ 64, %bb.a ] ; 3 uses
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %bb.b ], [ 0, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv100 ; 4 uses
  %i.e = load <4 x i32>, ptr %i.d, align 1, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.g = load <4 x i32>, ptr %i.f, align 1, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.i = load <4 x i32>, ptr %i.h, align 1, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.k = load <4 x i32>, ptr %i.j, align 1, !tbaa !9
  %i.l = and <4 x i32> %i.e, splat (i32 255)
  %i.m = and <4 x i32> %i.g, splat (i32 255)
  %i.n = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.l, <4 x i32> %i.m)
  %i.o = and <4 x i32> %i.i, splat (i32 255)
  %i.p = and <4 x i32> %i.k, splat (i32 255)
  %i.q = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.o, <4 x i32> %i.p)
  %i.r = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.n, <8 x i16> %i.q)
  %i.s = icmp ne <16 x i8> %i.r, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %.not68 = icmp eq i16 %i.t, 0
  br i1 %.not68, label %bb.b, label %.loopexit, !llvm.loop !39

.preheader69:                                     ; preds = %.lr.ph107
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv.next85106, 32 ; 2 uses
  %.not64 = icmp sgt i64 %indvars.iv.next85, %i.c
  br i1 %.not64, label %.preheader, label %.lr.ph107, !llvm.loop !40

.preheader:                                       ; preds = %.preheader69, %.preheader69.preheader
  %indvars.iv84.lcssa = phi i64 [ %indvars.iv.lcssa, %.preheader69.preheader ], [ %indvars.iv.next85106, %.preheader69 ] ; 2 uses
  %i.u = trunc nuw nsw i64 %indvars.iv84.lcssa to i32
  %.not6574 = icmp slt i32 %i.b, %i.u
  br i1 %.not6574, label %.loopexit, label %.lr.ph

.lr.ph107:                                        ; preds = %.preheader69.preheader, %.preheader69
  %indvars.iv.next85106 = phi i64 [ %indvars.iv.next85, %.preheader69 ], [ %indvars.iv.next85103, %.preheader69.preheader ] ; 3 uses
  %indvars.iv84105 = phi i64 [ %indvars.iv.next85106, %.preheader69 ], [ %indvars.iv.lcssa, %.preheader69.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv84105 ; 2 uses
  %i.w = load <4 x i32>, ptr %i.v, align 1, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.y = load <4 x i32>, ptr %i.x, align 1, !tbaa !9
  %i.z = and <4 x i32> %i.w, splat (i32 255)
  %i.aa = and <4 x i32> %i.y, splat (i32 255)
  %i.ab = tail call <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32> %i.z, <4 x i32> %i.aa) ; 2 uses
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.ab)
  %i.ad = icmp ne <16 x i8> %i.ac, splat (i8 -1)
  %i.ae = bitcast <16 x i1> %i.ad to i16
  %.not67 = icmp eq i16 %i.ae, 0
  br i1 %.not67, label %.preheader69, label %.loopexit, !llvm.loop !40

bb.c:                                             ; preds = %.lr.ph
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 4 ; 2 uses
  %.not65 = icmp sgt i64 %indvars.iv.next89, %i.c
  br i1 %.not65, label %.loopexit, label %.lr.ph, !llvm.loop !41

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %bb.c ], [ %indvars.iv84.lcssa, %.preheader ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv88
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !9
  %.not66 = icmp eq i8 %i.ag, -1
  br i1 %.not66, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph102, %.lr.ph107, %.lr.ph, %bb.c, %.preheader
  %.4 = phi i32 [ 0, %.preheader ], [ 1, %.lr.ph107 ], [ 0, %bb.c ], [ 1, %.lr.ph ], [ 1, %.lr.ph102 ]
  ret i32 %.4
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @AlphaReplace_SSE2(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2) #2 {
bb.a:
  %i.a = insertelement <4 x i32> poison, i32 %2, i64 0
  %i.b = shufflevector <4 x i32> %i.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %.not38 = icmp slt i32 %1, 8
  br i1 %.not38, label %.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = zext nneg i32 %1 to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.d = and i32 %1, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.preheader.loopexit ] ; 3 uses
  %i.e = icmp slt i32 %.0.lcssa, %1
  br i1 %i.e, label %.lr.ph41.preheader, label %._crit_edge

.lr.ph41.preheader:                               ; preds = %.preheader
  %i.f = zext nneg i32 %.0.lcssa to i64           ; 3 uses
  %i.g = xor i32 %.0.lcssa, -1
  %i.h = add i32 %1, %i.g                         ; 2 uses
  %3 = zext i32 %i.h to i64
  %4 = add nuw nsw i64 %3, 1                      ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 7
  br i1 %min.iters.check, label %.lr.ph41.preheader65, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph41.preheader
  %n.vec.a = and i64 %4, 8589934584               ; 3 uses
  %i.i = add nuw nsw i64 %n.vec.a, %i.f
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue64, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue64 ] ; 2 uses
  %i.j = add i64 %index, %i.f                     ; 8 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !3
  %wide.load50 = load <4 x i32>, ptr %i.l, align 4, !tbaa !3
  %5 = icmp ult <4 x i32> %wide.load, splat (i32 16777216) ; 4 uses
  %6 = icmp ult <4 x i32> %wide.load50, splat (i32 16777216) ; 4 uses
  %i.m = extractelement <4 x i1> %5, i64 0
  br i1 %i.m, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i32 %2, ptr %i.k, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.n = extractelement <4 x i1> %5, i64 1
  br i1 %i.n, label %pred.store.if51, label %pred.store.continue52

pred.store.if51:                                  ; preds = %pred.store.continue
  %7 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 %2, ptr %8, align 4, !tbaa !3
  br label %pred.store.continue52

pred.store.continue52:                            ; preds = %pred.store.if51, %pred.store.continue
  %i.o = extractelement <4 x i1> %5, i64 2
  br i1 %i.o, label %pred.store.if53, label %pred.store.continue54

pred.store.if53:                                  ; preds = %pred.store.continue52
  %9 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %10 = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i32 %2, ptr %10, align 4, !tbaa !3
  br label %pred.store.continue54

pred.store.continue54:                            ; preds = %pred.store.if53, %pred.store.continue52
  %i.p = extractelement <4 x i1> %5, i64 3
  br i1 %i.p, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue54
  %11 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 12
  store i32 %2, ptr %12, align 4, !tbaa !3
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue54
  %i.q = extractelement <4 x i1> %6, i64 0
  br i1 %i.q, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %13 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %2, ptr %14, align 4, !tbaa !3
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %i.r = extractelement <4 x i1> %6, i64 1
  br i1 %i.r, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %15 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 20
  store i32 %2, ptr %16, align 4, !tbaa !3
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %i.s = extractelement <4 x i1> %6, i64 2
  br i1 %i.s, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %17 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %18 = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i32 %2, ptr %18, align 4, !tbaa !3
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %i.t = extractelement <4 x i1> %6, i64 3
  br i1 %i.t, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %19 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j
  %20 = getelementptr inbounds nuw i8, ptr %19, i64 28
  store i32 %2, ptr %20, align 4, !tbaa !3
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec.a
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %pred.store.continue64
  %cmp.n = icmp eq i64 %4, %n.vec.a
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph41.preheader65

.lr.ph41.preheader65:                             ; preds = %.lr.ph41.preheader, %middle.block
  %indvars.iv47.ph = phi i64 [ %i.f, %.lr.ph41.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph41

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv42 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next43, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ 8, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv42 ; 3 uses
  %i.w = load <4 x i32>, ptr %i.v, align 1, !tbaa !9 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = load <2 x i64>, ptr %i.x, align 1, !tbaa !9 ; 2 uses
  %i.z = bitcast <2 x i64> %i.y to <4 x i32>
  %i.aa = icmp ult <4 x i32> %i.w, splat (i32 16777216)
  %i.ab = icmp ugt <4 x i32> %i.z, splat (i32 16777215) ; 2 uses
  %i.ac = select <4 x i1> %i.ab, <4 x i32> zeroinitializer, <4 x i32> %i.b
  %i.ad = bitcast <4 x i32> %i.ac to <2 x i64>
  %i.ae = sext <4 x i1> %i.ab to <4 x i32>
  %i.af = bitcast <4 x i32> %i.ae to <2 x i64>
  %i.ag = and <2 x i64> %i.y, %i.af
  %i.ah = select <4 x i1> %i.aa, <4 x i32> %i.b, <4 x i32> %i.w
  store <4 x i32> %i.ah, ptr %i.v, align 1, !tbaa !9
  %i.ai = or <2 x i64> %i.ag, %i.ad
  store <2 x i64> %i.ai, ptr %i.x, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next, %i.c
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 8
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !43

.lr.ph41:                                         ; preds = %.lr.ph41.preheader65, %bb.c
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %bb.c ], [ %indvars.iv47.ph, %.lr.ph41.preheader65 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv47 ; 2 uses
  %21 = load i32, ptr %i.aj, align 4, !tbaa !3
  %22 = icmp ult i32 %21, 16777216
  br i1 %22, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph41
  store i32 %2, ptr %i.aj, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph41, %bb.b
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1 ; 2 uses
  %i.ak = trunc nuw i64 %indvars.iv.next48 to i32
  %i.al = icmp sgt i32 %1, %i.ak
  br i1 %i.al, label %.lr.ph41, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.c, %middle.block, %.preheader
  ret void
}

declare void @WebPMultARGBRow_C(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.pmulhu.w(<8 x i16>, <8 x i16>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16>, <8 x i16>) #5

declare void @WebPMultRow_C(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.x86.sse2.maskmov.dqu(<16 x i8>, <16 x i8>, ptr) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse2.packssdw.128(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.and.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !19}
!19 = !{!"llvm.loop.unroll.disable"}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11, !24, !25}
!24 = !{!"llvm.loop.unroll.runtime.disable"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = distinct !{!26, !11}
!27 = distinct !{!27, !11, !25, !24}
!28 = distinct !{!28, !11}
!29 = distinct !{!29, !19}
!30 = distinct !{!30, !11}
!31 = distinct !{!31, !11, !24, !25}
!32 = distinct !{!32, !11}
!33 = distinct !{!33, !11, !25, !24}
!34 = distinct !{!34, !11}
!35 = distinct !{!35, !11, !25, !24}
!36 = distinct !{!36, !11, !24, !25}
!37 = distinct !{!37, !11}
!38 = distinct !{!38, !11}
!39 = distinct !{!39, !11}
!40 = distinct !{!40, !11}
!41 = distinct !{!41, !11}
!42 = distinct !{!42, !11, !25, !24}
!43 = distinct !{!43, !11}
!44 = distinct !{!44, !11, !24, !25}
end_hunk_0
