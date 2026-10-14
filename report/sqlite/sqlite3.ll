Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 372
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@unixepochFunc:bb.a
  %i.an = load i32, ptr %i.am, align 4, !tbaa !2503
  %i.ao = mul nsw i32 %i.an, 3600000
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !2504
  %i.ar = mul nsw i32 %i.aq, 60000
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load double, ptr %i.au, align 8, !tbaa !2505
  %i.aw = call double @llvm.fmuladd.f64(double %i.av, double 1.000000e+03, double 5.000000e-01)
  %i.ax = fptosi double %i.aw to i64
  %i.ay = add i64 %i.ax, %i.aj
  %i.az = add i64 %i.ay, %i.at                    ; 2 uses
  store i64 %i.az, ptr %3, align 8, !tbaa !2497
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !2506 ; 2 uses
  %.not43.i = icmp eq i32 %i.bb, 0
  br i1 %.not43.i, label %computeJD.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = mul nsw i32 %i.bb, 60000
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 %i.az, %i.bd
  store i64 %i.be, ptr %3, align 8, !tbaa !2497
  store i8 0, ptr %i.e, align 1, !tbaa !2498
  store i8 0, ptr %i.ak, align 2, !tbaa !2502
  store i32 0, ptr %i.ba, align 4, !tbaa !2506
  %i.bf = and i8 %i.o, -26
  %i.bg = or disjoint i8 %i.bf, 8                 ; 2 uses
  store i8 %i.bg, ptr %i.n, align 4
  br label %computeJD.exit

computeJD.exit:                                   ; preds = %.computeJD.exit_crit_edge, %bb.e, %bb.f, %bb.g
  %i.bh = phi i8 [ %.pre, %.computeJD.exit_crit_edge ], [ %i.bg, %bb.g ], [ %i.o, %bb.e ], [ %i.o, %bb.f ]
  %i.bi = and i8 %i.bh, 4
  %.not = icmp eq i8 %i.bi, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %computeJD.exit
  %i.bj = load i64, ptr %3, align 8, !tbaa !2497
  %i.bk = add nsw i64 %i.bj, -210866760000000
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+03
  %i.bn = load ptr, ptr %0, align 8, !tbaa !761   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !686
  %i.bq = and i16 %i.bp, -28672
  %.not.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i.i, label %sqlite3_result_double.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.bn)
  br label %sqlite3_result_double.exit

sqlite3_result_double.exit:                       ; preds = %bb.h, %bb.i
  store double %i.bm, ptr %i.bn, align 8, !tbaa !733
  store i16 8, ptr %i.bo, align 4, !tbaa !686
  br label %sqlite3_result_int64.exit

bb.j:                                             ; preds = %computeJD.exit.thread, %computeJD.exit
  %i.br = load i64, ptr %3, align 8, !tbaa !2497
  %i.bs = sdiv i64 %i.br, 1000
  %i.bt = add nsw i64 %i.bs, -210866760000        ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !761   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !686
  %i.bx = and i16 %i.bw, -28672
  %.not.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bu, i64 noundef %i.bt)
  br label %sqlite3_result_int64.exit

bb.l:                                             ; preds = %bb.j
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !733
  store i16 4, ptr %i.bv, align 4, !tbaa !686
  br label %sqlite3_result_int64.exit

sqlite3_result_int64.exit:                        ; preds = %bb.l, %bb.k, %sqlite3_result_double.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dateFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DateTime, align 8           ; 13 uses
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.b = call fastcc i32 @isDate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.c = icmp eq i32 %i.b, 0
  %.sink35.i.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sink35.i.sroa.gep11 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 41 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !2498
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %.computeYMD.exitthread-pre-split_crit_edge

.computeYMD.exitthread-pre-split_crit_edge:       ; preds = %bb.b
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !2500
  br label %computeYMD.exitthread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2496
  %.not30.i = icmp eq i8 %i.g, 0
  br i1 %.not30.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2000, ptr %.sink35.i.sroa.gep, align 8, !tbaa !2499
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !2500
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %3, align 8, !tbaa !2497   ; 2 uses
  %i.j = icmp ugt i64 %i.i, 464269060799999
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 2, ptr %i.k, align 4
  br label %computeYMD.exit

