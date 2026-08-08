inline.NumInlined: 12422
inline.NumDeleted: 1708
loop-unroll.NumCompletelyUnrolled: 294
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 422
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@unixepochFunc:bb.a
  %.050.i = phi i32 [ %i.h, %bb.d ], [ 2000, %bb.c ]
  %.03649.i = phi i32 [ %i.j, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %.03848.i = phi i32 [ %i.l, %bb.d ], [ 1, %bb.c ]
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 2 uses
  %i.o = load i8, ptr %i.n, align 4               ; 4 uses
  %i.p = and i8 %i.o, 1
  %.not41.i = icmp eq i8 %i.p, 0
  br i1 %.not41.i, label %bb.e, label %computeJD.exit.thread

computeJD.exit.thread:                            ; preds = %bb.d, %.thread.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 44
  store i8 2, ptr %i.q, align 4
  br label %bb.j

bb.e:                                             ; preds = %.thread.i
  %i.r = icmp slt i32 %.03649.i, 3                ; 2 uses
  %i.s = add nsw i32 %.03649.i, 12
  %.137.i = select i1 %i.r, i32 %i.s, i32 %.03649.i
  %i.t = sext i1 %i.r to i32
  %.1.i = add nsw i32 %.050.i, %i.t               ; 2 uses
  %i.u = trunc nsw i32 %.1.i to i16
  %.neg51.lhs.trunc.i = add nsw i16 %i.u, 4800    ; 2 uses
  %.neg5152.i = udiv i16 %.neg51.lhs.trunc.i, 100
  %.neg51.zext.i = zext nneg i16 %.neg5152.i to i32
  %i.v = udiv i16 %.neg51.lhs.trunc.i, 400
  %.zext.i = zext nneg i16 %i.v to i32
  %i.w = mul nsw i32 %.1.i, 36525
  %i.x = add nsw i32 %i.w, 172251900
  %i.y = udiv i32 %i.x, 100
  %i.z = mul i32 %.137.i, 306001
  %i.aa = add i32 %i.z, 306001
  %i.ab = sdiv i32 %i.aa, 10000
  %reass.sub.i = add i32 %.03848.i, 38
  %i.ac = add i32 %reass.sub.i, %i.ab
  %i.ad = add i32 %i.ac, %i.y
  %i.ae = sub i32 %i.ad, %.neg51.zext.i
  %i.af = add i32 %i.ae, %.zext.i
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fadd nnan double %i.ag, -1.524500e+03
  %i.ai = fmul nnan double %i.ah, 8.640000e+07
  %i.aj = fptosi double %i.ai to i64              ; 2 uses
  store i64 %i.aj, ptr %3, align 8, !tbaa !5022
  store i8 1, ptr %i.c, align 8, !tbaa !5020
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 42 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !5027
  %.not42.i = icmp eq i8 %i.al, 0
  br i1 %.not42.i, label %computeJD.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !5028
  %i.ao = mul nsw i32 %i.an, 3600000
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !5029
  %i.ar = mul nsw i32 %i.aq, 60000
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load double, ptr %i.au, align 8, !tbaa !5030
  %i.aw = call double @llvm.fmuladd.f64(double %i.av, double 1.000000e+03, double 5.000000e-01)
  %i.ax = fptosi double %i.aw to i64
  %i.ay = add i64 %i.ax, %i.aj
  %i.az = add i64 %i.ay, %i.at                    ; 2 uses
  store i64 %i.az, ptr %3, align 8, !tbaa !5022
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !5031 ; 2 uses
  %.not43.i = icmp eq i32 %i.bb, 0
  br i1 %.not43.i, label %computeJD.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bc = mul nsw i32 %i.bb, 60000
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 %i.az, %i.bd
  store i64 %i.be, ptr %3, align 8, !tbaa !5022
  store i8 0, ptr %i.e, align 1, !tbaa !5023
  store i8 0, ptr %i.ak, align 2, !tbaa !5027
  store i32 0, ptr %i.ba, align 4, !tbaa !5031
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
  %i.bj = load i64, ptr %3, align 8, !tbaa !5022
  %i.bk = add nsw i64 %i.bj, -210866760000000
  %i.bl = sitofp i64 %i.bk to double
  %i.bm = fdiv double %i.bl, 1.000000e+03
  %i.bn = load ptr, ptr %0, align 8, !tbaa !290   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 20 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 4, !tbaa !164
  %i.bq = and i16 %i.bp, -28672
  %.not.i.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not.i.i.i, label %sqlite3_result_double.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call fastcc void @vdbeMemClearExternAndSetNull(ptr noundef nonnull %i.bn)
  br label %sqlite3_result_double.exit

sqlite3_result_double.exit:                       ; preds = %bb.h, %bb.i
  store double %i.bm, ptr %i.bn, align 8, !tbaa !229
  store i16 8, ptr %i.bo, align 4, !tbaa !164
  br label %sqlite3_result_int64.exit

bb.j:                                             ; preds = %computeJD.exit.thread, %computeJD.exit
  %i.br = load i64, ptr %3, align 8, !tbaa !5022
  %i.bs = sdiv i64 %i.br, 1000
  %i.bt = add nsw i64 %i.bs, -210866760000        ; 2 uses
  %i.bu = load ptr, ptr %0, align 8, !tbaa !290   ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !164
  %i.bx = and i16 %i.bw, -28672
  %.not.i.i = icmp eq i16 %i.bx, 0
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @vdbeReleaseAndSetInt64(ptr noundef nonnull %i.bu, i64 noundef %i.bt)
  br label %sqlite3_result_int64.exit

bb.l:                                             ; preds = %bb.j
  store i64 %i.bt, ptr %i.bu, align 8, !tbaa !229
  store i16 4, ptr %i.bv, align 4, !tbaa !164
  br label %sqlite3_result_int64.exit

sqlite3_result_int64.exit:                        ; preds = %bb.l, %bb.k, %sqlite3_result_double.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dateFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DateTime, align 8           ; 13 uses
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.b = call fastcc i32 @isDate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.c = icmp eq i32 %i.b, 0
  %.sink34.i.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sink34.i.sroa.gep11 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 41 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !5023
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %.computeYMD.exitthread-pre-split_crit_edge

.computeYMD.exitthread-pre-split_crit_edge:       ; preds = %bb.b
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.pre.pre = load i32, ptr %.phi.trans.insert.phi.trans.insert, align 4, !tbaa !5025
  br label %computeYMD.exitthread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5020
  %.not30.i = icmp eq i8 %i.g, 0
  br i1 %.not30.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2000, ptr %.sink34.i.sroa.gep, align 8, !tbaa !5024
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 1, ptr %i.h, align 4, !tbaa !5025
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = load i64, ptr %3, align 8, !tbaa !5022   ; 2 uses
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
  %i.s = add nsw i32 %i.r, 48
  %.neg.i = sdiv i32 %i.s, -4
  %i.t = add nuw nsw i32 %i.n, 1498
  %i.u = add i32 %i.t, %i.r
  %i.v = add i32 %i.u, %.neg.i                    ; 2 uses
  %i.w = sitofp i32 %i.v to double
  %i.x = fadd double %i.w, -1.221000e+02
  %i.y = fdiv double %i.x, 3.652500e+02
  %i.z = fptosi double %i.y to i32                ; 2 uses
  %i.aa = and i32 %i.z, 32767
  %i.ab = mul nuw nsw i32 %i.aa, 36525
  %4 = udiv i32 %i.ab, 100
  %i.ac = sub nsw i32 %i.v, %4                    ; 2 uses
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fdiv double %i.ad, 3.060010e+01
  %i.af = fptosi double %i.ae to i32              ; 3 uses
  %i.ag = sitofp i32 %i.af to double
  %i.ah = fmul nnan double %i.ag, 3.060010e+01
  %i.ai = fptosi double %i.ah to i32
  %i.aj = sub nsw i32 %i.ac, %i.ai
  store i32 %i.aj, ptr %.sink34.i.sroa.gep11, align 8, !tbaa !5026
  %i.ak = icmp slt i32 %i.af, 14
  %.v.i = select i1 %i.ak, i32 -1, i32 -13
  %i.al = add nsw i32 %.v.i, %i.af                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.al, ptr %i.am, align 4, !tbaa !5025
  %i.an = icmp sgt i32 %i.al, 2
  %.v32.i = select i1 %i.an, i32 -4716, i32 -4715
  %i.ao = add nsw i32 %.v32.i, %i.z
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.pre14 = phi i32 [ %i.al, %bb.g ], [ 1, %bb.d ]
  %.sink34.i.sroa.phi = phi ptr [ %.sink34.i.sroa.gep, %bb.g ], [ %.sink34.i.sroa.gep11, %bb.d ]
  %.sink.i = phi i32 [ %i.ao, %bb.g ], [ 1, %bb.d ]
  store i32 %.sink.i, ptr %.sink34.i.sroa.phi, align 8, !tbaa !24
  store i8 1, ptr %i.d, align 1, !tbaa !5023
  br label %computeYMD.exitthread-pre-split

computeYMD.exitthread-pre-split:                  ; preds = %.computeYMD.exitthread-pre-split_crit_edge, %bb.h
  %.pre = phi i32 [ %.pre.pre, %.computeYMD.exitthread-pre-split_crit_edge ], [ %.pre14, %bb.h ]
  %.pr = load i32, ptr %.sink34.i.sroa.gep, align 8, !tbaa !5024
  %.pre12 = load i32, ptr %.sink34.i.sroa.gep11, align 8, !tbaa !5026
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %computeYMD.exitthread-pre-split, %bb.f
  %i.ap = phi i32 [ %.pre12, %computeYMD.exitthread-pre-split ], [ 0, %bb.f ] ; 2 uses
  %i.aq = phi i32 [ %.pre, %computeYMD.exitthread-pre-split ], [ 0, %bb.f ] ; 2 uses
  %i.ar = phi i32 [ %.pr, %computeYMD.exitthread-pre-split ], [ 0, %bb.f ] ; 2 uses
  %i.as = icmp slt i32 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %spec.select = call i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.au = insertelement <4 x i32> poison, i32 %spec.select, i64 0
  %i.av = shufflevector <4 x i32> %i.au, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aw = udiv <4 x i32> %i.av, <i32 1000, i32 100, i32 10, i32 1>
  %i.ax = urem <4 x i32> %i.aw, splat (i32 10)
  %i.ay = trunc nuw nsw <4 x i32> %i.ax to <4 x i8>
  %i.az = or disjoint <4 x i8> %i.ay, splat (i8 48)
  store <4 x i8> %i.az, ptr %i.at, align 1, !tbaa !229
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  store i8 45, ptr %i.ba, align 1, !tbaa !229
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 45, ptr %i.bd, align 8, !tbaa !229
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %i.bf = sdiv i32 %i.ap, 10
  %i.bg = sdiv i32 %i.aq, 10
  %i.bh = insertelement <4 x i32> poison, i32 %i.bg, i64 0
  %i.bi = insertelement <4 x i32> %i.bh, i32 %i.bf, i64 1
  %i.bj = insertelement <4 x i32> %i.bi, i32 %i.aq, i64 2
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.ap, i64 3
  %i.bl = srem <4 x i32> %i.bk, splat (i32 10)
  %i.bm = trunc nsw <4 x i32> %i.bl to <4 x i8>
  %i.bn = add nsw <4 x i8> %i.bm, splat (i8 48)   ; 4 uses
  %i.bo = extractelement <4 x i8> %i.bn, i64 0
  store i8 %i.bo, ptr %i.bb, align 2, !tbaa !229
  %i.bp = extractelement <4 x i8> %i.bn, i64 2
  store i8 %i.bp, ptr %i.bc, align 1, !tbaa !229
  %i.bq = extractelement <4 x i8> %i.bn, i64 1
  store i8 %i.bq, ptr %i.be, align 1, !tbaa !229
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.bs = extractelement <4 x i8> %i.bn, i64 3
  store i8 %i.bs, ptr %i.br, align 2, !tbaa !229
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 0, ptr %i.bt, align 1, !tbaa !229
  br i1 %i.as, label %bb.i, label %bb.j

bb.i:                                             ; preds = %computeYMD.exit
  store i8 45, ptr %i.a, align 16, !tbaa !229
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef 11, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  br label %bb.k

bb.j:                                             ; preds = %computeYMD.exit
  call fastcc void @setResultStrOrError(ptr noundef %0, ptr noundef nonnull %i.at, i32 noundef 10, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr))
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @timeFunc(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca %struct.DateTime, align 8           ; 22 uses
  %i.a = alloca [16 x i8], align 16               ; 19 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #59
  %i.b = call fastcc i32 @isDate(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3)
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #59
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 42 ; 2 uses
  %i.e = load i8, ptr %i.d, align 2, !tbaa !5027
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %.computeHMS.exit_crit_edge

.computeHMS.exit_crit_edge:                       ; preds = %bb.b
  %.phi.trans.insert15 = getelementptr inbounds nuw i8, ptr %3, i64 20
  %.pre16 = load i32, ptr %.phi.trans.insert15, align 4, !tbaa !5028
  %.phi.trans.insert17 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre18 = load i32, ptr %.phi.trans.insert17, align 8, !tbaa !5029
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.pre20 = load i8, ptr %.phi.trans.insert19, align 4
  br label %computeHMS.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !tbaa !5020
  %.not.i13 = icmp eq i8 %i.g, 0
  br i1 %.not.i13, label %bb.d, label %.computeJD.exit_crit_edge

.computeJD.exit_crit_edge:                        ; preds = %bb.c
  %.pre = load i64, ptr %3, align 8, !tbaa !5022
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 44
  %.pre14 = load i8, ptr %.phi.trans.insert, align 4
  br label %computeJD.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 41
  %i.i = load i8, ptr %i.h, align 1, !tbaa !5023
  %.not40.i = icmp eq i8 %i.i, 0
  br i1 %.not40.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load i32, ptr %i.j, align 8, !tbaa !5024 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !5025
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !5026
  %i.p = add i32 %i.k, -10000
  %or.cond.i = icmp ult i32 %i.p, -14713
  br i1 %or.cond.i, label %bb.f, label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %.050.i = phi i32 [ %i.k, %bb.e ], [ 2000, %bb.d ]
  %.03649.i = phi i32 [ %i.m, %bb.e ], [ 1, %bb.d ] ; 3 uses
  %.03848.i = phi i32 [ %i.o, %bb.e ], [ 1, %bb.d ]
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
  %.137.i = select i1 %i.t, i32 %i.u, i32 %.03649.i
  %i.v = sext i1 %i.t to i32
  %.1.i = add nsw i32 %.050.i, %i.v               ; 2 uses
  %i.w = trunc nsw i32 %.1.i to i16
  %.neg51.lhs.trunc.i = add nsw i16 %i.w, 4800    ; 2 uses
  %.neg5152.i = udiv i16 %.neg51.lhs.trunc.i, 100
  %.neg51.zext.i = zext nneg i16 %.neg5152.i to i32
  %i.x = udiv i16 %.neg51.lhs.trunc.i, 400
  %.zext.i = zext nneg i16 %i.x to i32
  %i.y = mul nsw i32 %.1.i, 36525
  %i.z = add nsw i32 %i.y, 172251900
  %i.aa = udiv i32 %i.z, 100
  %i.ab = mul i32 %.137.i, 306001
  %i.ac = add i32 %i.ab, 306001
  %i.ad = sdiv i32 %i.ac, 10000
  %reass.sub.i = add i32 %.03848.i, 38
  %i.ae = add i32 %reass.sub.i, %i.ad
  %i.af = add i32 %i.ae, %i.aa
  %i.ag = sub i32 %i.af, %.neg51.zext.i
  %i.ah = add i32 %i.ag, %.zext.i
  %i.ai = sitofp i32 %i.ah to double
  %i.aj = fadd nnan double %i.ai, -1.524500e+03
  %i.ak = fmul nnan double %i.aj, 8.640000e+07
  %i.al = fptosi double %i.ak to i64              ; 2 uses
  store i64 %i.al, ptr %3, align 8, !tbaa !5022
  store i8 1, ptr %i.f, align 8, !tbaa !5020
  br label %computeJD.exit

computeJD.exit:                                   ; preds = %.computeJD.exit_crit_edge, %bb.g, %bb.f
  %i.am = phi i8 [ %.pre14, %.computeJD.exit_crit_edge ], [ %i.r, %bb.g ], [ 2, %bb.f ]
  %i.an = phi i64 [ %.pre, %.computeJD.exit_crit_edge ], [ %i.al, %bb.g ], [ 0, %bb.f ]
  %i.ao = add nsw i64 %i.an, 43200000
  %i.ap = srem i64 %i.ao, 86400000
  %i.aq = trunc nsw i64 %i.ap to i32              ; 3 uses
end_hunk_0
begin_hunk_1_@strftimeFunc:bb.a
  store i8 1, ptr %i.ac, align 8, !tbaa !5020
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 42 ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 2, !tbaa !5027
  %.not42.i = icmp eq i8 %i.bl, 0
  br i1 %.not42.i, label %computeJD.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !5028
  %i.bo = mul nsw i32 %i.bn, 3600000
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !5029
  %i.br = mul nsw i32 %i.bq, 60000
  %i.bs = add nsw i32 %i.br, %i.bo
  %i.bt = sext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !5030
  %i.bw = call double @llvm.fmuladd.f64(double %i.bv, double 1.000000e+03, double 5.000000e-01)
  %i.bx = fptosi double %i.bw to i64
  %i.by = add i64 %i.bx, %i.bj
  %i.bz = add i64 %i.by, %i.bt                    ; 2 uses
  store i64 %i.bz, ptr %3, align 8, !tbaa !5022
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !5031 ; 2 uses
  %.not43.i = icmp eq i32 %i.cb, 0
  br i1 %.not43.i, label %computeJD.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = mul nsw i32 %i.cb, 60000
  %i.cd = sext i32 %i.cc to i64
  %i.ce = sub nsw i64 %i.bz, %i.cd
  store i64 %i.ce, ptr %3, align 8, !tbaa !5022
  store i8 0, ptr %i.ae, align 1, !tbaa !5023
  store i8 0, ptr %i.bk, align 2, !tbaa !5027
  store i32 0, ptr %i.ca, align 4, !tbaa !5031
  %i.cf = and i8 %i.ao, -26
  %i.cg = or disjoint i8 %i.cf, 8
  store i8 %i.cg, ptr %i.an, align 4
  br label %computeJD.exit

computeJD.exit:                                   ; preds = %bb.i, %bb.l, %bb.m, %bb.n, %bb.o
  call fastcc void @computeYMD_HMS(ptr noundef %3)
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %.sroa.13.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 9 uses
  %.sroa.14.0..sroa_idx.i148 = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 7 uses
  %.sroa.15.0..sroa_idx.i150 = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 4 uses
  %.sroa.17.0..sroa_idx.i152 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 7 uses
  %.sroa.21.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %3, i64 41 ; 3 uses
  %.sroa.23.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %3, i64 42 ; 4 uses
  %.sroa.252.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %3, i64 44 ; 5 uses
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %.loopexit, %computeJD.exit
  %.050 = phi i64 [ 0, %computeJD.exit ], [ %.151.ph, %.loopexit ] ; 7 uses
  %.0 = phi i64 [ 0, %computeJD.exit ], [ %i.oj, %.loopexit ] ; 8 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.0
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !229
  switch i8 %i.ck, label %.loopexit [
    i8 0, label %bb.cd
    i8 37, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p
  %i.cl = icmp ult i64 %.050, %.0
  br i1 %i.cl, label %bb.r, label %sqlite3_str_append.exit

bb.r:                                             ; preds = %bb.q
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %.050 ; 2 uses
  %i.cn = sub nuw i64 %.0, %.050                  ; 2 uses
  %i.co = trunc i64 %i.cn to i32                  ; 3 uses
  %i.cp = load i32, ptr %i.z, align 8, !tbaa !281 ; 2 uses
  %i.cq = add i32 %i.cp, %i.co                    ; 2 uses
  %i.cr = load i32, ptr %i.x, align 8, !tbaa !282
  %.not.i68 = icmp ult i32 %i.cq, %i.cr
  br i1 %.not.i68, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.cm, i32 noundef %i.co), !inline_history !283
  br label %sqlite3_str_append.exit

bb.t:                                             ; preds = %bb.r
  %.not14.i = icmp eq i32 %i.co, 0
  br i1 %.not14.i, label %sqlite3_str_append.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  store i32 %i.cq, ptr %i.z, align 8, !tbaa !281
  %i.cs = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.ct = zext i32 %i.cp to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.ct
  %sext = shl i64 %i.cn, 32
  %i.cv = ashr exact i64 %sext, 32
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cu, ptr nonnull readonly align 1 %i.cm, i64 %i.cv, i1 false)
  br label %sqlite3_str_append.exit

