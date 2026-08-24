Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec07?download=true
inline.NumInlined: 75
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 30
begin_hunk_0_@If_Dec6Truth:bb.a
  %.sroa.10.0 = phi i64 [ undef, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.p = lshr i64 %0, 28
  %i.q = and i64 %i.p, 7                          ; 2 uses
  %i.r = icmp eq i64 %i.q, 6
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.q
  %i.t = load i64, ptr %i.s, align 8, !tbaa !12
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.14.0 = phi i64 [ undef, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %i.u = trunc i64 %0 to i32
  %i.v = and i32 %i.u, 65535
  %i.w = insertelement <4 x i64> poison, i64 %.sroa.6.0, i64 0
  %i.x = insertelement <4 x i64> %i.w, i64 %.sroa.0.0, i64 1
  %i.y = insertelement <4 x i64> %i.x, i64 %.sroa.10.0, i64 2
  %i.z = insertelement <4 x i64> %i.y, i64 %.sroa.14.0, i64 3
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.022.i = phi i64 [ 0, %bb.i ], [ %.1.i, %bb.k ] ; 2 uses
  %.01721.i = phi i32 [ 0, %bb.i ], [ %i.ap, %bb.k ] ; 6 uses
  %i.aa = shl nuw nsw i32 1, %.01721.i
  %i.ab = and i32 %i.v, %i.aa
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %bb.k, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.j
  %i.ac = lshr i32 %.01721.i, 3
  %i.ad = lshr i32 %.01721.i, 2
  %i.ae = lshr i32 %.01721.i, 1
  %i.af = insertelement <4 x i32> poison, i32 %i.ae, i64 0
  %i.ag = insertelement <4 x i32> %i.af, i32 %.01721.i, i64 1
  %i.ah = insertelement <4 x i32> %i.ag, i32 %i.ad, i64 2
  %i.ai = insertelement <4 x i32> %i.ah, i32 %i.ac, i64 3
  %i.aj = and <4 x i32> %i.ai, splat (i32 1)
  %i.ak = add nsw <4 x i32> %i.aj, splat (i32 -1)
  %i.al = sext <4 x i32> %i.ak to <4 x i64>
  %i.am = xor <4 x i64> %i.z, %i.al
  %i.an = tail call i64 @llvm.vector.reduce.and.v4i64(<4 x i64> %i.am)
  %i.ao = or i64 %i.an, %.022.i
  br label %bb.k

bb.k:                                             ; preds = %.preheader.preheader.i, %bb.j
  %.1.i = phi i64 [ %i.ao, %.preheader.preheader.i ], [ %.022.i, %bb.j ] ; 5 uses
  %i.ap = add nuw nsw i32 %.01721.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ap, 16
  br i1 %exitcond.not.i, label %If_Dec6ComposeLut4.exit.preheader, label %bb.j, !llvm.loop !14

If_Dec6ComposeLut4.exit.preheader:                ; preds = %bb.k
  %i.aq = lshr i64 %0, 48                         ; 2 uses
  %i.ar = trunc nuw nsw i64 %i.aq to i32
  %i.as = and i32 %i.ar, 7
  switch i32 %i.as, label %bb.l [
    i32 6, label %If_Dec6ComposeLut4.exit
    i32 7, label %bb.m
  ]

bb.l:                                             ; preds = %If_Dec6ComposeLut4.exit.preheader
  %i.at = and i64 %i.aq, 7
  %i.au = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.at
  %i.av = load i64, ptr %i.au, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit

bb.m:                                             ; preds = %If_Dec6ComposeLut4.exit.preheader
  br label %If_Dec6ComposeLut4.exit

If_Dec6ComposeLut4.exit:                          ; preds = %bb.l, %If_Dec6ComposeLut4.exit.preheader, %bb.m
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %If_Dec6ComposeLut4.exit.preheader ], [ %i.av, %bb.l ], [ %.1.i, %bb.m ]
  %i.aw = lshr i64 %0, 52                         ; 2 uses
  %i.ax = trunc nuw nsw i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 7
  switch i32 %i.ay, label %bb.n [
    i32 6, label %If_Dec6ComposeLut4.exit.1
    i32 7, label %bb.o
  ]

bb.n:                                             ; preds = %If_Dec6ComposeLut4.exit
  %i.az = and i64 %i.aw, 7
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit.1

bb.o:                                             ; preds = %If_Dec6ComposeLut4.exit
  br label %If_Dec6ComposeLut4.exit.1

If_Dec6ComposeLut4.exit.1:                        ; preds = %bb.n, %bb.o, %If_Dec6ComposeLut4.exit
  %.sroa.6.1 = phi i64 [ %.sroa.6.0, %If_Dec6ComposeLut4.exit ], [ %i.bb, %bb.n ], [ %.1.i, %bb.o ]
  %i.bc = lshr i64 %0, 56                         ; 2 uses
  %i.bd = trunc nuw nsw i64 %i.bc to i32
  %i.be = and i32 %i.bd, 7
  switch i32 %i.be, label %bb.p [
    i32 6, label %If_Dec6ComposeLut4.exit.2
    i32 7, label %bb.q
  ]

bb.p:                                             ; preds = %If_Dec6ComposeLut4.exit.1
  %i.bf = and i64 %i.bc, 7
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit.2

bb.q:                                             ; preds = %If_Dec6ComposeLut4.exit.1
  br label %If_Dec6ComposeLut4.exit.2

If_Dec6ComposeLut4.exit.2:                        ; preds = %bb.p, %bb.q, %If_Dec6ComposeLut4.exit.1
  %.sroa.10.1 = phi i64 [ %.sroa.10.0, %If_Dec6ComposeLut4.exit.1 ], [ %i.bh, %bb.p ], [ %.1.i, %bb.q ]
  %i.bi = lshr i64 %0, 60                         ; 2 uses
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = and i32 %i.bj, 7
  switch i32 %i.bk, label %bb.r [
    i32 6, label %If_Dec6ComposeLut4.exit.3
    i32 7, label %bb.s
  ]

bb.r:                                             ; preds = %If_Dec6ComposeLut4.exit.2
  %i.bl = and i64 %i.bi, 7
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !12
  br label %If_Dec6ComposeLut4.exit.3

bb.s:                                             ; preds = %If_Dec6ComposeLut4.exit.2
  br label %If_Dec6ComposeLut4.exit.3

If_Dec6ComposeLut4.exit.3:                        ; preds = %bb.r, %bb.s, %If_Dec6ComposeLut4.exit.2
  %.sroa.14.1 = phi i64 [ %.sroa.14.0, %If_Dec6ComposeLut4.exit.2 ], [ %i.bn, %bb.r ], [ %.1.i, %bb.s ]
  %i.bo = lshr i64 %0, 32
  %i.bp = trunc nuw i64 %i.bo to i32
  %i.bq = and i32 %i.bp, 65535
  %i.br = insertelement <4 x i64> poison, i64 %.sroa.6.1, i64 0
  %i.bs = insertelement <4 x i64> %i.br, i64 %.sroa.0.1, i64 1
  %i.bt = insertelement <4 x i64> %i.bs, i64 %.sroa.10.1, i64 2
  %i.bu = insertelement <4 x i64> %i.bt, i64 %.sroa.14.1, i64 3
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %If_Dec6ComposeLut4.exit.3
  %.022.i21 = phi i64 [ 0, %If_Dec6ComposeLut4.exit.3 ], [ %.1.i31, %bb.u ] ; 2 uses
  %.01721.i22 = phi i32 [ 0, %If_Dec6ComposeLut4.exit.3 ], [ %i.ck, %bb.u ] ; 6 uses
  %i.bv = shl nuw nsw i32 1, %.01721.i22
  %i.bw = and i32 %i.bq, %i.bv
  %.not.i23 = icmp eq i32 %i.bw, 0
  br i1 %.not.i23, label %bb.u, label %.preheader.preheader.i24

.preheader.preheader.i24:                         ; preds = %bb.t
  %i.bx = lshr i32 %.01721.i22, 3
  %i.by = lshr i32 %.01721.i22, 2
  %i.bz = lshr i32 %.01721.i22, 1
  %i.ca = insertelement <4 x i32> poison, i32 %i.bz, i64 0
  %i.cb = insertelement <4 x i32> %i.ca, i32 %.01721.i22, i64 1
  %i.cc = insertelement <4 x i32> %i.cb, i32 %i.by, i64 2
  %i.cd = insertelement <4 x i32> %i.cc, i32 %i.bx, i64 3
  %i.ce = and <4 x i32> %i.cd, splat (i32 1)
  %i.cf = add nsw <4 x i32> %i.ce, splat (i32 -1)
  %i.cg = sext <4 x i32> %i.cf to <4 x i64>
  %i.ch = xor <4 x i64> %i.bu, %i.cg
  %i.ci = tail call i64 @llvm.vector.reduce.and.v4i64(<4 x i64> %i.ch)
  %i.cj = or i64 %i.ci, %.022.i21
  br label %bb.u

bb.u:                                             ; preds = %.preheader.preheader.i24, %bb.t
  %.1.i31 = phi i64 [ %i.cj, %.preheader.preheader.i24 ], [ %.022.i21, %bb.t ] ; 2 uses
  %i.ck = add nuw nsw i32 %.01721.i22, 1          ; 2 uses
  %exitcond.not.i32 = icmp eq i32 %i.ck, 16
  br i1 %exitcond.not.i32, label %If_Dec6ComposeLut4.exit33, label %bb.t, !llvm.loop !14

If_Dec6ComposeLut4.exit33:                        ; preds = %bb.u
  ret i64 %.1.i31
}

