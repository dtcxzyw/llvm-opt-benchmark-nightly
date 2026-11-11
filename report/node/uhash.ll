Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/uhash?download=true
inline.NumInlined: 47
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@uhash_open_78:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %.025.i.i.i.idx ; 2 uses
  %.025.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i32 -2147483647, ptr %.025.i.i.i.ptr.1, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %.025.i.i.i.idx ; 2 uses
  %.025.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  store i32 -2147483647, ptr %.025.i.i.i.ptr.2, align 8
  %i.u = icmp samesign ult i64 %.025.i.i.i.idx, 2976
  br i1 %i.u, label %.lr.ph.i.i.i.3, label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i

.lr.ph.i.i.i.3:                                   ; preds = %.lr.ph.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 %.025.i.i.i.idx ; 2 uses
  %.025.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.v, i64 72
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, i8 0, i64 16, i1 false)
  store i32 -2147483647, ptr %.025.i.i.i.ptr.3, align 8
  %.025.i.i.i.add.3 = add nuw nsw i64 %.025.i.i.i.idx, 96
  br label %.lr.ph.i.i.i

_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.thread.i: ; preds = %bb.f, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 73
  store i8 1, ptr %i.x, align 1
  br label %bb.g

_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i: ; preds = %.lr.ph.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store i32 63, ptr %i.aa, align 8
  %.pre.i = load i32, ptr %3, align 4
  %i.ab = icmp slt i32 %.pre.i, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 73
  store i8 1, ptr %i.ac, align 1
  br i1 %i.ab, label %_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit, label %bb.g

bb.g:                                             ; preds = %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i, %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.thread.i
  tail call void @uprv_free_78(ptr noundef nonnull %i.c) #13
  br label %_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit

_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit: ; preds = %bb.a, %bb.c, %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i, %bb.g
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.g ], [ %i.c, %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @uhash_openSize_78(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 !guid !14 {
bb.a:
  %i.a = icmp sgt i32 %3, 7
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %3, 13
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i32 %3, 31
  br i1 %i.c, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ugt i32 %3, 61
  br i1 %i.d, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ugt i32 %3, 127
  br i1 %i.e, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ugt i32 %3, 251
  br i1 %i.f, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ugt i32 %3, 509
  br i1 %i.g, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ugt i32 %3, 1021
  br i1 %i.h, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ugt i32 %3, 2039
  br i1 %i.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ugt i32 %3, 4093
  br i1 %i.j, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.k = icmp samesign ugt i32 %3, 8191
  br i1 %i.k, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.l = icmp samesign ugt i32 %3, 16381
  br i1 %i.l, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.m = icmp samesign ugt i32 %3, 32749
  br i1 %i.m, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.n = icmp samesign ugt i32 %3, 65521
  br i1 %i.n, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.o = icmp samesign ugt i32 %3, 131071
  br i1 %i.o, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.p = icmp samesign ugt i32 %3, 262139
  br i1 %i.p, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.q = icmp samesign ugt i32 %3, 524287
  br i1 %i.q, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.r = icmp samesign ugt i32 %3, 1048573
  br i1 %i.r, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.s = icmp samesign ugt i32 %3, 2097143
  br i1 %i.s, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.t = icmp samesign ugt i32 %3, 4194301
  br i1 %i.t, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.u = icmp samesign ugt i32 %3, 8388593
  br i1 %i.u, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.v = icmp samesign ugt i32 %3, 16777213
  br i1 %i.v, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.w = icmp samesign ugt i32 %3, 33554393
  br i1 %i.w, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.x = icmp samesign ugt i32 %3, 67108859
  br i1 %i.x, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.y = icmp samesign ugt i32 %3, 134217689
  br i1 %i.y, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.z = icmp samesign ugt i32 %3, 268435399
  br i1 %i.z, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.aa = icmp samesign ugt i32 %3, 536870909
  br i1 %i.aa, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ab = icmp samesign ugt i32 %3, 1073741789
  %spec.select = select i1 %i.ab, i32 28, i32 27
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 14, %bb.o ], [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.ab ], [ 2, %bb.c ], [ 19, %bb.t ], [ 3, %bb.d ], [ 26, %bb.aa ], [ 4, %bb.e ], [ 15, %bb.p ], [ 5, %bb.f ], [ 25, %bb.z ], [ 6, %bb.g ], [ 20, %bb.u ], [ 7, %bb.h ], [ 24, %bb.y ], [ 8, %bb.i ], [ 16, %bb.q ], [ 9, %bb.j ], [ 23, %bb.x ], [ 10, %bb.k ], [ 18, %bb.s ], [ 11, %bb.l ], [ 22, %bb.w ], [ 12, %bb.m ], [ 17, %bb.r ], [ 13, %bb.n ], [ 21, %bb.v ] ; 2 uses
  %i.ac = load i32, ptr %4, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.ac, label %_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit

bb.ac:                                            ; preds = %.critedge
  %i.ae = tail call noalias dereferenceable_or_null(80) ptr @uprv_malloc_78(i64 noundef 80) #12 ; 16 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  store i32 7, ptr %4, align 4
  br label %_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit

bb.ae:                                            ; preds = %bb.ac
  %i.ag = load i32, ptr %4, align 4
  %i.ah = icmp slt i32 %i.ag, 1
  br i1 %i.ah, label %bb.af, label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr %0, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store ptr %1, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store ptr %2, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, i8 0, i64 16, i1 false)
  store <2 x float> <float 5.000000e-01, float 0.000000e+00>, ptr %i.am, align 8
  %i.an = trunc nuw nsw i32 %.0.lcssa to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 72
  store i8 %i.an, ptr %i.ao, align 8
  %i.ap = zext nneg i32 %.0.lcssa to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr @_ZL6PRIMES, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4            ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ae, i64 52
  store i32 %i.ar, ptr %i.as, align 4
  %i.at = sext i32 %i.ar to i64
  %i.au = mul nsw i64 %i.at, 24
  %i.av = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.au) #12 ; 4 uses
  store ptr %i.av, ptr %i.ae, align 8
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.ag, label %.lr.ph.i.i.preheader.i

bb.ag:                                            ; preds = %bb.af
  store i32 7, ptr %4, align 4
  br label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.thread.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.af
  %5 = zext nneg i32 %i.ar to i64
  %.idx.i.i.i = mul nuw nsw i64 %5, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx.i.i.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.preheader.i
  %.025.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %i.av, %.lr.ph.i.i.preheader.i ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, i8 0, i64 16, i1 false)
  store i32 -2147483647, ptr %.025.i.i.i, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.025.i.i.i, i64 24 ; 2 uses
  %i.ba = icmp ult ptr %i.az, %i.ax
  br i1 %i.ba, label %.lr.ph.i.i.i, label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i, !llvm.loop !0

_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.thread.i: ; preds = %bb.ag, %bb.ae
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ae, i64 73
  store i8 1, ptr %i.bb, align 1
  br label %bb.ah

_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store i32 0, ptr %i.bc, align 8
  %i.bd = sitofp i32 %i.ar to float
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 60
  store i32 0, ptr %i.be, align 4
  %i.bf = fmul nnan float %i.bd, 5.000000e-01
  %i.bg = fptosi float %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  store i32 %i.bg, ptr %i.bh, align 8
  %.pre.i = load i32, ptr %4, align 4
  %i.bi = icmp slt i32 %.pre.i, 1
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ae, i64 73
  store i8 1, ptr %i.bj, align 1
  br i1 %i.bi, label %_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i, %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.thread.i
  tail call void @uprv_free_78(ptr noundef nonnull %i.ae) #13
  br label %_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit

_ZL13_uhash_createPFi8UElementEPFaS_S_ES3_iP10UErrorCode.exit: ; preds = %.critedge, %bb.ad, %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i, %bb.ah
  %.0.i = phi ptr [ null, %.critedge ], [ null, %bb.ad ], [ null, %bb.ah ], [ %i.ae, %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit.i ]
  ret ptr %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @uhash_init_78(ptr nofree noundef captures(ret: address, provenance) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 !guid !15 {
bb.a:
  %i.a = load i32, ptr %4, align 4
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store <2 x float> <float 5.000000e-01, float 0.000000e+00>, ptr %i.h, align 8
  %i.i = load i32, ptr %4, align 4
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 4, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 127, ptr %i.l, align 4
  %i.m = tail call noalias dereferenceable_or_null(3048) ptr @uprv_malloc_78(i64 noundef 3048) #12 ; 4 uses
  store ptr %i.m, ptr %0, align 8
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %4, align 4
  br label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i32, ptr %i.l, align 4              ; 3 uses
  %5 = zext nneg i32 %i.o to i64
  %.idx.i.i = mul nuw nsw i64 %5, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx.i.i
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %.025.i.i = phi ptr [ %i.s, %.lr.ph.i.i ], [ %i.m, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  store i32 -2147483647, ptr %.025.i.i, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 24 ; 2 uses
  %i.t = icmp ult ptr %i.s, %i.p
  br i1 %i.t, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.u, align 8
  %i.v = sitofp i32 %i.o to float
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load <2 x float>, ptr %i.h, align 8
  %i.y = insertelement <2 x float> poison, float %i.v, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.x, %i.z
  %i.ab = fptosi <2 x float> %i.aa to <2 x i32>
  store <2 x i32> %i.ab, ptr %i.w, align 8
  %.pre.i = load i32, ptr %4, align 4
  %i.ac = icmp slt i32 %.pre.i, 1
  %i.ad = select i1 %i.ac, ptr %0, ptr null
  br label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit: ; preds = %bb.a, %bb.b, %bb.d, %._crit_edge.i.i
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.d ], [ %i.ad, %._crit_edge.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @uhash_initSize_78(ptr nofree noundef captures(ret: address, provenance) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 !guid !16 {
bb.a:
  %i.a = icmp sgt i32 %4, 7
  br i1 %i.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ugt i32 %4, 13
  br i1 %i.b, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.c = icmp samesign ugt i32 %4, 31
  br i1 %i.c, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.d = icmp samesign ugt i32 %4, 61
  br i1 %i.d, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.e = icmp samesign ugt i32 %4, 127
  br i1 %i.e, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.f = icmp samesign ugt i32 %4, 251
  br i1 %i.f, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.g = icmp samesign ugt i32 %4, 509
  br i1 %i.g, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.h = icmp samesign ugt i32 %4, 1021
  br i1 %i.h, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.i = icmp samesign ugt i32 %4, 2039
  br i1 %i.i, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  %i.j = icmp samesign ugt i32 %4, 4093
  br i1 %i.j, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.k = icmp samesign ugt i32 %4, 8191
  br i1 %i.k, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  %i.l = icmp samesign ugt i32 %4, 16381
  br i1 %i.l, label %bb.m, label %.critedge

bb.m:                                             ; preds = %bb.l
  %i.m = icmp samesign ugt i32 %4, 32749
  br i1 %i.m, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.n = icmp samesign ugt i32 %4, 65521
  br i1 %i.n, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.o = icmp samesign ugt i32 %4, 131071
  br i1 %i.o, label %bb.p, label %.critedge

bb.p:                                             ; preds = %bb.o
  %i.p = icmp samesign ugt i32 %4, 262139
  br i1 %i.p, label %bb.q, label %.critedge

bb.q:                                             ; preds = %bb.p
  %i.q = icmp samesign ugt i32 %4, 524287
  br i1 %i.q, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.r = icmp samesign ugt i32 %4, 1048573
  br i1 %i.r, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.s = icmp samesign ugt i32 %4, 2097143
  br i1 %i.s, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s
  %i.t = icmp samesign ugt i32 %4, 4194301
  br i1 %i.t, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.u = icmp samesign ugt i32 %4, 8388593
  br i1 %i.u, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.v = icmp samesign ugt i32 %4, 16777213
  br i1 %i.v, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.w = icmp samesign ugt i32 %4, 33554393
  br i1 %i.w, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.x = icmp samesign ugt i32 %4, 67108859
  br i1 %i.x, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.y = icmp samesign ugt i32 %4, 134217689
  br i1 %i.y, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.z = icmp samesign ugt i32 %4, 268435399
  br i1 %i.z, label %bb.aa, label %.critedge

bb.aa:                                            ; preds = %bb.z
  %i.aa = icmp samesign ugt i32 %4, 536870909
  br i1 %i.aa, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.ab = icmp samesign ugt i32 %4, 1073741789
  %spec.select = select i1 %i.ab, i32 28, i32 27
  br label %.critedge

.critedge:                                        ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0.lcssa = phi i32 [ 14, %bb.o ], [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.ab ], [ 2, %bb.c ], [ 19, %bb.t ], [ 3, %bb.d ], [ 26, %bb.aa ], [ 4, %bb.e ], [ 15, %bb.p ], [ 5, %bb.f ], [ 25, %bb.z ], [ 6, %bb.g ], [ 20, %bb.u ], [ 7, %bb.h ], [ 24, %bb.y ], [ 8, %bb.i ], [ 16, %bb.q ], [ 9, %bb.j ], [ 23, %bb.x ], [ 10, %bb.k ], [ 18, %bb.s ], [ 11, %bb.l ], [ 22, %bb.w ], [ 12, %bb.m ], [ 17, %bb.r ], [ 13, %bb.n ], [ 21, %bb.v ] ; 2 uses
  %i.ac = load i32, ptr %5, align 4
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.ac, label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

bb.ac:                                            ; preds = %.critedge
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %3, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 73
  store i8 0, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, i8 0, i64 16, i1 false)
  store <2 x float> <float 5.000000e-01, float 0.000000e+00>, ptr %i.aj, align 8
  %i.ak = load i32, ptr %5, align 4
  %i.al = icmp slt i32 %i.ak, 1
  br i1 %i.al, label %bb.ad, label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

bb.ad:                                            ; preds = %bb.ac
  %i.am = trunc nuw nsw i32 %.0.lcssa to i8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 %i.am, ptr %i.an, align 8
  %i.ao = zext nneg i32 %.0.lcssa to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @_ZL6PRIMES, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = sext i32 %i.aq to i64
  %i.at = mul nsw i64 %i.as, 24
  %i.au = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.at) #12 ; 4 uses
  store ptr %i.au, ptr %0, align 8
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 7, ptr %5, align 4
  br label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

bb.af:                                            ; preds = %bb.ad
  %i.aw = load i32, ptr %i.ar, align 4            ; 3 uses
  %6 = zext nneg i32 %i.aw to i64
  %.idx.i.i = mul nuw nsw i64 %6, 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 %.idx.i.i
  %i.ay = icmp sgt i32 %i.aw, 0
  br i1 %i.ay, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.af, %.lr.ph.i.i
  %.025.i.i = phi ptr [ %i.ba, %.lr.ph.i.i ], [ %i.au, %bb.af ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, i8 0, i64 16, i1 false)
  store i32 -2147483647, ptr %.025.i.i, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %.025.i.i, i64 24 ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.ax
  br i1 %i.bb, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %bb.af
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.bc, align 8
  %i.bd = sitofp i32 %i.aw to float
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bf = load <2 x float>, ptr %i.aj, align 8
  %i.bg = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.bh = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bf, %i.bh
  %i.bj = fptosi <2 x float> %i.bi to <2 x i32>
  store <2 x i32> %i.bj, ptr %i.be, align 8
  %.pre.i = load i32, ptr %5, align 4
  %i.bk = icmp slt i32 %.pre.i, 1
  %i.bl = select i1 %i.bk, ptr %0, ptr null
  br label %_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit

_ZL11_uhash_initP10UHashtablePFi8UElementEPFaS1_S1_ES5_iP10UErrorCode.exit: ; preds = %.critedge, %bb.ac, %bb.ae, %._crit_edge.i.i
  %.0.i = phi ptr [ null, %.critedge ], [ null, %bb.ac ], [ null, %bb.ae ], [ %i.bl, %._crit_edge.i.i ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uhash_close_78(ptr noundef %0) local_unnamed_addr #0 !guid !18 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load i32, ptr %i.g, align 4              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.j, label %.lr.ph.lr.ph, label %.loopexit

.lr.ph.lr.ph:                                     ; preds = %bb.e
  %i.l = zext nneg i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %bb.n
  %i.m = phi ptr [ %i.k, %.lr.ph.lr.ph ], [ %i.ad, %bb.n ]
  %indvars.iv.next.i4549 = phi i64 [ 0, %.lr.ph.lr.ph ], [ %indvars.iv.next.i45, %bb.n ]
  %i.n = phi i64 [ %i.l, %.lr.ph.lr.ph ], [ %i.ab, %bb.n ]
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i = add nsw i64 %indvars.iv.next.i46, 1 ; 2 uses
  %i.o = icmp slt i64 %indvars.iv.next.i, %i.n
  %i.p = load ptr, ptr %0, align 8                ; 2 uses
  br i1 %i.o, label %bb.g, label %.loopexit, !llvm.loop !1

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %i.q = phi ptr [ %i.m, %.lr.ph ], [ %i.p, %bb.f ]
  %indvars.iv.next.i46 = phi i64 [ %indvars.iv.next.i4549, %.lr.ph ], [ %indvars.iv.next.i, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds [24 x i8], ptr %i.q, i64 %indvars.iv.next.i46 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %bb.h, !llvm.loop !1

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.u, null
  br i1 %.not26, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.w, null
  br i1 %.not27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void %i.u(ptr noundef nonnull %i.w) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.x = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  br i1 %.not28, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.z, null
  br i1 %.not29, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void %i.x(ptr noundef nonnull %i.z) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.aa = load i32, ptr %i.g, align 4
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %indvars.iv.next.i45 = add nsw i64 %indvars.iv.next.i46, 1 ; 2 uses
  %i.ac = icmp slt i64 %indvars.iv.next.i45, %i.ab
  %i.ad = load ptr, ptr %0, align 8               ; 2 uses
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !17

.loopexit:                                        ; preds = %bb.n, %bb.f, %bb.e, %bb.d
  %i.ae = phi ptr [ %i.b, %bb.d ], [ %i.p, %bb.f ], [ %i.k, %bb.e ], [ %i.ad, %bb.n ]
  tail call void @uprv_free_78(ptr noundef %i.ae) #13
  store ptr null, ptr %0, align 8
  br label %bb.o

bb.o:                                             ; preds = %.loopexit, %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.ag = load i8, ptr %i.af, align 1
  %.not25 = icmp eq i8 %i.ag, 0
  br i1 %.not25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @uprv_free_78(ptr noundef nonnull %0) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.a, %bb.p, %bb.o
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @uhash_nextElement_78(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 !guid !19 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4
  %i.d = sext i32 %i.a to i64
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %indvars.iv.next16 = add nsw i64 %i.d, 1        ; 2 uses
  %i.f = icmp slt i64 %indvars.iv.next16, %i.e
  br i1 %i.f, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv.next17, 1 ; 2 uses
  %i.h = icmp slt i64 %indvars.iv.next, %i.e
  br i1 %i.h, label %.lr.ph, label %.loopexit, !llvm.loop !1

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv.next17 = phi i64 [ %indvars.iv.next, %bb.b ], [ %indvars.iv.next16, %.lr.ph.preheader ] ; 4 uses
  %i.i = getelementptr inbounds [24 x i8], ptr %i.g, i64 %indvars.iv.next17
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.c, !llvm.loop !1

bb.c:                                             ; preds = %.lr.ph
  %i.l = trunc nsw i64 %indvars.iv.next17 to i32
  store i32 %i.l, ptr %1, align 4
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds [24 x i8], ptr %i.m, i64 %indvars.iv.next17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.a, %bb.c
  %.010 = phi ptr [ %i.n, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.010
}

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @uhash_setKeyHasher_78(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 !guid !20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @uhash_setKeyComparator_78(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 !guid !21 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @uhash_setValueComparator_78(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 !guid !22 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @uhash_setKeyDeleter_78(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 !guid !23 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @uhash_setValueDeleter_78(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 !guid !24 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %1, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @uhash_setResizePolicy_78(ptr nofree noundef captures(none) initializes((56, 72)) %0, i32 noundef %1) local_unnamed_addr #0 !guid !25 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4
  %i.b = shl nsw i32 %1, 1
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds [4 x i8], ptr @_ZL25RESIZE_POLICY_RATIO_TABLE, i64 %i.c ; 2 uses
  %i.e = load float, ptr %i.d, align 8            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr i8, ptr %i.d, i64 4
  %i.h = load float, ptr %i.g, align 4            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = load i32, ptr %i.j, align 4
  %i.l = sitofp i32 %i.k to float                 ; 2 uses
  %i.m = fmul float %i.e, %i.l
  %i.n = fptosi float %i.m to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.n, ptr %i.o, align 4
  %i.p = fmul float %i.h, %i.l
  %i.q = fptosi float %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.q, ptr %i.r, align 8
  call fastcc void @_ZL13_uhash_rehashP10UHashtableP10UErrorCode(ptr noundef %0, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL13_uhash_rehashP10UHashtableP10UErrorCode(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #0 !guid !27 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 6 uses
  %i.c = load i32, ptr %i.b, align 4              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8               ; 3 uses
  %i.f = sext i8 %i.e to i32                      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp sgt i32 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = add nsw i32 %i.f, 1
  %i.m = icmp sgt i8 %i.e, 27
  br i1 %i.m, label %bb.u, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp sge i32 %i.h, %i.o
  %i.q = add nsw i32 %i.f, -1
  %i.r = icmp slt i8 %i.e, 1
  %or.cond = select i1 %i.p, i1 true, i1 %i.r
  br i1 %or.cond, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.037 = phi i32 [ %i.l, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  %i.s = load i32, ptr %1, align 4
  %i.t = icmp slt i32 %i.s, 1
  br i1 %i.t, label %bb.e, label %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.u = trunc i32 %.037 to i8
  store i8 %i.u, ptr %i.d, align 8
  %i.v = sext i32 %.037 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr @_ZL6PRIMES, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  store i32 %i.x, ptr %i.b, align 4
  %i.y = sext i32 %i.x to i64
  %i.z = mul nsw i64 %i.y, 24
  %i.aa = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.z) #12 ; 4 uses
  store ptr %i.aa, ptr %0, align 8
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 7, ptr %1, align 4
  br label %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit.thread

bb.g:                                             ; preds = %bb.e
  %i.ac = load i32, ptr %i.b, align 4             ; 3 uses
  %2 = zext nneg i32 %i.ac to i64
  %.idx.i = mul nuw nsw i64 %2, 24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx.i
  %i.ae = icmp sgt i32 %i.ac, 0
  br i1 %i.ae, label %.lr.ph.i, label %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.025.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.aa, %bb.g ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.025.i, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  store i32 -2147483647, ptr %.025.i, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.025.i, i64 24 ; 2 uses
  %i.ah = icmp ult ptr %i.ag, %i.ad
  br i1 %i.ah, label %.lr.ph.i, label %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit, !llvm.loop !0

_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit: ; preds = %.lr.ph.i, %bb.g
  store i32 0, ptr %i.g, align 8
  %i.ai = sitofp i32 %i.ac to float
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ak = load <2 x float>, ptr %i.aj, align 8
  %i.al = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.ak, %i.am
  %i.ao = fptosi <2 x float> %i.an to <2 x i32>
  store <2 x i32> %i.ao, ptr %i.i, align 8
  %.pre = load i32, ptr %1, align 4
  %i.ap = icmp slt i32 %.pre, 1
  br i1 %i.ap, label %.preheader, label %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit.thread

.preheader:                                       ; preds = %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit
  %i.aq = icmp sgt i32 %i.c, 0
  br i1 %i.aq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.as = zext nneg i32 %i.c to i64
  br label %bb.h

_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit.thread: ; preds = %bb.f, %bb.d, %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit
  store ptr %i.a, ptr %0, align 8
  store i32 %i.c, ptr %i.b, align 4
  br label %bb.u

bb.h:                                             ; preds = %.lr.ph, %bb.t
  %indvars.iv = phi i64 [ %i.as, %.lr.ph ], [ %indvars.iv.next, %bb.t ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %indvars.iv.next ; 4 uses
  %i.au = load i32, ptr %i.at, align 8            ; 4 uses
  %i.av = icmp slt i32 %i.au, 0
  br i1 %i.av, label %bb.t, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.aw, align 8
  %i.ax = load ptr, ptr %0, align 8               ; 2 uses
  %i.ay = xor i32 %i.au, 67108864
  %i.az = load i32, ptr %i.b, align 4             ; 2 uses
  %i.ba = srem i32 %i.ay, %i.az                   ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.p, %bb.i
  %.pre70.i = phi i32 [ %i.az, %bb.i ], [ %.pre.i, %bb.p ] ; 2 uses
  %.035.i = phi i32 [ -1, %bb.i ], [ %.136.i, %bb.p ] ; 4 uses
  %.033.i = phi i32 [ %i.ba, %bb.i ], [ %i.bq, %bb.p ] ; 3 uses
  %.032.i = phi i32 [ 0, %bb.i ], [ %.1.i, %bb.p ] ; 2 uses
  %i.bb = zext nneg i32 %.033.i to i64
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bb ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8            ; 4 uses
  %i.be = icmp eq i32 %i.bd, %i.au
  br i1 %i.be, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bf = load ptr, ptr %i.ar, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.bg, align 8
  %i.bh = tail call noundef signext i8 %i.bf(ptr %.sroa.0.0.copyload, ptr %.sroa.0.0.copyload.i) #13, !inline_history !2
  %.not.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i, label %._crit_edge.i43, label %_ZL11_uhash_findPK10UHashtable8UElementi.exit

._crit_edge.i43:                                  ; preds = %bb.k
  %.pre.pre.i = load i32, ptr %i.b, align 4
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.bi = icmp slt i32 %i.bd, 0
  br i1 %i.bi, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bj = icmp eq i32 %i.bd, -2147483647
  %i.bk = icmp slt i32 %.035.i, 0
  %spec.select49.i = select i1 %i.bk, i32 %.033.i, i32 %.035.i ; 2 uses
  br i1 %i.bj, label %.thread46.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i43
  %.pre.i = phi i32 [ %.pre.pre.i, %._crit_edge.i43 ], [ %.pre70.i, %bb.l ], [ %.pre70.i, %bb.m ] ; 3 uses
  %.136.i = phi i32 [ %.035.i, %._crit_edge.i43 ], [ %.035.i, %bb.l ], [ %spec.select49.i, %bb.m ] ; 3 uses
  %i.bl = icmp eq i32 %.032.i, 0
  br i1 %i.bl, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bm = add nsw i32 %.pre.i, -1
  %i.bn = srem i32 %i.au, %i.bm
  %i.bo = add nuw nsw i32 %i.bn, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.1.i = phi i32 [ %i.bo, %bb.o ], [ %.032.i, %bb.n ] ; 2 uses
  %i.bp = add nuw nsw i32 %.1.i, %.033.i
  %i.bq = srem i32 %i.bp, %.pre.i                 ; 2 uses
  %.not41.i = icmp eq i32 %i.bq, %i.ba
  br i1 %.not41.i, label %bb.q, label %bb.j, !llvm.loop !3

bb.q:                                             ; preds = %bb.p
  %i.br = icmp sgt i32 %.136.i, -1
  br i1 %i.br, label %.thread46.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.not42.i = icmp eq i32 %i.bd, -2147483647
  br i1 %.not42.i, label %.thread46.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @abort() #14
  unreachable

.thread46.i:                                      ; preds = %bb.m, %bb.r, %bb.q
  %.2.i = phi i32 [ %i.ba, %bb.r ], [ %.136.i, %bb.q ], [ %spec.select49.i, %bb.m ]
  %i.bs = zext nneg i32 %.2.i to i64
  %i.bt = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.bs
  br label %_ZL11_uhash_findPK10UHashtable8UElementi.exit

_ZL11_uhash_findPK10UHashtable8UElementi.exit:    ; preds = %bb.k, %.thread46.i
  %.0.i = phi ptr [ %i.bt, %.thread46.i ], [ %i.bc, %bb.k ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.bv = load i64, ptr %i.aw, align 8
  store i64 %i.bv, ptr %i.bu, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.by = load i64, ptr %i.bw, align 8
  store i64 %i.by, ptr %i.bx, align 8
  %i.bz = load i32, ptr %i.at, align 8
  store i32 %i.bz, ptr %.0.i, align 8
  %i.ca = load i32, ptr %i.g, align 8
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.g, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.h, %_ZL11_uhash_findPK10UHashtable8UElementi.exit
  %i.cc = icmp sgt i64 %indvars.iv, 1
  br i1 %i.cc, label %bb.h, label %._crit_edge, !llvm.loop !26

._crit_edge:                                      ; preds = %bb.t, %.preheader
  tail call void @uprv_free_78(ptr noundef %i.a) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %bb.b, %._crit_edge, %_ZL15_uhash_allocateP10UHashtableiP10UErrorCode.exit.thread
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @uhash_count_78(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 !guid !28 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local ptr @uhash_get_78(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 !guid !29 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef i32 %i.b(ptr %1) #13
  %i.d = load ptr, ptr %0, align 8                ; 2 uses
  %i.e = and i32 %i.c, 2147483647                 ; 3 uses
  %i.f = xor i32 %i.e, 67108864
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = srem i32 %i.f, %i.h                      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %.pre70.i = phi i32 [ %i.h, %bb.a ], [ %.pre.i, %bb.h ] ; 2 uses
  %.035.i = phi i32 [ -1, %bb.a ], [ %.136.i, %bb.h ] ; 4 uses
  %.033.i = phi i32 [ %i.i, %bb.a ], [ %i.z, %bb.h ] ; 3 uses
  %.032.i = phi i32 [ 0, %bb.a ], [ %.1.i, %bb.h ] ; 2 uses
  %i.k = zext nneg i32 %.033.i to i64             ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %i.k ; 2 uses
  %i.m = load i32, ptr %i.l, align 8              ; 4 uses
  %i.n = icmp eq i32 %i.m, %i.e
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.j, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.p, align 8
  %i.q = tail call noundef signext i8 %i.o(ptr %1, ptr %.sroa.0.0.copyload.i) #13, !inline_history !2
  %.not.i = icmp eq i8 %i.q, 0
  br i1 %.not.i, label %._crit_edge.i, label %_ZL11_uhash_findPK10UHashtable8UElementi.exit

._crit_edge.i:                                    ; preds = %bb.c
end_hunk_0