sqlite3_str_append.exit:                          ; preds = %bb.u, %bb.t, %bb.s, %bb.q
  %i.cw = add i64 %.0, 1                          ; 28 uses
  %i.cx = add i64 %.0, 2                          ; 27 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.cw
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !229 ; 7 uses
  switch i8 %i.cz, label %bb.ca [
    i8 100, label %bb.v
    i8 101, label %bb.v
    i8 102, label %bb.w
    i8 70, label %bb.x
    i8 71, label %bb.y
    i8 103, label %bb.y
    i8 72, label %bb.ah
    i8 107, label %bb.ah
    i8 73, label %bb.ai
    i8 108, label %bb.ai
    i8 106, label %bb.aj
    i8 74, label %bb.ao
    i8 109, label %bb.ap
    i8 77, label %bb.aq
    i8 112, label %bb.ar
    i8 80, label %bb.ar
    i8 82, label %bb.ay
    i8 115, label %bb.az
    i8 83, label %bb.bc
    i8 84, label %bb.bd
    i8 117, label %bb.be
    i8 119, label %bb.be
    i8 85, label %bb.bg
    i8 86, label %bb.bl
    i8 87, label %bb.bs
    i8 89, label %bb.bx
    i8 37, label %bb.by
  ]

bb.v:                                             ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %i.da = icmp eq i8 %i.cz, 100
  %i.db = select i1 %i.da, ptr @.str.1300, ptr @.str.1301
  %i.dc = load i32, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !5026
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull %i.db, i32 noundef %i.dc)
  br label %.loopexit

bb.w:                                             ; preds = %sqlite3_str_append.exit
  %i.dd = load double, ptr %.sroa.17.0..sroa_idx.i152, align 8, !tbaa !5030 ; 2 uses
  %i.de = fcmp ogt double %i.dd, 5.999900e+01
  %.053 = select i1 %i.de, double 5.999900e+01, double %i.dd
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1302, double noundef %.053)
  br label %.loopexit

bb.x:                                             ; preds = %sqlite3_str_append.exit
  %i.df = load i32, ptr %i.ch, align 8, !tbaa !5024
  %i.dg = load i32, ptr %i.ci, align 4, !tbaa !5025
  %i.dh = load i32, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !5026
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1303, i32 noundef %i.df, i32 noundef %i.dg, i32 noundef %i.dh)
  br label %.loopexit

bb.y:                                             ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13197)
  %.sroa.0193.0.copyload = load i64, ptr %3, align 8, !tbaa !19 ; 2 uses
  %.sroa.7.0.copyload = load i32, ptr %i.ch, align 8, !tbaa !24
  store i32 %.sroa.7.0.copyload, ptr %.sroa.7, align 8, !tbaa !24
  %.sroa.15199.0.copyload = load i8, ptr %i.ac, align 8, !tbaa !229
  %i.di = add nsw i64 %.sroa.0193.0.copyload, 43200000
  %i.dj = sdiv i64 %i.di, 86400000
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = srem i32 %i.dk, 7
  %i.dm = sub nsw i32 3, %i.dl
  %i.dn = mul nsw i32 %i.dm, 86400000
  %i.do = sext i32 %i.dn to i64
  %i.dp = add nsw i64 %.sroa.0193.0.copyload, %i.do ; 2 uses
  %.not30.i = icmp eq i8 %.sroa.15199.0.copyload, 0
  br i1 %.not30.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 2000, ptr %.sroa.7, align 8, !tbaa !5024
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.dq = icmp ugt i64 %i.dp, 464269060799999
  br i1 %i.dq, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %.sroa.7, align 8
  br label %computeYMD.exit

bb.ac:                                            ; preds = %bb.aa
  %i.dr = add nuw nsw i64 %i.dp, 43200000
  %i.ds = udiv i64 %i.dr, 86400000
  %i.dt = trunc nuw nsw i64 %i.ds to i32          ; 2 uses
  %i.du = uitofp nneg i32 %i.dt to double
  %i.dv = fadd double %i.du, f0x40DF4B3000000000
  %i.dw = fdiv double %i.dv, f0x40E1D58800000000
  %i.dx = fptosi double %i.dw to i32              ; 2 uses
  %i.dy = add nsw i32 %i.dx, 48
  %.neg.i = sdiv i32 %i.dy, -4
  %i.dz = add nuw nsw i32 %i.dt, 1498
  %i.ea = add i32 %i.dz, %i.dx
  %i.eb = add i32 %i.ea, %.neg.i                  ; 2 uses
  %i.ec = sitofp i32 %i.eb to double
  %i.ed = fadd double %i.ec, -1.221000e+02
  %i.ee = fdiv double %i.ed, 3.652500e+02
  %i.ef = fptosi double %i.ee to i32              ; 2 uses
  %i.eg = and i32 %i.ef, 32767
  %i.eh = mul nuw nsw i32 %i.eg, 36525
  %5 = udiv i32 %i.eh, 100
  %i.ei = sub nsw i32 %i.eb, %5
  %i.ej = sitofp i32 %i.ei to double
  %i.ek = fdiv double %i.ej, 3.060010e+01
  %i.el = fptosi double %i.ek to i32              ; 2 uses
  %i.em = icmp slt i32 %i.el, 14
  %.v.i = select i1 %i.em, i32 -1, i32 -13
  %i.en = add nsw i32 %.v.i, %i.el
  %i.eo = icmp sgt i32 %i.en, 2
  %.v32.i = select i1 %i.eo, i32 -4716, i32 -4715
  %i.ep = add nsw i32 %.v32.i, %i.ef
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.z
  %.sink34.i.sroa.phi = phi ptr [ %.sroa.7, %bb.ac ], [ %.sroa.13197, %bb.z ]
  %.sink.i = phi i32 [ %i.ep, %bb.ac ], [ 1, %bb.z ]
  store i32 %.sink.i, ptr %.sink34.i.sroa.phi, align 8, !tbaa !24
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %bb.ab, %bb.ad
  %i.eq = icmp eq i8 %i.cz, 103
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.195 = load i32, ptr %.sroa.7, align 8, !tbaa !5024 ; 2 uses
  br i1 %i.eq, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %computeYMD.exit
  %i.er = srem i32 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.195, 100
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1300, i32 noundef %i.er)
  br label %bb.ag

