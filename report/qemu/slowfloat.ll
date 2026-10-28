Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/slowfloat?download=true
inline.NumInlined: 295
inline.NumDeleted: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@slow_f16_to_i32:bb.a
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
  %i.v = call fastcc i64 @floatXToUI64(ptr noundef %2, i8 noundef zeroext 1, i1 noundef zeroext %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  ret i64 %i.v
}

; Function Attrs: nounwind uwtable
define dso_local range(i64 -2147483648, 2147483648) i64 @slow_f16_to_i32_r_minMag(i16 %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
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