; Function Attrs: nounwind uwtable
define void @If_Dec6Verify(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 2 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.c = tail call i64 @If_Dec6Truth(i64 noundef %1) ; 2 uses
  store i64 %i.c, ptr %i.b, align 8, !tbaa !12
  %.not = icmp eq i64 %i.c, %0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @If_DecPrintConfig(i64 noundef %1)
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef 6) #15
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.b, i32 noundef 6) #15
  %putchar2 = call i32 @putchar(i32 10)           ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  ret void
}

; Function Attrs: nounwind uwtable
define void @If_Dec7Verify(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.b = lshr i64 %1, 16
  %i.c = and i64 %i.b, 7
  %i.d = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.c ; 2 uses
  %2 = load i64, ptr %i.d, align 16, !tbaa !12
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %4 = load i64, ptr %3, align 8, !tbaa !12
  %i.e = lshr i64 %1, 20
  %i.f = and i64 %i.e, 7
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.f ; 2 uses
  %5 = load i64, ptr %i.g, align 16, !tbaa !12
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %7 = load i64, ptr %6, align 8, !tbaa !12
  %i.h = lshr i64 %1, 24
  %i.i = and i64 %i.h, 7
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.i ; 2 uses
  %8 = load i64, ptr %i.j, align 16, !tbaa !12
  %9 = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %10 = load i64, ptr %9, align 8, !tbaa !12
  %i.k = lshr i64 %1, 28
  %i.l = and i64 %i.k, 7
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.l ; 2 uses
  %11 = load i64, ptr %i.m, align 16, !tbaa !12
  %12 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %13 = load i64, ptr %12, align 8, !tbaa !12
  %i.n = trunc i64 %1 to i32
  %i.o = and i32 %i.n, 65535
  %14 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %15 = phi i64 [ 0, %bb.a ], [ %33, %bb.c ]
  %16 = phi i64 [ 0, %bb.a ], [ %34, %bb.c ]
  %17 = phi i64 [ 0, %bb.a ], [ %35, %bb.c ]      ; 2 uses
  %18 = phi i64 [ 0, %bb.a ], [ %36, %bb.c ]      ; 2 uses
  %.02328.i = phi i32 [ 0, %bb.a ], [ %i.z, %bb.c ] ; 6 uses
  %i.p = shl nuw nsw i32 1, %.02328.i
  %i.q = and i32 %i.o, %i.p
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %bb.c, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.b
  %i.r = and i32 %.02328.i, 1
  %sext = add nsw i32 %i.r, -1
  %i.s = sext i32 %sext to i64                    ; 2 uses
  %.pn.i = xor i64 %2, %i.s
  %19 = xor i64 %4, %i.s
  %i.t = lshr i32 %.02328.i, 1
  %i.u = and i32 %i.t, 1
  %sext64 = add nsw i32 %i.u, -1
  %i.v = sext i32 %sext64 to i64                  ; 2 uses
  %. = xor i64 %5, %i.v
  %.47 = xor i64 %7, %i.v
  %20 = and i64 %., %.pn.i
  %21 = and i64 %.47, %19
  %i.w = lshr i32 %.02328.i, 2
  %i.x = and i32 %i.w, 1
  %sext65.a = add nsw i32 %i.x, -1
  %i.y = sext i32 %sext65.a to i64                ; 2 uses
  %.pn.2.i = xor i64 %8, %i.y
  %22 = xor i64 %10, %i.y
  %23 = and i64 %20, %.pn.2.i
  %24 = and i64 %21, %22
  %25 = lshr i32 %.02328.i, 3
  %26 = and i32 %25, 1
  %sext66 = add nsw i32 %26, -1
  %27 = sext i32 %sext66 to i64                   ; 2 uses
  %.pn.3.i = xor i64 %11, %27
  %28 = xor i64 %13, %27
  %29 = and i64 %23, %.pn.3.i
  %30 = and i64 %24, %28
  %31 = or i64 %29, %18                           ; 2 uses
  %32 = or i64 %30, %17                           ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader.preheader.i, %bb.b
  %33 = phi i64 [ %15, %bb.b ], [ %32, %.preheader.preheader.i ] ; 2 uses
  %34 = phi i64 [ %16, %bb.b ], [ %31, %.preheader.preheader.i ] ; 3 uses
  %35 = phi i64 [ %17, %bb.b ], [ %32, %.preheader.preheader.i ]
  %36 = phi i64 [ %18, %bb.b ], [ %31, %.preheader.preheader.i ]
  %i.z = add nuw nsw i32 %.02328.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, 16
  br i1 %exitcond.not.i, label %If_Dec7ComposeLut4.exit, label %bb.b, !llvm.loop !16

If_Dec7ComposeLut4.exit:                          ; preds = %bb.c
  store i64 %34, ptr %i.a, align 16
  %i.aa = lshr i64 %1, 48
  %i.ab = and i64 %i.aa, 7
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.ab ; 2 uses
  %37 = load i64, ptr %i.ac, align 16, !tbaa !12
  %38 = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %39 = load i64, ptr %38, align 8, !tbaa !12
  %i.ad = lshr i64 %1, 52
  %i.ae = and i64 %i.ad, 7
  %i.af = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.ae ; 2 uses
  %40 = load i64, ptr %i.af, align 16, !tbaa !12
  %41 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %42 = load i64, ptr %41, align 8, !tbaa !12
  %i.ag = lshr i64 %1, 56
  %i.ah = and i64 %i.ag, 7
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr @Truth7, i64 %i.ah ; 2 uses
  %43 = load i64, ptr %i.ai, align 16, !tbaa !12
  %44 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %45 = load i64, ptr %44, align 8, !tbaa !12
  %i.aj = lshr i64 %1, 32
  %i.ak = trunc nuw i64 %i.aj to i32
  %i.al = and i32 %i.ak, 65535
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %If_Dec7ComposeLut4.exit
  %46 = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %64, %bb.e ]
  %47 = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %65, %bb.e ]
  %48 = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %66, %bb.e ] ; 2 uses
  %49 = phi i64 [ 0, %If_Dec7ComposeLut4.exit ], [ %67, %bb.e ] ; 2 uses
  %.02328.i23 = phi i32 [ 0, %If_Dec7ComposeLut4.exit ], [ %i.aw, %bb.e ] ; 6 uses
  %i.am = shl nuw nsw i32 1, %.02328.i23
  %i.an = and i32 %i.al, %i.am
  %.not.i24 = icmp eq i32 %i.an, 0
  br i1 %.not.i24, label %bb.e, label %.preheader.preheader.i25