bb.g:                                             ; preds = %bb.e
  %i.l = add nuw nsw i64 %i.i, 43200000
  %i.m = udiv i64 %i.l, 86400000
  %i.n = trunc nuw nsw i64 %i.m to i32            ; 2 uses
  %i.o = uitofp nneg i32 %i.n to double
  %i.p = fadd double %i.o, f0x40DF4B3000000000
  %i.q = fdiv double %i.p, f0x40E1D58800000000
  %i.r = fptosi double %i.q to i32                ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 48
  %.neg33.i = lshr i32 %i.s, 2
  %i.t = add nuw nsw i32 %i.n, 1498
  %i.u = add nuw i32 %i.t, %i.r
  %i.v = sub i32 %i.u, %.neg33.i                  ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fadd double %i.w, -1.221000e+02
  %i.y = fdiv double %i.x, 3.652500e+02
  %i.z = fptosi double %i.y to i32                ; 2 uses
  %i.aa = and i32 %i.z, 32767
  %i.ab = mul nuw nsw i32 %i.aa, 1461
  %i.ac = lshr i32 %i.ab, 2
  %i.ad = sub nsw i32 %i.v, %i.ac                 ; 2 uses
  %i.ae = sitofp i32 %i.ad to double
  %i.af = fdiv double %i.ae, 3.060010e+01
  %i.ag = fptosi double %i.af to i32              ; 3 uses
  %i.ah = sitofp i32 %i.ag to double
  %i.ai = fmul nnan double %i.ah, 3.060010e+01
  %i.aj = fptosi double %i.ai to i32
  %i.ak = sub nsw i32 %i.ad, %i.aj
  store i32 %i.ak, ptr %.sink35.i.sroa.gep11, align 8, !tbaa !2501
  %i.al = icmp slt i32 %i.ag, 14
  %.v.i = select i1 %i.al, i32 -1, i32 -13
  %i.am = add nsw i32 %.v.i, %i.ag                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.am, ptr %i.an, align 4, !tbaa !2500
  %i.ao = icmp sgt i32 %i.am, 2
  %.v32.i = select i1 %i.ao, i32 -4716, i32 -4715
  %i.ap = add nsw i32 %.v32.i, %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pre14 = phi i32 [ %i.am, %bb.g ], [ 1, %bb.d ]
  %.sink35.i.sroa.phi = phi ptr [ %.sink35.i.sroa.gep, %bb.g ], [ %.sink35.i.sroa.gep11, %bb.d ]
  %.sink.i = phi i32 [ %i.ap, %bb.g ], [ 1, %bb.d ]
  store i32 %.sink.i, ptr %.sink35.i.sroa.phi, align 8, !tbaa !570
  store i8 1, ptr %i.d, align 1, !tbaa !2498
  br label %computeYMD.exitthread-pre-split

computeYMD.exitthread-pre-split:                  ; preds = %.computeYMD.exitthread-pre-split_crit_edge, %bb.h
  %.pre = phi i32 [ %.pre.pre, %.computeYMD.exitthread-pre-split_crit_edge ], [ %.pre14, %bb.h ]
  %.pr = load i32, ptr %.sink35.i.sroa.gep, align 8, !tbaa !2499
  %.pre12 = load i32, ptr %.sink35.i.sroa.gep11, align 8, !tbaa !2501
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %computeYMD.exitthread-pre-split, %bb.f
  %i.aq = phi i32 [ %.pre12, %computeYMD.exitthread-pre-split ], [ 0, %bb.f ] ; 2 uses
  %i.ar = phi i32 [ %.pre, %computeYMD.exitthread-pre-split ], [ 0, %bb.f ] ; 2 uses
  %i.as = phi i32 [ %.pr, %computeYMD.exitthread-pre-split ], [ 0, %bb.f ] ; 2 uses
  %i.at = icmp slt i32 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %spec.select = call i32 @llvm.abs.i32(i32 %i.as, i1 true)
  %i.av = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %i.aw = shufflevector <4 x i32> %i.av, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ax = udiv <4 x i32> %i.aw, <i32 1000, i32 100, i32 10, i32 1>
  %i.ay = urem <4 x i32> %i.ax, splat (i32 10)
  %i.az = trunc nuw nsw <4 x i32> %i.ay to <4 x i8>
  %i.ba = or disjoint <4 x i8> %i.az, splat (i8 48)
  store <4 x i8> %i.ba, ptr %i.au, align 1, !tbaa !733
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 45, ptr %i.bb, align 1, !tbaa !733
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 45, ptr %6, align 8, !tbaa !733
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.bc = sdiv i32 %i.ar, 10
  %8 = sdiv i32 %i.aq, 10
  %9 = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %10 = insertelement <4 x i32> %9, i32 %8, i64 1
  %11 = insertelement <4 x i32> %10, i32 %i.ar, i64 2
  %12 = insertelement <4 x i32> %11, i32 %i.aq, i64 3
  %13 = srem <4 x i32> %12, splat (i32 10)        ; 4 uses
  %14 = bitcast <4 x i32> %13 to <16 x i8>
  %15 = extractelement <16 x i8> %14, i64 0
  %16 = add nsw i8 %15, 48
  store i8 %16, ptr %4, align 2, !tbaa !733
  %17 = bitcast <4 x i32> %13 to <16 x i8>
  %18 = extractelement <16 x i8> %17, i64 8
  %19 = add nsw i8 %18, 48
  store i8 %19, ptr %5, align 1, !tbaa !733
  %20 = bitcast <4 x i32> %13 to <16 x i8>
  %21 = extractelement <16 x i8> %20, i64 4
  %22 = add nsw i8 %21, 48
  store i8 %22, ptr %7, align 1, !tbaa !733
  %23 = bitcast <4 x i32> %13 to <16 x i8>
  %24 = extractelement <16 x i8> %23, i64 12
  %i.bd = add nsw i8 %24, 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !733
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 0, ptr %i.bf, align 1, !tbaa !733
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %computeYMD.exit
  store i8 45, ptr %i.a, align 16, !tbaa !733
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 11, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1906
  br label %bb.k