bb.af:                                            ; preds = %computeYMD.exit
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1304, i32 noundef %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.195)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13197)
  br label %.loopexit

bb.ah:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %i.es = icmp eq i8 %i.cz, 72
  %i.et = select i1 %i.es, ptr @.str.1300, ptr @.str.1301
  %i.eu = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !5028
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull %i.et, i32 noundef %i.eu)
  br label %.loopexit

bb.ai:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %i.ev = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !5028 ; 3 uses
  %i.ew = icmp sgt i32 %i.ev, 12
  %i.ex = add nsw i32 %i.ev, -12
  %spec.select = select i1 %i.ew, i32 %i.ex, i32 %i.ev ; 2 uses
  %i.ey = icmp eq i32 %spec.select, 0
  %spec.store.select = select i1 %i.ey, i32 12, i32 %spec.select
  %i.ez = icmp eq i8 %i.cz, 73
  %i.fa = select i1 %i.ez, ptr @.str.1300, ptr @.str.1301
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull %i.fa, i32 noundef %spec.store.select)
  br label %.loopexit

bb.aj:                                            ; preds = %sqlite3_str_append.exit
  %.sroa.0.0.copyload.i = load i64, ptr %3, align 8, !tbaa !19
  %.sroa.13.0.copyload.i = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !24
  %.sroa.14.0.copyload.i = load i32, ptr %.sroa.14.0..sroa_idx.i148, align 8, !tbaa !24
  %.sroa.15.0.copyload.i = load i32, ptr %.sroa.15.0..sroa_idx.i150, align 4, !tbaa !24 ; 2 uses
  %.sroa.17.0.copyload.i = load double, ptr %.sroa.17.0..sroa_idx.i152, align 8, !tbaa !324
  %.sroa.21.0.copyload.i = load i8, ptr %.sroa.21.0..sroa_idx.i154, align 1, !tbaa !229
  %.sroa.23.0.copyload.i = load i8, ptr %.sroa.23.0..sroa_idx.i156, align 2, !tbaa !229
  %.sroa.252.0.copyload.i = load i8, ptr %.sroa.252.0..sroa_idx.i158, align 4, !tbaa !229
  %.not40.i.i = icmp eq i8 %.sroa.21.0.copyload.i, 0
  br i1 %.not40.i.i, label %.thread.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.8.0.copyload.i = load i32, ptr %i.ch, align 8, !tbaa !24 ; 2 uses
  %i.fb = add i32 %.sroa.8.0.copyload.i, -10000
  %or.cond.i.i = icmp ult i32 %i.fb, -14713
  br i1 %or.cond.i.i, label %daysAfterJan01.exit, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ak, %bb.aj
  %.050.i.i = phi i32 [ %.sroa.8.0.copyload.i, %bb.ak ], [ 2000, %bb.aj ]
  %i.fc = and i8 %.sroa.252.0.copyload.i, 1
  %.not41.i.i = icmp eq i8 %i.fc, 0
  br i1 %.not41.i.i, label %bb.al, label %daysAfterJan01.exit

bb.al:                                            ; preds = %.thread.i.i
  %.1.i.i = add nsw i32 %.050.i.i, -1             ; 2 uses
  %i.fd = trunc nsw i32 %.1.i.i to i16
  %.neg51.lhs.trunc.i.i = add nsw i16 %i.fd, 4800 ; 2 uses
  %.neg5152.i.i = udiv i16 %.neg51.lhs.trunc.i.i, 100
  %.neg51.zext.i.i = zext nneg i16 %.neg5152.i.i to i32
  %i.fe = udiv i16 %.neg51.lhs.trunc.i.i, 400
  %.zext.i.i = zext nneg i16 %i.fe to i32
  %i.ff = mul nsw i32 %.1.i.i, 36525
  %i.fg = add nsw i32 %i.ff, 172251900
  %i.fh = udiv i32 %i.fg, 100
  %i.fi = add nuw nsw i32 %i.fh, 467
  %i.fj = sub nuw nsw i32 %i.fi, %.neg51.zext.i.i
  %i.fk = add nuw nsw i32 %i.fj, %.zext.i.i
  %i.fl = uitofp nneg i32 %i.fk to double
  %i.fm = fadd nnan double %i.fl, -1.524500e+03
  %i.fn = fmul nnan double %i.fm, 8.640000e+07
  %i.fo = fptosi double %i.fn to i64              ; 2 uses
  %.not42.i.i = icmp eq i8 %.sroa.23.0.copyload.i, 0
  br i1 %.not42.i.i, label %daysAfterJan01.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fp = mul nsw i32 %.sroa.13.0.copyload.i, 3600000
  %i.fq = mul nsw i32 %.sroa.14.0.copyload.i, 60000
  %i.fr = add nsw i32 %i.fq, %i.fp
  %i.fs = sext i32 %i.fr to i64
  %i.ft = call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload.i, double 1.000000e+03, double 5.000000e-01)
  %i.fu = fptosi double %i.ft to i64
  %i.fv = add i64 %i.fu, %i.fs
  %i.fw = add i64 %i.fv, %i.fo                    ; 2 uses
  %.not43.i.i = icmp eq i32 %.sroa.15.0.copyload.i, 0
  br i1 %.not43.i.i, label %daysAfterJan01.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fx = mul nsw i32 %.sroa.15.0.copyload.i, 60000
  %i.fy = sext i32 %i.fx to i64
  %i.fz = sub nsw i64 %i.fw, %i.fy
  br label %daysAfterJan01.exit

daysAfterJan01.exit:                              ; preds = %bb.ak, %.thread.i.i, %bb.al, %bb.am, %bb.an
  %.sroa.0.0.i = phi i64 [ %i.fo, %bb.al ], [ %i.fw, %bb.am ], [ %i.fz, %bb.an ], [ 0, %.thread.i.i ], [ 0, %bb.ak ]
  %i.ga = add i64 %.sroa.0.0.copyload.i, 43200000
  %i.gb = sub i64 %i.ga, %.sroa.0.0.i
  %i.gc = sdiv i64 %i.gb, 86400000
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = add nsw i32 %i.gd, 1
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1305, i32 noundef %i.ge)
  br label %.loopexit

bb.ao:                                            ; preds = %sqlite3_str_append.exit
  %i.gf = load i64, ptr %3, align 8, !tbaa !5022
  %i.gg = sitofp i64 %i.gf to double
  %i.gh = fdiv double %i.gg, 8.640000e+07
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.150, double noundef %i.gh)
  br label %.loopexit

bb.ap:                                            ; preds = %sqlite3_str_append.exit
  %i.gi = load i32, ptr %i.ci, align 4, !tbaa !5025
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1300, i32 noundef %i.gi)
  br label %.loopexit

bb.aq:                                            ; preds = %sqlite3_str_append.exit
  %i.gj = load i32, ptr %.sroa.14.0..sroa_idx.i148, align 8, !tbaa !5029
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1300, i32 noundef %i.gj)
  br label %.loopexit

bb.ar:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %i.gk = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !5028
  %i.gl = icmp sgt i32 %i.gk, 11
  %i.gm = icmp eq i8 %i.cz, 112                   ; 2 uses
  %i.gn = load i32, ptr %i.z, align 8, !tbaa !281 ; 3 uses
  %i.go = add i32 %i.gn, 2                        ; 3 uses
  %i.gp = load i32, ptr %i.x, align 8, !tbaa !282
  %.not.i70 = icmp ult i32 %i.go, %i.gp           ; 2 uses
  br i1 %i.gl, label %bb.as, label %bb.av

bb.as:                                            ; preds = %bb.ar
  %i.gq = select i1 %i.gm, ptr @.str.1306, ptr @.str.1307 ; 2 uses
  br i1 %.not.i70, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.gq, i32 noundef 2), !inline_history !283
  br label %.loopexit

bb.au:                                            ; preds = %bb.as
  store i32 %i.go, ptr %i.z, align 8, !tbaa !281
  %i.gr = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.gs = zext i32 %i.gn to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gs
  %i.gu = load i16, ptr %i.gq, align 1
  store i16 %i.gu, ptr %i.gt, align 1
  br label %.loopexit

bb.av:                                            ; preds = %bb.ar
  %i.gv = select i1 %i.gm, ptr @.str.1308, ptr @.str.1309 ; 2 uses
  br i1 %.not.i70, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call fastcc void @enlargeAndAppend(ptr noundef nonnull %4, ptr noundef nonnull readonly %i.gv, i32 noundef 2), !inline_history !283
  br label %.loopexit

bb.ax:                                            ; preds = %bb.av
  store i32 %i.go, ptr %i.z, align 8, !tbaa !281
  %i.gw = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.gx = zext i32 %i.gn to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 %i.gx
  %i.gz = load i16, ptr %i.gv, align 1
  store i16 %i.gz, ptr %i.gy, align 1
  br label %.loopexit

bb.ay:                                            ; preds = %sqlite3_str_append.exit
  %i.ha = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !5028
  %i.hb = load i32, ptr %.sroa.14.0..sroa_idx.i148, align 8, !tbaa !5029
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1310, i32 noundef %i.ha, i32 noundef %i.hb)
  br label %.loopexit

bb.az:                                            ; preds = %sqlite3_str_append.exit
  %i.hc = load i8, ptr %.sroa.252.0..sroa_idx.i158, align 4
  %i.hd = and i8 %i.hc, 4
  %.not63 = icmp eq i8 %i.hd, 0
end_hunk_1
begin_hunk_2_@strftimeFunc:bb.a
  br i1 %.not63, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hf = add nsw i64 %i.he, -210866760000000
  %i.hg = sitofp i64 %i.hf to double
  %i.hh = fdiv double %i.hg, 1.000000e+03
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1311, double noundef %i.hh)
  br label %.loopexit

bb.bb:                                            ; preds = %bb.az
  %i.hi = sdiv i64 %i.he, 1000
  %i.hj = add nsw i64 %i.hi, -210866760000
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.148, i64 noundef %i.hj)
  br label %.loopexit

bb.bc:                                            ; preds = %sqlite3_str_append.exit
  %i.hk = load double, ptr %.sroa.17.0..sroa_idx.i152, align 8, !tbaa !5030
  %i.hl = fptosi double %i.hk to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1300, i32 noundef %i.hl)
  br label %.loopexit

bb.bd:                                            ; preds = %sqlite3_str_append.exit
  %i.hm = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !5028
  %i.hn = load i32, ptr %.sroa.14.0..sroa_idx.i148, align 8, !tbaa !5029
  %i.ho = load double, ptr %.sroa.17.0..sroa_idx.i152, align 8, !tbaa !5030
  %i.hp = fptosi double %i.ho to i32
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1312, i32 noundef %i.hm, i32 noundef %i.hn, i32 noundef %i.hp)
  br label %.loopexit