.preheader.preheader.i25:                         ; preds = %bb.d
  %i.ao = and i32 %.02328.i23, 1
  %sext67 = add nsw i32 %i.ao, -1
  %i.ap = sext i32 %sext67 to i64                 ; 2 uses
  %.pn.i28 = xor i64 %37, %i.ap
  %50 = xor i64 %39, %i.ap
  %i.aq = lshr i32 %.02328.i23, 1
  %i.ar = and i32 %i.aq, 1
  %sext68 = add nsw i32 %i.ar, -1
  %i.as = sext i32 %sext68 to i64                 ; 2 uses
  %.48 = xor i64 %40, %i.as
  %.49 = xor i64 %42, %i.as
  %51 = and i64 %.48, %.pn.i28
  %52 = and i64 %.49, %50
  %i.at = lshr i32 %.02328.i23, 2
  %i.au = and i32 %i.at, 1
  %sext69.a = add nsw i32 %i.au, -1
  %i.av = sext i32 %sext69.a to i64               ; 2 uses
  %.pn.2.i34 = xor i64 %43, %i.av
  %53 = xor i64 %45, %i.av
  %54 = and i64 %51, %.pn.2.i34
  %55 = and i64 %52, %53
  %56 = lshr i32 %.02328.i23, 3
  %57 = and i32 %56, 1
  %sext70 = add nsw i32 %57, -1
  %58 = sext i32 %sext70 to i64                   ; 2 uses
  %.pn.3.i36 = xor i64 %34, %58
  %59 = xor i64 %33, %58
  %60 = and i64 %54, %.pn.3.i36
  %61 = and i64 %55, %59
  %62 = or i64 %60, %49                           ; 2 uses
  %63 = or i64 %61, %48                           ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader.preheader.i25, %bb.d
  %64 = phi i64 [ %46, %bb.d ], [ %63, %.preheader.preheader.i25 ] ; 3 uses
  %65 = phi i64 [ %47, %bb.d ], [ %62, %.preheader.preheader.i25 ] ; 3 uses
  %66 = phi i64 [ %48, %bb.d ], [ %63, %.preheader.preheader.i25 ]
  %67 = phi i64 [ %49, %bb.d ], [ %62, %.preheader.preheader.i25 ]
  %i.aw = add nuw nsw i32 %.02328.i23, 1          ; 2 uses
  %exitcond.not.i37 = icmp eq i32 %i.aw, 16
  br i1 %exitcond.not.i37, label %If_Dec7ComposeLut4.exit38, label %bb.d, !llvm.loop !16