bb.j:                                             ; preds = %computeYMD.exit
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.au, i32 noundef 10, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1906
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @timeFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DateTime, align 8           ; 22 uses
  %i.a = alloca [16 x i8], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.b = call fastcc i32 @isDate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 42 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !2502
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %.computeHMS.exit_crit_edge

.computeHMS.exit_crit_edge:                       ; preds = %bb.b
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.pre16 = load i32, ptr %.phi.trans.insert15, align 4, !tbaa !2503
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre18 = load i32, ptr %.phi.trans.insert17, align 8, !tbaa !2504
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.pre20 = load i8, ptr %.phi.trans.insert19, align 4
  br label %computeHMS.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !2496
  %.not.i13 = icmp eq i8 %i.g, 0
  br i1 %.not.i13, label %bb.d, label %.computeJD.exit_crit_edge

.computeJD.exit_crit_edge:                        ; preds = %bb.c
  %.pre = load i64, ptr %3, align 8, !tbaa !2497
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.pre14 = load i8, ptr %.phi.trans.insert, align 4
  br label %computeJD.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.i = load i8, ptr %i.h, align 1, !tbaa !2498
  %.not40.i = icmp eq i8 %i.i, 0
  br i1 %.not40.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !2499 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !2500
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !2501
  %i.p = add i32 %i.k, -10000
  %or.cond.i = icmp ult i32 %i.p, -14713
  br i1 %or.cond.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %.050.i = phi i32 [ %i.o, %bb.e ], [ 1, %bb.d ]
  %.03649.i = phi i32 [ %i.m, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %.03748.i = phi i32 [ %i.k, %bb.e ], [ 2000, %bb.d ]
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.r = load i8, ptr %i.q, align 4               ; 2 uses
  %i.s = and i8 %i.r, 1
  %.not41.i = icmp eq i8 %i.s, 0
  br i1 %.not41.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  br label %computeJD.exit

bb.g:                                             ; preds = %.thread.i
  %i.t = icmp slt i32 %.03649.i, 3                ; 2 uses
  %i.u = add nsw i32 %.03649.i, 12
  %i.v = sext i1 %i.t to i32
  %.138.i = add nsw i32 %.03748.i, %i.v           ; 2 uses
  %.1.i = select i1 %i.t, i32 %i.u, i32 %.03649.i
  %i.w = trunc nsw i32 %.138.i to i16
  %.neg51.lhs.trunc.i = add nsw i16 %i.w, 4800    ; 2 uses
  %.neg5152.i = udiv i16 %.neg51.lhs.trunc.i, 100
  %.neg51.zext.i = zext nneg i16 %.neg5152.i to i32
  %i.x = udiv i16 %.neg51.lhs.trunc.i, 400
  %.zext.i = zext nneg i16 %i.x to i32
  %i.y = mul nsw i32 %.138.i, 36525
  %i.z = add nsw i32 %i.y, 172251900
  %i.aa = udiv i32 %i.z, 100
  %i.ab = mul i32 %.1.i, 306001
  %i.ac = add i32 %i.ab, 306001
  %i.ad = sdiv i32 %i.ac, 10000
  %reass.sub.i = add i32 %.050.i, 38
  %i.ae = add i32 %reass.sub.i, %i.ad
  %i.af = add i32 %i.ae, %i.aa
  %i.ag = sub i32 %i.af, %.neg51.zext.i
  %i.ah = add i32 %i.ag, %.zext.i
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fadd nnan double %i.ai, -1.524500e+03
  %i.ak = fmul nnan double %i.aj, 8.640000e+07
  %i.al = fptosi double %i.ak to i64              ; 2 uses
  store i64 %i.al, ptr %3, align 8, !tbaa !2497
  store i8 1, ptr %i.f, align 8, !tbaa !2496
  br label %computeJD.exit

computeJD.exit:                                   ; preds = %.computeJD.exit_crit_edge, %bb.g, %bb.f
  %i.am = phi i8 [ %.pre14, %.computeJD.exit_crit_edge ], [ %i.r, %bb.g ], [ 2, %bb.f ]
  %i.an = phi i64 [ %.pre, %.computeJD.exit_crit_edge ], [ %i.al, %bb.g ], [ 0, %bb.f ]
  %i.ao = add nsw i64 %i.an, 43200000
  %i.ap = srem i64 %i.ao, 86400000
  %i.aq = trunc nsw i64 %i.ap to i32              ; 3 uses
  %i.ar = srem i32 %i.aq, 60000
  %i.as = sitofp i32 %i.ar to double
  %i.at = fdiv double %i.as, 1.000000e+03
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  store double %i.at, ptr %i.au, align 8, !tbaa !2505
  %i.av = sdiv i32 %i.aq, 60000
  %.lhs.trunc.i = trunc nsw i32 %i.av to i16
  %i.aw = srem i16 %.lhs.trunc.i, 60
  %.sext.i = sext i16 %i.aw to i32                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %.sext.i, ptr %i.ax, align 8, !tbaa !2504
  %i.ay = sdiv i32 %i.aq, 3600000                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !2503
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.bb = and i8 %i.am, -2                        ; 2 uses
  store i8 %i.bb, ptr %i.ba, align 4
  store i8 1, ptr %i.d, align 2, !tbaa !2502
  br label %computeHMS.exit

computeHMS.exit:                                  ; preds = %.computeHMS.exit_crit_edge, %computeJD.exit
  %i.bc = phi i8 [ %.pre20, %.computeHMS.exit_crit_edge ], [ %i.bb, %computeJD.exit ]
  %i.bd = phi i32 [ %.pre18, %.computeHMS.exit_crit_edge ], [ %.sext.i, %computeJD.exit ] ; 2 uses
  %i.be = phi i32 [ %.pre16, %.computeHMS.exit_crit_edge ], [ %i.ay, %computeJD.exit ] ; 2 uses
  %i.bf = sdiv i32 %i.be, 10
  %i.bg = srem i32 %i.bf, 10
  %i.bh = trunc nsw i32 %i.bg to i8
  %i.bi = add nsw i8 %i.bh, 48
  store i8 %i.bi, ptr %i.a, align 16, !tbaa !733
  %i.bj = srem i32 %i.be, 10
  %i.bk = trunc nsw i32 %i.bj to i8
  %i.bl = add nsw i8 %i.bk, 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !733
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 58, ptr %i.bn, align 2, !tbaa !733
  %i.bo = sdiv i32 %i.bd, 10
  %i.bp = srem i32 %i.bo, 10
  %i.bq = trunc nsw i32 %i.bp to i8
  %i.br = add nsw i8 %i.bq, 48
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !733
  %i.bt = srem i32 %i.bd, 10
  %i.bu = trunc nsw i32 %i.bt to i8
  %i.bv = add nsw i8 %i.bu, 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 %i.bv, ptr %i.bw, align 4, !tbaa !733
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 58, ptr %i.bx, align 1, !tbaa !733
  %i.by = and i8 %i.bc, 4
  %.not = icmp eq i8 %i.by, 0
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !2505 ; 2 uses
  br i1 %.not, label %.split, label %.split12

.split12:                                         ; preds = %computeHMS.exit
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double 1.000000e+03, double 5.000000e-01)
  %i.cc = fptosi double %i.cb to i32              ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 46, ptr %i.cf, align 8, !tbaa !733
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.ch = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %i.ci = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.cj = sdiv <4 x i32> %i.ci, <i32 10000, i32 1000, i32 100, i32 10>
  %i.ck = srem <4 x i32> %i.cj, splat (i32 10)    ; 4 uses
  %i.cl = bitcast <4 x i32> %i.ck to <16 x i8>
  %i.cm = extractelement <16 x i8> %i.cl, i64 0
  %i.cn = add nsw i8 %i.cm, 48
  store i8 %i.cn, ptr %i.cd, align 2, !tbaa !733
  %i.co = bitcast <4 x i32> %i.ck to <16 x i8>
  %i.cp = extractelement <16 x i8> %i.co, i64 4
  %i.cq = add nsw i8 %i.cp, 48
  store i8 %i.cq, ptr %i.ce, align 1, !tbaa !733
  %i.cr = bitcast <4 x i32> %i.ck to <16 x i8>
  %i.cs = extractelement <16 x i8> %i.cr, i64 8
  %i.ct = add nsw i8 %i.cs, 48
  store i8 %i.ct, ptr %i.cg, align 1, !tbaa !733
  %i.cu = bitcast <4 x i32> %i.ck to <16 x i8>
  %i.cv = extractelement <16 x i8> %i.cu, i64 12
  %i.cw = add nsw i8 %i.cv, 48
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 %i.cw, ptr %i.cx, align 2, !tbaa !733
  %i.cy = srem i32 %i.cc, 10
  %i.cz = trunc nsw i32 %i.cy to i8
  %i.da = add nsw i8 %i.cz, 48
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.da, ptr %i.db, align 1, !tbaa !733
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 0, ptr %i.dc, align 4, !tbaa !733
  br label %bb.h