bb.be:                                            ; preds = %sqlite3_str_append.exit, %sqlite3_str_append.exit
  %.val67 = load i64, ptr %3, align 8, !tbaa !5022
  %i.hq = add nsw i64 %.val67, 129600000
  %i.hr = sdiv i64 %i.hq, 86400000
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = srem i32 %i.hs, 7                       ; 2 uses
  %i.hu = trunc nsw i32 %i.ht to i8
  %i.hv = add nsw i8 %i.hu, 48
  %i.hw = icmp eq i32 %i.ht, 0
  %i.hx = icmp eq i8 %i.cz, 117
  %or.cond = and i1 %i.hx, %i.hw
  %spec.store.select3 = select i1 %or.cond, i8 55, i8 %i.hv
  %i.hy = load i32, ptr %i.z, align 8, !tbaa !281
  %i.hz = zext i32 %i.hy to i64
  %i.ia = add nuw nsw i64 %i.hz, 1
  %i.ib = load i32, ptr %i.x, align 8, !tbaa !282
  %i.ic = zext i32 %i.ib to i64
  %.not.i74 = icmp samesign ult i64 %i.ia, %i.ic
  br i1 %.not.i74, label %.lr.ph.i.preheader, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.id = call fastcc i32 @sqlite3StrAccumEnlarge(ptr noundef nonnull %4, i64 noundef 1), !inline_history !353 ; 2 uses
  %i.ie = icmp slt i32 %i.id, 1
  br i1 %i.ie, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.be, %bb.bf
  %.19.i.ph = phi i32 [ 1, %bb.be ], [ %i.id, %bb.bf ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.19.i = phi i32 [ %i.if, %.lr.ph.i ], [ %.19.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.if = add nsw i32 %.19.i, -1
  %i.ig = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.ih = load i32, ptr %i.z, align 8, !tbaa !281 ; 2 uses
  %i.ii = add i32 %i.ih, 1
  store i32 %i.ii, ptr %i.z, align 8, !tbaa !281
  %i.ij = zext i32 %i.ih to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %i.ij
  store i8 %spec.store.select3, ptr %i.ik, align 1, !tbaa !229
  %i.il = icmp samesign ugt i32 %.19.i, 1
  br i1 %i.il, label %.lr.ph.i, label %.loopexit, !llvm.loop !354

bb.bg:                                            ; preds = %sqlite3_str_append.exit
  %.sroa.0.0.copyload.i75 = load i64, ptr %3, align 8, !tbaa !19 ; 2 uses
  %.sroa.13.0.copyload.i77 = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !24
  %.sroa.14.0.copyload.i79 = load i32, ptr %.sroa.14.0..sroa_idx.i148, align 8, !tbaa !24
  %.sroa.15.0.copyload.i81 = load i32, ptr %.sroa.15.0..sroa_idx.i150, align 4, !tbaa !24 ; 2 uses
  %.sroa.17.0.copyload.i83 = load double, ptr %.sroa.17.0..sroa_idx.i152, align 8, !tbaa !324
  %.sroa.21.0.copyload.i85 = load i8, ptr %.sroa.21.0..sroa_idx.i154, align 1, !tbaa !229
  %.sroa.23.0.copyload.i87 = load i8, ptr %.sroa.23.0..sroa_idx.i156, align 2, !tbaa !229
  %.sroa.252.0.copyload.i89 = load i8, ptr %.sroa.252.0..sroa_idx.i158, align 4, !tbaa !229
  %.not40.i.i90 = icmp eq i8 %.sroa.21.0.copyload.i85, 0
  br i1 %.not40.i.i90, label %.thread.i.i94, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.sroa.8.0.copyload.i92 = load i32, ptr %i.ch, align 8, !tbaa !24 ; 2 uses
  %i.im = add i32 %.sroa.8.0.copyload.i92, -10000
  %or.cond.i.i93 = icmp ult i32 %i.im, -14713
  br i1 %or.cond.i.i93, label %daysAfterJan01.exit105, label %.thread.i.i94

.thread.i.i94:                                    ; preds = %bb.bh, %bb.bg
  %.050.i.i95 = phi i32 [ %.sroa.8.0.copyload.i92, %bb.bh ], [ 2000, %bb.bg ]
  %i.in = and i8 %.sroa.252.0.copyload.i89, 1
  %.not41.i.i96 = icmp eq i8 %i.in, 0
  br i1 %.not41.i.i96, label %bb.bi, label %daysAfterJan01.exit105

bb.bi:                                            ; preds = %.thread.i.i94
  %.1.i.i98 = add nsw i32 %.050.i.i95, -1         ; 2 uses
  %i.io = trunc nsw i32 %.1.i.i98 to i16
  %.neg51.lhs.trunc.i.i99 = add nsw i16 %i.io, 4800 ; 2 uses
  %.neg5152.i.i100 = udiv i16 %.neg51.lhs.trunc.i.i99, 100
  %.neg51.zext.i.i101 = zext nneg i16 %.neg5152.i.i100 to i32
  %i.ip = udiv i16 %.neg51.lhs.trunc.i.i99, 400
  %.zext.i.i102 = zext nneg i16 %i.ip to i32
  %i.iq = mul nsw i32 %.1.i.i98, 36525
  %i.ir = add nsw i32 %i.iq, 172251900
  %i.is = udiv i32 %i.ir, 100
  %i.it = add nuw nsw i32 %i.is, 467
  %i.iu = sub nuw nsw i32 %i.it, %.neg51.zext.i.i101
  %i.iv = add nuw nsw i32 %i.iu, %.zext.i.i102
  %i.iw = uitofp nneg i32 %i.iv to double
  %i.ix = fadd nnan double %i.iw, -1.524500e+03
  %i.iy = fmul nnan double %i.ix, 8.640000e+07
  %i.iz = fptosi double %i.iy to i64              ; 2 uses
  %.not42.i.i103 = icmp eq i8 %.sroa.23.0.copyload.i87, 0
  br i1 %.not42.i.i103, label %daysAfterJan01.exit105, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ja = mul nsw i32 %.sroa.13.0.copyload.i77, 3600000
  %i.jb = mul nsw i32 %.sroa.14.0.copyload.i79, 60000
  %i.jc = add nsw i32 %i.jb, %i.ja
  %i.jd = sext i32 %i.jc to i64
  %i.je = call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload.i83, double 1.000000e+03, double 5.000000e-01)
  %i.jf = fptosi double %i.je to i64
  %i.jg = add i64 %i.jf, %i.jd
  %i.jh = add i64 %i.jg, %i.iz                    ; 2 uses
  %.not43.i.i104 = icmp eq i32 %.sroa.15.0.copyload.i81, 0
  br i1 %.not43.i.i104, label %daysAfterJan01.exit105, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ji = mul nsw i32 %.sroa.15.0.copyload.i81, 60000
  %i.jj = sext i32 %i.ji to i64
  %i.jk = sub nsw i64 %i.jh, %i.jj
  br label %daysAfterJan01.exit105

daysAfterJan01.exit105:                           ; preds = %bb.bh, %.thread.i.i94, %bb.bi, %bb.bj, %bb.bk
  %.sroa.0.0.i97 = phi i64 [ %i.iz, %bb.bi ], [ %i.jh, %bb.bj ], [ %i.jk, %bb.bk ], [ 0, %.thread.i.i94 ], [ 0, %bb.bh ]
  %i.jl = add i64 %.sroa.0.0.copyload.i75, 43200000
  %i.jm = sub i64 %i.jl, %.sroa.0.0.i97
  %i.jn = sdiv i64 %i.jm, 86400000
  %i.jo = trunc i64 %i.jn to i32
  %i.jp = add nsw i64 %.sroa.0.0.copyload.i75, 129600000
  %i.jq = sdiv i64 %i.jp, 86400000
  %i.jr = trunc i64 %i.jq to i32
  %i.js = srem i32 %i.jr, 7
  %reass.sub250 = sub i32 %i.jo, %i.js
  %i.jt = add i32 %reass.sub250, 7
  %i.ju = sdiv i32 %i.jt, 7
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1300, i32 noundef %i.ju)
  br label %.loopexit

bb.bl:                                            ; preds = %sqlite3_str_append.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %.sroa.0.0.copyload = load i64, ptr %3, align 8, !tbaa !19 ; 2 uses
  %.sroa.8.0.copyload = load i32, ptr %i.ch, align 8, !tbaa !24
  store i32 %.sroa.8.0.copyload, ptr %.sroa.8, align 8, !tbaa !24
  %.sroa.15.0.copyload = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !24
  %.sroa.16.0.copyload = load i32, ptr %.sroa.14.0..sroa_idx.i148, align 8, !tbaa !24
  %.sroa.17.0.copyload = load i32, ptr %.sroa.15.0..sroa_idx.i150, align 4, !tbaa !24
  %.sroa.18.0.copyload = load double, ptr %.sroa.17.0..sroa_idx.i152, align 8, !tbaa !324
  %.sroa.19.0.copyload = load i8, ptr %i.ac, align 8, !tbaa !229
  %.sroa.24.0.copyload = load i8, ptr %.sroa.23.0..sroa_idx.i156, align 2, !tbaa !229
  %.sroa.25188.0.copyload = load i8, ptr %.sroa.252.0..sroa_idx.i158, align 4, !tbaa !229
  %i.jv = add nsw i64 %.sroa.0.0.copyload, 43200000
  %i.jw = sdiv i64 %i.jv, 86400000
  %i.jx = trunc i64 %i.jw to i32
  %i.jy = srem i32 %i.jx, 7
  %i.jz = sub nsw i32 3, %i.jy
  %i.ka = mul nsw i32 %i.jz, 86400000
  %i.kb = sext i32 %i.ka to i64
  %i.kc = add nsw i64 %.sroa.0.0.copyload, %i.kb  ; 4 uses
  %.not30.i107 = icmp eq i8 %.sroa.19.0.copyload, 0
  br i1 %.not30.i107, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 2000, ptr %.sroa.8, align 8, !tbaa !5024
  br label %bb.bp

bb.bn:                                            ; preds = %bb.bl
  %i.kd = icmp ugt i64 %i.kc, 464269060799999
  br i1 %i.kd, label %.thread.i.i133.thread, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ke = add nuw nsw i64 %i.kc, 43200000
  %i.kf = udiv i64 %i.ke, 86400000
  %i.kg = trunc nuw nsw i64 %i.kf to i32          ; 2 uses
  %i.kh = uitofp nneg i32 %i.kg to double
  %i.ki = fadd double %i.kh, f0x40DF4B3000000000
  %i.kj = fdiv double %i.ki, f0x40E1D58800000000
  %i.kk = fptosi double %i.kj to i32              ; 2 uses
  %i.kl = add nsw i32 %i.kk, 48
  %.neg.i108 = sdiv i32 %i.kl, -4
  %i.km = add nuw nsw i32 %i.kg, 1498
  %i.kn = add i32 %i.km, %i.kk
  %i.ko = add i32 %i.kn, %.neg.i108               ; 2 uses
  %i.kp = sitofp i32 %i.ko to double
  %i.kq = fadd double %i.kp, -1.221000e+02
  %i.kr = fdiv double %i.kq, 3.652500e+02
  %i.ks = fptosi double %i.kr to i32              ; 2 uses
  %i.kt = and i32 %i.ks, 32767
  %i.ku = mul nuw nsw i32 %i.kt, 36525
  %6 = udiv i32 %i.ku, 100
  %i.kv = sub nsw i32 %i.ko, %6
  %i.kw = sitofp i32 %i.kv to double
  %i.kx = fdiv double %i.kw, 3.060010e+01
  %i.ky = fptosi double %i.kx to i32              ; 2 uses
  %i.kz = icmp slt i32 %i.ky, 14
  %.v.i109 = select i1 %i.kz, i32 -1, i32 -13
  %i.la = add nsw i32 %.v.i109, %i.ky
  %i.lb = icmp sgt i32 %i.la, 2
  %.v32.i110 = select i1 %i.lb, i32 -4716, i32 -4715
  %i.lc = add nsw i32 %.v32.i110, %i.ks
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %.sink34.i111.sroa.phi = phi ptr [ %.sroa.8, %bb.bo ], [ %.sroa.13, %bb.bm ]
  %.sink.i112 = phi i32 [ %i.lc, %bb.bo ], [ 1, %bb.bm ]
  store i32 %.sink.i112, ptr %.sink34.i111.sroa.phi, align 8, !tbaa !24
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.8.0.copyload.i131 = load i32, ptr %.sroa.8, align 8, !tbaa !24 ; 2 uses
  %i.ld = add i32 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.8.0.copyload.i131, 4713
  %or.cond.i.i132 = icmp ult i32 %i.ld, 14713
  %i.le = and i8 %.sroa.25188.0.copyload, 1
  %.not41.i.i135 = icmp eq i8 %i.le, 0
  %or.cond244 = select i1 %or.cond.i.i132, i1 %.not41.i.i135, i1 false
  br i1 %or.cond244, label %.thread.i.i133.thread, label %daysAfterJan01.exit144

.thread.i.i133.thread:                            ; preds = %bb.bn, %bb.bp
  %.050.i.i134238 = phi i32 [ %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.8..sroa.8.0.copyload.i131, %bb.bp ], [ 2000, %bb.bn ]
  %.sroa.0.0216237 = phi i64 [ %i.kc, %bb.bp ], [ 0, %bb.bn ] ; 3 uses
  %.sroa.15.0217236 = phi i32 [ %.sroa.15.0.copyload, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.16.0218235 = phi i32 [ %.sroa.16.0.copyload, %bb.bp ], [ 0, %bb.bn ]
  %.sroa.17.0219234 = phi i32 [ %.sroa.17.0.copyload, %bb.bp ], [ 0, %bb.bn ] ; 2 uses
  %.sroa.18.0220233 = phi double [ %.sroa.18.0.copyload, %bb.bp ], [ 0.000000e+00, %bb.bn ]
  %.sroa.24.0221232 = phi i8 [ %.sroa.24.0.copyload, %bb.bp ], [ 0, %bb.bn ]
  %.1.i.i137 = add nsw i32 %.050.i.i134238, -1    ; 2 uses
  %i.lf = trunc nsw i32 %.1.i.i137 to i16
  %.neg51.lhs.trunc.i.i138 = add nsw i16 %i.lf, 4800 ; 2 uses
  %.neg5152.i.i139 = udiv i16 %.neg51.lhs.trunc.i.i138, 100
  %.neg51.zext.i.i140 = zext nneg i16 %.neg5152.i.i139 to i32
  %i.lg = udiv i16 %.neg51.lhs.trunc.i.i138, 400
  %.zext.i.i141 = zext nneg i16 %i.lg to i32
  %i.lh = mul nsw i32 %.1.i.i137, 36525
  %i.li = add nsw i32 %i.lh, 172251900
  %i.lj = udiv i32 %i.li, 100
  %i.lk = add nuw nsw i32 %i.lj, 467
  %i.ll = sub nuw nsw i32 %i.lk, %.neg51.zext.i.i140
  %i.lm = add nuw nsw i32 %i.ll, %.zext.i.i141
  %i.ln = uitofp nneg i32 %i.lm to double
  %i.lo = fadd nnan double %i.ln, -1.524500e+03
  %i.lp = fmul nnan double %i.lo, 8.640000e+07
  %i.lq = fptosi double %i.lp to i64              ; 2 uses
  %.not42.i.i142 = icmp eq i8 %.sroa.24.0221232, 0
  br i1 %.not42.i.i142, label %daysAfterJan01.exit144, label %bb.bq

bb.bq:                                            ; preds = %.thread.i.i133.thread
  %i.lr = mul nsw i32 %.sroa.15.0217236, 3600000
  %i.ls = mul nsw i32 %.sroa.16.0218235, 60000
  %i.lt = add nsw i32 %i.ls, %i.lr
  %i.lu = sext i32 %i.lt to i64
  %i.lv = call double @llvm.fmuladd.f64(double %.sroa.18.0220233, double 1.000000e+03, double 5.000000e-01)
  %i.lw = fptosi double %i.lv to i64
  %i.lx = add i64 %i.lw, %i.lu
  %i.ly = add i64 %i.lx, %i.lq                    ; 2 uses
  %.not43.i.i143 = icmp eq i32 %.sroa.17.0219234, 0
  br i1 %.not43.i.i143, label %daysAfterJan01.exit144, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.lz = mul nsw i32 %.sroa.17.0219234, 60000
  %i.ma = sext i32 %i.lz to i64
  %i.mb = sub nsw i64 %i.ly, %i.ma
  br label %daysAfterJan01.exit144

daysAfterJan01.exit144:                           ; preds = %bb.bp, %.thread.i.i133.thread, %bb.bq, %bb.br
  %.sroa.0.0215 = phi i64 [ %.sroa.0.0216237, %.thread.i.i133.thread ], [ %.sroa.0.0216237, %bb.bq ], [ %.sroa.0.0216237, %bb.br ], [ %i.kc, %bb.bp ]
  %.sroa.0.0.i136 = phi i64 [ %i.lq, %.thread.i.i133.thread ], [ %i.ly, %bb.bq ], [ %i.mb, %bb.br ], [ 0, %bb.bp ]
  %i.mc = add i64 %.sroa.0.0215, 43200000
  %i.md = sub i64 %i.mc, %.sroa.0.0.i136
  %i.me = sdiv i64 %i.md, 86400000
  %i.mf = trunc i64 %i.me to i32
  %i.mg = sdiv i32 %i.mf, 7
  %i.mh = add nsw i32 %i.mg, 1
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1300, i32 noundef %i.mh)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13)
  br label %.loopexit