If_Dec7ComposeLut4.exit38:                        ; preds = %bb.e
  store i64 %65, ptr %i.a, align 16
  store i64 %64, ptr %14, align 8
  %68 = load i64, ptr %0, align 8, !tbaa !12
  %.not = icmp eq i64 %65, %68
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %If_Dec7ComposeLut4.exit38
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !12
  %.not21 = icmp eq i64 %64, %i.ay
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %If_Dec7ComposeLut4.exit38
  tail call void @If_DecPrintConfig(i64 noundef %1)
  tail call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %0, i32 noundef 7) #15
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  call void @Kit_DsdPrintFromTruth(ptr noundef nonnull %i.a, i32 noundef 7) #15
  %putchar22 = call i32 @putchar(i32 10)          ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define range(i64 504403158265495552, 2) i64 @If_Dec6Perform(i64 noundef %0, i32 noundef %1) local_unnamed_addr #4 {
.preheader62:
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  %i.b = alloca [2 x i32], align 4                ; 5 uses
  %i.c = alloca [6 x i32], align 16               ; 12 uses
  %i.d = alloca [6 x i32], align 16               ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca [6 x i32], align 16               ; 14 uses
  %i.h = alloca [6 x i32], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.h, align 16, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.g, align 16, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i32 4, ptr %i.l, align 16, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store i32 4, ptr %i.m, align 16, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  store i32 5, ptr %i.n, align 4, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 2 uses
  store i32 5, ptr %i.o, align 4, !tbaa !8
  %.not48 = icmp eq i32 %1, 0                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  br label %bb.a