.split:                                           ; preds = %computeHMS.exit
  %i.dd = fptosi double %i.ca to i32              ; 2 uses
  %i.de = sdiv i32 %i.dd, 10
  %i.df = srem i32 %i.de, 10
  %i.dg = trunc nsw i32 %i.df to i8
  %i.dh = add nsw i8 %i.dg, 48
  %i.di = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  store i8 %i.dh, ptr %i.di, align 2, !tbaa !733
  %i.dj = srem i32 %i.dd, 10
  %i.dk = trunc nsw i32 %i.dj to i8
  %i.dl = add nsw i8 %i.dk, 48
  %i.dm = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  store i8 %i.dl, ptr %i.dm, align 1, !tbaa !733
  %i.dn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 0, ptr %i.dn, align 8, !tbaa !733
  br label %bb.h

bb.h:                                             ; preds = %.split, %.split12
  %.sink = phi i32 [ 8, %.split ], [ 12, %.split12 ]
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.sink, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @datetimeFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DateTime, align 8           ; 8 uses
  %i.a = alloca [32 x i8], align 16               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  %i.b = call fastcc i32 @isDate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #57
  call fastcc void @computeYMD_HMS(ptr noundef %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !2499 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %spec.select = call i32 @llvm.abs.i32(i32 %i.e, i1 true)
  %i.h = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %i.i = shufflevector <4 x i32> %i.h, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.j = udiv <4 x i32> %i.i, <i32 1000, i32 100, i32 10, i32 1>
  %i.k = urem <4 x i32> %i.j, splat (i32 10)
  %i.l = trunc nuw nsw <4 x i32> %i.k to <4 x i8>
  %i.m = or disjoint <4 x i8> %i.l, splat (i8 48)
  store <4 x i8> %i.m, ptr %i.g, align 1, !tbaa !733
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 45, ptr %i.n, align 1, !tbaa !733
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 45, ptr %i.r, align 8, !tbaa !733
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 32, ptr %i.u, align 1, !tbaa !733
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 58, ptr %i.x, align 2, !tbaa !733
  %i.y = load <4 x i32>, ptr %i.o, align 4, !tbaa !570 ; 3 uses
  %i.z = sdiv <4 x i32> %i.y, splat (i32 10)      ; 2 uses
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> %i.y, <4 x i32> <i32 0, i32 4, i32 1, i32 5>
  %i.ab = srem <4 x i32> %i.aa, splat (i32 10)    ; 4 uses
  %4 = bitcast <4 x i32> %i.ab to <16 x i8>
  %5 = extractelement <16 x i8> %4, i64 0
  %6 = add nsw i8 %5, 48
  store i8 %6, ptr %i.p, align 2, !tbaa !733
  %7 = bitcast <4 x i32> %i.ab to <16 x i8>
  %i.ac = extractelement <16 x i8> %7, i64 4
  %8 = add nsw i8 %i.ac, 48
  store i8 %8, ptr %i.q, align 1, !tbaa !733
  %9 = bitcast <4 x i32> %i.ab to <16 x i8>
  %i.ad = extractelement <16 x i8> %9, i64 8
  %10 = add nsw i8 %i.ad, 48
  store i8 %10, ptr %i.s, align 1, !tbaa !733
  %11 = bitcast <4 x i32> %i.ab to <16 x i8>
  %i.ae = extractelement <16 x i8> %11, i64 12
  %12 = add nsw i8 %i.ae, 48
  store i8 %12, ptr %i.t, align 2, !tbaa !733
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.ag = shufflevector <4 x i32> %i.z, <4 x i32> %i.y, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.ah = srem <4 x i32> %i.ag, splat (i32 10)    ; 4 uses
  %13 = bitcast <4 x i32> %i.ah to <16 x i8>
  %14 = extractelement <16 x i8> %13, i64 0
  %15 = add nsw i8 %14, 48
  store i8 %15, ptr %i.v, align 4, !tbaa !733
  %16 = bitcast <4 x i32> %i.ah to <16 x i8>
  %i.ai = extractelement <16 x i8> %16, i64 4
  %17 = add nsw i8 %i.ai, 48
  store i8 %17, ptr %i.w, align 1, !tbaa !733
  %18 = bitcast <4 x i32> %i.ah to <16 x i8>
  %i.aj = extractelement <16 x i8> %18, i64 8
  %19 = add nsw i8 %i.aj, 48
  store i8 %19, ptr %i.af, align 1, !tbaa !733
  %20 = bitcast <4 x i32> %i.ah to <16 x i8>
  %i.ak = extractelement <16 x i8> %20, i64 12
  %21 = add nsw i8 %i.ak, 48
  %22 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %21, ptr %22, align 16, !tbaa !733
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  store i8 58, ptr %i.al, align 1, !tbaa !733
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = and i8 %i.an, 4
  %.not = icmp eq i8 %i.ao, 0
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !2505 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = call double @llvm.fmuladd.f64(double %i.aq, double 1.000000e+03, double 5.000000e-01)
  %i.as = fptosi double %i.ar to i32              ; 5 uses
  %i.at = sdiv i32 %i.as, 10000
  %i.au = sdiv i32 %i.as, 1000
  %i.av = sdiv i32 %i.as, 100
  %i.aw = srem i32 %i.av, 10
  %i.ax = trunc nsw i32 %i.aw to i8
  %i.ay = add nsw i8 %i.ax, 48
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !733
  %i.ba = sdiv i32 %i.as, 10
  %i.bb = srem i32 %i.ba, 10
  %i.bc = trunc nsw i32 %i.bb to i8
  %i.bd = add nsw i8 %i.bc, 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  store i8 %i.bd, ptr %i.be, align 2, !tbaa !733
  %i.bf = srem i32 %i.as, 10
  %i.bg = trunc nsw i32 %i.bf to i8
  %i.bh = add nsw i8 %i.bg, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !733
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 0, ptr %i.bj, align 8, !tbaa !733
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.bk = fptosi double %i.aq to i32              ; 2 uses
  %i.bl = sdiv i32 %i.bk, 10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink22.in.in.in = phi i32 [ %i.bl, %bb.d ], [ %i.at, %bb.c ]
  %.sink21.in.in.in = phi i32 [ %i.bk, %bb.d ], [ %i.au, %bb.c ]
  %.sink = phi i8 [ 0, %bb.d ], [ 46, %bb.c ]
  %.0 = phi i32 [ 20, %bb.d ], [ 24, %bb.c ]      ; 2 uses
  %.sink21.in.in = srem i32 %.sink21.in.in.in, 10
  %.sink21.in = trunc nsw i32 %.sink21.in.in to i8
  %.sink21 = add nsw i8 %.sink21.in, 48
  %.sink22.in.in = srem i32 %.sink22.in.in.in, 10
  %.sink22.in = trunc nsw i32 %.sink22.in.in to i8
  %.sink22 = add nsw i8 %.sink22.in, 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  store i8 %.sink22, ptr %i.bm, align 2, !tbaa !733
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 19
  store i8 %.sink21, ptr %i.bn, align 1, !tbaa !733
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i8 %.sink, ptr %i.bo, align 4, !tbaa !733
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 45, ptr %i.a, align 16, !tbaa !733
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %.0, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1906
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bp = add nsw i32 %.0, -1
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.g, i32 noundef %i.bp, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)), !inline_history !1906
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #57
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #57
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @strftimeFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DateTime, align 8           ; 38 uses
  %4 = alloca %struct.sqlite3_str, align 8        ; 37 uses
  %.sroa.7 = alloca i32, align 8                  ; 7 uses
  %.sroa.13196 = alloca i32, align 8              ; 3 uses
  %.sroa.8 = alloca i32, align 8                  ; 6 uses
  %.sroa.13 = alloca i32, align 8                 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #57
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #57
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %sqlite3_value_text.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !761    ; 5 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %sqlite3_value_text.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.d = load i16, ptr %i.c, align 4, !tbaa !686  ; 2 uses
  %i.e = and i16 %i.d, 514
  %i.f = icmp eq i16 %i.e, 514
  br i1 %i.f, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 22
  %i.h = load i8, ptr %i.g, align 2, !tbaa !787
  %i.i = icmp eq i8 %i.h, 1
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !762
  br label %sqlite3_value_text.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.l = and i16 %i.d, 1
  %.not9.i.i = icmp eq i16 %i.l, 0
  br i1 %.not9.i.i, label %bb.g, label %sqlite3_value_text.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.m = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.b, i8 noundef zeroext 1), !inline_history !947
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.e, %bb.g
  %.0.i.i = phi ptr [ %i.k, %bb.e ], [ %i.m, %bb.g ] ; 5 uses
  %i.n = icmp eq ptr %.0.i.i, null
  br i1 %i.n, label %sqlite3_value_text.exit.thread, label %bb.h