bb.bs:                                            ; preds = %sqlite3_str_append.exit
  %.sroa.0.0.copyload.i145 = load i64, ptr %3, align 8, !tbaa !19
  %.sroa.13.0.copyload.i147 = load i32, ptr %.sroa.13.0..sroa_idx.i146, align 4, !tbaa !24
  %.sroa.14.0.copyload.i149 = load i32, ptr %.sroa.14.0..sroa_idx.i148, align 8, !tbaa !24
  %.sroa.15.0.copyload.i151 = load i32, ptr %.sroa.15.0..sroa_idx.i150, align 4, !tbaa !24 ; 2 uses
  %.sroa.17.0.copyload.i153 = load double, ptr %.sroa.17.0..sroa_idx.i152, align 8, !tbaa !324
  %.sroa.21.0.copyload.i155 = load i8, ptr %.sroa.21.0..sroa_idx.i154, align 1, !tbaa !229
  %.sroa.23.0.copyload.i157 = load i8, ptr %.sroa.23.0..sroa_idx.i156, align 2, !tbaa !229
  %.sroa.252.0.copyload.i159 = load i8, ptr %.sroa.252.0..sroa_idx.i158, align 4, !tbaa !229
  %.not40.i.i160 = icmp eq i8 %.sroa.21.0.copyload.i155, 0
  br i1 %.not40.i.i160, label %.thread.i.i164, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.sroa.8.0.copyload.i162 = load i32, ptr %i.ch, align 8, !tbaa !24 ; 2 uses
  %i.mi = add i32 %.sroa.8.0.copyload.i162, -10000
  %or.cond.i.i163 = icmp ult i32 %i.mi, -14713
  br i1 %or.cond.i.i163, label %daysAfterJan01.exit175, label %.thread.i.i164

.thread.i.i164:                                   ; preds = %bb.bt, %bb.bs
  %.050.i.i165 = phi i32 [ %.sroa.8.0.copyload.i162, %bb.bt ], [ 2000, %bb.bs ]
  %i.mj = and i8 %.sroa.252.0.copyload.i159, 1
  %.not41.i.i166 = icmp eq i8 %i.mj, 0
  br i1 %.not41.i.i166, label %bb.bu, label %daysAfterJan01.exit175

bb.bu:                                            ; preds = %.thread.i.i164
  %.1.i.i168 = add nsw i32 %.050.i.i165, -1       ; 2 uses
  %i.mk = trunc nsw i32 %.1.i.i168 to i16
  %.neg51.lhs.trunc.i.i169 = add nsw i16 %i.mk, 4800 ; 2 uses
  %.neg5152.i.i170 = udiv i16 %.neg51.lhs.trunc.i.i169, 100
  %.neg51.zext.i.i171 = zext nneg i16 %.neg5152.i.i170 to i32
  %i.ml = udiv i16 %.neg51.lhs.trunc.i.i169, 400
  %.zext.i.i172 = zext nneg i16 %i.ml to i32
  %i.mm = mul nsw i32 %.1.i.i168, 36525
  %i.mn = add nsw i32 %i.mm, 172251900
  %i.mo = udiv i32 %i.mn, 100
  %i.mp = add nuw nsw i32 %i.mo, 467
  %i.mq = sub nuw nsw i32 %i.mp, %.neg51.zext.i.i171
  %i.mr = add nuw nsw i32 %i.mq, %.zext.i.i172
  %i.ms = uitofp nneg i32 %i.mr to double
  %i.mt = fadd nnan double %i.ms, -1.524500e+03
  %i.mu = fmul nnan double %i.mt, 8.640000e+07
  %i.mv = fptosi double %i.mu to i64              ; 2 uses
  %.not42.i.i173 = icmp eq i8 %.sroa.23.0.copyload.i157, 0
  br i1 %.not42.i.i173, label %daysAfterJan01.exit175, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.mw = mul nsw i32 %.sroa.13.0.copyload.i147, 3600000
  %i.mx = mul nsw i32 %.sroa.14.0.copyload.i149, 60000
  %i.my = add nsw i32 %i.mx, %i.mw
  %i.mz = sext i32 %i.my to i64
  %i.na = call double @llvm.fmuladd.f64(double %.sroa.17.0.copyload.i153, double 1.000000e+03, double 5.000000e-01)
  %i.nb = fptosi double %i.na to i64
  %i.nc = add i64 %i.nb, %i.mz
  %i.nd = add i64 %i.nc, %i.mv                    ; 2 uses
  %.not43.i.i174 = icmp eq i32 %.sroa.15.0.copyload.i151, 0
  br i1 %.not43.i.i174, label %daysAfterJan01.exit175, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.ne = mul nsw i32 %.sroa.15.0.copyload.i151, 60000
  %i.nf = sext i32 %i.ne to i64
  %i.ng = sub nsw i64 %i.nd, %i.nf
  br label %daysAfterJan01.exit175

daysAfterJan01.exit175:                           ; preds = %bb.bt, %.thread.i.i164, %bb.bu, %bb.bv, %bb.bw
  %.sroa.0.0.i167 = phi i64 [ %i.mv, %bb.bu ], [ %i.nd, %bb.bv ], [ %i.ng, %bb.bw ], [ 0, %.thread.i.i164 ], [ 0, %bb.bt ]
  %i.nh = add i64 %.sroa.0.0.copyload.i145, 43200000 ; 2 uses
  %i.ni = sub i64 %i.nh, %.sroa.0.0.i167
  %i.nj = sdiv i64 %i.ni, 86400000
  %i.nk = trunc i64 %i.nj to i32
  %i.nl = sdiv i64 %i.nh, 86400000
  %i.nm = trunc i64 %i.nl to i32
  %i.nn = srem i32 %i.nm, 7
  %reass.sub = sub i32 %i.nk, %i.nn
  %i.no = add i32 %reass.sub, 7
  %i.np = sdiv i32 %i.no, 7
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1300, i32 noundef %i.np)
  br label %.loopexit

bb.bx:                                            ; preds = %sqlite3_str_append.exit
  %i.nq = load i32, ptr %i.ch, align 8, !tbaa !5024
  call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef nonnull %4, ptr noundef nonnull @.str.1304, i32 noundef %i.nq)
  br label %.loopexit

bb.by:                                            ; preds = %sqlite3_str_append.exit
  %i.nr = load i32, ptr %i.z, align 8, !tbaa !281
  %i.ns = zext i32 %i.nr to i64
  %i.nt = add nuw nsw i64 %i.ns, 1
  %i.nu = load i32, ptr %i.x, align 8, !tbaa !282
  %i.nv = zext i32 %i.nu to i64
  %.not.i176 = icmp samesign ult i64 %i.nt, %i.nv
  br i1 %.not.i176, label %.lr.ph.i177.preheader, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.nw = call fastcc i32 @sqlite3StrAccumEnlarge(ptr noundef nonnull %4, i64 noundef 1), !inline_history !353 ; 2 uses
  %i.nx = icmp slt i32 %i.nw, 1
  br i1 %i.nx, label %.loopexit, label %.lr.ph.i177.preheader

.lr.ph.i177.preheader:                            ; preds = %bb.by, %bb.bz
  %.19.i179.ph = phi i32 [ 1, %bb.by ], [ %i.nw, %bb.bz ]
  br label %.lr.ph.i177

.lr.ph.i177:                                      ; preds = %.lr.ph.i177.preheader, %.lr.ph.i177
  %.19.i179 = phi i32 [ %i.ny, %.lr.ph.i177 ], [ %.19.i179.ph, %.lr.ph.i177.preheader ] ; 2 uses
  %i.ny = add nsw i32 %.19.i179, -1
  %i.nz = load ptr, ptr %i.w, align 8, !tbaa !284
  %i.oa = load i32, ptr %i.z, align 8, !tbaa !281 ; 2 uses
  %i.ob = add i32 %i.oa, 1
  store i32 %i.ob, ptr %i.z, align 8, !tbaa !281
  %i.oc = zext i32 %i.oa to i64
  %i.od = getelementptr inbounds nuw i8, ptr %i.nz, i64 %i.oc
  store i8 37, ptr %i.od, align 1, !tbaa !229
  %i.oe = icmp samesign ugt i32 %.19.i179, 1
  br i1 %i.oe, label %.lr.ph.i177, label %.loopexit, !llvm.loop !354

bb.ca:                                            ; preds = %sqlite3_str_append.exit
  %i.of = load i8, ptr %i.ab, align 1, !tbaa !277
end_hunk_2
begin_hunk_3_@isDate:bb.a
  %i.uc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ub
  %i.ud = and i8 %.pr407.3.i, -33
  %i.ue = icmp eq i8 %i.ud, 84
  br i1 %i.ue, label %.lr.ph.i320thread-pre-split.4.i, label %split.i325.i

.lr.ph.i320thread-pre-split.4.i:                  ; preds = %.lr.ph.4.i
  %i.uf = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 5
  %.pr407.4.i = load i8, ptr %i.uf, align 1, !tbaa !229 ; 3 uses
  %.not.i324.4.i = icmp eq i8 %.pr407.4.i, 0
  br i1 %.not.i324.4.i, label %sqlite3_strnicmp.exit328.i, label %.lr.ph.5.i

.lr.ph.5.i:                                       ; preds = %.lr.ph.i320thread-pre-split.4.i
  %i.ug = zext i8 %.pr407.4.i to i64
  %i.uh = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ug
  %i.ui = icmp eq i8 %.pr407.4.i, 32
  br i1 %i.ui, label %.lr.ph.i320thread-pre-split.5.i, label %split.i325.i

.lr.ph.i320thread-pre-split.5.i:                  ; preds = %.lr.ph.5.i
  %i.uj = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 6
  %.pr407.5.i = load i8, ptr %i.uj, align 1, !tbaa !229 ; 3 uses
  %.not.i324.5.i = icmp eq i8 %.pr407.5.i, 0
  br i1 %.not.i324.5.i, label %sqlite3_strnicmp.exit328.i, label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %.lr.ph.i320thread-pre-split.5.i
  %i.uk = zext i8 %.pr407.5.i to i64
  %i.ul = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.uk
  %i.um = and i8 %.pr407.5.i, -33
  %i.un = icmp eq i8 %i.um, 79
  br i1 %i.un, label %.lr.ph.i320thread-pre-split.6.i, label %split.i325.i

.lr.ph.i320thread-pre-split.6.i:                  ; preds = %.lr.ph.6.i
  %i.uo = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 7
  %.pr407.6.i = load i8, ptr %i.uo, align 1, !tbaa !229 ; 3 uses
  %.not.i324.6.i = icmp eq i8 %.pr407.6.i, 0
  br i1 %.not.i324.6.i, label %sqlite3_strnicmp.exit328.i, label %.lr.ph.7.i

.lr.ph.7.i:                                       ; preds = %.lr.ph.i320thread-pre-split.6.i
  %i.up = zext i8 %.pr407.6.i to i64
  %i.uq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.up
  %i.ur = and i8 %.pr407.6.i, -33
  %i.us = icmp eq i8 %i.ur, 70
  br i1 %i.us, label %.lr.ph.i320thread-pre-split.7.i, label %split.i325.i