.loopexit61:                                      ; preds = %.loopexit, %bb.a
  %.146.lcssa = phi i64 [ %.04580, %bb.a ], [ %.0.lcssa.i54, %.loopexit ]
  %.142.lcssa = phi i64 [ %.04181, %bb.a ], [ %.4, %.loopexit ] ; 2 uses
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond104.not = icmp eq i64 %indvars.iv.next102, 6
  br i1 %exitcond104.not, label %.loopexit63, label %bb.a, !llvm.loop !17

bb.a:                                             ; preds = %.preheader62, %.loopexit61
  %indvars.iv101 = phi i64 [ 0, %.preheader62 ], [ %indvars.iv.next102, %.loopexit61 ] ; 3 uses
  %indvars.iv93 = phi i64 [ 1, %.preheader62 ], [ %indvars.iv.next94, %.loopexit61 ] ; 2 uses
  %.04181 = phi i64 [ 0, %.preheader62 ], [ %.142.lcssa, %.loopexit61 ] ; 2 uses
  %.04580 = phi i64 [ %0, %.preheader62 ], [ %.146.lcssa, %.loopexit61 ] ; 2 uses
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1 ; 2 uses
  %i.w = icmp samesign ult i64 %indvars.iv101, 5
  br i1 %i.w, label %.lr.ph, label %.loopexit61

