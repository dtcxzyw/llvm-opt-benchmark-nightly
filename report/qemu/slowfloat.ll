Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/slowfloat?download=true
inline.NumInlined: 295
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@slow_i64_to_extF80M:bb.a
  store i64 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !20
  br label %i64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 2, !tbaa !19
  br label %i64ToFloatX.exit

i64ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ %i.d, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.04.1.i, ptr %i.l, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_i64_to_f128M(i64 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %.lobit.i = lshr i64 %0, 63
  %i.b = trunc nuw nsw i64 %.lobit.i to i8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  store i8 %i.b, ptr %i.c, align 1, !tbaa !18
  %i.d = tail call i64 @llvm.abs.i64(i64 %0, i1 false) ; 2 uses
  %.not.i = icmp eq i64 %0, 0
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.e, align 2, !tbaa !19
  %i.f = tail call { i64, i64 } @shortShiftLeft128(i64 %i.d, i64 0, i32 noundef 56) #10 ; 2 uses
  %.sroa.8.021.i = extractvalue { i64, i64 } %i.f, 1 ; 3 uses
  %.sroa.04.022.i = extractvalue { i64, i64 } %i.f, 0 ; 2 uses
  %i.g = icmp ult i64 %.sroa.8.021.i, 36028797018963968
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.04.025.i = phi i64 [ %.sroa.04.0.i, %.lr.ph.i ], [ %.sroa.04.022.i, %bb.b ]
  %.sroa.8.024.i = phi i64 [ %.sroa.8.0.i, %.lr.ph.i ], [ %.sroa.8.021.i, %bb.b ]
  %.023.i = phi i64 [ %i.h, %.lr.ph.i ], [ 63, %bb.b ]
  %i.h = add nsw i64 %.023.i, -1                  ; 2 uses
  %i.i = tail call { i64, i64 } @shortShiftLeft128(i64 %.sroa.04.025.i, i64 %.sroa.8.024.i, i32 noundef 1) #10 ; 2 uses
  %.sroa.8.0.i = extractvalue { i64, i64 } %i.i, 1 ; 3 uses
  %.sroa.04.0.i = extractvalue { i64, i64 } %i.i, 0 ; 2 uses
  %i.j = icmp ult i64 %.sroa.8.0.i, 36028797018963968
  br i1 %i.j, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ 63, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.sroa.8.0.lcssa.i = phi i64 [ %.sroa.8.021.i, %bb.b ], [ %.sroa.8.0.i, %.lr.ph.i ]
  %.sroa.04.0.lcssa.i = phi i64 [ %.sroa.04.022.i, %bb.b ], [ %.sroa.04.0.i, %.lr.ph.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %.0.lcssa.i, ptr %i.k, align 8, !tbaa !20
  br label %i64ToFloatX.exit

bb.c:                                             ; preds = %bb.a
  store i8 1, ptr %i.e, align 2, !tbaa !19
  br label %i64ToFloatX.exit

i64ToFloatX.exit:                                 ; preds = %._crit_edge.i, %bb.c
  %.sroa.04.1.i = phi i64 [ %.sroa.04.0.lcssa.i, %._crit_edge.i ], [ %i.d, %bb.c ]
  %.sroa.8.1.i = phi i64 [ %.sroa.8.0.lcssa.i, %._crit_edge.i ], [ 0, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %.sroa.04.1.i, ptr %i.l, align 8, !tbaa !26
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.sroa.8.1.i, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !26
  call fastcc void @floatXToF128M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @slow_f16_to_ui32(i16 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToUI32(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 0, 4294967296) i64 @floatXToUI32(ptr nofree noundef nonnull readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !16, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.g = or i8 %i.f, 16
  store i8 %i.g, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.i = or i8 %i.h, 16
  store i8 %i.i, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18, !range !23, !noundef !24
  %i.l = xor i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  %i.o = and i64 %i.n, 4294967295
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.q = load i8, ptr %i.p, align 2, !tbaa !19, !range !23, !noundef !24
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !25 ; 4 uses
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.725.0.copyload = load i64, ptr %.sroa.725.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %i.t = sub nsw i64 52, %.sroa.725.0.copyload    ; 3 uses
  %i.u = icmp slt i64 %.sroa.725.0.copyload, -4
  br i1 %i.u, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.v = icmp slt i64 %.sroa.725.0.copyload, 52
  br i1 %i.v, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01837 = phi i64 [ %i.z, %.lr.ph ], [ %i.t, %.preheader ] ; 2 uses
  %.sroa.10.036 = phi i64 [ %i.x, %.lr.ph ], [ %.sroa.10.0.copyload, %.preheader ]
  %.sroa.17.035 = phi i64 [ %i.y, %.lr.ph ], [ %.sroa.17.0.copyload, %.preheader ]
  %i.w = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.10.036, i64 %.sroa.17.035, i32 noundef 1) #10 ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.w, 1        ; 2 uses
  %i.z = add nsw i64 %.01837, -1
  %i.aa = icmp sgt i64 %.01837, 1
  br i1 %i.aa, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.f
  %.sroa.17.1 = phi i64 [ 0, %bb.f ], [ %.sroa.17.0.copyload, %.preheader ], [ %i.y, %.lr.ph ] ; 4 uses
  %.sroa.10.1 = phi i64 [ 1, %bb.f ], [ %.sroa.10.0.copyload, %.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.t, %bb.f ], [ %i.t, %.preheader ], [ 0, %.lr.ph ]
  %i.ab = and i64 %.sroa.17.1, 7                  ; 3 uses
  %i.ac = icmp ne i64 %.sroa.10.1, 0
  %i.ad = zext i1 %i.ac to i64
  %i.ae = or i64 %i.ab, %i.ad                     ; 2 uses
  %.not.i = icmp eq i64 %i.ae, 0
  br i1 %.not.i, label %roundFloatXTo53.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.af = and i64 %.sroa.17.1, -8                 ; 8 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ah = or i8 %i.ag, 1
  store i8 %i.ah, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  switch i8 %1, label %bb.p [
    i8 0, label %bb.j
    i8 1, label %roundFloatXTo53.exit
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 6, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp samesign ult i64 %i.ab, 4
  br i1 %i.ai, label %roundFloatXTo53.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aj = icmp eq i64 %i.ae, 4
  %i.ak = and i64 %.sroa.17.1, 8
  %.not23.i = icmp eq i64 %i.ak, 0
  %or.cond.i = and i1 %.not23.i, %i.aj
  br i1 %or.cond.i, label %roundFloatXTo53.exit, label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.al = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.al, label %bb.p, label %roundFloatXTo53.exit

bb.m:                                             ; preds = %bb.i
  %i.am = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.am, label %roundFloatXTo53.exit, label %bb.p

bb.n:                                             ; preds = %bb.i
  %i.an = icmp samesign ult i64 %i.ab, 4
  br i1 %i.an, label %roundFloatXTo53.exit, label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.ao = or i64 %i.af, 8
  br label %roundFloatXTo53.exit

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i
  %i.ap = add i64 %i.af, 8                        ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 72057594037927936
  %spec.select = select i1 %i.aq, i64 36028797018963968, i64 %i.ap
  br label %roundFloatXTo53.exit

roundFloatXTo53.exit:                             ; preds = %bb.p, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.loopexit
  %.sroa.17.2 = phi i64 [ %.sroa.17.1, %.loopexit ], [ %i.ao, %bb.o ], [ %spec.select, %bb.p ], [ %i.af, %bb.j ], [ %i.af, %bb.k ], [ %i.af, %bb.i ], [ %i.af, %bb.l ], [ %i.af, %bb.m ], [ %i.af, %bb.n ]
  %.sroa.10.2 = phi i64 [ %.sroa.10.1, %.loopexit ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ]
  %i.ar = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.10.2, i64 %.sroa.17.2, i32 noundef 3) #10
  %i.as = extractvalue { i64, i64 } %i.ar, 1      ; 3 uses
  %i.at = icmp slt i64 %.1, 0
  %.not = icmp ugt i64 %i.as, 4294967295
  %or.cond21.not34 = select i1 %i.at, i1 true, i1 %.not
  %i.au = trunc nuw i8 %.sroa.3.0.copyload to i1
  %i.av = icmp ne i64 %i.as, 0
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  %or.cond32 = select i1 %or.cond21.not34, i1 true, i1 %or.cond
  br i1 %or.cond32, label %bb.q, label %bb.r

bb.q:                                             ; preds = %roundFloatXTo53.exit
  %i.aw = or i8 %i.s, 16
  store i8 %i.aw, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ax = xor i8 %.sroa.3.0.copyload, 1
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = and i64 %i.az, 4294967295
  br label %bb.r

bb.r:                                             ; preds = %roundFloatXTo53.exit, %bb.c, %bb.e, %bb.d, %bb.q
  %.0 = phi i64 [ 0, %bb.e ], [ %i.o, %bb.d ], [ %i.ba, %bb.q ], [ 4294967295, %bb.c ], [ %i.as, %roundFloatXTo53.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f16_to_ui64(i16 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToUI64(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @floatXToUI64(ptr nofree noundef nonnull readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !16, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.g = or i8 %i.f, 16
  store i8 %i.g, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.i = or i8 %i.h, 16
  store i8 %i.i, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18, !range !23, !noundef !24
  %i.l = xor i8 %i.k, 1
  %i.m = zext nneg i8 %i.l to i64
  %i.n = sub nsw i64 0, %i.m
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.p = load i8, ptr %i.o, align 2, !tbaa !19, !range !23, !noundef !24
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !25 ; 4 uses
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.728.0.copyload = load i64, ptr %.sroa.728.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %i.s = sub nsw i64 112, %.sroa.728.0.copyload   ; 3 uses
  %i.t = icmp slt i64 %.sroa.728.0.copyload, -4
  br i1 %i.t, label %.thread34, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.u = icmp slt i64 %.sroa.728.0.copyload, 112
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02247 = phi i64 [ %i.y, %.lr.ph ], [ %i.s, %.preheader ] ; 2 uses
  %.sroa.10.046 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.10.0.copyload, %.preheader ]
  %.sroa.17.045 = phi i64 [ %i.x, %.lr.ph ], [ %.sroa.17.0.copyload, %.preheader ]
  %i.v = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.10.046, i64 %.sroa.17.045, i32 noundef 1) #10 ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.v, 0        ; 2 uses
  %i.x = extractvalue { i64, i64 } %i.v, 1        ; 2 uses
  %i.y = add nsw i64 %.02247, -1
  %i.z = icmp sgt i64 %.02247, 1
  br i1 %i.z, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.sroa.17.0.lcssa = phi i64 [ %.sroa.17.0.copyload, %.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %.sroa.10.0.lcssa = phi i64 [ %.sroa.10.0.copyload, %.preheader ], [ %i.w, %.lr.ph ] ; 3 uses
  %.022.lcssa = phi i64 [ %i.s, %.preheader ], [ 0, %.lr.ph ] ; 2 uses
  %i.aa = trunc i64 %.sroa.10.0.lcssa to i8
  %i.ab = and i8 %i.aa, 127                       ; 2 uses
  %.not.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i, label %roundFloatXTo113.exit, label %.thread34

.thread34:                                        ; preds = %bb.f, %._crit_edge
  %i.ac = phi i8 [ %i.ab, %._crit_edge ], [ 1, %bb.f ] ; 2 uses
  %.141 = phi i64 [ %.022.lcssa, %._crit_edge ], [ %i.s, %bb.f ] ; 7 uses
  %.sroa.10.140 = phi i64 [ %.sroa.10.0.lcssa, %._crit_edge ], [ 1, %bb.f ] ; 2 uses
  %.sroa.17.139 = phi i64 [ %.sroa.17.0.lcssa, %._crit_edge ], [ 0, %bb.f ] ; 7 uses
  %i.ad = and i64 %.sroa.10.140, -128             ; 7 uses
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread34
  %i.ae = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread34
  switch i8 %1, label %bb.n [
    i8 0, label %bb.i
    i8 1, label %roundFloatXTo113.exit
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 6, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.ag = icmp samesign ult i8 %i.ac, 64
  %i.ah = and i64 %.sroa.10.140, 255
  %or.cond.i = icmp eq i64 %i.ah, 64
  %or.cond28.i = or i1 %i.ag, %or.cond.i
  br i1 %or.cond28.i, label %roundFloatXTo113.exit, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ai = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.ai, label %bb.n, label %roundFloatXTo113.exit

bb.k:                                             ; preds = %bb.h
  %i.aj = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.aj, label %roundFloatXTo113.exit, label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.ak = icmp samesign ult i8 %i.ac, 64
  br i1 %i.ak, label %roundFloatXTo113.exit, label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.al = or i64 %i.ad, 128
  br label %roundFloatXTo113.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.am = add i64 %i.ad, 128                      ; 2 uses
  %.not27.i = icmp eq i64 %i.am, 0
  %i.an = zext i1 %.not27.i to i64
  %i.ao = add i64 %.sroa.17.139, %i.an            ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 72057594037927936
  %spec.select = select i1 %i.ap, i64 36028797018963968, i64 %i.ao
  br label %roundFloatXTo113.exit

roundFloatXTo113.exit:                            ; preds = %bb.n, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %._crit_edge
  %.142 = phi i64 [ %.022.lcssa, %._crit_edge ], [ %.141, %bb.n ], [ %.141, %bb.h ], [ %.141, %bb.m ], [ %.141, %bb.l ], [ %.141, %bb.k ], [ %.141, %bb.j ], [ %.141, %bb.i ]
  %.sroa.17.3 = phi i64 [ %.sroa.17.0.lcssa, %._crit_edge ], [ %spec.select, %bb.n ], [ %.sroa.17.139, %bb.h ], [ %.sroa.17.139, %bb.m ], [ %.sroa.17.139, %bb.l ], [ %.sroa.17.139, %bb.k ], [ %.sroa.17.139, %bb.j ], [ %.sroa.17.139, %bb.i ]
  %.sroa.10.2 = phi i64 [ %.sroa.10.0.lcssa, %._crit_edge ], [ %i.am, %bb.n ], [ %i.ad, %bb.h ], [ %i.al, %bb.m ], [ %i.ad, %bb.l ], [ %i.ad, %bb.k ], [ %i.ad, %bb.j ], [ %i.ad, %bb.i ]
  %i.aq = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.10.2, i64 %.sroa.17.3, i32 noundef 7) #10 ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.aq, 0      ; 2 uses
  %i.as = extractvalue { i64, i64 } %i.aq, 1
  %i.at = icmp slt i64 %.142, 0
  %i.au = icmp ne i64 %i.as, 0
  %or.cond = select i1 %i.at, i1 true, i1 %i.au
  %i.av = trunc nuw i8 %.sroa.3.0.copyload to i1
  %i.aw = icmp ne i64 %i.ar, 0
  %or.cond5 = select i1 %i.av, i1 %i.aw, i1 false
  %or.cond44 = select i1 %or.cond, i1 true, i1 %or.cond5
  br i1 %or.cond44, label %bb.o, label %bb.p

bb.o:                                             ; preds = %roundFloatXTo113.exit
  %i.ax = or i8 %i.r, 16
  store i8 %i.ax, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ay = xor i8 %.sroa.3.0.copyload, 1
  %i.az = zext nneg i8 %i.ay to i64
  %i.ba = sub nsw i64 0, %i.az
  br label %bb.p

bb.p:                                             ; preds = %roundFloatXTo113.exit, %bb.c, %bb.e, %bb.d, %bb.o
  %.0 = phi i64 [ 0, %bb.e ], [ %i.n, %bb.d ], [ %i.ba, %bb.o ], [ -1, %bb.c ], [ %i.ar, %roundFloatXTo113.exit ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @slow_f16_to_i32(i16 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToI32(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i64 -2147483648, 2147483648) i64 @floatXToI32(ptr nofree noundef nonnull readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !16, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.g = or i8 %i.f, 16
  store i8 %i.g, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.t

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.i = or i8 %i.h, 16
  store i8 %i.i, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i64 -2147483648, i64 2147483647
  br label %bb.t

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 2, !tbaa !19, !range !23, !noundef !24
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !25 ; 4 uses
  %.sroa.828.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.828.0.copyload = load i64, ptr %.sroa.828.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %i.r = sub nsw i64 52, %.sroa.828.0.copyload    ; 3 uses
  %i.s = icmp slt i64 %.sroa.828.0.copyload, -4
  br i1 %i.s, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.t = icmp slt i64 %.sroa.828.0.copyload, 52
  br i1 %i.t, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.01939 = phi i64 [ %i.x, %.lr.ph ], [ %i.r, %.preheader ] ; 2 uses
  %.sroa.11.038 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.11.0.copyload, %.preheader ]
  %.sroa.18.037 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.18.0.copyload, %.preheader ]
  %i.u = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.11.038, i64 %.sroa.18.037, i32 noundef 1) #10 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = add nsw i64 %.01939, -1
  %i.y = icmp sgt i64 %.01939, 1
  br i1 %i.y, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.f
  %.sroa.18.1 = phi i64 [ 0, %bb.f ], [ %.sroa.18.0.copyload, %.preheader ], [ %i.w, %.lr.ph ] ; 4 uses
  %.sroa.11.1 = phi i64 [ 1, %bb.f ], [ %.sroa.11.0.copyload, %.preheader ], [ %i.v, %.lr.ph ] ; 2 uses
  %.1 = phi i64 [ %i.r, %bb.f ], [ %i.r, %.preheader ], [ 0, %.lr.ph ]
  %i.z = and i64 %.sroa.18.1, 7                   ; 3 uses
  %i.aa = icmp ne i64 %.sroa.11.1, 0
  %i.ab = zext i1 %i.aa to i64
  %i.ac = or i64 %i.z, %i.ab                      ; 2 uses
  %.not.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i, label %roundFloatXTo53.exit, label %bb.g

bb.g:                                             ; preds = %.loopexit
  %i.ad = and i64 %.sroa.18.1, -8                 ; 8 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.af = or i8 %i.ae, 1
  store i8 %i.af, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  switch i8 %1, label %bb.p [
    i8 0, label %bb.j
    i8 1, label %roundFloatXTo53.exit
    i8 2, label %bb.l
    i8 3, label %bb.m
    i8 4, label %bb.n
    i8 6, label %bb.o
  ]

bb.j:                                             ; preds = %bb.i
  %i.ag = icmp samesign ult i64 %i.z, 4
  br i1 %i.ag, label %roundFloatXTo53.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = icmp eq i64 %i.ac, 4
  %i.ai = and i64 %.sroa.18.1, 8
  %.not23.i = icmp eq i64 %i.ai, 0
  %or.cond.i = and i1 %.not23.i, %i.ah
  br i1 %or.cond.i, label %roundFloatXTo53.exit, label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.aj = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.aj, label %bb.p, label %roundFloatXTo53.exit

bb.m:                                             ; preds = %bb.i
  %i.ak = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.ak, label %roundFloatXTo53.exit, label %bb.p

bb.n:                                             ; preds = %bb.i
  %i.al = icmp samesign ult i64 %i.z, 4
  br i1 %i.al, label %roundFloatXTo53.exit, label %bb.p

bb.o:                                             ; preds = %bb.i
  %i.am = or i64 %i.ad, 8
  br label %roundFloatXTo53.exit

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %bb.i
  %i.an = add i64 %i.ad, 8                        ; 2 uses
  %i.ao = icmp eq i64 %i.an, 72057594037927936
  %spec.select35 = select i1 %i.ao, i64 36028797018963968, i64 %i.an
  br label %roundFloatXTo53.exit

roundFloatXTo53.exit:                             ; preds = %bb.p, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %.loopexit
  %.sroa.18.2 = phi i64 [ %.sroa.18.1, %.loopexit ], [ %i.am, %bb.o ], [ %spec.select35, %bb.p ], [ %i.ad, %bb.j ], [ %i.ad, %bb.k ], [ %i.ad, %bb.i ], [ %i.ad, %bb.l ], [ %i.ad, %bb.m ], [ %i.ad, %bb.n ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.1, %.loopexit ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.m ], [ 0, %bb.n ]
  %i.ap = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.11.2, i64 %.sroa.18.2, i32 noundef 3) #10
  %i.aq = extractvalue { i64, i64 } %i.ap, 1      ; 2 uses
  %i.ar = trunc i64 %i.aq to i32                  ; 2 uses
  %i.as = trunc nuw i8 %.sroa.3.0.copyload to i1  ; 2 uses
  %i.at = sub i32 0, %i.ar
  %spec.select = select i1 %i.as, i32 %i.at, i32 %i.ar ; 3 uses
  %i.au = icmp sgt i64 %.1, -1
  %.not = icmp ult i64 %i.aq, 4294967296
  %or.cond = select i1 %i.au, i1 %.not, i1 false
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %roundFloatXTo53.exit
  %.not22 = icmp eq i32 %spec.select, 0
  %i.av = zext nneg i8 %.sroa.3.0.copyload to i32
  %.sroa.03.0.lobit = lshr i32 %spec.select, 31
  %.not23 = icmp eq i32 %.sroa.03.0.lobit, %i.av
  %or.cond36 = select i1 %.not22, i1 true, i1 %.not23
  br i1 %or.cond36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %roundFloatXTo53.exit
  %i.aw = or i8 %i.q, 16
  store i8 %i.aw, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ax = select i1 %i.as, i64 -2147483648, i64 2147483647
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ay = sext i32 %spec.select to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.s, %bb.r
  %.0 = phi i64 [ %i.ay, %bb.s ], [ %i.m, %bb.d ], [ %i.ax, %bb.r ], [ 2147483647, %bb.c ], [ 0, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f16_to_i64(i16 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToI64(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @floatXToI64(ptr nofree noundef nonnull readonly captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !17, !range !23, !noundef !24
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %0, align 8, !tbaa !16, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.g = or i8 %i.f, 16
  store i8 %i.g, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.h = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.i = or i8 %i.h, 16
  store i8 %i.i, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.k = load i8, ptr %i.j, align 1, !tbaa !18, !range !23, !noundef !24
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = select i1 %i.l, i64 -9223372036854775808, i64 9223372036854775807
  br label %bb.r

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.o = load i8, ptr %i.n, align 2, !tbaa !19, !range !23, !noundef !24
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.r, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  %.sroa.3.0.copyload = load i8, ptr %.sroa.3.0..sroa_idx, align 1, !tbaa !25 ; 4 uses
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.830.0.copyload = load i64, ptr %.sroa.830.0..sroa_idx, align 8, !tbaa !26 ; 3 uses
  %i.r = sub nsw i64 112, %.sroa.830.0.copyload   ; 3 uses
  %i.s = icmp slt i64 %.sroa.830.0.copyload, -4
  br i1 %i.s, label %.thread37, label %.preheader

.preheader:                                       ; preds = %bb.f
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.18.0.copyload = load i64, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !26 ; 2 uses
  %i.t = icmp slt i64 %.sroa.830.0.copyload, 112
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.02249 = phi i64 [ %i.x, %.lr.ph ], [ %i.r, %.preheader ] ; 2 uses
  %.sroa.11.048 = phi i64 [ %i.v, %.lr.ph ], [ %.sroa.11.0.copyload, %.preheader ]
  %.sroa.18.047 = phi i64 [ %i.w, %.lr.ph ], [ %.sroa.18.0.copyload, %.preheader ]
  %i.u = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.11.048, i64 %.sroa.18.047, i32 noundef 1) #10 ; 2 uses
  %i.v = extractvalue { i64, i64 } %i.u, 0        ; 2 uses
  %i.w = extractvalue { i64, i64 } %i.u, 1        ; 2 uses
  %i.x = add nsw i64 %.02249, -1
  %i.y = icmp sgt i64 %.02249, 1
  br i1 %i.y, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.sroa.18.0.lcssa = phi i64 [ %.sroa.18.0.copyload, %.preheader ], [ %i.w, %.lr.ph ] ; 2 uses
  %.sroa.11.0.lcssa = phi i64 [ %.sroa.11.0.copyload, %.preheader ], [ %i.v, %.lr.ph ] ; 3 uses
  %.022.lcssa = phi i64 [ %i.r, %.preheader ], [ 0, %.lr.ph ] ; 2 uses
  %i.z = trunc i64 %.sroa.11.0.lcssa to i8
  %i.aa = and i8 %i.z, 127                        ; 2 uses
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %roundFloatXTo113.exit, label %.thread37

.thread37:                                        ; preds = %bb.f, %._crit_edge
  %i.ab = phi i8 [ %i.aa, %._crit_edge ], [ 1, %bb.f ] ; 2 uses
  %.144 = phi i64 [ %.022.lcssa, %._crit_edge ], [ %i.r, %bb.f ] ; 7 uses
  %.sroa.11.143 = phi i64 [ %.sroa.11.0.lcssa, %._crit_edge ], [ 1, %bb.f ] ; 2 uses
  %.sroa.18.142 = phi i64 [ %.sroa.18.0.lcssa, %._crit_edge ], [ 0, %bb.f ] ; 7 uses
  %i.ac = and i64 %.sroa.11.143, -128             ; 7 uses
  br i1 %2, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread37
  %i.ad = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ae = or i8 %i.ad, 1
  store i8 %i.ae, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread37
  switch i8 %1, label %bb.n [
    i8 0, label %bb.i
    i8 1, label %roundFloatXTo113.exit
    i8 2, label %bb.j
    i8 3, label %bb.k
    i8 4, label %bb.l
    i8 6, label %bb.m
  ]

bb.i:                                             ; preds = %bb.h
  %i.af = icmp samesign ult i8 %i.ab, 64
  %i.ag = and i64 %.sroa.11.143, 255
  %or.cond.i = icmp eq i64 %i.ag, 64
  %or.cond28.i = or i1 %i.af, %or.cond.i
  br i1 %or.cond28.i, label %roundFloatXTo113.exit, label %bb.n

bb.j:                                             ; preds = %bb.h
  %i.ah = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.ah, label %bb.n, label %roundFloatXTo113.exit

bb.k:                                             ; preds = %bb.h
  %i.ai = trunc nuw i8 %.sroa.3.0.copyload to i1
  br i1 %i.ai, label %roundFloatXTo113.exit, label %bb.n

bb.l:                                             ; preds = %bb.h
  %i.aj = icmp samesign ult i8 %i.ab, 64
  br i1 %i.aj, label %roundFloatXTo113.exit, label %bb.n

bb.m:                                             ; preds = %bb.h
  %i.ak = or i64 %i.ac, 128
  br label %roundFloatXTo113.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.al = add i64 %i.ac, 128                      ; 2 uses
  %.not27.i = icmp eq i64 %i.al, 0
  %i.am = zext i1 %.not27.i to i64
  %i.an = add i64 %.sroa.18.142, %i.am            ; 2 uses
  %i.ao = icmp eq i64 %i.an, 72057594037927936
  %spec.select46 = select i1 %i.ao, i64 36028797018963968, i64 %i.an
  br label %roundFloatXTo113.exit

roundFloatXTo113.exit:                            ; preds = %bb.n, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %._crit_edge
  %.145 = phi i64 [ %.022.lcssa, %._crit_edge ], [ %.144, %bb.n ], [ %.144, %bb.h ], [ %.144, %bb.m ], [ %.144, %bb.l ], [ %.144, %bb.k ], [ %.144, %bb.j ], [ %.144, %bb.i ]
  %.sroa.18.3 = phi i64 [ %.sroa.18.0.lcssa, %._crit_edge ], [ %spec.select46, %bb.n ], [ %.sroa.18.142, %bb.h ], [ %.sroa.18.142, %bb.m ], [ %.sroa.18.142, %bb.l ], [ %.sroa.18.142, %bb.k ], [ %.sroa.18.142, %bb.j ], [ %.sroa.18.142, %bb.i ]
  %.sroa.11.2 = phi i64 [ %.sroa.11.0.lcssa, %._crit_edge ], [ %i.al, %bb.n ], [ %i.ac, %bb.h ], [ %i.ak, %bb.m ], [ %i.ac, %bb.l ], [ %i.ac, %bb.k ], [ %i.ac, %bb.j ], [ %i.ac, %bb.i ]
  %i.ap = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.11.2, i64 %.sroa.18.3, i32 noundef 7) #10 ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0      ; 2 uses
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  %i.as = trunc nuw i8 %.sroa.3.0.copyload to i1  ; 2 uses
  %i.at = sub i64 0, %i.aq
  %spec.select = select i1 %i.as, i64 %i.at, i64 %i.aq ; 3 uses
  %i.au = icmp slt i64 %.145, 0
  %i.av = icmp ne i64 %i.ar, 0
  %or.cond = select i1 %i.au, i1 true, i1 %i.av
  br i1 %or.cond, label %bb.q, label %bb.o

bb.o:                                             ; preds = %roundFloatXTo113.exit
  %.not = icmp eq i64 %spec.select, 0
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.sroa.06.0.lobit = lshr i64 %spec.select, 63
  %i.aw = zext nneg i8 %.sroa.3.0.copyload to i64
  %.not25 = icmp eq i64 %.sroa.06.0.lobit, %i.aw
  br i1 %.not25, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p, %roundFloatXTo113.exit
  %i.ax = or i8 %i.q, 16
  store i8 %i.ax, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ay = select i1 %i.as, i64 -9223372036854775808, i64 9223372036854775807
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.o, %bb.p, %bb.e, %bb.d, %bb.q
  %.0 = phi i64 [ 0, %bb.e ], [ %i.m, %bb.d ], [ %i.ay, %bb.q ], [ 9223372036854775807, %bb.c ], [ %spec.select, %bb.p ], [ 0, %bb.o ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 0, 4294967296) i64 @slow_f16_to_ui32_r_minMag(i16 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  %i.v = call fastcc i64 @floatXToUI32(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local i64 @slow_f16_to_ui64_r_minMag(i16 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

end_hunk_0
begin_hunk_1_@slow_f16_to_extF80M:bb.a
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  call fastcc void @floatXToExtF80M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @slow_f16_to_f128M(i16 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  call fastcc void @floatXToF128M(ptr noundef %2, ptr noundef %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_f16_roundToInt(i16 %0, i8 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.floatX, align 8             ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  call fastcc void @floatXRoundToInt(ptr noundef %3, i8 noundef zeroext %1, i1 noundef zeroext %2)
  %i.v = call fastcc i16 @floatXToF16(ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  ret i16 %i.v
}

; Function Attrs: nounwind uwtable
define internal fastcc void @floatXRoundToInt(ptr nofree noundef nonnull captures(none) %0, i8 noundef zeroext %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !16, !range !23, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !17, !range !23, !noundef !24
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 3 uses
  %i.h = sub nsw i64 112, %i.g
  %i.i = icmp sgt i64 %i.g, 111
  br i1 %i.i, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i64 %i.g, -7
  br i1 %i.j, label %bb.e, label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.d
  store i64 112, ptr %i.f, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.l, align 8, !tbaa !21
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 2, !tbaa !19, !range !23, !noundef !24
  %i.o = xor i8 %i.n, 1
  %i.p = zext nneg i8 %i.o to i64                 ; 2 uses
  store i64 %i.p, ptr %i.k, align 8, !tbaa !22
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  %.sroa.01.0.copyload = load i64, ptr %i.q, align 8, !tbaa !26
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.02631 = phi i64 [ %i.u, %.lr.ph ], [ %i.h, %.lr.ph.preheader ] ; 2 uses
  %.sroa.01.030 = phi i64 [ %i.s, %.lr.ph ], [ %.sroa.01.0.copyload, %.lr.ph.preheader ]
  %.sroa.6.029 = phi i64 [ %i.t, %.lr.ph ], [ %.sroa.6.0.copyload, %.lr.ph.preheader ]
  %i.r = tail call { i64, i64 } @shortShiftRightJam128(i64 %.sroa.01.030, i64 %.sroa.6.029, i32 noundef 1) #10 ; 2 uses
  %i.s = extractvalue { i64, i64 } %i.r, 0        ; 3 uses
  %i.t = extractvalue { i64, i64 } %i.r, 1        ; 3 uses
  %i.u = add nsw i64 %.02631, -1
  %i.v = icmp sgt i64 %.02631, 1
  br i1 %i.v, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph
  store i64 112, ptr %i.f, align 8, !tbaa !20
  store i64 %i.s, ptr %i.q, align 8, !tbaa !26
  store i64 %i.t, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.w = phi i64 [ %i.t, %._crit_edge ], [ 0, %bb.e ] ; 8 uses
  %i.x = phi i64 [ %i.s, %._crit_edge ], [ %i.p, %bb.e ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = trunc i64 %i.x to i8
  %i.aa = and i8 %i.z, 127                        ; 3 uses
  %.not.i = icmp eq i8 %i.aa, 0
  br i1 %.not.i, label %roundFloatXTo113.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = and i64 %i.x, -128                      ; 7 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  switch i8 %1, label %bb.o [
    i8 0, label %bb.j
    i8 1, label %bb.r
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.m
    i8 6, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = icmp samesign ult i8 %i.aa, 64
  %i.af = and i64 %i.x, 255
  %or.cond.i = icmp eq i64 %i.af, 64
  %or.cond28.i = or i1 %or.cond.i, %i.ae
  br i1 %or.cond28.i, label %bb.r, label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !18, !range !23, !noundef !24
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.o, label %bb.r

bb.l:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18, !range !23, !noundef !24
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.am = icmp samesign ult i8 %i.aa, 64
  br i1 %i.am, label %bb.r, label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.an = or i64 %i.ab, 128
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ao = add i64 %i.ab, 128                      ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not27.i = icmp eq i64 %i.ao, 0
  %i.aq = zext i1 %.not27.i to i64
  %i.ar = add i64 %i.w, %i.aq                     ; 2 uses
  %i.as = icmp eq i64 %i.ar, 72057594037927936
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i64 113, ptr %i.f, align 8, !tbaa !20
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i = phi i64 [ 36028797018963968, %bb.p ], [ %i.ar, %bb.o ] ; 2 uses
  store i64 %.0.i, ptr %i.ap, align 8, !tbaa !21
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.at = phi i64 [ %.0.i, %bb.q ], [ %i.w, %bb.j ], [ %i.w, %bb.n ], [ %i.w, %bb.i ], [ %i.w, %bb.k ], [ %i.w, %bb.l ], [ %i.w, %bb.m ]
  %.022.i = phi i64 [ %i.ao, %bb.q ], [ %i.ab, %bb.j ], [ %i.an, %bb.n ], [ %i.ab, %bb.i ], [ %i.ab, %bb.k ], [ %i.ab, %bb.l ], [ %i.ab, %bb.m ] ; 2 uses
  store i64 %.022.i, ptr %i.y, align 8, !tbaa !22
  br label %roundFloatXTo113.exit

roundFloatXTo113.exit:                            ; preds = %bb.f, %bb.r
  %i.au = phi i64 [ %i.x, %bb.f ], [ %.022.i, %bb.r ]
  %i.av = phi i64 [ %i.w, %bb.f ], [ %i.at, %bb.r ]
  %i.aw = or i64 %i.av, %i.au
  %or.cond = icmp eq i64 %i.aw, 0
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %roundFloatXTo113.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 1, ptr %i.ax, align 2, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %roundFloatXTo113.exit, %bb.s, %bb.c, %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i16 @slow_f16_add(i16 %0, i16 %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.floatX, align 8             ; 13 uses
  %3 = alloca %struct.floatX, align 8             ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i8 0, ptr %2, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1 ; 2 uses
  store i8 0, ptr %i.a, align 1, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  store i8 0, ptr %i.b, align 2, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 3
  %.lobit.i = lshr i16 %0, 15
  %i.d = trunc nuw nsw i16 %.lobit.i to i8
  store i8 %i.d, ptr %i.c, align 1, !tbaa !18
  %i.e = lshr i16 %0, 10
  %i.f = trunc nuw nsw i16 %i.e to i8
  %i.g = and i8 %i.f, 31                          ; 2 uses
  %i.h = and i16 %0, 1023                         ; 3 uses
  %i.i = zext nneg i16 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 45                 ; 3 uses
  switch i8 %i.g, label %bb.h [
    i8 31, label %bb.b
    i8 0, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %.not32.i = icmp eq i16 %i.h, 0
  br i1 %.not32.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %2, align 8, !tbaa !16
  br label %f16ToFloatX.exit

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 1, !tbaa !17
  br label %f16ToFloatX.exit

bb.e:                                             ; preds = %bb.a
  %.not31.i = icmp eq i16 %i.h, 0
  br i1 %.not31.i, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.b, align 2, !tbaa !19
  br label %f16ToFloatX.exit

.preheader.i:                                     ; preds = %bb.e, %.preheader.i
  %.026.i = phi i8 [ %i.k, %.preheader.i ], [ -14, %bb.e ]
  %.0.i = phi i64 [ %i.l, %.preheader.i ], [ %i.j, %bb.e ] ; 2 uses
  %i.k = add i8 %.026.i, -1                       ; 2 uses
  %i.l = shl nuw nsw i64 %.0.i, 1                 ; 2 uses
  %i.m = icmp ult i64 %.0.i, 18014398509481984
  br i1 %i.m, label %.preheader.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.n = sext i8 %i.k to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !20
  br label %f16ToFloatX.exit

bb.h:                                             ; preds = %bb.a
  %i.p = zext nneg i8 %i.g to i64
  %i.q = add nsw i64 %i.p, -15
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !20
  %i.s = or disjoint i64 %i.j, 36028797018963968
  br label %f16ToFloatX.exit

f16ToFloatX.exit:                                 ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.h
  %.1.i = phi i64 [ %i.j, %bb.c ], [ 0, %bb.d ], [ %i.s, %bb.h ], [ %i.l, %bb.g ], [ 0, %bb.f ]
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %.1.i, ptr %i.u, align 8, !tbaa !21
  store i64 0, ptr %i.t, align 8, !tbaa !22
  store i8 0, ptr %3, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 1 ; 2 uses
  store i8 0, ptr %i.v, align 1, !tbaa !17
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  store i8 0, ptr %i.w, align 2, !tbaa !19
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 3
  %.lobit.i3 = lshr i16 %1, 15
  %i.y = trunc nuw nsw i16 %.lobit.i3 to i8
  store i8 %i.y, ptr %i.x, align 1, !tbaa !18
  %i.z = lshr i16 %1, 10
  %i.aa = trunc nuw nsw i16 %i.z to i8
  %i.ab = and i8 %i.aa, 31                        ; 2 uses
  %i.ac = and i16 %1, 1023                        ; 3 uses
  %i.ad = zext nneg i16 %i.ac to i64
  %i.ae = shl nuw nsw i64 %i.ad, 45               ; 3 uses
  switch i8 %i.ab, label %bb.o [
    i8 31, label %bb.i
    i8 0, label %bb.l
  ]

bb.i:                                             ; preds = %f16ToFloatX.exit
  %.not32.i9 = icmp eq i16 %i.ac, 0
  br i1 %.not32.i9, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %3, align 8, !tbaa !16
  br label %f16ToFloatX.exit10

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.v, align 1, !tbaa !17
  br label %f16ToFloatX.exit10

bb.l:                                             ; preds = %f16ToFloatX.exit
  %.not31.i4 = icmp eq i16 %i.ac, 0
  br i1 %.not31.i4, label %bb.m, label %.preheader.i5

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.w, align 2, !tbaa !19
  br label %f16ToFloatX.exit10

.preheader.i5:                                    ; preds = %bb.l, %.preheader.i5
  %.026.i6 = phi i8 [ %i.af, %.preheader.i5 ], [ -14, %bb.l ]
  %.0.i7 = phi i64 [ %i.ag, %.preheader.i5 ], [ %i.ae, %bb.l ] ; 2 uses
  %i.af = add i8 %.026.i6, -1                     ; 2 uses
  %i.ag = shl nuw nsw i64 %.0.i7, 1               ; 2 uses
  %i.ah = icmp ult i64 %.0.i7, 18014398509481984
  br i1 %i.ah, label %.preheader.i5, label %bb.n

bb.n:                                             ; preds = %.preheader.i5
  %i.ai = sext i8 %i.af to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !20
  br label %f16ToFloatX.exit10

bb.o:                                             ; preds = %f16ToFloatX.exit
  %i.ak = zext nneg i8 %i.ab to i64
  %i.al = add nsw i64 %i.ak, -15
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !20
  %i.an = or disjoint i64 %i.ae, 36028797018963968
  br label %f16ToFloatX.exit10

f16ToFloatX.exit10:                               ; preds = %bb.j, %bb.k, %bb.m, %bb.n, %bb.o
  %.1.i8 = phi i64 [ %i.ae, %bb.j ], [ 0, %bb.k ], [ %i.an, %bb.o ], [ %i.ag, %bb.n ], [ 0, %bb.m ]
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %.1.i8, ptr %i.ap, align 8, !tbaa !21
  store i64 0, ptr %i.ao, align 8, !tbaa !22
  call fastcc void @floatXAdd(ptr noundef %2, ptr noundef %3)
  %i.aq = call fastcc i16 @floatXToF16(ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i16 %i.aq
}

; Function Attrs: nounwind uwtable
define internal fastcc void @floatXAdd(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !16, !range !23, !noundef !24
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 8, !tbaa !16, !range !23, !noundef !24
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17, !range !23, !noundef !24
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.i = load i8, ptr %i.h, align 1, !tbaa !17, !range !23, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1                  ; 2 uses
  br i1 %i.g, label %bb.d, label %bb.g

end_hunk_1
begin_hunk_2_@roundFloatXTo53:bb.a
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 4, label %bb.k
    i8 6, label %bb.l
  ]

bb.g:                                             ; preds = %bb.f
  %i.n = icmp samesign ult i64 %i.d, 4
  br i1 %i.n, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = icmp eq i64 %i.h, 4
  %i.p = and i64 %i.c, 8
  %.not23 = icmp eq i64 %i.p, 0
  %or.cond = and i1 %.not23, %i.o
  br i1 %or.cond, label %bb.o, label %bb.m

bb.i:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18, !range !23, !noundef !24
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %bb.m, label %bb.o

bb.j:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !18, !range !23, !noundef !24
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.o, label %bb.m

bb.k:                                             ; preds = %bb.f
  %i.w = icmp samesign ult i64 %i.d, 4
  br i1 %i.w, label %bb.o, label %bb.m

bb.l:                                             ; preds = %bb.f
  %i.x = or i64 %i.i, 8
  br label %bb.o

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.f
  %i.y = add i64 %i.i, 8                          ; 2 uses
  %i.z = icmp eq i64 %i.y, 72057594037927936
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !20
  %i.ac = add nsw i64 %i.ab, 1
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !20
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.m, %bb.n, %bb.k, %bb.j, %bb.i, %bb.f, %bb.g, %bb.l
  %.0 = phi i64 [ 36028797018963968, %bb.n ], [ %i.y, %bb.m ], [ %i.i, %bb.g ], [ %i.i, %bb.h ], [ %i.i, %bb.f ], [ %i.i, %bb.i ], [ %i.i, %bb.j ], [ %i.i, %bb.k ], [ %i.x, %bb.l ]
  store i64 %.0, ptr %i.b, align 8, !tbaa !21
  store i64 0, ptr %i.a, align 8, !tbaa !22
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @roundFloatXTo64(i1 noundef zeroext %0, ptr nofree noundef nonnull captures(none) %1, i8 noundef zeroext %2) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.c = and i64 %i.b, 72057594037927935          ; 3 uses
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, -72057594037927936         ; 7 uses
  %i.e = load i8, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  %spec.select.v = select i1 %0, i8 3, i8 1
  %spec.select = or i8 %i.e, %spec.select.v
  store i8 %spec.select, ptr @slowfloat_exceptionFlags, align 1, !tbaa !27
  switch i8 %2, label %bb.h [
    i8 0, label %bb.c
    i8 1, label %bb.k
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 6, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i64 %i.c, 36028797018963968
  %i.g = and i64 %i.b, 144115188075855871
  %or.cond = icmp eq i64 %i.g, 36028797018963968
  %or.cond27 = or i1 %i.f, %or.cond
  br i1 %or.cond27, label %bb.k, label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !18, !range !23, !noundef !24
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.h, label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.l = load i8, ptr %i.k, align 1, !tbaa !18, !range !23, !noundef !24
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.k, label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i64 %i.c, 36028797018963968
  br i1 %i.n, label %bb.k, label %bb.h

bb.g:                                             ; preds = %bb.b
  %i.o = or i64 %i.d, 72057594037927936
  br label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.b
  %i.p = add i64 %i.d, 72057594037927936          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !21
  %.not26 = icmp eq i64 %i.p, 0
  %i.s = zext i1 %.not26 to i64
  %i.t = add i64 %i.r, %i.s                       ; 2 uses
  %i.u = icmp eq i64 %i.t, 72057594037927936
  br i1 %i.u, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !20
  %i.x = add nsw i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8, !tbaa !20
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi i64 [ 36028797018963968, %bb.i ], [ %i.t, %bb.h ]
  store i64 %.0, ptr %i.q, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.j, %bb.g
  %.022 = phi i64 [ %i.p, %bb.j ], [ %i.d, %bb.c ], [ %i.o, %bb.g ], [ %i.d, %bb.b ], [ %i.d, %bb.d ], [ %i.d, %bb.e ], [ %i.d, %bb.f ]
  store i64 %.022, ptr %i.a, align 8, !tbaa !22
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  ret void
}

declare { i64, i64 } @neg128(i64, i64) local_unnamed_addr #4

declare { i64, i64 } @add128(i64, i64, i64, i64) local_unnamed_addr #4

declare { i64, i64 } @shortShiftRight128(i64, i64, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @add256M(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !36     ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !36
  %i.c = add i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.a
  store i64 %i.c, ptr %0, align 8, !tbaa !36
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !37
  %i.i = add i64 %i.h, %i.f                       ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.f
  %i.k = zext i1 %i.j to i64
  %i.l = zext i1 %i.d to i64                      ; 2 uses
  %i.m = add i64 %i.i, %i.l                       ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = zext i1 %i.n to i64
  %i.p = add nuw nsw i64 %i.o, %i.k               ; 2 uses
  store i64 %i.m, ptr %i.e, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !38
  %i.u = add i64 %i.t, %i.r                       ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.r
  %i.w = zext i1 %i.v to i64
  %i.x = add i64 %i.p, %i.u                       ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.p
  %i.z = zext i1 %i.y to i64
  store i64 %i.x, ptr %i.q, align 8, !tbaa !38
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !39
  %i.ae = add i64 %i.ad, %i.ab
  %i.af = add i64 %i.ae, %i.w
  %i.ag = add i64 %i.af, %i.z
  store i64 %i.ag, ptr %i.aa, align 8, !tbaa !39
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_Bool", !8, i64 0}
!13 = !{!"long", !8, i64 0}
!14 = !{!"uint128", !13, i64 0, !13, i64 8}
!15 = !{!"floatX", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !13, i64 8, !14, i64 16}
!16 = !{!15, !12, i64 0}
!17 = !{!15, !12, i64 1}
!18 = !{!15, !12, i64 3}
!19 = !{!15, !12, i64 2}
!20 = !{!15, !13, i64 8}
!21 = !{!15, !13, i64 24}
!22 = !{!15, !13, i64 16}
!23 = !{i8 0, i8 2}
!24 = !{}
!25 = !{!12, !12, i64 0}
!26 = !{!13, !13, i64 0}
!27 = !{!8, !8, i64 0}
!28 = !{!"short", !8, i64 0}
!29 = !{!"extFloat80M", !13, i64 0, !28, i64 8}
!30 = !{!29, !28, i64 8}
!31 = !{i64 0, i64 1, !25, i64 1, i64 1, !25, i64 2, i64 1, !25, i64 3, i64 1, !25, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 8, !26}
!32 = !{!29, !13, i64 0}
!33 = !{!14, !13, i64 8}
!34 = !{!14, !13, i64 0}
!35 = !{!"uint256", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!36 = !{!35, !13, i64 0}
!37 = !{!35, !13, i64 8}
!38 = !{!35, !13, i64 16}
!39 = !{!35, !13, i64 24}
!40 = !{!"floatX256", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !13, i64 8, !35, i64 16}
!41 = !{!40, !12, i64 0}
!42 = !{!40, !12, i64 1}
!43 = !{!40, !12, i64 2}
!44 = !{!40, !12, i64 3}
!45 = !{!40, !13, i64 8}
!46 = !{!40, !13, i64 40}
!47 = !{!40, !13, i64 32}
!48 = !{i64 0, i64 1, !25, i64 1, i64 1, !25, i64 2, i64 1, !25, i64 3, i64 1, !25, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 8, !26, i64 32, i64 8, !26, i64 40, i64 8, !26}
!49 = !{!40, !13, i64 16}
!50 = !{i64 0, i64 8, !26, i64 8, i64 8, !26, i64 16, i64 8, !26, i64 24, i64 8, !26}
end_hunk_2