.lr.ph.i320thread-pre-split.7.i:                  ; preds = %.lr.ph.7.i
  %i.ut = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 8
  %.pr407.7.i = load i8, ptr %i.ut, align 1, !tbaa !229 ; 3 uses
  %.not.i324.7.i = icmp eq i8 %.pr407.7.i, 0
  br i1 %.not.i324.7.i, label %sqlite3_strnicmp.exit328.i, label %.lr.ph.8.i

.lr.ph.8.i:                                       ; preds = %.lr.ph.i320thread-pre-split.7.i
  %i.uu = zext i8 %.pr407.7.i to i64
  %i.uv = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.uu
  %i.uw = icmp eq i8 %.pr407.7.i, 32
  br i1 %i.uw, label %sqlite3_strnicmp.exit328.thread.i, label %split.i325.i

.lr.ph.i320thread-pre-split.i:                    ; preds = %.lr.ph.i320.preheader.i
  %i.ux = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 1
  %.pr407.i = load i8, ptr %i.ux, align 1, !tbaa !229 ; 3 uses
  %.not.i324.i = icmp eq i8 %.pr407.i, 0
  br i1 %.not.i324.i, label %sqlite3_strnicmp.exit328.i, label %.lr.ph.1.i

split.i325.i:                                     ; preds = %.lr.ph.8.i, %.lr.ph.7.i, %.lr.ph.6.i, %.lr.ph.5.i, %.lr.ph.4.i, %.lr.ph.3.i, %.lr.ph.2.i, %.lr.ph.1.i
  %.023.i322452.lcssa.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 8), %.lr.ph.8.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 1), %.lr.ph.1.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 2), %.lr.ph.2.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 3), %.lr.ph.3.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 4), %.lr.ph.4.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 5), %.lr.ph.5.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 6), %.lr.ph.6.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 7), %.lr.ph.7.i ]
  %.lcssa474.in.i = phi ptr [ %i.uv, %.lr.ph.8.i ], [ %i.tn, %.lr.ph.1.i ], [ %i.ts, %.lr.ph.2.i ], [ %i.tx, %.lr.ph.3.i ], [ %i.uc, %.lr.ph.4.i ], [ %i.uh, %.lr.ph.5.i ], [ %i.ul, %.lr.ph.6.i ], [ %i.uq, %.lr.ph.7.i ]
  %.lcssa474.i = load i8, ptr %.lcssa474.in.i, align 1, !tbaa !229
  %i.uy = zext i8 %.lcssa474.i to i32
  br label %sqlite3_strnicmp.exit328.i

sqlite3_strnicmp.exit328.i:                       ; preds = %split.i325.i, %.lr.ph.i320thread-pre-split.i, %.lr.ph.i320thread-pre-split.7.i, %.lr.ph.i320thread-pre-split.6.i, %.lr.ph.i320thread-pre-split.5.i, %.lr.ph.i320thread-pre-split.4.i, %.lr.ph.i320thread-pre-split.3.i, %.lr.ph.i320thread-pre-split.2.i, %.lr.ph.i320thread-pre-split.1.i, %.lr.ph.i320.preheader.i
  %.023.i322436.i = phi ptr [ %.023.i322452.lcssa.i, %split.i325.i ], [ @.str.1291, %.lr.ph.i320.preheader.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 1), %.lr.ph.i320thread-pre-split.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 2), %.lr.ph.i320thread-pre-split.1.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 3), %.lr.ph.i320thread-pre-split.2.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 4), %.lr.ph.i320thread-pre-split.3.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 5), %.lr.ph.i320thread-pre-split.4.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 6), %.lr.ph.i320thread-pre-split.5.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 7), %.lr.ph.i320thread-pre-split.6.i ], [ getelementptr inbounds nuw (i8, ptr @.str.1291, i64 8), %.lr.ph.i320thread-pre-split.7.i ]
  %i.uz = phi i32 [ %i.uy, %split.i325.i ], [ 0, %.lr.ph.i320.preheader.i ], [ 0, %.lr.ph.i320thread-pre-split.i ], [ 0, %.lr.ph.i320thread-pre-split.1.i ], [ 0, %.lr.ph.i320thread-pre-split.2.i ], [ 0, %.lr.ph.i320thread-pre-split.3.i ], [ 0, %.lr.ph.i320thread-pre-split.4.i ], [ 0, %.lr.ph.i320thread-pre-split.5.i ], [ 0, %.lr.ph.i320thread-pre-split.6.i ], [ 0, %.lr.ph.i320thread-pre-split.7.i ]
  %i.va = load i8, ptr %.023.i322436.i, align 1, !tbaa !229
  %i.vb = zext i8 %i.va to i64
  %i.vc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.vb
  %i.vd = load i8, ptr %i.vc, align 1, !tbaa !229
  %i.ve = zext i8 %i.vd to i32
  %.not252.i = icmp eq i32 %i.uz, %i.ve
  br i1 %.not252.i, label %sqlite3_strnicmp.exit328.thread.i, label %.preheader.i329.i

.preheader.i329.i:                                ; preds = %sqlite3_strnicmp.exit328.i, %bb.dm
  %i.vf = phi i8 [ %.pre528.i, %bb.dm ], [ %i.kf, %sqlite3_strnicmp.exit328.i ] ; 3 uses
  %.013.i.i330.i = phi ptr [ %i.vq, %bb.dm ], [ @.str.1281, %sqlite3_strnicmp.exit328.i ] ; 2 uses
  %.0.i.i331.i = phi ptr [ %i.vp, %bb.dm ], [ %.0.i.i54, %sqlite3_strnicmp.exit328.i ]
  %i.vg = load i8, ptr %.013.i.i330.i, align 1, !tbaa !229 ; 2 uses
  %i.vh = icmp eq i8 %i.vf, %i.vg
  br i1 %i.vh, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %.preheader.i329.i
  %i.vi = icmp eq i8 %i.vf, 0
  br i1 %i.vi, label %sqlite3_stricmp.exit334.thread.i, label %bb.dm

bb.dl:                                            ; preds = %.preheader.i329.i
  %i.vj = zext i8 %i.vf to i64
  %i.vk = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.vj
  %i.vl = load i8, ptr %i.vk, align 1, !tbaa !229
  %i.vm = zext i8 %i.vg to i64
  %i.vn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.vm
  %i.vo = load i8, ptr %i.vn, align 1, !tbaa !229
  %.not.i.i332.i = icmp eq i8 %i.vl, %i.vo
  br i1 %.not.i.i332.i, label %bb.dm, label %.preheader.i335.i

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.vp = getelementptr inbounds nuw i8, ptr %.0.i.i331.i, i64 1 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %.013.i.i330.i, i64 1
  %.pre528.i = load i8, ptr %i.vp, align 1, !tbaa !229
  br label %.preheader.i329.i

.preheader.i335.i:                                ; preds = %bb.dl, %bb.dp
  %i.vr = phi i8 [ %.pre529.i, %bb.dp ], [ %i.kf, %bb.dl ] ; 3 uses
  %.013.i.i336.i = phi ptr [ %i.wc, %bb.dp ], [ @.str.1282, %bb.dl ] ; 2 uses
  %.0.i.i337.i = phi ptr [ %i.wb, %bb.dp ], [ %.0.i.i54, %bb.dl ]
  %i.vs = load i8, ptr %.013.i.i336.i, align 1, !tbaa !229 ; 2 uses
  %i.vt = icmp eq i8 %i.vr, %i.vs
  br i1 %i.vt, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.preheader.i335.i
  %i.vu = icmp eq i8 %i.vr, 0
  br i1 %i.vu, label %sqlite3_stricmp.exit334.thread.i, label %bb.dp

bb.do:                                            ; preds = %.preheader.i335.i
  %i.vv = zext i8 %i.vr to i64
  %i.vw = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.vv
  %i.vx = load i8, ptr %i.vw, align 1, !tbaa !229
  %i.vy = zext i8 %i.vs to i64
  %i.vz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.vy
  %i.wa = load i8, ptr %i.vz, align 1, !tbaa !229
  %.not.i.i338.i = icmp eq i8 %i.vx, %i.wa
  br i1 %.not.i.i338.i, label %bb.dp, label %parseModifier.exit.thread

bb.dp:                                            ; preds = %bb.do, %bb.dn
  %i.wb = getelementptr inbounds nuw i8, ptr %.0.i.i337.i, i64 1 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %.013.i.i336.i, i64 1
  %.pre529.i = load i8, ptr %i.wb, align 1, !tbaa !229
  br label %.preheader.i335.i

sqlite3_stricmp.exit334.thread.i:                 ; preds = %bb.dk, %bb.dn
  %i.wd = load i8, ptr %i.it, align 4
  %i.we = or i8 %i.wd, 4
  store i8 %i.we, ptr %i.it, align 4
  br label %parseModifier.exit.thread82

sqlite3_strnicmp.exit328.thread.i:                ; preds = %sqlite3_strnicmp.exit328.i, %.lr.ph.8.i
  %i.wf = load i8, ptr %i.ia, align 8, !tbaa !5020
  %.not253.i = icmp eq i8 %i.wf, 0
  br i1 %.not253.i, label %bb.dq, label %.thread

bb.dq:                                            ; preds = %sqlite3_strnicmp.exit328.thread.i
  %i.wg = load i8, ptr %i.ig, align 1, !tbaa !5023
  %.not254.i = icmp eq i8 %i.wg, 0
  br i1 %.not254.i, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.wh = load i8, ptr %i.if, align 2, !tbaa !5027
  %.not255.i = icmp eq i8 %i.wh, 0
  br i1 %.not255.i, label %parseModifier.exit.thread, label %bb.dt

bb.ds:                                            ; preds = %bb.dq
  %i.wi = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 9
  br label %computeYMD.exit

.thread:                                          ; preds = %sqlite3_strnicmp.exit328.thread.i
  %i.wj = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 9 ; 3 uses
  %i.wk = load i8, ptr %i.ig, align 1, !tbaa !5023
  %.not.i7077 = icmp eq i8 %i.wk, 0
  br i1 %.not.i7077, label %.thread78, label %computeYMD.exit

bb.dt:                                            ; preds = %bb.dr
  %i.wl = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 9
  store i32 2000, ptr %i.ib, align 8, !tbaa !5024
  store i32 1, ptr %i.ic, align 4, !tbaa !5025
  br label %bb.dw

.thread78:                                        ; preds = %.thread
  %i.wm = load i64, ptr %3, align 8, !tbaa !5022  ; 2 uses
  %i.wn = icmp ugt i64 %i.wm, 464269060799999
  br i1 %i.wn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %.thread78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %3, i8 0, i64 48, i1 false)
  store i8 2, ptr %i.it, align 4
  br label %computeYMD.exit

bb.dv:                                            ; preds = %.thread78
  %i.wo = add nuw nsw i64 %i.wm, 43200000
  %i.wp = udiv i64 %i.wo, 86400000
  %i.wq = trunc nuw nsw i64 %i.wp to i32          ; 2 uses
  %i.wr = uitofp nneg i32 %i.wq to double
  %i.ws = fadd double %i.wr, f0x40DF4B3000000000
  %i.wt = fdiv double %i.ws, f0x40E1D58800000000
  %i.wu = fptosi double %i.wt to i32              ; 2 uses
  %i.wv = add nsw i32 %i.wu, 48
  %.neg.i71 = sdiv i32 %i.wv, -4
  %i.ww = add nuw nsw i32 %i.wq, 1498
  %i.wx = add i32 %i.ww, %i.wu
  %i.wy = add i32 %i.wx, %.neg.i71                ; 2 uses
  %i.wz = sitofp i32 %i.wy to double
  %i.xa = fadd double %i.wz, -1.221000e+02
  %i.xb = fdiv double %i.xa, 3.652500e+02
  %i.xc = fptosi double %i.xb to i32              ; 2 uses
  %i.xd = and i32 %i.xc, 32767
  %i.xe = mul nuw nsw i32 %i.xd, 36525
  %6 = udiv i32 %i.xe, 100
  %i.xf = sub nsw i32 %i.wy, %6                   ; 2 uses
  %i.xg = sitofp i32 %i.xf to double
  %i.xh = fdiv double %i.xg, 3.060010e+01
  %i.xi = fptosi double %i.xh to i32              ; 3 uses
  %i.xj = sitofp i32 %i.xi to double
  %i.xk = fmul nnan double %i.xj, 3.060010e+01
  %i.xl = fptosi double %i.xk to i32
  %i.xm = sub nsw i32 %i.xf, %i.xl
  store i32 %i.xm, ptr %i.id, align 8, !tbaa !5026
  %i.xn = icmp slt i32 %i.xi, 14
  %.v.i = select i1 %i.xn, i32 -1, i32 -13
  %i.xo = add nsw i32 %.v.i, %i.xi                ; 2 uses
  store i32 %i.xo, ptr %i.ic, align 4, !tbaa !5025
  %i.xp = icmp sgt i32 %i.xo, 2
  %.v32.i = select i1 %i.xp, i32 -4716, i32 -4715
  %i.xq = add nsw i32 %.v32.i, %i.xc
  br label %bb.dw