.lr.ph:                                           ; preds = %bb.a
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv101 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit
  %indvars.iv95 = phi i64 [ %indvars.iv93, %.lr.ph ], [ %indvars.iv.next96, %.loopexit ] ; 2 uses
  %.14275 = phi i64 [ %.04181, %.lr.ph ], [ %.4, %.loopexit ] ; 2 uses
  %.14674 = phi i64 [ %.04580, %.lr.ph ], [ %.0.lcssa.i54, %.loopexit ] ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 2 uses
  %.not28.i = icmp eq i32 %i.y, 0
  br i1 %.not28.i, label %If_Dec6MoveTo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.z = phi i32 [ %i.be, %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %.029.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.14674, %bb.b ] ; 3 uses
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [24 x i8], ptr @PMasks, i64 %i.ab ; 3 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !12
  %i.ae = and i64 %i.ad, %.029.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !12
  %i.ah = and i64 %i.ag, %.029.i
  %i.ai = shl nuw i32 1, %i.aa
  %i.aj = zext i32 %i.ai to i64                   ; 2 uses
  %i.ak = shl i64 %i.ah, %i.aj
  %i.al = or i64 %i.ak, %i.ae
  %i.am = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.an = load i64, ptr %i.am, align 8, !tbaa !12
  %i.ao = and i64 %i.an, %.029.i
  %i.ap = lshr i64 %i.ao, %i.aj
  %i.aq = or i64 %i.al, %i.ap                     ; 2 uses
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ab ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !8  ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !8
  %i.ax = sext i32 %i.z to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ax ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8  ; 2 uses
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = add nsw i32 %i.bc, -1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !8
  store i32 %i.as, ptr %i.ay, align 4, !tbaa !8
  store i32 %i.az, ptr %i.ar, align 4, !tbaa !8
  %i.be = load i32, ptr %i.x, align 4, !tbaa !8   ; 2 uses
  %.not.i = icmp eq i32 %i.be, 0
  br i1 %.not.i, label %If_Dec6MoveTo.exit, label %.lr.ph.i, !llvm.loop !18