bb.h:                                             ; preds = %sqlite3_value_text.exit
  %i.o = add nsw i32 %1, -1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = call fastcc i32 @isDate(ptr noundef %0, i32 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %3)
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.i, label %sqlite3_value_text.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.r = load ptr, ptr %0, align 8, !tbaa !761
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !683
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 136
  %i.v = load i32, ptr %i.u, align 8, !tbaa !570
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  store i32 %i.v, ptr %i.y, align 4, !tbaa !766
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 14 uses
  store i32 0, ptr %i.z, align 8, !tbaa !753
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i8 0, ptr %i.aa, align 4, !tbaa !765
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 29 ; 2 uses
  store i8 0, ptr %i.ab, align 1, !tbaa !752
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !2496
  %.not.i = icmp eq i8 %i.ad, 0
  br i1 %.not.i, label %bb.j, label %computeJD.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 41 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !2498
  %.not40.i = icmp eq i8 %i.af, 0
  br i1 %.not40.i, label %.thread.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !2499 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !2500
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2501
  %i.am = add i32 %i.ah, -10000
  %or.cond.i = icmp ult i32 %i.am, -14713
  br i1 %or.cond.i, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k, %bb.j
  %.050.i = phi i32 [ %i.al, %bb.k ], [ 1, %bb.j ]
  %.03649.i = phi i32 [ %i.aj, %bb.k ], [ 1, %bb.j ] ; 3 uses
  %.03748.i = phi i32 [ %i.ah, %bb.k ], [ 2000, %bb.j ]
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 4             ; 2 uses
  %i.ap = and i8 %i.ao, 1
  %.not41.i = icmp eq i8 %i.ap, 0
  br i1 %.not41.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread.i, %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 2, ptr %i.aq, align 4
  br label %computeJD.exit

bb.m:                                             ; preds = %.thread.i
  %i.ar = icmp slt i32 %.03649.i, 3               ; 2 uses
  %i.as = add nsw i32 %.03649.i, 12
  %i.at = sext i1 %i.ar to i32
  %.138.i = add nsw i32 %.03748.i, %i.at          ; 2 uses
  %.1.i = select i1 %i.ar, i32 %i.as, i32 %.03649.i
  %i.au = trunc nsw i32 %.138.i to i16
  %.neg51.lhs.trunc.i = add nsw i16 %i.au, 4800   ; 2 uses
end_hunk_0