bb.dw:                                            ; preds = %bb.dv, %bb.dt
  %i.xr = phi ptr [ %i.wj, %bb.dv ], [ %i.wl, %bb.dt ]
  %.sink34.i = phi i64 [ 8, %bb.dv ], [ 16, %bb.dt ]
  %.sink.i72 = phi i32 [ %i.xq, %bb.dv ], [ 1, %bb.dt ]
  %i.xs = getelementptr inbounds nuw i8, ptr %3, i64 %.sink34.i
  store i32 %.sink.i72, ptr %i.xs, align 8, !tbaa !24
  store i8 1, ptr %i.ig, align 1, !tbaa !5023
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %bb.ds, %.thread, %bb.du, %bb.dw
  %i.xt = phi ptr [ %i.wj, %.thread ], [ %i.wi, %bb.ds ], [ %i.wj, %bb.du ], [ %i.xr, %bb.dw ] ; 3 uses
  store i8 1, ptr %i.if, align 2, !tbaa !5027
  store i32 0, ptr %i.iu, align 8, !tbaa !5029
  store i32 0, ptr %i.iv, align 4, !tbaa !5028
  store double 0.000000e+00, ptr %i.iw, align 8, !tbaa !5030
  %i.xu = load i8, ptr %i.it, align 4
  %i.xv = and i8 %i.xu, -2
  store i8 %i.xv, ptr %i.it, align 4
  store i32 0, ptr %i.ih, align 4, !tbaa !5031
  store i8 0, ptr %i.ia, align 8, !tbaa !5020
  br label %.preheader.i341.i

.preheader.i341.i:                                ; preds = %bb.dz, %computeYMD.exit
  %.013.i.i342.i = phi ptr [ %i.yh, %bb.dz ], [ @.str.1292, %computeYMD.exit ] ; 2 uses
  %.0.i.i343.i = phi ptr [ %i.yg, %bb.dz ], [ %i.xt, %computeYMD.exit ] ; 2 uses
  %i.xw = load i8, ptr %.0.i.i343.i, align 1, !tbaa !229 ; 3 uses
  %i.xx = load i8, ptr %.013.i.i342.i, align 1, !tbaa !229 ; 2 uses
  %i.xy = icmp eq i8 %i.xw, %i.xx
  br i1 %i.xy, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %.preheader.i341.i
  %i.xz = icmp eq i8 %i.xw, 0
  br i1 %i.xz, label %sqlite3_stricmp.exit346.thread.i, label %bb.dz

bb.dy:                                            ; preds = %.preheader.i341.i
  %i.ya = zext i8 %i.xw to i64
  %i.yb = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ya
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !229
  %i.yd = zext i8 %i.xx to i64
  %i.ye = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.yd
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !229
  %.not.i.i344.i = icmp eq i8 %i.yc, %i.yf
  br i1 %.not.i.i344.i, label %bb.dz, label %.preheader.i347.i

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.yg = getelementptr inbounds nuw i8, ptr %.0.i.i343.i, i64 1
  %i.yh = getelementptr inbounds nuw i8, ptr %.013.i.i342.i, i64 1
  br label %.preheader.i341.i

sqlite3_stricmp.exit346.thread.i:                 ; preds = %bb.dx
  store i32 1, ptr %i.id, align 8, !tbaa !5026
  br label %parseModifier.exit.thread82

.preheader.i347.i:                                ; preds = %bb.dy, %bb.ec
  %.013.i.i348.i = phi ptr [ %i.yt, %bb.ec ], [ @.str.1293, %bb.dy ] ; 2 uses
  %.0.i.i349.i = phi ptr [ %i.ys, %bb.ec ], [ %i.xt, %bb.dy ] ; 2 uses
  %i.yi = load i8, ptr %.0.i.i349.i, align 1, !tbaa !229 ; 3 uses
  %i.yj = load i8, ptr %.013.i.i348.i, align 1, !tbaa !229 ; 2 uses
  %i.yk = icmp eq i8 %i.yi, %i.yj
  br i1 %i.yk, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %.preheader.i347.i
  %i.yl = icmp eq i8 %i.yi, 0
  br i1 %i.yl, label %sqlite3_stricmp.exit352.thread.i, label %bb.ec

bb.eb:                                            ; preds = %.preheader.i347.i
  %i.ym = zext i8 %i.yi to i64
  %i.yn = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.ym
  %i.yo = load i8, ptr %i.yn, align 1, !tbaa !229
  %i.yp = zext i8 %i.yj to i64
  %i.yq = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.yp
  %i.yr = load i8, ptr %i.yq, align 1, !tbaa !229
  %.not.i.i350.i = icmp eq i8 %i.yo, %i.yr
  br i1 %.not.i.i350.i, label %bb.ec, label %.preheader.i353.i

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.ys = getelementptr inbounds nuw i8, ptr %.0.i.i349.i, i64 1
  %i.yt = getelementptr inbounds nuw i8, ptr %.013.i.i348.i, i64 1
  br label %.preheader.i347.i

sqlite3_stricmp.exit352.thread.i:                 ; preds = %bb.ea
  store i32 1, ptr %i.ic, align 4, !tbaa !5025
  store i32 1, ptr %i.id, align 8, !tbaa !5026
  br label %parseModifier.exit.thread82

.preheader.i353.i:                                ; preds = %bb.eb, %bb.ef
  %.013.i.i354.i = phi ptr [ %i.zf, %bb.ef ], [ @.str.1294, %bb.eb ] ; 2 uses
  %.0.i.i355.i = phi ptr [ %i.ze, %bb.ef ], [ %i.xt, %bb.eb ] ; 2 uses
  %i.yu = load i8, ptr %.0.i.i355.i, align 1, !tbaa !229 ; 3 uses
  %i.yv = load i8, ptr %.013.i.i354.i, align 1, !tbaa !229 ; 2 uses
  %i.yw = icmp eq i8 %i.yu, %i.yv
  br i1 %i.yw, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %.preheader.i353.i
  %i.yx = icmp eq i8 %i.yu, 0
  br i1 %i.yx, label %parseModifier.exit.thread82, label %bb.ef

bb.ee:                                            ; preds = %.preheader.i353.i
  %i.yy = zext i8 %i.yu to i64
  %i.yz = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.yy
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !229
  %i.zb = zext i8 %i.yv to i64
  %i.zc = getelementptr inbounds nuw i8, ptr @sqlite3UpperToLower, i64 %i.zb
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !229
  %.not.i.i356.i = icmp eq i8 %i.za, %i.zd
  br i1 %.not.i.i356.i, label %bb.ef, label %parseModifier.exit.thread

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %i.ze = getelementptr inbounds nuw i8, ptr %.0.i.i355.i, i64 1
  %i.zf = getelementptr inbounds nuw i8, ptr %.013.i.i354.i, i64 1
  br label %.preheader.i353.i

bb.eg:                                            ; preds = %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #59
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #59
  %i.zg = load ptr, ptr %0, align 8, !tbaa !290
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zg, i64 24
  %i.zi = load ptr, ptr %i.zh, align 8, !tbaa !159 ; 2 uses
  %i.zj = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 1 ; 5 uses
  br label %bb.eh

bb.eh:                                            ; preds = %bb.en, %bb.eg
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.en ], [ 1, %bb.eg ] ; 7 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 %indvars.iv.i
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !229 ; 3 uses
  %i.zm = trunc nuw nsw i64 %indvars.iv.i to i32  ; 4 uses
  switch i8 %i.zl, label %bb.ei [
    i8 0, label %bb.eo
    i8 58, label %bb.eo
  ]

bb.ei:                                            ; preds = %bb.eh
  %i.zn = zext i8 %i.zl to i64
  %i.zo = getelementptr inbounds nuw i8, ptr @sqlite3CtypeMap, i64 %i.zn
  %i.zp = load i8, ptr %i.zo, align 1, !tbaa !229
  %i.zq = and i8 %i.zp, 1
  %.not243.i = icmp eq i8 %i.zq, 0
  br i1 %.not243.i, label %bb.ej, label %bb.eo

bb.ej:                                            ; preds = %bb.ei
  %i.zr = icmp eq i8 %i.zl, 45
  br i1 %i.zr, label %bb.ek, label %bb.en

bb.ek:                                            ; preds = %bb.ej
  switch i32 %i.zm, label %bb.en [
    i32 5, label %bb.el
    i32 6, label %bb.em
  ]

bb.el:                                            ; preds = %bb.ek
  %i.zs = call i32 (ptr, ptr, ...) @getDigits(ptr noundef readonly %i.zj, ptr noundef nonnull @.str.1295, ptr noundef nonnull %i.b), !inline_history !5040
  %i.zt = icmp eq i32 %i.zs, 1
  br i1 %i.zt, label %bb.eo, label %bb.en

bb.em:                                            ; preds = %bb.ek
  %i.zu = call i32 (ptr, ptr, ...) @getDigits(ptr noundef readonly %i.zj, ptr noundef nonnull @.str.1296, ptr noundef nonnull %i.b), !inline_history !5040
  %i.zv = icmp eq i32 %i.zu, 1
  br i1 %i.zv, label %bb.eo, label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.el, %bb.ek, %bb.ej
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  br label %bb.eh, !llvm.loop !5042

bb.eo:                                            ; preds = %bb.em, %bb.el, %bb.ei, %bb.eh, %bb.eh
  %.0214.lcssa.i = phi i32 [ %i.zm, %bb.eh ], [ %i.zm, %bb.eh ], [ 6, %bb.em ], [ 5, %bb.el ], [ %i.zm, %bb.ei ] ; 2 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %.0.i.i54, i64 %indvars.iv.i
  %i.zx = add nuw nsw i64 %indvars.iv.i, 1
  %i.zy = call fastcc ptr @sqlite3DbMallocRawNN(ptr noundef %i.zi, i64 noundef %i.zx), !inline_history !5043 ; 5 uses
  %.not9.i.i59 = icmp eq ptr %i.zy, null
  br i1 %.not9.i.i59, label %sqlite3DbStrNDup.exit.thread.i, label %sqlite3DbFree.exit.i

sqlite3DbFree.exit.i:                             ; preds = %bb.eo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.zy, ptr noundef nonnull readonly align 1 dereferenceable(1) %.0.i.i54, i64 range(i64 -2147483648, 4294967296) %indvars.iv.i, i1 false)
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 %indvars.iv.i
  store i8 0, ptr %i.zz, align 1, !tbaa !229
  %i.aaa = call fastcc i32 @sqlite3AtoF(ptr noundef nonnull %i.zy, ptr noundef nonnull %i.a), !inline_history !5040
  %i.aab = icmp slt i32 %i.aaa, 1
  call fastcc void @sqlite3DbFreeNN(ptr noundef %i.zi, ptr noundef nonnull %i.zy), !inline_history !5040
  br i1 %i.aab, label %sqlite3DbStrNDup.exit.thread.i, label %bb.ep
end_hunk_3
begin_hunk_4_@toLocaltime:bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 42
  %i.al = load i8, ptr %i.ak, align 2, !tbaa !5027
  %.not42.i = icmp eq i8 %i.al, 0
  br i1 %.not42.i, label %computeJD.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.an = load i32, ptr %i.am, align 4, !tbaa !5028
  %i.ao = mul nsw i32 %i.an, 3600000
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !5029
  %i.ar = mul nsw i32 %i.aq, 60000
  %i.as = add nsw i32 %i.ar, %i.ao
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.av = load double, ptr %i.au, align 8, !tbaa !5030
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.av, double 1.000000e+03, double 5.000000e-01)
  %i.ax = fptosi double %i.aw to i64
  %i.ay = add i64 %i.ax, %i.aj
  %i.az = add i64 %i.ay, %i.at                    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !5031 ; 2 uses
  %.not43.i = icmp eq i32 %i.bb, 0
  br i1 %.not43.i, label %computeJD.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bc = mul nsw i32 %i.bb, 60000
  %i.bd = sext i32 %i.bc to i64
  %i.be = sub nsw i64 %i.az, %i.bd
  br label %computeJD.exit

computeJD.exit:                                   ; preds = %.thread.i, %bb.b, %bb.c, %bb.d
  %i.bf = phi i64 [ %i.be, %bb.d ], [ %i.aj, %bb.b ], [ %i.az, %bb.c ], [ 0, %.thread.i ]
  %i.bg = sdiv i64 %i.bf, 1000
  %i.bh = add nsw i64 %i.bg, -210866760000
  store i64 %i.bh, ptr %i.a, align 8, !tbaa !298
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #59
  %i.bi = add i32 %.neg, 1900
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.bj = udiv i64 %i.b, 1000
  %i.bk = add nsw i64 %i.bj, -210866760000
  store i64 %i.bk, ptr %i.a, align 8, !tbaa !298
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %computeJD.exit
  %.0.neg = phi i32 [ %i.bi, %computeJD.exit ], [ 1900, %bb.e ]
  %i.bl = load i8, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 4), align 4, !tbaa !195
  %.not.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i.i, label %sqlite3_mutex_enter.exit.i, label %sqlite3MutexAlloc.exit.i

sqlite3MutexAlloc.exit.i:                         ; preds = %bb.f
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 112), align 8, !tbaa !196
  %i.bn = tail call ptr %i.bm(i32 noundef 2) #59, !inline_history !5055 ; 3 uses
  %.not.i13.i = icmp eq ptr %i.bn, null
  br i1 %.not.i13.i, label %sqlite3_mutex_enter.exit.i, label %bb.g