If_Dec6MoveTo.exit:                               ; preds = %.lr.ph.i, %bb.b
  %.0.lcssa.i = phi i64 [ %.14674, %bb.b ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv95 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8  ; 2 uses
  %.not28.i50 = icmp eq i32 %i.bg, 1
  br i1 %.not28.i50, label %If_Dec6MoveTo.exit55, label %.lr.ph.i51

.lr.ph.i51:                                       ; preds = %If_Dec6MoveTo.exit, %.lr.ph.i51
  %i.bh = phi i32 [ %i.cm, %.lr.ph.i51 ], [ %i.bg, %If_Dec6MoveTo.exit ] ; 2 uses
  %.029.i52 = phi i64 [ %i.by, %.lr.ph.i51 ], [ %.0.lcssa.i, %If_Dec6MoveTo.exit ] ; 3 uses
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = getelementptr inbounds [24 x i8], ptr @PMasks, i64 %i.bj ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !12
  %i.bm = and i64 %i.bl, %.029.i52
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !12
  %i.bp = and i64 %i.bo, %.029.i52
  %i.bq = shl nuw i32 1, %i.bi
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = shl i64 %i.bp, %i.br
  %i.bt = or i64 %i.bs, %i.bm
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !12
  %i.bw = and i64 %i.bv, %.029.i52
  %i.bx = lshr i64 %i.bw, %i.br
  %i.by = or i64 %i.bt, %i.bx                     ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.bj ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !8  ; 2 uses
  %i.cb = sext i32 %i.ca to i64
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !8
  %i.ce = add nsw i32 %i.cd, 1
  store i32 %i.ce, ptr %i.cc, align 4, !tbaa !8
  %i.cf = sext i32 %i.bh to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.cf ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !8  ; 2 uses
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !8
  %i.cl = add nsw i32 %i.ck, -1
  store i32 %i.cl, ptr %i.cj, align 4, !tbaa !8
  store i32 %i.ca, ptr %i.cg, align 4, !tbaa !8
  store i32 %i.ch, ptr %i.bz, align 4, !tbaa !8
  %i.cm = load i32, ptr %i.bf, align 4, !tbaa !8  ; 2 uses
  %.not.i53 = icmp eq i32 %i.cm, 1
  br i1 %.not.i53, label %If_Dec6MoveTo.exit55, label %.lr.ph.i51, !llvm.loop !18

If_Dec6MoveTo.exit55:                             ; preds = %.lr.ph.i51, %If_Dec6MoveTo.exit
  %.0.lcssa.i54 = phi i64 [ %.0.lcssa.i, %If_Dec6MoveTo.exit ], [ %i.by, %.lr.ph.i51 ] ; 16 uses
  %i.cn = trunc i64 %.0.lcssa.i54 to i32          ; 8 uses
  %i.co = and i32 %i.cn, 15
  %i.cp = shl nuw nsw i32 1, %i.co
  %i.cq = lshr i32 %i.cn, 4
  %i.cr = and i32 %i.cq, 15
  %i.cs = shl nuw nsw i32 1, %i.cr
  %i.ct = lshr i32 %i.cn, 8
  %i.cu = and i32 %i.ct, 15
  %i.cv = shl nuw nsw i32 1, %i.cu
  %i.cw = lshr i32 %i.cn, 12
  %i.cx = and i32 %i.cw, 15
  %i.cy = shl nuw nsw i32 1, %i.cx
  %i.cz = lshr i32 %i.cn, 16
  %i.da = and i32 %i.cz, 15
  %i.db = shl nuw nsw i32 1, %i.da
  %i.dc = lshr i32 %i.cn, 20
  %i.dd = and i32 %i.dc, 15
  %i.de = shl nuw nsw i32 1, %i.dd
  %i.df = lshr i32 %i.cn, 24
  %i.dg = and i32 %i.df, 15
  %i.dh = shl nuw nsw i32 1, %i.dg
  %i.di = lshr i32 %i.cn, 28
  %i.dj = shl nuw nsw i32 1, %i.di
  %i.dk = lshr i64 %.0.lcssa.i54, 32              ; 2 uses
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = and i32 %i.dl, 15
  %i.dn = shl nuw nsw i32 1, %i.dm
  %i.do = lshr i64 %.0.lcssa.i54, 36
  %i.dp = trunc nuw nsw i64 %i.do to i32
end_hunk_0