bb.g:                                             ; preds = %sqlite3MutexAlloc.exit.i
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 128), align 8, !tbaa !10
  tail call void %i.bo(ptr noundef nonnull %i.bn) #59, !inline_history !5056
  br label %sqlite3_mutex_enter.exit.i

sqlite3_mutex_enter.exit.i:                       ; preds = %bb.g, %sqlite3MutexAlloc.exit.i, %bb.f
  %.not.i1318.i = phi i1 [ false, %bb.g ], [ true, %sqlite3MutexAlloc.exit.i ], [ true, %bb.f ]
  %.0.i17.i = phi ptr [ %i.bn, %bb.g ], [ null, %sqlite3MutexAlloc.exit.i ], [ null, %bb.f ]
  %i.bp = call ptr @localtime(ptr noundef nonnull %i.a) #59 ; 2 uses
  %i.bq = load i32, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 408), align 8, !tbaa !1331
  %.not.i23 = icmp eq i32 %i.bq, 0
  br i1 %.not.i23, label %bb.j, label %bb.h

bb.h:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 416), align 8, !tbaa !1332 ; 2 uses
  %.not11.i = icmp eq ptr %i.br, null
  br i1 %.not11.i, label %.thread.i24, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = call i32 %i.br(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #59, !inline_history !5057
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %.thread22.i, label %.thread.i24

bb.j:                                             ; preds = %sqlite3_mutex_enter.exit.i
  %.not12.i = icmp eq ptr %i.bp, null
  br i1 %.not12.i, label %.thread.i24, label %.thread22.i

.thread22.i:                                      ; preds = %bb.j, %bb.i
  %.025.i = phi ptr [ %i.bp, %bb.j ], [ %2, %bb.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(56) %.025.i, i64 56, i1 false), !tbaa.struct !5058
  br label %.thread.i24

.thread.i24:                                      ; preds = %.thread22.i, %bb.j, %bb.i, %bb.h
  %.not = phi i1 [ false, %bb.j ], [ true, %.thread22.i ], [ false, %bb.h ], [ false, %bb.i ]
  br i1 %.not.i1318.i, label %osLocaltime.exit, label %bb.k

bb.k:                                             ; preds = %.thread.i24
  %i.bu = load ptr, ptr getelementptr inbounds nuw (i8, ptr @sqlite3Config, i64 144), align 8, !tbaa !20
  call void %i.bu(ptr noundef nonnull %.0.i17.i) #59, !inline_history !5059
  br label %osLocaltime.exit

osLocaltime.exit:                                 ; preds = %.thread.i24, %bb.k
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %osLocaltime.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 36
  store i32 1, ptr %i.bv, align 4, !tbaa !24
  %i.bw = load ptr, ptr %1, align 8, !tbaa !290
  %i.bx = call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.bw, ptr noundef nonnull @.str.1299, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %osLocaltime.exit
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load <4 x i32>, ptr %i.bz, align 8, !tbaa !24
  %i.cb = insertelement <4 x i32> <i32 0, i32 0, i32 1, i32 poison>, i32 %.0.neg, i64 3
  %i.cc = add <4 x i32> %i.cb, %i.ca
  %i.cd = shufflevector <4 x i32> %i.cc, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i32> %i.cd, ptr %i.by, align 8, !tbaa !24
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !5060
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.cf, ptr %i.cg, align 8, !tbaa !5029
  %i.ch = load i32, ptr %2, align 8, !tbaa !5062
  %i.ci = sitofp i32 %i.ch to double
  %i.cj = load i64, ptr %0, align 8, !tbaa !5022
  %i.ck = srem i64 %i.cj, 1000
  %i.cl = sitofp i64 %i.ck to double
  %i.cm = call double @llvm.fmuladd.f64(double %i.cl, double 1.000000e-03, double %i.ci)
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.cm, ptr %i.cn, align 8, !tbaa !5030
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 1, ptr %i.co, align 1, !tbaa !5023
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 42
  store i8 1, ptr %i.cp, align 2, !tbaa !5027
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.cq, align 8, !tbaa !5020
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.cs = load i8, ptr %i.cr, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ct, align 4, !tbaa !5031
  %i.cu = and i8 %i.cs, -4
  store i8 %i.cu, ptr %i.cr, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.021 = phi i32 [ 1, %bb.l ], [ 0, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #59
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #59
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @computeYMD_HMS(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 41 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !5023
  %.not.i = icmp eq i8 %i.b, 0
  br i1 %.not.i, label %bb.b, label %computeYMD.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i8, ptr %i.c, align 8, !tbaa !5020
  %.not30.i = icmp eq i8 %i.d, 0
  br i1 %.not30.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 2000, ptr %i.e, align 8, !tbaa !5024
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.f, align 4, !tbaa !5025
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.g = load i64, ptr %0, align 8, !tbaa !5022   ; 2 uses
  %i.h = icmp ugt i64 %i.g, 464269060799999
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, i8 0, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 2, ptr %i.i, align 4
  br label %computeYMD.exit

bb.f:                                             ; preds = %bb.d
  %i.j = add nuw nsw i64 %i.g, 43200000
  %i.k = udiv i64 %i.j, 86400000
  %i.l = trunc nuw nsw i64 %i.k to i32            ; 2 uses
  %i.m = uitofp nneg i32 %i.l to double
  %i.n = fadd double %i.m, f0x40DF4B3000000000
  %i.o = fdiv double %i.n, f0x40E1D58800000000
  %i.p = fptosi double %i.o to i32                ; 2 uses
  %i.q = add nsw i32 %i.p, 48
  %.neg.i = sdiv i32 %i.q, -4
  %i.r = add nuw nsw i32 %i.l, 1498
  %i.s = add i32 %i.r, %i.p
  %i.t = add i32 %i.s, %.neg.i                    ; 2 uses
  %i.u = sitofp i32 %i.t to double
  %i.v = fadd double %i.u, -1.221000e+02
  %i.w = fdiv double %i.v, 3.652500e+02
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %i.y = and i32 %i.x, 32767
  %i.z = mul nuw nsw i32 %i.y, 36525
  %1 = udiv i32 %i.z, 100
  %i.aa = sub nsw i32 %i.t, %1                    ; 2 uses
  %i.ab = sitofp i32 %i.aa to double
  %i.ac = fdiv double %i.ab, 3.060010e+01
  %i.ad = fptosi double %i.ac to i32              ; 3 uses
  %i.ae = sitofp i32 %i.ad to double
  %i.af = fmul nnan double %i.ae, 3.060010e+01
  %i.ag = fptosi double %i.af to i32
  %i.ah = sub nsw i32 %i.aa, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !5026
  %i.aj = icmp slt i32 %i.ad, 14
  %.v.i = select i1 %i.aj, i32 -1, i32 -13
  %i.ak = add nsw i32 %.v.i, %i.ad                ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !5025
  %i.am = icmp sgt i32 %i.ak, 2
  %.v32.i = select i1 %i.am, i32 -4716, i32 -4715
  %i.an = add nsw i32 %.v32.i, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.sink34.i = phi i64 [ 8, %bb.f ], [ 16, %bb.c ]
  %.sink.i = phi i32 [ %i.an, %bb.f ], [ 1, %bb.c ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %.sink34.i
  store i32 %.sink.i, ptr %i.ao, align 8, !tbaa !24
  store i8 1, ptr %i.a, align 1, !tbaa !5023
  br label %computeYMD.exit

computeYMD.exit:                                  ; preds = %bb.a, %bb.e, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 2 uses
  %i.aq = load i8, ptr %i.ap, align 2, !tbaa !5027
  %.not.i2 = icmp eq i8 %i.aq, 0
  br i1 %.not.i2, label %bb.h, label %computeHMS.exit

bb.h:                                             ; preds = %computeYMD.exit
  tail call fastcc void @computeJD(ptr noundef nonnull %0)
  %i.ar = load i64, ptr %0, align 8, !tbaa !5022
  %i.as = add nsw i64 %i.ar, 43200000
  %i.at = srem i64 %i.as, 86400000
  %i.au = trunc nsw i64 %i.at to i32              ; 3 uses
  %i.av = srem i32 %i.au, 60000
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fdiv double %i.aw, 1.000000e+03
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ax, ptr %i.ay, align 8, !tbaa !5030
  %i.az = sdiv i32 %i.au, 60000
  %.lhs.trunc.i = trunc nsw i32 %i.az to i16
  %i.ba = srem i16 %.lhs.trunc.i, 60
  %.sext.i = sext i16 %i.ba to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.sext.i, ptr %i.bb, align 8, !tbaa !5029
  %i.bc = sdiv i32 %i.au, 3600000
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !5028
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 4
  %i.bg = and i8 %i.bf, -2
  store i8 %i.bg, ptr %i.be, align 4
  store i8 1, ptr %i.ap, align 2, !tbaa !5027
  br label %computeHMS.exit

computeHMS.exit:                                  ; preds = %computeYMD.exit, %bb.h
  ret void
}

; Function Attrs: nounwind
declare ptr @localtime(ptr noundef) local_unnamed_addr #26

; Function Attrs: nounwind uwtable
define internal void @jsonRemoveFunc(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %jsonParseFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !290
  %.not = icmp ne i32 %1, 1
  %i.c = zext i1 %.not to i32
  %i.d = tail call fastcc ptr @jsonParseFuncArg(ptr noundef %0, ptr noundef %i.b, i32 noundef %i.c) ; 13 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %jsonParseFree.exit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not41 = icmp eq i32 %1, 1
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 51
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 52
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.l
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !5063

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !290  ; 5 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %sqlite3_value_text.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.k = load i16, ptr %i.j, align 4, !tbaa !164  ; 2 uses
  %i.l = and i16 %i.k, 514
  %i.m = icmp eq i16 %i.l, 514
  br i1 %i.m, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  %i.o = load i8, ptr %i.n, align 2, !tbaa !351
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !291
  br label %sqlite3_value_text.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.s = and i16 %i.k, 1
  %.not9.i.i = icmp eq i16 %i.s, 0
  br i1 %.not9.i.i, label %bb.i, label %sqlite3_value_text.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.t = tail call fastcc ptr @valueToText(ptr noundef nonnull %i.i, i8 noundef zeroext 1), !inline_history !608
  br label %sqlite3_value_text.exit

sqlite3_value_text.exit:                          ; preds = %bb.g, %bb.i
  %.0.i.i = phi ptr [ %i.r, %bb.g ], [ %i.t, %bb.i ] ; 5 uses
  %i.u = icmp eq ptr %.0.i.i, null
  br i1 %i.u, label %sqlite3_value_text.exit.thread, label %bb.j

bb.j:                                             ; preds = %sqlite3_value_text.exit
  %i.v = load i8, ptr %.0.i.i, align 1, !tbaa !229
  %.not34 = icmp eq i8 %i.v, 36
  br i1 %.not34, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !229
  %i.y = icmp eq i8 %i.x, 0
  br i1 %i.y, label %sqlite3_value_text.exit.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.f, align 1, !tbaa !3394
  store i32 0, ptr %i.g, align 4, !tbaa !3400
  %i.z = tail call fastcc i32 @jsonLookupStep(ptr noundef nonnull %i.d, i32 noundef 0, ptr noundef nonnull %i.w, i32 noundef 0) ; 3 uses
  %i.aa = icmp ult i32 %i.z, -4
  %i.ab = icmp eq i32 %i.z, -2
  %or.cond = or i1 %i.aa, %i.ab
  br i1 %or.cond, label %bb.c, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = icmp eq i32 %i.z, -4
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call fastcc void @jsonBadPathError(ptr noundef %0, ptr noundef %.0.i.i, i32 noundef -4)
  br label %sqlite3_value_text.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 1, ptr %i.ad, align 4, !tbaa !24
  %i.ae = load ptr, ptr %0, align 8, !tbaa !290
  %i.af = tail call fastcc i32 @sqlite3VdbeMemSetStr(ptr noundef %i.ae, ptr noundef nonnull @.str.616, i64 noundef -1, i8 noundef zeroext 1, ptr noundef nonnull inttoptr (i64 -1 to ptr)) ; 0 uses
  br label %sqlite3_value_text.exit.thread

._crit_edge:                                      ; preds = %bb.c, %.preheader
  tail call fastcc void @jsonReturnParse(ptr noundef %0, ptr noundef %i.d)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3454 ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 1
  br i1 %i.ai, label %bb.p, label %sqlite3DbFree.exit.i

bb.p:                                             ; preds = %._crit_edge
  %i.aj = add i32 %i.ah, -1
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3454
  br label %jsonParseFree.exit

sqlite3DbFree.exit.i:                             ; preds = %._crit_edge
  tail call fastcc void @jsonParseReset(ptr noundef nonnull %i.d)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !3392
  tail call fastcc void @sqlite3DbFreeNN(ptr noundef %i.al, ptr noundef nonnull %i.d)
  br label %jsonParseFree.exit

bb.q:                                             ; preds = %bb.j
  tail call fastcc void @jsonBadPathError(ptr noundef %0, ptr noundef %.0.i.i, i32 noundef 0)
  br label %sqlite3_value_text.exit.thread

sqlite3_value_text.exit.thread:                   ; preds = %bb.h, %bb.d, %sqlite3_value_text.exit, %bb.k, %bb.q, %bb.n, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 36 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3454 ; 2 uses
  %i.ao = icmp ugt i32 %i.an, 1
  br i1 %i.ao, label %bb.r, label %sqlite3DbFree.exit.i36

end_hunk_4
