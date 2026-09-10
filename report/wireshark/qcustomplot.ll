Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 93
loop-unroll.NumUnrolled: 93
begin_hunk_0_@_ZNK8QCPGraph11getKeyRangeERbN3QCP10SignDomainE:bb.a
  ret { double, double } %i.c
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI12QCPGraphDataE8keyRangeERbN3QCP10SignDomainE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPRange, align 8            ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 4                     ; 5 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx    ; 4 uses
  %i.l = load i64, ptr %i.a, align 8
  %.idx111 = shl i64 %i.l, 4                      ; 5 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %.idx111 ; 4 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader88
    i32 2, label %.preheader90
  ]

.preheader90:                                     ; preds = %bb.c
  %.not93 = icmp eq i64 %.idx, %.idx111
  br i1 %.not93, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader90
  %.promoted = load double, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted98 = load double, ptr %i.n, align 8
  br label %bb.n

.preheader88:                                     ; preds = %bb.c
  %.not84100 = icmp eq i64 %.idx, %.idx111
  br i1 %.not84100, label %.loopexit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader88
  %.promoted99 = load double, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted107 = load double, ptr %i.o, align 8
  br label %bb.h

.preheader:                                       ; preds = %bb.c
  %.not85108 = icmp eq i64 %.idx, %.idx111
  br i1 %.not85108, label %.loopexit87, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %bb.e
  %.sroa.0.0109 = phi ptr [ %i.t, %bb.e ], [ %i.k, %.preheader ] ; 3 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0109, i64 8
  %i.q = load double, ptr %i.p, align 8
  %i.r = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.q) #56
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph110
  %i.s = load double, ptr %.sroa.0.0109, align 8
  store double %i.s, ptr %3, align 8
  br label %.loopexit87

bb.e:                                             ; preds = %.lr.ph110
  %i.t = getelementptr i8, ptr %.sroa.0.0109, i64 16 ; 2 uses
  %.not85 = icmp eq ptr %i.t, %i.m
  br i1 %.not85, label %.loopexit87, label %.lr.ph110, !llvm.loop !1101

.loopexit87:                                      ; preds = %bb.e, %.preheader, %bb.d
  %.0 = phi i8 [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %bb.e ] ; 3 uses
  %.not86127 = icmp eq i64 %.idx111, %.idx
  br i1 %.not86127, label %.loopexit, label %.lr.ph129

bb.f:                                             ; preds = %.lr.ph129
  %.not86 = icmp eq ptr %i.u, %i.k
  br i1 %.not86, label %.loopexit, label %.lr.ph129, !llvm.loop !1102

.lr.ph129:                                        ; preds = %.loopexit87, %bb.f
  %.sroa.0.1128 = phi ptr [ %i.u, %bb.f ], [ %i.m, %.loopexit87 ] ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.0.1128, i64 -16 ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.0.1128, i64 -8
  %i.w = load double, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.w) #56
  br i1 %i.x, label %bb.f, label %bb.g, !llvm.loop !1102

bb.g:                                             ; preds = %.lr.ph129
  %i.y = load double, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.y, ptr %i.z, align 8
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph104, %bb.m
  %i.aa = phi double [ %.promoted107, %.lr.ph104 ], [ %i.am, %bb.m ] ; 3 uses
  %.4103 = phi i8 [ 0, %.lr.ph104 ], [ %.6, %bb.m ] ; 3 uses
  %.255102 = phi i8 [ 0, %.lr.ph104 ], [ %.356, %bb.m ] ; 3 uses
  %.sroa.0.3101 = phi ptr [ %i.k, %.lr.ph104 ], [ %i.ao, %bb.m ] ; 3 uses
  %i.ab = phi double [ %.promoted99, %.lr.ph104 ], [ %i.an, %bb.m ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.3101, i64 8
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ad) #56
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load double, ptr %.sroa.0.3101, align 8 ; 7 uses
  %i.ag = fcmp uge double %i.af, %i.ab
  %i.ah = trunc nuw i8 %.4103 to i1
  %or.cond5 = select i1 %i.ag, i1 %i.ah, i1 false
  %or.cond5.not = xor i1 %or.cond5, true
  %i.ai = fcmp olt double %i.af, 0.000000e+00     ; 2 uses
  %or.cond7 = and i1 %i.ai, %or.cond5.not
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.af, ptr %3, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi double [ %i.af, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.j ], [ %.4103, %bb.i ]    ; 2 uses
  %i.ak = fcmp ule double %i.af, %i.aa
  %i.al = trunc nuw i8 %.255102 to i1
  %or.cond9 = select i1 %i.ak, i1 %i.al, i1 false
  %or.cond9.not = xor i1 %or.cond9, true
  %or.cond11 = and i1 %i.ai, %or.cond9.not
  br i1 %or.cond11, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.af, ptr %i.o, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %i.am = phi double [ %i.aa, %bb.h ], [ %i.af, %bb.l ], [ %i.aa, %bb.k ]
  %i.an = phi double [ %i.ab, %bb.h ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ]
  %.356 = phi i8 [ %.255102, %bb.h ], [ 1, %bb.l ], [ %.255102, %bb.k ] ; 2 uses
  %.6 = phi i8 [ %.4103, %bb.h ], [ %.5, %bb.l ], [ %.5, %bb.k ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.0.3101, i64 16 ; 2 uses
  %.not84 = icmp eq ptr %i.ao, %i.m
  br i1 %.not84, label %.loopexit, label %bb.h, !llvm.loop !1103

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %i.ap = phi double [ %.promoted98, %.lr.ph ], [ %i.bb, %bb.s ] ; 3 uses
  %.796 = phi i8 [ 0, %.lr.ph ], [ %.9, %bb.s ]   ; 3 uses
  %.45795 = phi i8 [ 0, %.lr.ph ], [ %.558, %bb.s ] ; 3 uses
  %.sroa.0.494 = phi ptr [ %i.k, %.lr.ph ], [ %i.bd, %bb.s ] ; 3 uses
  %i.aq = phi double [ %.promoted, %.lr.ph ], [ %i.bc, %bb.s ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.sroa.0.494, i64 8
  %i.as = load double, ptr %i.ar, align 8
  %i.at = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.as) #56
  br i1 %i.at, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load double, ptr %.sroa.0.494, align 8  ; 7 uses
  %i.av = fcmp uge double %i.au, %i.aq
  %i.aw = trunc nuw i8 %.796 to i1
  %or.cond13 = select i1 %i.av, i1 %i.aw, i1 false
  %or.cond13.not = xor i1 %or.cond13, true
  %i.ax = fcmp ogt double %i.au, 0.000000e+00     ; 2 uses
  %or.cond15 = and i1 %i.ax, %or.cond13.not
  br i1 %or.cond15, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.au, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ay = phi double [ %i.au, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
  %.8 = phi i8 [ 1, %bb.p ], [ %.796, %bb.o ]     ; 2 uses
  %i.az = fcmp ule double %i.au, %i.ap
  %i.ba = trunc nuw i8 %.45795 to i1
  %or.cond17 = select i1 %i.az, i1 %i.ba, i1 false
  %or.cond17.not = xor i1 %or.cond17, true
  %or.cond19 = and i1 %i.ax, %or.cond17.not
  br i1 %or.cond19, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.au, ptr %i.n, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.bb = phi double [ %i.ap, %bb.n ], [ %i.au, %bb.r ], [ %i.ap, %bb.q ]
  %i.bc = phi double [ %i.aq, %bb.n ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ]
  %.558 = phi i8 [ %.45795, %bb.n ], [ 1, %bb.r ], [ %.45795, %bb.q ] ; 2 uses
  %.9 = phi i8 [ %.796, %bb.n ], [ %.8, %bb.r ], [ %.8, %bb.q ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0.494, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.m
  br i1 %.not, label %.loopexit, label %bb.n, !llvm.loop !1104

.loopexit:                                        ; preds = %bb.s, %bb.m, %bb.f, %.loopexit87, %.preheader90, %.preheader88, %bb.c, %bb.g
  %.659 = phi i8 [ 1, %bb.g ], [ 0, %.loopexit87 ], [ 0, %bb.c ], [ %.356, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ 0, %bb.f ], [ %.558, %bb.s ]
  %.10 = phi i8 [ %.0, %bb.g ], [ %.0, %.loopexit87 ], [ 0, %bb.c ], [ %.6, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ %.0, %bb.f ], [ %.9, %bb.s ]
  %4 = trunc nuw i8 %.10 to i1
  %5 = select i1 %4, i8 %.659, i8 0
  store i8 %5, ptr %1, align 1
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %3, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK8QCPGraph13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(313) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call { double, double } @_ZN16QCPDataContainerI12QCPGraphDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3)
  ret { double, double } %i.c
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI12QCPGraphDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPRange, align 16           ; 4 uses
  %5 = alloca %class.QCPRange, align 16           ; 4 uses
  %6 = alloca %class.QCPRange, align 16           ; 4 uses
  %7 = alloca %class.QCPGraphData, align 8        ; 4 uses
  %8 = alloca %class.QCPGraphData, align 8        ; 4 uses
  %9 = alloca %class.QCPRange, align 8            ; 13 uses
  %10 = alloca %class.QCPRange, align 8           ; 5 uses
  %11 = alloca %class.QCPRange, align 16          ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9)
  br label %bb.am

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %10)
  %i.g = load double, ptr %3, align 8
  %i.h = load double, ptr %10, align 8
  %i.i = fcmp oeq double %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_ZNK8QCPRangeneERKS_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp une double %i.k, %i.m
  br label %_ZNK8QCPRangeneERKS_.exit

_ZNK8QCPRangeneERKS_.exit:                        ; preds = %bb.c, %bb.d
  %i.o = phi i1 [ true, %bb.c ], [ %i.n, %bb.d ]  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %11)
  %i.p = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = load i32, ptr %i.c, align 8              ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr [16 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.a, align 8              ; 3 uses
  %i.v = getelementptr [16 x i8], ptr %i.q, i64 %i.u ; 2 uses
  br i1 %i.o, label %bb.e, label %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit

bb.e:                                             ; preds = %_ZNK8QCPRangeneERKS_.exit
  %i.w = trunc i64 %i.u to i32
  %i.x = icmp eq i32 %i.r, %i.w
  br i1 %i.x, label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load double, ptr %3, align 8
  %.idx7.i = shl nsw i64 %i.s, 4
  %i.z = getelementptr i8, ptr %i.q, i64 %.idx7.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @_ZN12QCPGraphDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %8, double noundef %i.y, double noundef 0.000000e+00)
  %.fca.0.load.i.i = load double, ptr %8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.aa = sub i64 %i.u, %i.s
  %gepdiff.i = shl i64 %i.aa, 4
  %i.ab = ashr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, 0
  br i1 %i.ac, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit

_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.f, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.z, %bb.f ] ; 2 uses
  %i.ad = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.ae = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp olt double %i.af, %.fca.0.load.i.i ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 16
  %i.ai = xor i64 %i.ad, -1
  %i.aj = add nsw i64 %.016.i.i.i, %i.ai
  %.sroa.012.1.i.i.i = select i1 %i.ag, ptr %i.ah, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ag, i64 %i.aj, i64 %i.ad ; 2 uses
  %i.ak = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ak, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit, !llvm.loop !51

_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit: ; preds = %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.f, %bb.e
  %.sroa.04.0.i = phi ptr [ %i.v, %bb.e ], [ %i.z, %bb.f ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 3 uses
  %i.al = load i64, ptr %i.a, align 8             ; 3 uses
  %i.am = load i32, ptr %i.c, align 8             ; 2 uses
  %i.an = trunc i64 %i.al to i32
  %i.ao = icmp eq i32 %i.am, %i.an
  %i.ap = load ptr, ptr %i.p, align 8             ; 2 uses
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit
  %i.aq = getelementptr [16 x i8], ptr %i.ap, i64 %i.al
  br label %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit

bb.h:                                             ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.as = load double, ptr %i.ar, align 8
  %i.at = sext i32 %i.am to i64                   ; 2 uses
  %.idx7.i76 = shl nsw i64 %i.at, 4
  %i.au = getelementptr i8, ptr %i.ap, i64 %.idx7.i76 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @_ZN12QCPGraphDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7, double noundef %i.as, double noundef 0.000000e+00)
  %.fca.0.load.i.i77 = load double, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.av = sub i64 %i.al, %i.at
  %gepdiff.i78 = shl i64 %i.av, 4
  %i.aw = ashr exact i64 %gepdiff.i78, 4          ; 2 uses
  %i.ax = icmp sgt i64 %i.aw, 0
  br i1 %i.ax, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81, label %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit

_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81: ; preds = %bb.h, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81
  %.016.i.i.i82 = phi i64 [ %.1.i.i.i87, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81 ], [ %i.aw, %bb.h ] ; 2 uses
  %.sroa.012.015.i.i.i83 = phi ptr [ %.sroa.012.1.i.i.i86, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81 ], [ %i.au, %bb.h ] ; 2 uses
  %i.ay = lshr i64 %.016.i.i.i82, 1               ; 3 uses
  %i.az = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i83, i64 %i.ay ; 2 uses
  %i.ba = load double, ptr %i.az, align 8
  %i.bb = fcmp olt double %.fca.0.load.i.i77, %i.ba ; 2 uses
  %i.bc = getelementptr i8, ptr %i.az, i64 16
  %i.bd = xor i64 %i.ay, -1
  %i.be = add nsw i64 %.016.i.i.i82, %i.bd
  %.sroa.012.1.i.i.i86 = select i1 %i.bb, ptr %.sroa.012.015.i.i.i83, ptr %i.bc ; 2 uses
  %.1.i.i.i87 = select i1 %i.bb, i64 %i.ay, i64 %i.be ; 2 uses
  %i.bf = icmp sgt i64 %.1.i.i.i87, 0
  br i1 %i.bf, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81, label %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit, !llvm.loop !52

_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit: ; preds = %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81, %bb.g, %bb.h, %_ZNK8QCPRangeneERKS_.exit
  %.sroa.035.0 = phi ptr [ %i.v, %_ZNK8QCPRangeneERKS_.exit ], [ %i.aq, %bb.g ], [ %i.au, %bb.h ], [ %.sroa.012.1.i.i.i86, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81 ] ; 6 uses
  %.sroa.036.0 = phi ptr [ %i.t, %_ZNK8QCPRangeneERKS_.exit ], [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0.i, %bb.h ], [ %.sroa.04.0.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i81 ] ; 6 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader136
    i32 2, label %.preheader138
  ]

.preheader138:                                    ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit
  %.not128140 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not128140, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader138
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.ac

.preheader136:                                    ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit
  %.not131145 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not131145, label %.loopexit, label %.lr.ph149

.lr.ph149:                                        ; preds = %.preheader136
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.s

.preheader:                                       ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit
  %.not134152 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not134152, label %.loopexit, label %.lr.ph156

.lr.ph156:                                        ; preds = %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph156, %bb.r
  %.0155 = phi i8 [ 0, %.lr.ph156 ], [ %.2, %bb.r ] ; 4 uses
  %.064154 = phi i8 [ 0, %.lr.ph156 ], [ %.165, %bb.r ] ; 4 uses
  %.sroa.0107.0153 = phi ptr [ %.sroa.036.0, %.lr.ph156 ], [ %i.ci, %bb.r ] ; 3 uses
  br i1 %i.o, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bm = load double, ptr %.sroa.0107.0153, align 8 ; 2 uses
  %i.bn = load double, ptr %3, align 8
  %i.bo = fcmp olt double %i.bm, %i.bn
  br i1 %i.bo, label %bb.r, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN16QCPDataContainerI12QCPGraphDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange:bb.a
  %i.br = getelementptr i8, ptr %.sroa.0107.0153, i64 8
  %i.bs = load double, ptr %i.br, align 8         ; 2 uses
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef %i.bs, double noundef %i.bs)
  %i.bt = load <2 x double>, ptr %6, align 16     ; 3 uses
  %i.bu = extractelement <2 x double> %i.bt, i64 1 ; 4 uses
  %i.bv = extractelement <2 x double> %i.bt, i64 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x double> %i.bt, ptr %11, align 16
  %i.bw = load double, ptr %9, align 8
  %i.bx = fcmp uge double %i.bv, %i.bw
  %i.by = trunc nuw i8 %.0155 to i1
  %or.cond3 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond3, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bv) #56
  %i.ca = call double @llvm.fabs.f64(double %i.bv)
  %i.cb = fcmp ueq double %i.ca, +inf
  %or.cond.not = or i1 %i.cb, %i.bz
  br i1 %or.cond.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store double %i.bv, ptr %9, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %.1 = phi i8 [ 1, %bb.l ], [ %.0155, %bb.m ], [ 1, %bb.n ] ; 3 uses
  %i.cc = load double, ptr %i.bl, align 8
  %i.cd = fcmp ule double %i.bu, %i.cc
  %i.ce = trunc nuw i8 %.064154 to i1
  %or.cond5 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond5, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bu) #56
  %i.cg = call double @llvm.fabs.f64(double %i.bu)
  %i.ch = fcmp ueq double %i.cg, +inf
  %or.cond115.not = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond115.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store double %i.bu, ptr %i.bl, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.o, %bb.j, %bb.k
  %.165 = phi i8 [ %.064154, %bb.j ], [ %.064154, %bb.k ], [ 1, %bb.o ], [ %.064154, %bb.p ], [ 1, %bb.q ] ; 2 uses
  %.2 = phi i8 [ %.0155, %bb.j ], [ %.0155, %bb.k ], [ %.1, %bb.o ], [ %.1, %bb.p ], [ %.1, %bb.q ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.0107.0153, i64 16 ; 2 uses
  %.not134 = icmp eq ptr %i.ci, %.sroa.035.0
  br i1 %.not134, label %.loopexit, label %bb.i, !llvm.loop !1105

bb.s:                                             ; preds = %.lr.ph149, %bb.ab
  %.3148 = phi i8 [ 0, %.lr.ph149 ], [ %.5, %bb.ab ] ; 5 uses
  %.266147 = phi i8 [ 0, %.lr.ph149 ], [ %.367, %bb.ab ] ; 5 uses
  %.sroa.0102.0146 = phi ptr [ %.sroa.036.0, %.lr.ph149 ], [ %i.dh, %bb.ab ] ; 3 uses
  br i1 %i.o, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cj = load double, ptr %.sroa.0102.0146, align 8 ; 2 uses
  %i.ck = load double, ptr %3, align 8
  %i.cl = fcmp olt double %i.cj, %i.ck
  br i1 %i.cl, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = load double, ptr %i.bi, align 8
  %i.cn = fcmp ogt double %i.cj, %i.cm
  br i1 %i.cn, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.co = getelementptr i8, ptr %.sroa.0102.0146, i64 8
  %i.cp = load double, ptr %i.co, align 8         ; 2 uses
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.cp, double noundef %i.cp)
  %i.cq = load <2 x double>, ptr %5, align 16     ; 3 uses
  %i.cr = extractelement <2 x double> %i.cq, i64 1 ; 5 uses
  %i.cs = extractelement <2 x double> %i.cq, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store <2 x double> %i.cq, ptr %11, align 16
  %i.ct = load double, ptr %9, align 8
  %i.cu = fcmp uge double %i.cs, %i.ct
  %i.cv = trunc nuw i8 %.3148 to i1
  %or.cond7 = select i1 %i.cu, i1 %i.cv, i1 false
  %i.cw = fcmp uge double %i.cs, 0.000000e+00
  %or.cond10.not = or i1 %i.cw, %or.cond7
  br i1 %or.cond10.not, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cx = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.cs) #56
  %i.cy = call double @llvm.fabs.f64(double %i.cs)
  %i.cz = fcmp ueq double %i.cy, +inf
  %or.cond118.not = or i1 %i.cz, %i.cx
  br i1 %or.cond118.not, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store double %i.cs, ptr %9, align 8
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w
  %.4 = phi i8 [ %.3148, %bb.w ], [ 1, %bb.x ], [ %.3148, %bb.v ] ; 3 uses
  %i.da = load double, ptr %i.bj, align 8
  %i.db = fcmp ule double %i.cr, %i.da
  %i.dc = trunc nuw i8 %.266147 to i1
  %or.cond12 = select i1 %i.db, i1 %i.dc, i1 false
  %i.dd = fcmp uge double %i.cr, 0.000000e+00
  %or.cond15.not = or i1 %i.dd, %or.cond12
  br i1 %or.cond15.not, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.cr) #56
  %i.df = call double @llvm.fabs.f64(double %i.cr)
  %i.dg = fcmp ueq double %i.df, +inf
  %or.cond121.not = select i1 %i.de, i1 true, i1 %i.dg
  br i1 %or.cond121.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store double %i.cr, ptr %i.bj, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.y, %bb.t, %bb.u
  %.367 = phi i8 [ %.266147, %bb.t ], [ %.266147, %bb.u ], [ %.266147, %bb.z ], [ 1, %bb.aa ], [ %.266147, %bb.y ] ; 2 uses
  %.5 = phi i8 [ %.3148, %bb.t ], [ %.3148, %bb.u ], [ %.4, %bb.z ], [ %.4, %bb.aa ], [ %.4, %bb.y ] ; 2 uses
  %i.dh = getelementptr i8, ptr %.sroa.0102.0146, i64 16 ; 2 uses
  %.not131 = icmp eq ptr %i.dh, %.sroa.035.0
  br i1 %.not131, label %.loopexit, label %bb.s, !llvm.loop !1106

bb.ac:                                            ; preds = %.lr.ph, %bb.al
  %.6143 = phi i8 [ 0, %.lr.ph ], [ %.8, %bb.al ] ; 5 uses
  %.468142 = phi i8 [ 0, %.lr.ph ], [ %.569, %bb.al ] ; 5 uses
  %.sroa.0.0141 = phi ptr [ %.sroa.036.0, %.lr.ph ], [ %i.ee, %bb.al ] ; 3 uses
  br i1 %i.o, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.di = load double, ptr %.sroa.0.0141, align 8 ; 2 uses
  %i.dj = load double, ptr %3, align 8
  %i.dk = fcmp olt double %i.di, %i.dj
  br i1 %i.dk, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dl = load double, ptr %i.bg, align 8
  %i.dm = fcmp ogt double %i.di, %i.dl
  br i1 %i.dm, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dn = getelementptr i8, ptr %.sroa.0.0141, i64 8
  %i.do = load double, ptr %i.dn, align 8         ; 2 uses
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.do, double noundef %i.do)
  %i.dp = load <2 x double>, ptr %4, align 16     ; 3 uses
  %i.dq = extractelement <2 x double> %i.dp, i64 1 ; 5 uses
  %i.dr = extractelement <2 x double> %i.dp, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x double> %i.dp, ptr %11, align 16
  %i.ds = load double, ptr %9, align 8
  %i.dt = fcmp uge double %i.dr, %i.ds
  %i.du = trunc nuw i8 %.6143 to i1
  %or.cond17 = select i1 %i.dt, i1 %i.du, i1 false
  %i.dv = fcmp ule double %i.dr, 0.000000e+00
  %or.cond20.not = or i1 %i.dv, %or.cond17
  br i1 %or.cond20.not, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dw = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.dr) #56
  %i.dx = fcmp ueq double %i.dr, +inf
  %or.cond124.not = or i1 %i.dx, %i.dw
  br i1 %or.cond124.not, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  store double %i.dr, ptr %9, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.af, %bb.ah, %bb.ag
  %.7 = phi i8 [ %.6143, %bb.ag ], [ 1, %bb.ah ], [ %.6143, %bb.af ] ; 3 uses
  %i.dy = load double, ptr %i.bh, align 8
  %i.dz = fcmp ule double %i.dq, %i.dy
  %i.ea = trunc nuw i8 %.468142 to i1
  %or.cond22 = select i1 %i.dz, i1 %i.ea, i1 false
  %i.eb = fcmp ule double %i.dq, 0.000000e+00
  %or.cond25.not = or i1 %i.eb, %or.cond22
  br i1 %or.cond25.not, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ec = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.dq) #56
  %i.ed = fcmp ueq double %i.dq, +inf
  %or.cond127.not = select i1 %i.ec, i1 true, i1 %i.ed
  br i1 %or.cond127.not, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store double %i.dq, ptr %i.bh, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.aj, %bb.ak, %bb.ai, %bb.ad, %bb.ae
  %.569 = phi i8 [ %.468142, %bb.ad ], [ %.468142, %bb.ae ], [ %.468142, %bb.aj ], [ 1, %bb.ak ], [ %.468142, %bb.ai ] ; 2 uses
  %.8 = phi i8 [ %.6143, %bb.ad ], [ %.6143, %bb.ae ], [ %.7, %bb.aj ], [ %.7, %bb.ak ], [ %.7, %bb.ai ] ; 2 uses
  %i.ee = getelementptr i8, ptr %.sroa.0.0141, i64 16 ; 2 uses
  %.not128 = icmp eq ptr %i.ee, %.sroa.035.0
  br i1 %.not128, label %.loopexit, label %bb.ac, !llvm.loop !1107

.loopexit:                                        ; preds = %bb.al, %bb.ab, %bb.r, %.preheader138, %.preheader136, %.preheader, %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit
  %.670 = phi i8 [ 0, %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit ], [ %.165, %bb.r ], [ %.367, %bb.ab ], [ 0, %.preheader ], [ 0, %.preheader136 ], [ 0, %.preheader138 ], [ %.569, %bb.al ]
  %.9 = phi i8 [ 0, %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit ], [ %.2, %bb.r ], [ %.5, %bb.ab ], [ 0, %.preheader ], [ 0, %.preheader136 ], [ 0, %.preheader138 ], [ %.8, %bb.al ]
  %12 = trunc nuw i8 %.9 to i1
  %13 = select i1 %12, i8 %.670, i8 0
  store i8 %13, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br label %bb.am

bb.am:                                            ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %9, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN8QCPGraph4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(313) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPixmap, align 8             ; 6 uses
  %3 = alloca %class.QCPDataRange, align 8        ; 4 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QString, align 8             ; 9 uses
  %6 = alloca %class.QDebug, align 8              ; 10 uses
  %7 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %8 = alloca %class.QList.197, align 8           ; 11 uses
  %9 = alloca %class.QList.197, align 8           ; 10 uses
  %10 = alloca %class.QList.49, align 8           ; 11 uses
  %11 = alloca %class.QList.49, align 8           ; 11 uses
  %12 = alloca %class.QList.49, align 8           ; 12 uses
  %13 = alloca %class.QCPDataRange, align 8       ; 5 uses
  %14 = alloca %class.QCPScatterStyle, align 8    ; 14 uses
  %15 = alloca %class.QCPScatterStyle, align 8    ; 11 uses
  %16 = alloca %class.QCPDataSelection, align 16  ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 4        ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.i = getelementptr i8, ptr %0, i64 128
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit45

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit45:           ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 136
  %i.p = load ptr, ptr %i.o, align 8
  %.not33 = icmp eq ptr %i.p, null
  br i1 %.not33, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.c, %bb.d, %bb.a, %bb.b, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit45, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  store i32 2, ptr %7, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.q, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.r, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %6, ptr noundef nonnull align 8 dereferenceable_or_null(32) %7)
  %i.s = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %5, i64 41, ptr nonnull @__PRETTY_FUNCTION__._ZN8QCPGraph4drawEP10QCPPainter)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread
  %i.t = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %.noexc
  %i.u = load ptr, ptr %5, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.e
  %i.v = atomicrmw sub ptr %i.u, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.v, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit.i

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.w = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.w, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.x = load ptr, ptr %6, align 8                ; 3 uses
  %i.y = getelementptr i8, ptr %i.x, i64 48
  %i.z = load i8, ptr %i.y, align 8, !range !175, !noundef !176
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.g, label %_ZN6QDebuglsEPKc.exit

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ab = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.x, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.o ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.g
  %.pre = load ptr, ptr %6, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.h:                                             ; preds = %.noexc
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %5, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.h
  %i.ae = atomicrmw sub ptr %i.ad, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ae, 1
  br i1 %.not.i.i4.i, label %bb.i, label %_ZN7QStringD2Ev.exit5.i

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.af = load ptr, ptr %5, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.af, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.ag = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.x, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 25, ptr nonnull @.str.85)
          to label %.noexc55 unwind label %bb.o

.noexc55:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.ah = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %.noexc55
  %i.ai = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i51 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i51, label %_ZN7QStringD2Ev.exit.i54, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i52

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i52:  ; preds = %bb.j
  %i.aj = atomicrmw sub ptr %i.ai, i32 1 acq_rel, align 4
  %.not.i.i.i53 = icmp eq i32 %i.aj, 1
  br i1 %.not.i.i.i53, label %bb.k, label %_ZN7QStringD2Ev.exit.i54

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i52
  %i.ak = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ak, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i54

_ZN7QStringD2Ev.exit.i54:                         ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i52, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.al = load ptr, ptr %6, align 8               ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 48
  %i.an = load i8, ptr %i.am, align 8, !range !175, !noundef !176
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.l, label %_ZN6QDebuglsEPKc.exit59

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit.i54
  %i.ap = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.al, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit59 unwind label %bb.o ; 0 uses

bb.m:                                             ; preds = %.noexc55
  %i.aq = landingpad { ptr, i32 }
          cleanup
  %i.ar = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i2.i47 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i2.i47, label %_ZN7QStringD2Ev.exit5.i50, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i48

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i48: ; preds = %bb.m
  %i.as = atomicrmw sub ptr %i.ar, i32 1 acq_rel, align 4
  %.not.i.i4.i49 = icmp eq i32 %i.as, 1
  br i1 %.not.i.i4.i49, label %bb.n, label %_ZN7QStringD2Ev.exit5.i50

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i48
  %i.at = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.at, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i50

_ZN7QStringD2Ev.exit5.i50:                        ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i48, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %.body

_ZN6QDebuglsEPKc.exit59:                          ; preds = %_ZN7QStringD2Ev.exit.i54, %bb.l
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %.critedge

bb.o:                                             ; preds = %bb.l, %_ZN6QDebuglsEPKc.exit, %bb.g, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread
end_hunk_1
begin_hunk_2_@_ZN16QCPDataContainerI12QCPCurveDataE8keyRangeERbN3QCP10SignDomainE:bb.a
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  br label %bb.v

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = sext i32 %i.i to i64
  %.idx = mul nsw i64 %i.j, 24                    ; 4 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx    ; 3 uses
  %i.l = load i64, ptr %i.a, align 8
  %.idx114 = mul i64 %i.l, 24                     ; 4 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %.idx114 ; 3 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader86
    i32 2, label %.preheader88
  ]

.preheader88:                                     ; preds = %bb.c
  %.not90 = icmp eq i64 %.idx, %.idx114
  br i1 %.not90, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader88
  %.promoted = load double, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted95 = load double, ptr %i.n, align 8
  br label %bb.p

.preheader86:                                     ; preds = %bb.c
  %.not8497 = icmp eq i64 %.idx, %.idx114
  br i1 %.not8497, label %.loopexit, label %.lr.ph101

.lr.ph101:                                        ; preds = %.preheader86
  %.promoted96 = load double, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted104 = load double, ptr %i.o, align 8
  br label %bb.j

.preheader:                                       ; preds = %bb.c
  %.not85106 = icmp eq i64 %.idx, %.idx114
  br i1 %.not85106, label %.loopexit, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader
  %.promoted105 = load double, ptr %3, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted113 = load double, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph110, %bb.i
  %i.q = phi double [ %.promoted113, %.lr.ph110 ], [ %i.ac, %bb.i ] ; 3 uses
  %.1109 = phi i8 [ 0, %.lr.ph110 ], [ %.3, %bb.i ] ; 2 uses
  %.053108 = phi i8 [ 0, %.lr.ph110 ], [ %.154, %bb.i ] ; 2 uses
  %.sroa.0.2107 = phi ptr [ %i.k, %.lr.ph110 ], [ %i.ae, %bb.i ] ; 3 uses
  %i.r = phi double [ %.promoted105, %.lr.ph110 ], [ %i.ad, %bb.i ] ; 3 uses
  %i.s = getelementptr i8, ptr %.sroa.0.2107, i64 16
  %i.t = load double, ptr %i.s, align 8
  %i.u = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.t) #56
  br i1 %i.u, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %.sroa.0.2107, i64 8
  %i.w = load double, ptr %i.v, align 8           ; 6 uses
  %i.x = fcmp uge double %i.w, %i.r
  %i.y = trunc nuw i8 %.1109 to i1
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store double %i.w, ptr %3, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.z = phi double [ %i.r, %bb.e ], [ %i.w, %bb.f ] ; 2 uses
  %i.aa = fcmp ule double %i.w, %i.q
  %i.ab = trunc nuw i8 %.053108 to i1
  %or.cond3 = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.w, ptr %i.p, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.d
  %i.ac = phi double [ %i.q, %bb.d ], [ %i.q, %bb.g ], [ %i.w, %bb.h ]
  %i.ad = phi double [ %i.r, %bb.d ], [ %i.z, %bb.g ], [ %i.z, %bb.h ]
  %.154 = phi i8 [ %.053108, %bb.d ], [ 1, %bb.g ], [ 1, %bb.h ] ; 2 uses
  %.3 = phi i8 [ %.1109, %bb.d ], [ 1, %bb.g ], [ 1, %bb.h ] ; 2 uses
  %i.ae = getelementptr i8, ptr %.sroa.0.2107, i64 24 ; 2 uses
  %.not85 = icmp eq ptr %i.ae, %i.m
  br i1 %.not85, label %.loopexit, label %bb.d, !llvm.loop !1166

bb.j:                                             ; preds = %.lr.ph101, %bb.o
  %i.af = phi double [ %.promoted104, %.lr.ph101 ], [ %i.as, %bb.o ] ; 3 uses
  %.4100 = phi i8 [ 0, %.lr.ph101 ], [ %.6, %bb.o ] ; 3 uses
  %.25599 = phi i8 [ 0, %.lr.ph101 ], [ %.356, %bb.o ] ; 3 uses
  %.sroa.0.398 = phi ptr [ %i.k, %.lr.ph101 ], [ %i.au, %bb.o ] ; 3 uses
  %i.ag = phi double [ %.promoted96, %.lr.ph101 ], [ %i.at, %bb.o ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.398, i64 16
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ai) #56
  br i1 %i.aj, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %.sroa.0.398, i64 8
  %i.al = load double, ptr %i.ak, align 8         ; 7 uses
  %i.am = fcmp uge double %i.al, %i.ag
  %i.an = trunc nuw i8 %.4100 to i1
  %or.cond5 = select i1 %i.am, i1 %i.an, i1 false
  %or.cond5.not = xor i1 %or.cond5, true
  %i.ao = fcmp olt double %i.al, 0.000000e+00     ; 2 uses
  %or.cond7 = and i1 %i.ao, %or.cond5.not
  br i1 %or.cond7, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.al, ptr %3, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ap = phi double [ %i.al, %bb.l ], [ %i.ag, %bb.k ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.l ], [ %.4100, %bb.k ]    ; 2 uses
  %i.aq = fcmp ule double %i.al, %i.af
  %i.ar = trunc nuw i8 %.25599 to i1
  %or.cond9 = select i1 %i.aq, i1 %i.ar, i1 false
  %or.cond9.not = xor i1 %or.cond9, true
  %or.cond11 = and i1 %i.ao, %or.cond9.not
  br i1 %or.cond11, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store double %i.al, ptr %i.o, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.j
  %i.as = phi double [ %i.af, %bb.j ], [ %i.al, %bb.n ], [ %i.af, %bb.m ]
  %i.at = phi double [ %i.ag, %bb.j ], [ %i.ap, %bb.n ], [ %i.ap, %bb.m ]
  %.356 = phi i8 [ %.25599, %bb.j ], [ 1, %bb.n ], [ %.25599, %bb.m ] ; 2 uses
  %.6 = phi i8 [ %.4100, %bb.j ], [ %.5, %bb.n ], [ %.5, %bb.m ] ; 2 uses
  %i.au = getelementptr i8, ptr %.sroa.0.398, i64 24 ; 2 uses
  %.not84 = icmp eq ptr %i.au, %i.m
  br i1 %.not84, label %.loopexit, label %bb.j, !llvm.loop !1167

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %i.av = phi double [ %.promoted95, %.lr.ph ], [ %i.bi, %bb.u ] ; 3 uses
  %.793 = phi i8 [ 0, %.lr.ph ], [ %.9, %bb.u ]   ; 3 uses
  %.45792 = phi i8 [ 0, %.lr.ph ], [ %.558, %bb.u ] ; 3 uses
  %.sroa.0.491 = phi ptr [ %i.k, %.lr.ph ], [ %i.bk, %bb.u ] ; 3 uses
  %i.aw = phi double [ %.promoted, %.lr.ph ], [ %i.bj, %bb.u ] ; 3 uses
  %i.ax = getelementptr i8, ptr %.sroa.0.491, i64 16
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ay) #56
  br i1 %i.az, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr i8, ptr %.sroa.0.491, i64 8
  %i.bb = load double, ptr %i.ba, align 8         ; 7 uses
  %i.bc = fcmp uge double %i.bb, %i.aw
  %i.bd = trunc nuw i8 %.793 to i1
  %or.cond13 = select i1 %i.bc, i1 %i.bd, i1 false
  %or.cond13.not = xor i1 %or.cond13, true
  %i.be = fcmp ogt double %i.bb, 0.000000e+00     ; 2 uses
  %or.cond15 = and i1 %i.be, %or.cond13.not
  br i1 %or.cond15, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.bb, ptr %3, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bf = phi double [ %i.bb, %bb.r ], [ %i.aw, %bb.q ] ; 2 uses
  %.8 = phi i8 [ 1, %bb.r ], [ %.793, %bb.q ]     ; 2 uses
  %i.bg = fcmp ule double %i.bb, %i.av
  %i.bh = trunc nuw i8 %.45792 to i1
  %or.cond17 = select i1 %i.bg, i1 %i.bh, i1 false
  %or.cond17.not = xor i1 %or.cond17, true
  %or.cond19 = and i1 %i.be, %or.cond17.not
  br i1 %or.cond19, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store double %i.bb, ptr %i.n, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %i.bi = phi double [ %i.av, %bb.p ], [ %i.bb, %bb.t ], [ %i.av, %bb.s ]
  %i.bj = phi double [ %i.aw, %bb.p ], [ %i.bf, %bb.t ], [ %i.bf, %bb.s ]
  %.558 = phi i8 [ %.45792, %bb.p ], [ 1, %bb.t ], [ %.45792, %bb.s ] ; 2 uses
  %.9 = phi i8 [ %.793, %bb.p ], [ %.8, %bb.t ], [ %.8, %bb.s ] ; 2 uses
  %i.bk = getelementptr i8, ptr %.sroa.0.491, i64 24 ; 2 uses
  %.not = icmp eq ptr %i.bk, %i.m
  br i1 %.not, label %.loopexit, label %bb.p, !llvm.loop !1168

.loopexit:                                        ; preds = %bb.u, %bb.o, %bb.i, %.preheader88, %.preheader86, %.preheader, %bb.c
  %.659 = phi i8 [ %.154, %bb.i ], [ 0, %bb.c ], [ %.356, %bb.o ], [ 0, %.preheader ], [ 0, %.preheader86 ], [ 0, %.preheader88 ], [ %.558, %bb.u ]
  %.10 = phi i8 [ %.3, %bb.i ], [ 0, %bb.c ], [ %.6, %bb.o ], [ 0, %.preheader ], [ 0, %.preheader86 ], [ 0, %.preheader88 ], [ %.9, %bb.u ]
  %4 = trunc nuw i8 %.10 to i1
  %5 = select i1 %4, i8 %.659, i8 0
  store i8 %5, ptr %1, align 1
  br label %bb.v

bb.v:                                             ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %3, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK8QCPCurve13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(288) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call { double, double } @_ZN16QCPDataContainerI12QCPCurveDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3)
  ret { double, double } %i.c
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI12QCPCurveDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPRange, align 16           ; 8 uses
  %5 = alloca %class.QCPRange, align 16           ; 4 uses
  %6 = alloca %class.QCPRange, align 16           ; 4 uses
  %7 = alloca %class.QCPRange, align 8            ; 15 uses
  %8 = alloca %class.QCPRange, align 8            ; 5 uses
  %9 = alloca %class.QCPRange, align 16           ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7)
  br label %bb.an

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %8)
  %i.g = load double, ptr %3, align 8
  %i.h = load double, ptr %8, align 8
  %i.i = fcmp oeq double %i.g, %i.h
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp une double %i.k, %i.m
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = phi i1 [ true, %bb.c ], [ %i.n, %bb.d ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9)
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load i32, ptr %i.c, align 8
  %i.s = sext i32 %i.r to i64
  %.idx = mul nsw i64 %i.s, 24                    ; 4 uses
  %i.t = getelementptr i8, ptr %i.q, i64 %.idx    ; 4 uses
  %i.u = load i64, ptr %i.a, align 8
  %.idx161 = mul i64 %i.u, 24                     ; 4 uses
  %i.v = getelementptr i8, ptr %i.q, i64 %.idx161 ; 4 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader137
    i32 2, label %.preheader139
  ]

.preheader139:                                    ; preds = %bb.e
  %.not129141 = icmp eq i64 %.idx, %.idx161
  br i1 %.not129141, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader139
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %.6144.us = phi i8 [ %.8.us, %bb.m ], [ 0, %.lr.ph ] ; 5 uses
  %.468143.us = phi i8 [ %.569.us, %bb.m ], [ 0, %.lr.ph ] ; 5 uses
  %.sroa.0.0142.us = phi ptr [ %i.av, %bb.m ], [ %i.t, %.lr.ph ] ; 3 uses
  %i.y = getelementptr i8, ptr %.sroa.0.0142.us, i64 8
  %i.z = load double, ptr %i.y, align 8           ; 2 uses
  %i.aa = load double, ptr %3, align 8
  %i.ab = fcmp olt double %i.z, %i.aa
  br i1 %i.ab, label %bb.m, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us
  %i.ac = load double, ptr %i.w, align 8
  %i.ad = fcmp ogt double %i.z, %i.ac
  br i1 %i.ad, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ae = getelementptr i8, ptr %.sroa.0.0142.us, i64 16
  %i.af = load double, ptr %i.ae, align 8         ; 2 uses
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.af, double noundef %i.af)
  %i.ag = load <2 x double>, ptr %4, align 16     ; 3 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1 ; 5 uses
  %i.ai = extractelement <2 x double> %i.ag, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x double> %i.ag, ptr %9, align 16
  %i.aj = load double, ptr %7, align 8
  %i.ak = fcmp uge double %i.ai, %i.aj
  %i.al = trunc nuw i8 %.6144.us to i1
  %or.cond17.us = select i1 %i.ak, i1 %i.al, i1 false
  %i.am = fcmp ule double %i.ai, 0.000000e+00
  %or.cond20.not.us = or i1 %i.am, %or.cond17.us
  br i1 %or.cond20.not.us, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ai) #56
  %i.ao = fcmp ueq double %i.ai, +inf
  %or.cond125.not.us = or i1 %i.ao, %i.an
  br i1 %or.cond125.not.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store double %i.ai, ptr %7, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.7.us = phi i8 [ %.6144.us, %bb.h ], [ 1, %bb.i ], [ %.6144.us, %bb.g ] ; 3 uses
  %i.ap = load double, ptr %i.x, align 8
  %i.aq = fcmp ule double %i.ah, %i.ap
  %i.ar = trunc nuw i8 %.468143.us to i1
  %or.cond22.us = select i1 %i.aq, i1 %i.ar, i1 false
  %i.as = fcmp ule double %i.ah, 0.000000e+00
  %or.cond25.not.us = or i1 %i.as, %or.cond22.us
  br i1 %or.cond25.not.us, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ah) #56
  %i.au = fcmp ueq double %i.ah, +inf
  %or.cond128.not.us = select i1 %i.at, i1 true, i1 %i.au
  br i1 %or.cond128.not.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store double %i.ah, ptr %i.x, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.f, %.lr.ph.split.us
  %.569.us = phi i8 [ %.468143.us, %.lr.ph.split.us ], [ %.468143.us, %bb.f ], [ %.468143.us, %bb.k ], [ 1, %bb.l ], [ %.468143.us, %bb.j ] ; 2 uses
  %.8.us = phi i8 [ %.6144.us, %.lr.ph.split.us ], [ %.6144.us, %bb.f ], [ %.7.us, %bb.k ], [ %.7.us, %bb.l ], [ %.7.us, %bb.j ] ; 2 uses
  %i.av = getelementptr i8, ptr %.sroa.0.0142.us, i64 24 ; 2 uses
  %.not129.us = icmp eq ptr %i.av, %i.v
  br i1 %.not129.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !1169

.preheader137:                                    ; preds = %bb.e
  %.not132147 = icmp eq i64 %.idx, %.idx161
  br i1 %.not132147, label %.loopexit, label %.lr.ph151

.lr.ph151:                                        ; preds = %.preheader137
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.x

.preheader:                                       ; preds = %bb.e
  %.not135154 = icmp eq i64 %.idx, %.idx161
  br i1 %.not135154, label %.loopexit, label %.lr.ph158

.lr.ph158:                                        ; preds = %.preheader
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph158, %bb.w
  %.0157 = phi i8 [ 0, %.lr.ph158 ], [ %.2, %bb.w ] ; 4 uses
  %.064156 = phi i8 [ 0, %.lr.ph158 ], [ %.165, %bb.w ] ; 4 uses
  %.sroa.0108.0155 = phi ptr [ %i.t, %.lr.ph158 ], [ %i.bx, %bb.w ] ; 3 uses
  br i1 %i.o, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr %.sroa.0108.0155, i64 8
  %i.bb = load double, ptr %i.ba, align 8         ; 2 uses
  %i.bc = load double, ptr %3, align 8
  %i.bd = fcmp olt double %i.bb, %i.bc
  br i1 %i.bd, label %bb.w, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = load double, ptr %i.ay, align 8
  %i.bf = fcmp ogt double %i.bb, %i.be
  br i1 %i.bf, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.bg = getelementptr i8, ptr %.sroa.0108.0155, i64 16
  %i.bh = load double, ptr %i.bg, align 8         ; 2 uses
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef %i.bh, double noundef %i.bh)
  %i.bi = load <2 x double>, ptr %6, align 16     ; 3 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1 ; 4 uses
  %i.bk = extractelement <2 x double> %i.bi, i64 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x double> %i.bi, ptr %9, align 16
  %i.bl = load double, ptr %7, align 8
  %i.bm = fcmp uge double %i.bk, %i.bl
  %i.bn = trunc nuw i8 %.0157 to i1
  %or.cond3 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond3, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bo = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bk) #56
  %i.bp = call double @llvm.fabs.f64(double %i.bk)
  %i.bq = fcmp ueq double %i.bp, +inf
  %or.cond.not = or i1 %i.bq, %i.bo
  br i1 %or.cond.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  store double %i.bk, ptr %7, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.q, %bb.s, %bb.r
  %.1 = phi i8 [ 1, %bb.q ], [ %.0157, %bb.r ], [ 1, %bb.s ] ; 3 uses
  %i.br = load double, ptr %i.az, align 8
  %i.bs = fcmp ule double %i.bj, %i.br
  %i.bt = trunc nuw i8 %.064156 to i1
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond5, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bj) #56
  %i.bv = call double @llvm.fabs.f64(double %i.bj)
  %i.bw = fcmp ueq double %i.bv, +inf
  %or.cond116.not = select i1 %i.bu, i1 true, i1 %i.bw
  br i1 %or.cond116.not, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store double %i.bj, ptr %i.az, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t, %bb.o, %bb.p
  %.165 = phi i8 [ %.064156, %bb.o ], [ %.064156, %bb.p ], [ 1, %bb.t ], [ %.064156, %bb.u ], [ 1, %bb.v ] ; 2 uses
  %.2 = phi i8 [ %.0157, %bb.o ], [ %.0157, %bb.p ], [ %.1, %bb.t ], [ %.1, %bb.u ], [ %.1, %bb.v ] ; 2 uses
  %i.bx = getelementptr i8, ptr %.sroa.0108.0155, i64 24 ; 2 uses
  %.not135 = icmp eq ptr %i.bx, %i.v
  br i1 %.not135, label %.loopexit, label %bb.n, !llvm.loop !1170

bb.x:                                             ; preds = %.lr.ph151, %bb.ag
  %.3150 = phi i8 [ 0, %.lr.ph151 ], [ %.5, %bb.ag ] ; 5 uses
  %.266149 = phi i8 [ 0, %.lr.ph151 ], [ %.367, %bb.ag ] ; 5 uses
  %.sroa.0103.0148 = phi ptr [ %i.t, %.lr.ph151 ], [ %i.cx, %bb.ag ] ; 3 uses
  br i1 %i.o, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.by = getelementptr i8, ptr %.sroa.0103.0148, i64 8
  %i.bz = load double, ptr %i.by, align 8         ; 2 uses
  %i.ca = load double, ptr %3, align 8
  %i.cb = fcmp olt double %i.bz, %i.ca
  br i1 %i.cb, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load double, ptr %i.aw, align 8
  %i.cd = fcmp ogt double %i.bz, %i.cc
  br i1 %i.cd, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ce = getelementptr i8, ptr %.sroa.0103.0148, i64 16
  %i.cf = load double, ptr %i.ce, align 8         ; 2 uses
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.cf, double noundef %i.cf)
  %i.cg = load <2 x double>, ptr %5, align 16     ; 3 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 1 ; 5 uses
  %i.ci = extractelement <2 x double> %i.cg, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store <2 x double> %i.cg, ptr %9, align 16
  %i.cj = load double, ptr %7, align 8
  %i.ck = fcmp uge double %i.ci, %i.cj
  %i.cl = trunc nuw i8 %.3150 to i1
  %or.cond7 = select i1 %i.ck, i1 %i.cl, i1 false
  %i.cm = fcmp uge double %i.ci, 0.000000e+00
  %or.cond10.not = or i1 %i.cm, %or.cond7
  br i1 %or.cond10.not, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ci) #56
  %i.co = call double @llvm.fabs.f64(double %i.ci)
  %i.cp = fcmp ueq double %i.co, +inf
  %or.cond119.not = or i1 %i.cp, %i.cn
  br i1 %or.cond119.not, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store double %i.ci, ptr %7, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab
  %.4 = phi i8 [ %.3150, %bb.ab ], [ 1, %bb.ac ], [ %.3150, %bb.aa ] ; 3 uses
  %i.cq = load double, ptr %i.ax, align 8
  %i.cr = fcmp ule double %i.ch, %i.cq
  %i.cs = trunc nuw i8 %.266149 to i1
  %or.cond12 = select i1 %i.cr, i1 %i.cs, i1 false
  %i.ct = fcmp uge double %i.ch, 0.000000e+00
  %or.cond15.not = or i1 %i.ct, %or.cond12
  br i1 %or.cond15.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cu = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ch) #56
  %i.cv = call double @llvm.fabs.f64(double %i.ch)
  %i.cw = fcmp ueq double %i.cv, +inf
  %or.cond122.not = select i1 %i.cu, i1 true, i1 %i.cw
  br i1 %or.cond122.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double %i.ch, ptr %i.ax, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af, %bb.ad, %bb.y, %bb.z
  %.367 = phi i8 [ %.266149, %bb.y ], [ %.266149, %bb.z ], [ %.266149, %bb.ae ], [ 1, %bb.af ], [ %.266149, %bb.ad ] ; 2 uses
  %.5 = phi i8 [ %.3150, %bb.y ], [ %.3150, %bb.z ], [ %.4, %bb.ae ], [ %.4, %bb.af ], [ %.4, %bb.ad ] ; 2 uses
  %i.cx = getelementptr i8, ptr %.sroa.0103.0148, i64 24 ; 2 uses
  %.not132 = icmp eq ptr %i.cx, %i.v
  br i1 %.not132, label %.loopexit, label %bb.x, !llvm.loop !1171

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.am
  %.6144 = phi i8 [ %.7, %bb.am ], [ 0, %.lr.ph ] ; 3 uses
  %.468143 = phi i8 [ %.569, %bb.am ], [ 0, %.lr.ph ] ; 3 uses
  %.sroa.0.0142 = phi ptr [ %i.dp, %bb.am ], [ %i.t, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.cy = getelementptr i8, ptr %.sroa.0.0142, i64 16
  %i.cz = load double, ptr %i.cy, align 8         ; 2 uses
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.cz, double noundef %i.cz)
  %i.da = load <2 x double>, ptr %4, align 16     ; 3 uses
  %i.db = extractelement <2 x double> %i.da, i64 1 ; 5 uses
  %i.dc = extractelement <2 x double> %i.da, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x double> %i.da, ptr %9, align 16
  %i.dd = load double, ptr %7, align 8
  %i.de = fcmp uge double %i.dc, %i.dd
  %i.df = trunc nuw i8 %.6144 to i1
  %or.cond17 = select i1 %i.de, i1 %i.df, i1 false
  %i.dg = fcmp ule double %i.dc, 0.000000e+00
  %or.cond20.not = or i1 %i.dg, %or.cond17
  br i1 %or.cond20.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.split
  %i.dh = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.dc) #56
  %i.di = fcmp ueq double %i.dc, +inf
  %or.cond125.not = or i1 %i.di, %i.dh
  br i1 %or.cond125.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store double %i.dc, ptr %7, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.split, %bb.ai, %bb.ah
  %.7 = phi i8 [ %.6144, %bb.ah ], [ 1, %bb.ai ], [ %.6144, %.lr.ph.split ] ; 2 uses
  %i.dj = load double, ptr %i.x, align 8
  %i.dk = fcmp ule double %i.db, %i.dj
  %i.dl = trunc nuw i8 %.468143 to i1
  %or.cond22 = select i1 %i.dk, i1 %i.dl, i1 false
  %i.dm = fcmp ule double %i.db, 0.000000e+00
  %or.cond25.not = or i1 %i.dm, %or.cond22
  br i1 %or.cond25.not, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dn = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.db) #56
  %i.do = fcmp ueq double %i.db, +inf
  %or.cond128.not = select i1 %i.dn, i1 true, i1 %i.do
  br i1 %or.cond128.not, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store double %i.db, ptr %i.x, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %.569 = phi i8 [ 1, %bb.al ], [ %.468143, %bb.aj ], [ %.468143, %bb.ak ] ; 2 uses
  %i.dp = getelementptr i8, ptr %.sroa.0.0142, i64 24 ; 2 uses
  %.not129 = icmp eq ptr %i.dp, %i.v
  br i1 %.not129, label %.loopexit, label %.lr.ph.split, !llvm.loop !1169

.loopexit:                                        ; preds = %bb.am, %bb.m, %bb.ag, %bb.w, %.preheader139, %.preheader137, %.preheader, %bb.e
  %.670 = phi i8 [ 0, %bb.e ], [ %.367, %bb.ag ], [ %.569.us, %bb.m ], [ 0, %.preheader ], [ 0, %.preheader137 ], [ 0, %.preheader139 ], [ %.165, %bb.w ], [ %.569, %bb.am ]
  %.9 = phi i8 [ 0, %bb.e ], [ %.5, %bb.ag ], [ %.8.us, %bb.m ], [ 0, %.preheader ], [ 0, %.preheader137 ], [ 0, %.preheader139 ], [ %.2, %bb.w ], [ %.7, %bb.am ]
  %10 = trunc nuw i8 %.9 to i1
  %11 = select i1 %10, i8 %.670, i8 0
  store i8 %11, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %bb.an

bb.an:                                            ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %7, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN8QCPCurve4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(288) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPixmap, align 8             ; 6 uses
  %3 = alloca %class.QCPDataRange, align 8        ; 4 uses
  %4 = alloca %class.QList.197, align 8           ; 13 uses
  %5 = alloca %class.QList.197, align 8           ; 10 uses
  %6 = alloca %class.QList.49, align 8            ; 11 uses
  %7 = alloca %class.QList.49, align 8            ; 11 uses
  %8 = alloca %class.QList.49, align 8            ; 12 uses
  %9 = alloca %class.QPen, align 8                ; 10 uses
  %10 = alloca %class.QPen, align 8               ; 6 uses
  %11 = alloca %class.QCPDataRange, align 8       ; 6 uses
  %12 = alloca %class.QCPScatterStyle, align 8    ; 15 uses
  %13 = alloca %class.QCPScatterStyle, align 8    ; 11 uses
  %14 = alloca %class.QCPDataSelection, align 16  ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %7, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) dereferenceable_or_null(24) %8, i8 0, i64 24, i1 false)
  invoke void @_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE15getDataSegmentsER5QListI12QCPDataRangeES5_(ptr noundef align 8 dereferenceable_or_null(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %i.m = getelementptr [8 x i8], ptr %i.j, i64 %i.l
  invoke void @_ZN9QtPrivate15QCommonArrayOpsI12QCPDataRangeE10growAppendEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, ptr noundef %i.j, ptr noundef %i.m)
          to label %_ZN5QListI12QCPDataRangeElsERKS1_.exit unwind label %bb.d

_ZN5QListI12QCPDataRangeElsERKS1_.exit:           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr [8 x i8], ptr %i.o, i64 %i.q
  invoke void @_ZN9QtPrivate15QCommonArrayOpsI12QCPDataRangeE10growAppendEPKS1_S4_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %8, ptr noundef %i.o, ptr noundef %i.r)
          to label %_ZN5QListI12QCPDataRangeElsERKS1_.exit43.preheader unwind label %bb.d

_ZN5QListI12QCPDataRangeElsERKS1_.exit43.preheader: ; preds = %_ZN5QListI12QCPDataRangeElsERKS1_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %_ZN5QListI12QCPDataRangeElsERKS1_.exit43._crit_edge

.lr.ph:                                           ; preds = %_ZN5QListI12QCPDataRangeElsERKS1_.exit43.preheader
  %i.v = getelementptr i8, ptr %0, i64 96
  %i.w = getelementptr i8, ptr %0, i64 176        ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %i.y = getelementptr i8, ptr %0, i64 88
  %i.z = getelementptr i8, ptr %0, i64 104        ; 2 uses
  %i.aa = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ad = getelementptr i8, ptr %0, i64 284
  %i.ae = getelementptr i8, ptr %0, i64 208       ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 5 uses
  %i.ag = getelementptr i8, ptr %0, i64 224
  %i.ah = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 3 uses
  %i.ai = getelementptr i8, ptr %0, i64 232
  %i.aj = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 3 uses
  %i.ak = getelementptr i8, ptr %0, i64 240
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 4 uses
  %i.am = getelementptr i8, ptr %0, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 64 ; 2 uses
  %i.ao = getelementptr i8, ptr %0, i64 272
  %i.ap = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %13, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %13, i64 56 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %13, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.ax = getelementptr inbounds nuw i8, ptr %12, i64 8
  br label %bb.e

_ZN5QListI12QCPDataRangeElsERKS1_.exit43._crit_edge: ; preds = %_ZN5QListI12QCPDataRangeElsERKS1_.exit43, %_ZN5QListI12QCPDataRangeElsERKS1_.exit43.preheader
  %i.ay = getelementptr i8, ptr %0, i64 176
  %i.az = load ptr, ptr %i.ay, align 8            ; 3 uses
  %.not = icmp eq ptr %i.az, null
  br i1 %.not, label %_ZN16QCPDataSelectionD2Ev.exit, label %bb.as

bb.d:                                             ; preds = %_ZN5QListI12QCPDataRangeElsERKS1_.exit, %bb.c, %bb.b
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %_ZN16QCPDataSelectionD2Ev.exit58

bb.e:                                             ; preds = %.lr.ph, %_ZN5QListI12QCPDataRangeElsERKS1_.exit43
  %i.bb = phi i64 [ 0, %.lr.ph ], [ %i.du, %_ZN5QListI12QCPDataRangeElsERKS1_.exit43 ] ; 4 uses
  %.0114 = phi i32 [ 0, %.lr.ph ], [ %i.dt, %_ZN5QListI12QCPDataRangeElsERKS1_.exit43 ]
  %i.bc = load i64, ptr %i.k, align 8
  %.not32 = icmp sgt i64 %i.bc, %i.bb             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %9, ptr noundef align 8 dereferenceable(8) %i.v) #51
  br i1 %.not32, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not33 = icmp eq ptr %i.bd, null
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  %i.be = getelementptr i8, ptr %i.bd, i64 8
  call void @_ZN4QPenC1ERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %10, ptr noundef align 8 dereferenceable(8) %i.be) #51
  %i.bf = load ptr, ptr %9, align 8
  %i.bg = load ptr, ptr %10, align 8
  store ptr %i.bg, ptr %9, align 8
  store ptr %i.bf, ptr %10, align 8
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %10) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.bh = load ptr, ptr %i.x, align 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %i.bb
  %i.bj = load i64, ptr %i.bi, align 4
  br label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  %i.bk = load ptr, ptr %i.x, align 8
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %i.bb ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = add i32 %i.bm, -1
  %i.bo = getelementptr i8, ptr %i.bl, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = add i32 %i.bp, 1
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %3, i32 noundef %i.bn, i32 noundef %i.bq)
          to label %_ZNK12QCPDataRange8adjustedEii.exit unwind label %bb.n

_ZNK12QCPDataRange8adjustedEii.exit:              ; preds = %bb.i
  %i.br = load i64, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.j

bb.j:                                             ; preds = %_ZNK12QCPDataRange8adjustedEii.exit, %bb.h
  %storemerge = phi i64 [ %i.bj, %bb.h ], [ %i.br, %_ZNK12QCPDataRange8adjustedEii.exit ]
  store i64 %storemerge, ptr %11, align 8
  %i.bs = invoke noundef double @_ZNK4QPen6widthFEv(ptr noundef nonnull align 8 dereferenceable_or_null(8) %9)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_ZNK8QCPCurve13getCurveLinesEP5QListI7QPointFERK12QCPDataRanged(ptr noundef align 8 dereferenceable_or_null(288) %0, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(8) %11, double noundef %i.bs)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bt = load i8, ptr %i.y, align 8, !range !175, !noundef !176
  %i.bu = trunc nuw i8 %i.bt to i1
  invoke void @_ZNK12QCPLayerable21applyAntialiasingHintEP10QCPPainterbN3QCP18AntialiasedElementE(ptr noundef readonly align 8 dereferenceable_or_null(184) %0, ptr noundef %1, i1 noundef zeroext %i.bu, i32 noundef 256)
          to label %_ZNK20QCPAbstractPlottable25applyFillAntialiasingHintEP10QCPPainter.exit unwind label %bb.n

_ZNK20QCPAbstractPlottable25applyFillAntialiasingHintEP10QCPPainter.exit: ; preds = %bb.l
  br i1 %.not32, label %.invoke, label %bb.m

bb.m:                                             ; preds = %_ZNK20QCPAbstractPlottable25applyFillAntialiasingHintEP10QCPPainter.exit
  %i.bv = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not34 = icmp eq ptr %i.bv, null
  %i.bw = getelementptr i8, ptr %i.bv, i64 16
  %spec.select = select i1 %.not34, ptr %i.z, ptr %i.bw
  br label %.invoke

.invoke:                                          ; preds = %bb.m, %_ZNK20QCPAbstractPlottable25applyFillAntialiasingHintEP10QCPPainter.exit
  %i.bx = phi ptr [ %i.z, %_ZNK20QCPAbstractPlottable25applyFillAntialiasingHintEP10QCPPainter.exit ], [ %spec.select, %bb.m ]
  invoke void @_ZN8QPainter8setBrushERK6QBrush(ptr noundef align 8 dereferenceable_or_null(8) %1, ptr noundef align 8 dereferenceable(8) %i.bx)
          to label %_ZNK21QCPSelectionDecorator10applyBrushEP10QCPPainter.exit unwind label %bb.n
end_hunk_2
begin_hunk_3_@_ZNK7QCPBars11getKeyRangeERbN3QCP10SignDomainE:bb.a
  ret { double, double } %.fca.1.insert.merged
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI11QCPBarsDataE8keyRangeERbN3QCP10SignDomainE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPRange, align 8            ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = sext i32 %i.i to i64
  %.idx = shl nsw i64 %i.j, 4                     ; 5 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx    ; 4 uses
  %i.l = load i64, ptr %i.a, align 8
  %.idx111 = shl i64 %i.l, 4                      ; 5 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %.idx111 ; 4 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader88
    i32 2, label %.preheader90
  ]

.preheader90:                                     ; preds = %bb.c
  %.not93 = icmp eq i64 %.idx, %.idx111
  br i1 %.not93, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader90
  %.promoted = load double, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted98 = load double, ptr %i.n, align 8
  br label %bb.n

.preheader88:                                     ; preds = %bb.c
  %.not84100 = icmp eq i64 %.idx, %.idx111
  br i1 %.not84100, label %.loopexit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader88
  %.promoted99 = load double, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted107 = load double, ptr %i.o, align 8
  br label %bb.h

.preheader:                                       ; preds = %bb.c
  %.not85108 = icmp eq i64 %.idx, %.idx111
  br i1 %.not85108, label %.loopexit87, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %bb.e
  %.sroa.0.0109 = phi ptr [ %i.t, %bb.e ], [ %i.k, %.preheader ] ; 3 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0109, i64 8
  %i.q = load double, ptr %i.p, align 8
  %i.r = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.q) #56
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph110
  %i.s = load double, ptr %.sroa.0.0109, align 8
  store double %i.s, ptr %3, align 8
  br label %.loopexit87

bb.e:                                             ; preds = %.lr.ph110
  %i.t = getelementptr i8, ptr %.sroa.0.0109, i64 16 ; 2 uses
  %.not85 = icmp eq ptr %i.t, %i.m
  br i1 %.not85, label %.loopexit87, label %.lr.ph110, !llvm.loop !1215

.loopexit87:                                      ; preds = %bb.e, %.preheader, %bb.d
  %.0 = phi i8 [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %bb.e ] ; 3 uses
  %.not86127 = icmp eq i64 %.idx111, %.idx
  br i1 %.not86127, label %.loopexit, label %.lr.ph129

bb.f:                                             ; preds = %.lr.ph129
  %.not86 = icmp eq ptr %i.u, %i.k
  br i1 %.not86, label %.loopexit, label %.lr.ph129, !llvm.loop !1216

.lr.ph129:                                        ; preds = %.loopexit87, %bb.f
  %.sroa.0.1128 = phi ptr [ %i.u, %bb.f ], [ %i.m, %.loopexit87 ] ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.0.1128, i64 -16 ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.0.1128, i64 -8
  %i.w = load double, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.w) #56
  br i1 %i.x, label %bb.f, label %bb.g, !llvm.loop !1216

bb.g:                                             ; preds = %.lr.ph129
  %i.y = load double, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.y, ptr %i.z, align 8
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph104, %bb.m
  %i.aa = phi double [ %.promoted107, %.lr.ph104 ], [ %i.am, %bb.m ] ; 3 uses
  %.4103 = phi i8 [ 0, %.lr.ph104 ], [ %.6, %bb.m ] ; 3 uses
  %.255102 = phi i8 [ 0, %.lr.ph104 ], [ %.356, %bb.m ] ; 3 uses
  %.sroa.0.3101 = phi ptr [ %i.k, %.lr.ph104 ], [ %i.ao, %bb.m ] ; 3 uses
  %i.ab = phi double [ %.promoted99, %.lr.ph104 ], [ %i.an, %bb.m ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.3101, i64 8
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ad) #56
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load double, ptr %.sroa.0.3101, align 8 ; 7 uses
  %i.ag = fcmp uge double %i.af, %i.ab
  %i.ah = trunc nuw i8 %.4103 to i1
  %or.cond5 = select i1 %i.ag, i1 %i.ah, i1 false
  %or.cond5.not = xor i1 %or.cond5, true
  %i.ai = fcmp olt double %i.af, 0.000000e+00     ; 2 uses
  %or.cond7 = and i1 %i.ai, %or.cond5.not
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.af, ptr %3, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi double [ %i.af, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.j ], [ %.4103, %bb.i ]    ; 2 uses
  %i.ak = fcmp ule double %i.af, %i.aa
  %i.al = trunc nuw i8 %.255102 to i1
  %or.cond9 = select i1 %i.ak, i1 %i.al, i1 false
  %or.cond9.not = xor i1 %or.cond9, true
  %or.cond11 = and i1 %i.ai, %or.cond9.not
  br i1 %or.cond11, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.af, ptr %i.o, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %i.am = phi double [ %i.aa, %bb.h ], [ %i.af, %bb.l ], [ %i.aa, %bb.k ]
  %i.an = phi double [ %i.ab, %bb.h ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ]
  %.356 = phi i8 [ %.255102, %bb.h ], [ 1, %bb.l ], [ %.255102, %bb.k ] ; 2 uses
  %.6 = phi i8 [ %.4103, %bb.h ], [ %.5, %bb.l ], [ %.5, %bb.k ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.0.3101, i64 16 ; 2 uses
  %.not84 = icmp eq ptr %i.ao, %i.m
  br i1 %.not84, label %.loopexit, label %bb.h, !llvm.loop !1217

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %i.ap = phi double [ %.promoted98, %.lr.ph ], [ %i.bb, %bb.s ] ; 3 uses
  %.796 = phi i8 [ 0, %.lr.ph ], [ %.9, %bb.s ]   ; 3 uses
  %.45795 = phi i8 [ 0, %.lr.ph ], [ %.558, %bb.s ] ; 3 uses
  %.sroa.0.494 = phi ptr [ %i.k, %.lr.ph ], [ %i.bd, %bb.s ] ; 3 uses
  %i.aq = phi double [ %.promoted, %.lr.ph ], [ %i.bc, %bb.s ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.sroa.0.494, i64 8
  %i.as = load double, ptr %i.ar, align 8
  %i.at = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.as) #56
  br i1 %i.at, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load double, ptr %.sroa.0.494, align 8  ; 7 uses
  %i.av = fcmp uge double %i.au, %i.aq
  %i.aw = trunc nuw i8 %.796 to i1
  %or.cond13 = select i1 %i.av, i1 %i.aw, i1 false
  %or.cond13.not = xor i1 %or.cond13, true
  %i.ax = fcmp ogt double %i.au, 0.000000e+00     ; 2 uses
  %or.cond15 = and i1 %i.ax, %or.cond13.not
  br i1 %or.cond15, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.au, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ay = phi double [ %i.au, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
  %.8 = phi i8 [ 1, %bb.p ], [ %.796, %bb.o ]     ; 2 uses
  %i.az = fcmp ule double %i.au, %i.ap
  %i.ba = trunc nuw i8 %.45795 to i1
  %or.cond17 = select i1 %i.az, i1 %i.ba, i1 false
  %or.cond17.not = xor i1 %or.cond17, true
  %or.cond19 = and i1 %i.ax, %or.cond17.not
  br i1 %or.cond19, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.au, ptr %i.n, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.bb = phi double [ %i.ap, %bb.n ], [ %i.au, %bb.r ], [ %i.ap, %bb.q ]
  %i.bc = phi double [ %i.aq, %bb.n ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ]
  %.558 = phi i8 [ %.45795, %bb.n ], [ 1, %bb.r ], [ %.45795, %bb.q ] ; 2 uses
  %.9 = phi i8 [ %.796, %bb.n ], [ %.8, %bb.r ], [ %.8, %bb.q ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0.494, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.m
  br i1 %.not, label %.loopexit, label %bb.n, !llvm.loop !1218

.loopexit:                                        ; preds = %bb.s, %bb.m, %bb.f, %.loopexit87, %.preheader90, %.preheader88, %bb.c, %bb.g
  %.659 = phi i8 [ 1, %bb.g ], [ 0, %.loopexit87 ], [ 0, %bb.c ], [ %.356, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ 0, %bb.f ], [ %.558, %bb.s ]
  %.10 = phi i8 [ %.0, %bb.g ], [ %.0, %.loopexit87 ], [ 0, %bb.c ], [ %.6, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ %.0, %bb.f ], [ %.9, %bb.s ]
  %4 = trunc nuw i8 %.10 to i1
  %5 = select i1 %4, i8 %.659, i8 0
  store i8 %5, ptr %1, align 1
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %3, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none)
declare noundef zeroext i1 @_Z9qIsFinited(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK7QCPBars13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(280) %0, ptr nofree noundef writeonly align 1 captures(none) dereferenceable(1) %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPBarsData, align 8         ; 4 uses
  %5 = alloca %class.QCPBarsData, align 8         ; 4 uses
  %6 = alloca %class.QCPRange, align 8            ; 8 uses
  %7 = alloca %class.QCPRange, align 8            ; 6 uses
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6)
  %i.a = getelementptr i8, ptr %0, i64 232
  %i.b = load double, ptr %i.a, align 8           ; 2 uses
  store double %i.b, ptr %6, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 6 uses
  store double %i.b, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 192        ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.e, i64 32
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr i8, ptr %i.e, i64 24
  %i.k = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7)
  %i.l = load double, ptr %3, align 8             ; 2 uses
  %i.m = load double, ptr %7, align 8
  %i.n = fcmp oeq double %i.l, %i.m
  br i1 %i.n, label %_ZNK8QCPRangeneERKS_.exit, label %_ZNK8QCPRangeneERKS_.exit.thread

_ZNK8QCPRangeneERKS_.exit.thread:                 ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %bb.b

_ZNK8QCPRangeneERKS_.exit:                        ; preds = %bb.a
  %i.o = getelementptr [16 x i8], ptr %i.g, i64 %i.k
  %i.p = sext i32 %i.i to i64
  %i.q = getelementptr [16 x i8], ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = load double, ptr %i.t, align 8
  %i.v = fcmp une double %i.s, %i.u
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br i1 %i.v, label %bb.b, label %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit

bb.b:                                             ; preds = %_ZNK8QCPRangeneERKS_.exit.thread, %_ZNK8QCPRangeneERKS_.exit
  %i.w = load ptr, ptr %i.d, align 8              ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 24
  %i.y = load i64, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr i8, ptr %i.w, i64 32
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = trunc i64 %i.y to i32
  %i.ac = icmp eq i32 %i.aa, %i.ab
  %i.ad = getelementptr i8, ptr %i.w, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr [16 x i8], ptr %i.ae, i64 %i.y
  br label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit

bb.d:                                             ; preds = %bb.b
  %i.ag = sext i32 %i.aa to i64                   ; 2 uses
  %.idx7.i = shl nsw i64 %i.ag, 4
  %i.ah = getelementptr i8, ptr %i.ae, i64 %.idx7.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZN11QCPBarsDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.l, double noundef 0.000000e+00)
  %.fca.0.load.i.i = load double, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ai = sub i64 %i.y, %i.ag
  %gepdiff.i = shl i64 %i.ai, 4
  %i.aj = ashr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.ak = icmp sgt i64 %i.aj, 0
  br i1 %i.ak, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit

_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.d, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.aj, %bb.d ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ah, %bb.d ] ; 2 uses
  %i.al = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.am = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.al ; 2 uses
  %i.an = load double, ptr %i.am, align 8
  %i.ao = fcmp olt double %i.an, %.fca.0.load.i.i ; 2 uses
  %i.ap = getelementptr i8, ptr %i.am, i64 16
  %i.aq = xor i64 %i.al, -1
  %i.ar = add nsw i64 %.016.i.i.i, %i.aq
  %.sroa.012.1.i.i.i = select i1 %i.ao, ptr %i.ap, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ao, i64 %i.ar, i64 %i.al ; 2 uses
  %i.as = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.as, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit, !llvm.loop !73

_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit: ; preds = %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.d, %bb.c
  %.sroa.04.0.i = phi ptr [ %i.af, %bb.c ], [ %i.ah, %bb.d ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 3 uses
  %i.at = load ptr, ptr %i.d, align 8             ; 3 uses
  %i.au = getelementptr i8, ptr %i.at, i64 24
  %i.av = load i64, ptr %i.au, align 8            ; 3 uses
  %i.aw = getelementptr i8, ptr %i.at, i64 32
  %i.ax = load i32, ptr %i.aw, align 8            ; 2 uses
  %i.ay = trunc i64 %i.av to i32
  %i.az = icmp eq i32 %i.ax, %i.ay
  %i.ba = getelementptr i8, ptr %i.at, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  br i1 %i.az, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit
  %i.bc = getelementptr [16 x i8], ptr %i.bb, i64 %i.av
  br label %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit

bb.f:                                             ; preds = %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.be = load double, ptr %i.bd, align 8
  %i.bf = sext i32 %i.ax to i64                   ; 2 uses
  %.idx7.i31 = shl nsw i64 %i.bf, 4
  %i.bg = getelementptr i8, ptr %i.bb, i64 %.idx7.i31 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZN11QCPBarsDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.be, double noundef 0.000000e+00)
  %.fca.0.load.i.i32 = load double, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.bh = sub i64 %i.av, %i.bf
  %gepdiff.i33 = shl i64 %i.bh, 4
  %i.bi = ashr exact i64 %gepdiff.i33, 4          ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36, label %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit

_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36: ; preds = %bb.f, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36
  %.016.i.i.i37 = phi i64 [ %.1.i.i.i42, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36 ], [ %i.bi, %bb.f ] ; 2 uses
  %.sroa.012.015.i.i.i38 = phi ptr [ %.sroa.012.1.i.i.i41, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36 ], [ %i.bg, %bb.f ] ; 2 uses
  %i.bk = lshr i64 %.016.i.i.i37, 1               ; 3 uses
  %i.bl = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i38, i64 %i.bk ; 2 uses
  %i.bm = load double, ptr %i.bl, align 8
  %i.bn = fcmp olt double %.fca.0.load.i.i32, %i.bm ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bl, i64 16
  %i.bp = xor i64 %i.bk, -1
  %i.bq = add nsw i64 %.016.i.i.i37, %i.bp
  %.sroa.012.1.i.i.i41 = select i1 %i.bn, ptr %.sroa.012.015.i.i.i38, ptr %i.bo ; 2 uses
  %.1.i.i.i42 = select i1 %i.bn, i64 %i.bk, i64 %i.bq ; 2 uses
  %i.br = icmp sgt i64 %.1.i.i.i42, 0
  br i1 %i.br, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36, label %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit, !llvm.loop !74

_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit: ; preds = %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36, %bb.e, %bb.f, %_ZNK8QCPRangeneERKS_.exit
  %.sroa.016.0 = phi ptr [ %i.o, %_ZNK8QCPRangeneERKS_.exit ], [ %i.bc, %bb.e ], [ %i.bg, %bb.f ], [ %.sroa.012.1.i.i.i41, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36 ] ; 3 uses
  %.sroa.017.0 = phi ptr [ %i.q, %_ZNK8QCPRangeneERKS_.exit ], [ %.sroa.04.0.i, %bb.e ], [ %.sroa.04.0.i, %bb.f ], [ %.sroa.04.0.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i36 ] ; 3 uses
  %.not47 = icmp eq ptr %.sroa.017.0, %.sroa.016.0
  br i1 %.not47, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit
  %i.bs = icmp eq i32 %2, 1
  %i.bt = icmp eq i32 %2, 0
  %i.bu = icmp eq i32 %2, 2
  br i1 %i.bs, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.k
  %.sroa.0.048.us = phi ptr [ %i.cg, %bb.k ], [ %.sroa.017.0, %.lr.ph ] ; 3 uses
  %i.bv = getelementptr i8, ptr %.sroa.0.048.us, i64 8
  %i.bw = load double, ptr %i.bv, align 8         ; 2 uses
  %i.bx = load double, ptr %.sroa.0.048.us, align 8
  %i.by = fcmp oge double %i.bw, 0.000000e+00
  %i.bz = call noundef double @_ZNK7QCPBars19getStackedBaseValueEdb(ptr noundef align 8 dereferenceable_or_null(280) %0, double noundef %i.bx, i1 noundef zeroext %i.by)
  %i.ca = fadd double %i.bw, %i.bz                ; 5 uses
  %i.cb = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ca) #56
  br i1 %i.cb, label %bb.k, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.cc = load double, ptr %6, align 8
  %i.cd = fcmp uge double %i.ca, %i.cc
  br i1 %i.cd, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store double %i.ca, ptr %6, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ce = load double, ptr %i.c, align 8
  %i.cf = fcmp ule double %i.ca, %i.ce
  br i1 %i.cf, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store double %i.ca, ptr %i.c, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.split.us
  %i.cg = getelementptr i8, ptr %.sroa.0.048.us, i64 16 ; 2 uses
  %.not.us = icmp eq ptr %i.cg, %.sroa.016.0
  br i1 %.not.us, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1219

._crit_edge:                                      ; preds = %bb.q, %bb.k, %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit
  store i8 1, ptr %1, align 1
  %.fca.0.load = load double, ptr %6, align 8
end_hunk_3
begin_hunk_4_@_ZNK17QCPStatisticalBox11getKeyRangeERbN3QCP10SignDomainE:bb.a
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI21QCPStatisticalBoxDataE8keyRangeERbN3QCP10SignDomainE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPRange, align 8            ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = sext i32 %i.i to i64
  %.idx = mul nsw i64 %i.j, 72                    ; 5 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx    ; 4 uses
  %i.l = load i64, ptr %i.a, align 8
  %.idx111 = mul i64 %i.l, 72                     ; 5 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %.idx111 ; 4 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader88
    i32 2, label %.preheader90
  ]

.preheader90:                                     ; preds = %bb.c
  %.not93 = icmp eq i64 %.idx, %.idx111
  br i1 %.not93, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader90
  %.promoted = load double, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted98 = load double, ptr %i.n, align 8
  br label %bb.n

.preheader88:                                     ; preds = %bb.c
  %.not84100 = icmp eq i64 %.idx, %.idx111
  br i1 %.not84100, label %.loopexit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader88
  %.promoted99 = load double, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted107 = load double, ptr %i.o, align 8
  br label %bb.h

.preheader:                                       ; preds = %bb.c
  %.not85108 = icmp eq i64 %.idx, %.idx111
  br i1 %.not85108, label %.loopexit87, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %bb.e
  %.sroa.0.0109 = phi ptr [ %i.t, %bb.e ], [ %i.k, %.preheader ] ; 3 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0109, i64 24
  %i.q = load double, ptr %i.p, align 8
  %i.r = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.q) #56
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph110
  %i.s = load double, ptr %.sroa.0.0109, align 8
  store double %i.s, ptr %3, align 8
  br label %.loopexit87

bb.e:                                             ; preds = %.lr.ph110
  %i.t = getelementptr i8, ptr %.sroa.0.0109, i64 72 ; 2 uses
  %.not85 = icmp eq ptr %i.t, %i.m
  br i1 %.not85, label %.loopexit87, label %.lr.ph110, !llvm.loop !1249

.loopexit87:                                      ; preds = %bb.e, %.preheader, %bb.d
  %.0 = phi i8 [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %bb.e ] ; 3 uses
  %.not86127 = icmp eq i64 %.idx111, %.idx
  br i1 %.not86127, label %.loopexit, label %.lr.ph129

bb.f:                                             ; preds = %.lr.ph129
  %.not86 = icmp eq ptr %i.u, %i.k
  br i1 %.not86, label %.loopexit, label %.lr.ph129, !llvm.loop !1250

.lr.ph129:                                        ; preds = %.loopexit87, %bb.f
  %.sroa.0.1128 = phi ptr [ %i.u, %bb.f ], [ %i.m, %.loopexit87 ] ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.0.1128, i64 -72 ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.0.1128, i64 -48
  %i.w = load double, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.w) #56
  br i1 %i.x, label %bb.f, label %bb.g, !llvm.loop !1250

bb.g:                                             ; preds = %.lr.ph129
  %i.y = load double, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.y, ptr %i.z, align 8
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph104, %bb.m
  %i.aa = phi double [ %.promoted107, %.lr.ph104 ], [ %i.am, %bb.m ] ; 3 uses
  %.4103 = phi i8 [ 0, %.lr.ph104 ], [ %.6, %bb.m ] ; 3 uses
  %.255102 = phi i8 [ 0, %.lr.ph104 ], [ %.356, %bb.m ] ; 3 uses
  %.sroa.0.3101 = phi ptr [ %i.k, %.lr.ph104 ], [ %i.ao, %bb.m ] ; 3 uses
  %i.ab = phi double [ %.promoted99, %.lr.ph104 ], [ %i.an, %bb.m ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.3101, i64 24
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ad) #56
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load double, ptr %.sroa.0.3101, align 8 ; 7 uses
  %i.ag = fcmp uge double %i.af, %i.ab
  %i.ah = trunc nuw i8 %.4103 to i1
  %or.cond5 = select i1 %i.ag, i1 %i.ah, i1 false
  %or.cond5.not = xor i1 %or.cond5, true
  %i.ai = fcmp olt double %i.af, 0.000000e+00     ; 2 uses
  %or.cond7 = and i1 %i.ai, %or.cond5.not
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.af, ptr %3, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi double [ %i.af, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.j ], [ %.4103, %bb.i ]    ; 2 uses
  %i.ak = fcmp ule double %i.af, %i.aa
  %i.al = trunc nuw i8 %.255102 to i1
  %or.cond9 = select i1 %i.ak, i1 %i.al, i1 false
  %or.cond9.not = xor i1 %or.cond9, true
  %or.cond11 = and i1 %i.ai, %or.cond9.not
  br i1 %or.cond11, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.af, ptr %i.o, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %i.am = phi double [ %i.aa, %bb.h ], [ %i.af, %bb.l ], [ %i.aa, %bb.k ]
  %i.an = phi double [ %i.ab, %bb.h ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ]
  %.356 = phi i8 [ %.255102, %bb.h ], [ 1, %bb.l ], [ %.255102, %bb.k ] ; 2 uses
  %.6 = phi i8 [ %.4103, %bb.h ], [ %.5, %bb.l ], [ %.5, %bb.k ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.0.3101, i64 72 ; 2 uses
  %.not84 = icmp eq ptr %i.ao, %i.m
  br i1 %.not84, label %.loopexit, label %bb.h, !llvm.loop !1251

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %i.ap = phi double [ %.promoted98, %.lr.ph ], [ %i.bb, %bb.s ] ; 3 uses
  %.796 = phi i8 [ 0, %.lr.ph ], [ %.9, %bb.s ]   ; 3 uses
  %.45795 = phi i8 [ 0, %.lr.ph ], [ %.558, %bb.s ] ; 3 uses
  %.sroa.0.494 = phi ptr [ %i.k, %.lr.ph ], [ %i.bd, %bb.s ] ; 3 uses
  %i.aq = phi double [ %.promoted, %.lr.ph ], [ %i.bc, %bb.s ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.sroa.0.494, i64 24
  %i.as = load double, ptr %i.ar, align 8
  %i.at = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.as) #56
  br i1 %i.at, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load double, ptr %.sroa.0.494, align 8  ; 7 uses
  %i.av = fcmp uge double %i.au, %i.aq
  %i.aw = trunc nuw i8 %.796 to i1
  %or.cond13 = select i1 %i.av, i1 %i.aw, i1 false
  %or.cond13.not = xor i1 %or.cond13, true
  %i.ax = fcmp ogt double %i.au, 0.000000e+00     ; 2 uses
  %or.cond15 = and i1 %i.ax, %or.cond13.not
  br i1 %or.cond15, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.au, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ay = phi double [ %i.au, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
  %.8 = phi i8 [ 1, %bb.p ], [ %.796, %bb.o ]     ; 2 uses
  %i.az = fcmp ule double %i.au, %i.ap
  %i.ba = trunc nuw i8 %.45795 to i1
  %or.cond17 = select i1 %i.az, i1 %i.ba, i1 false
  %or.cond17.not = xor i1 %or.cond17, true
  %or.cond19 = and i1 %i.ax, %or.cond17.not
  br i1 %or.cond19, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.au, ptr %i.n, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.bb = phi double [ %i.ap, %bb.n ], [ %i.au, %bb.r ], [ %i.ap, %bb.q ]
  %i.bc = phi double [ %i.aq, %bb.n ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ]
  %.558 = phi i8 [ %.45795, %bb.n ], [ 1, %bb.r ], [ %.45795, %bb.q ] ; 2 uses
  %.9 = phi i8 [ %.796, %bb.n ], [ %.8, %bb.r ], [ %.8, %bb.q ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0.494, i64 72 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.m
  br i1 %.not, label %.loopexit, label %bb.n, !llvm.loop !1252

.loopexit:                                        ; preds = %bb.s, %bb.m, %bb.f, %.loopexit87, %.preheader90, %.preheader88, %bb.c, %bb.g
  %.659 = phi i8 [ 1, %bb.g ], [ 0, %.loopexit87 ], [ 0, %bb.c ], [ %.356, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ 0, %bb.f ], [ %.558, %bb.s ]
  %.10 = phi i8 [ %.0, %bb.g ], [ %.0, %.loopexit87 ], [ 0, %bb.c ], [ %.6, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ %.0, %bb.f ], [ %.9, %bb.s ]
  %4 = trunc nuw i8 %.10 to i1
  %5 = select i1 %4, i8 %.659, i8 0
  store i8 %5, ptr %1, align 1
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %3, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK17QCPStatisticalBox13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(328) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call { double, double } @_ZN16QCPDataContainerI21QCPStatisticalBoxDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3)
  ret { double, double } %i.c
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI21QCPStatisticalBoxDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPRange, align 8            ; 6 uses
  %5 = alloca %class.QCPRange, align 8            ; 6 uses
  %6 = alloca %class.QCPRange, align 8            ; 6 uses
  %7 = alloca %class.QCPRange, align 8            ; 13 uses
  %8 = alloca %class.QCPRange, align 8            ; 5 uses
  %9 = alloca %class.QCPRange, align 8            ; 9 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7)
  br label %bb.az

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %8)
  %i.g = load double, ptr %3, align 8
  %i.h = load double, ptr %8, align 8
  %i.i = fcmp oeq double %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_ZNK8QCPRangeneERKS_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp une double %i.k, %i.m
  br label %_ZNK8QCPRangeneERKS_.exit

_ZNK8QCPRangeneERKS_.exit:                        ; preds = %bb.c, %bb.d
  %i.o = phi i1 [ true, %bb.c ], [ %i.n, %bb.d ]  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9)
  %i.p = getelementptr i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = load i32, ptr %i.c, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr [72 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.a, align 8
  %i.v = getelementptr [72 x i8], ptr %i.q, i64 %i.u
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK8QCPRangeneERKS_.exit
  %i.w = load double, ptr %3, align 8
  %i.x = call ptr @_ZNK16QCPDataContainerI21QCPStatisticalBoxDataE9findBeginEdb(ptr noundef align 8 dereferenceable_or_null(40) %0, double noundef %i.w, i1 noundef zeroext false)
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.z = load double, ptr %i.y, align 8
  %i.aa = call ptr @_ZNK16QCPDataContainerI21QCPStatisticalBoxDataE7findEndEdb(ptr noundef align 8 dereferenceable_or_null(40) %0, double noundef %i.z, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZNK8QCPRangeneERKS_.exit
  %.sroa.035.0 = phi ptr [ %i.aa, %bb.e ], [ %i.v, %_ZNK8QCPRangeneERKS_.exit ] ; 6 uses
  %.sroa.036.0 = phi ptr [ %i.x, %bb.e ], [ %i.t, %_ZNK8QCPRangeneERKS_.exit ] ; 6 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader146
    i32 2, label %.preheader148
  ]

.preheader148:                                    ; preds = %bb.f
  %.not138155 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not138155, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader148
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.gep.phi.trans.insert.i94 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.ak

.preheader146:                                    ; preds = %bb.f
  %.not141160 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not141160, label %.loopexit, label %.lr.ph164

.lr.ph164:                                        ; preds = %.preheader146
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.gep.phi.trans.insert.i78 = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.v

.preheader:                                       ; preds = %bb.f
  %.not144167 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not144167, label %.loopexit, label %.lr.ph171

.lr.ph171:                                        ; preds = %.preheader
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.gep.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph171, %bb.u
  %.0170 = phi i8 [ 0, %.lr.ph171 ], [ %.2, %bb.u ] ; 4 uses
  %.064169 = phi i8 [ 0, %.lr.ph171 ], [ %.165, %bb.u ] ; 4 uses
  %.sroa.0117.0168 = phi ptr [ %.sroa.036.0, %.lr.ph171 ], [ %i.br, %bb.u ] ; 6 uses
  br i1 %i.o, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ah = load double, ptr %.sroa.0117.0168, align 8 ; 2 uses
  %i.ai = load double, ptr %3, align 8
  %i.aj = fcmp olt double %i.ah, %i.ai
  br i1 %i.aj, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = load double, ptr %i.af, align 8
  %i.al = fcmp ogt double %i.ah, %i.ak
  br i1 %i.al, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.am = getelementptr i8, ptr %.sroa.0117.0168, i64 8
  %i.an = load double, ptr %i.am, align 8
  %i.ao = getelementptr i8, ptr %.sroa.0117.0168, i64 40
  %i.ap = load double, ptr %i.ao, align 8
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef %i.an, double noundef %i.ap)
  %i.aq = getelementptr i8, ptr %.sroa.0117.0168, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr i8, ptr %.sroa.0117.0168, i64 64
  %i.at = load i64, ptr %i.as, align 8
  %.idx.i = shl i64 %i.at, 3                      ; 2 uses
  %i.au = getelementptr i8, ptr %i.ar, i64 %.idx.i
  %.not3.i = icmp eq i64 %.idx.i, 0
  %.fca.1.load.pre.i = load double, ptr %.fca.1.gep.phi.trans.insert.i, align 8 ; 2 uses
  %.fca.0.load.pre.i = load double, ptr %6, align 8 ; 2 uses
  br i1 %.not3.i, label %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.j, %_ZN8QCPRange6expandEd.exit.i
  %i.av = phi double [ %i.bd, %_ZN8QCPRange6expandEd.exit.i ], [ %.fca.1.load.pre.i, %bb.j ] ; 3 uses
  %.sroa.0.04.i = phi ptr [ %i.be, %_ZN8QCPRange6expandEd.exit.i ], [ %i.ar, %bb.j ] ; 2 uses
  %i.aw = phi double [ %i.ba, %_ZN8QCPRange6expandEd.exit.i ], [ %.fca.0.load.pre.i, %bb.j ] ; 3 uses
  %i.ax = load double, ptr %.sroa.0.04.i, align 8 ; 6 uses
  %i.ay = fcmp ogt double %i.aw, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i
  %i.az = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.aw) #56
  br i1 %i.az, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  store double %i.ax, ptr %6, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = phi double [ %i.ax, %bb.l ], [ %i.aw, %bb.k ] ; 2 uses
  %i.bb = fcmp olt double %i.av, %i.ax
  br i1 %i.bb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.av) #56
  br i1 %i.bc, label %bb.o, label %_ZN8QCPRange6expandEd.exit.i

bb.o:                                             ; preds = %bb.n, %bb.m
  store double %i.ax, ptr %.fca.1.gep.phi.trans.insert.i, align 8
  br label %_ZN8QCPRange6expandEd.exit.i

_ZN8QCPRange6expandEd.exit.i:                     ; preds = %bb.o, %bb.n
  %i.bd = phi double [ %i.av, %bb.n ], [ %i.ax, %bb.o ] ; 2 uses
  %i.be = getelementptr i8, ptr %.sroa.0.04.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.be, %i.au
  br i1 %.not.i, label %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit, label %.lr.ph.i, !llvm.loop !82

_ZNK21QCPStatisticalBoxData10valueRangeEv.exit:   ; preds = %_ZN8QCPRange6expandEd.exit.i, %bb.j
  %.fca.1.load.i = phi double [ %.fca.1.load.pre.i, %bb.j ], [ %i.bd, %_ZN8QCPRange6expandEd.exit.i ] ; 5 uses
  %.fca.0.load.i = phi double [ %.fca.0.load.pre.i, %bb.j ], [ %i.ba, %_ZN8QCPRange6expandEd.exit.i ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store double %.fca.0.load.i, ptr %9, align 8
  store double %.fca.1.load.i, ptr %.sroa.431.0..sroa_idx, align 8
  %i.bf = load double, ptr %7, align 8
end_hunk_4
begin_hunk_5_@_ZN16QCPDataContainerI21QCPStatisticalBoxDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange:bb.a
bb.aa:                                            ; preds = %bb.z, %.lr.ph.i80
  store double %i.ci, ptr %5, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.cl = phi double [ %i.ci, %bb.aa ], [ %i.ch, %bb.z ] ; 2 uses
  %i.cm = fcmp olt double %i.cg, %i.ci
  br i1 %i.cm, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cn = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.cg) #56
  br i1 %i.cn, label %bb.ad, label %_ZN8QCPRange6expandEd.exit.i83

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  store double %i.ci, ptr %.fca.1.gep.phi.trans.insert.i78, align 8
  br label %_ZN8QCPRange6expandEd.exit.i83

_ZN8QCPRange6expandEd.exit.i83:                   ; preds = %bb.ad, %bb.ac
  %i.co = phi double [ %i.cg, %bb.ac ], [ %i.ci, %bb.ad ] ; 2 uses
  %i.cp = getelementptr i8, ptr %.sroa.0.04.i82, i64 8 ; 2 uses
  %.not.i84 = icmp eq ptr %i.cp, %i.cf
  br i1 %.not.i84, label %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit91, label %.lr.ph.i80, !llvm.loop !82

_ZNK21QCPStatisticalBoxData10valueRangeEv.exit91: ; preds = %_ZN8QCPRange6expandEd.exit.i83, %bb.y
  %.fca.1.load.i85 = phi double [ %.fca.1.load.pre.i79, %bb.y ], [ %i.co, %_ZN8QCPRange6expandEd.exit.i83 ] ; 6 uses
  %.fca.0.load.i86 = phi double [ %.fca.0.load.pre.i90, %bb.y ], [ %i.cl, %_ZN8QCPRange6expandEd.exit.i83 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store double %.fca.0.load.i86, ptr %9, align 8
  store double %.fca.1.load.i85, ptr %.sroa.428.0..sroa_idx, align 8
  %i.cq = load double, ptr %7, align 8
  %i.cr = fcmp uge double %.fca.0.load.i86, %i.cq
  %i.cs = trunc nuw i8 %.3163 to i1
  %or.cond7 = select i1 %i.cr, i1 %i.cs, i1 false
  %i.ct = fcmp uge double %.fca.0.load.i86, 0.000000e+00
  %or.cond10.not = or i1 %i.ct, %or.cond7
  br i1 %or.cond10.not, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit91
  %i.cu = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %.fca.0.load.i86) #56
  %i.cv = call double @llvm.fabs.f64(double %.fca.0.load.i86)
  %i.cw = fcmp ueq double %i.cv, +inf
  %or.cond128.not = or i1 %i.cw, %i.cu
  br i1 %or.cond128.not, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store double %.fca.0.load.i86, ptr %7, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit91, %bb.af, %bb.ae
  %.4 = phi i8 [ %.3163, %bb.ae ], [ 1, %bb.af ], [ %.3163, %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit91 ] ; 3 uses
  %i.cx = load double, ptr %i.ae, align 8
  %i.cy = fcmp ule double %.fca.1.load.i85, %i.cx
  %i.cz = trunc nuw i8 %.266162 to i1
  %or.cond12 = select i1 %i.cy, i1 %i.cz, i1 false
  %i.da = fcmp uge double %.fca.1.load.i85, 0.000000e+00
  %or.cond15.not = or i1 %i.da, %or.cond12
  br i1 %or.cond15.not, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.db = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %.fca.1.load.i85) #56
  %i.dc = call double @llvm.fabs.f64(double %.fca.1.load.i85)
  %i.dd = fcmp ueq double %i.dc, +inf
  %or.cond131.not = select i1 %i.db, i1 true, i1 %i.dd
  br i1 %or.cond131.not, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store double %.fca.1.load.i85, ptr %i.ae, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ag, %bb.w, %bb.x
  %.367 = phi i8 [ %.266162, %bb.w ], [ %.266162, %bb.x ], [ %.266162, %bb.ah ], [ 1, %bb.ai ], [ %.266162, %bb.ag ] ; 2 uses
  %.5 = phi i8 [ %.3163, %bb.w ], [ %.3163, %bb.x ], [ %.4, %bb.ah ], [ %.4, %bb.ai ], [ %.4, %bb.ag ] ; 2 uses
  %i.de = getelementptr i8, ptr %.sroa.0112.0161, i64 72 ; 2 uses
  %.not141 = icmp eq ptr %i.de, %.sroa.035.0
  br i1 %.not141, label %.loopexit, label %bb.v, !llvm.loop !1254

bb.ak:                                            ; preds = %.lr.ph, %bb.ay
  %.6158 = phi i8 [ 0, %.lr.ph ], [ %.8, %bb.ay ] ; 5 uses
  %.468157 = phi i8 [ 0, %.lr.ph ], [ %.569, %bb.ay ] ; 5 uses
  %.sroa.0.0156 = phi ptr [ %.sroa.036.0, %.lr.ph ], [ %i.ep, %bb.ay ] ; 6 uses
  br i1 %i.o, label %bb.al, label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.df = load double, ptr %.sroa.0.0156, align 8 ; 2 uses
  %i.dg = load double, ptr %3, align 8
  %i.dh = fcmp olt double %i.df, %i.dg
  br i1 %i.dh, label %bb.ay, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.di = load double, ptr %i.ab, align 8
  %i.dj = fcmp ogt double %i.df, %i.di
  br i1 %i.dj, label %bb.ay, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dk = getelementptr i8, ptr %.sroa.0.0156, i64 8
  %i.dl = load double, ptr %i.dk, align 8
  %i.dm = getelementptr i8, ptr %.sroa.0.0156, i64 40
  %i.dn = load double, ptr %i.dm, align 8
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.dl, double noundef %i.dn)
  %i.do = getelementptr i8, ptr %.sroa.0.0156, i64 56
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr i8, ptr %.sroa.0.0156, i64 64
  %i.dr = load i64, ptr %i.dq, align 8
  %.idx.i92 = shl i64 %i.dr, 3                    ; 2 uses
  %i.ds = getelementptr i8, ptr %i.dp, i64 %.idx.i92
  %.not3.i93 = icmp eq i64 %.idx.i92, 0
  %.fca.1.load.pre.i95 = load double, ptr %.fca.1.gep.phi.trans.insert.i94, align 8 ; 2 uses
  %.fca.0.load.pre.i106 = load double, ptr %4, align 8 ; 2 uses
  br i1 %.not3.i93, label %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit107, label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.an, %_ZN8QCPRange6expandEd.exit.i99
  %i.dt = phi double [ %i.eb, %_ZN8QCPRange6expandEd.exit.i99 ], [ %.fca.1.load.pre.i95, %bb.an ] ; 3 uses
  %.sroa.0.04.i98 = phi ptr [ %i.ec, %_ZN8QCPRange6expandEd.exit.i99 ], [ %i.dp, %bb.an ] ; 2 uses
  %i.du = phi double [ %i.dy, %_ZN8QCPRange6expandEd.exit.i99 ], [ %.fca.0.load.pre.i106, %bb.an ] ; 3 uses
  %i.dv = load double, ptr %.sroa.0.04.i98, align 8 ; 6 uses
  %i.dw = fcmp ogt double %i.du, %i.dv
  br i1 %i.dw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph.i96
  %i.dx = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.du) #56
  br i1 %i.dx, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i96
  store double %i.dv, ptr %4, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.dy = phi double [ %i.dv, %bb.ap ], [ %i.du, %bb.ao ] ; 2 uses
  %i.dz = fcmp olt double %i.dt, %i.dv
  br i1 %i.dz, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ea = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.dt) #56
  br i1 %i.ea, label %bb.as, label %_ZN8QCPRange6expandEd.exit.i99

bb.as:                                            ; preds = %bb.ar, %bb.aq
  store double %i.dv, ptr %.fca.1.gep.phi.trans.insert.i94, align 8
  br label %_ZN8QCPRange6expandEd.exit.i99

_ZN8QCPRange6expandEd.exit.i99:                   ; preds = %bb.as, %bb.ar
  %i.eb = phi double [ %i.dt, %bb.ar ], [ %i.dv, %bb.as ] ; 2 uses
  %i.ec = getelementptr i8, ptr %.sroa.0.04.i98, i64 8 ; 2 uses
  %.not.i100 = icmp eq ptr %i.ec, %i.ds
  br i1 %.not.i100, label %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit107, label %.lr.ph.i96, !llvm.loop !82

_ZNK21QCPStatisticalBoxData10valueRangeEv.exit107: ; preds = %_ZN8QCPRange6expandEd.exit.i99, %bb.an
  %.fca.1.load.i101 = phi double [ %.fca.1.load.pre.i95, %bb.an ], [ %i.eb, %_ZN8QCPRange6expandEd.exit.i99 ] ; 6 uses
  %.fca.0.load.i102 = phi double [ %.fca.0.load.pre.i106, %bb.an ], [ %i.dy, %_ZN8QCPRange6expandEd.exit.i99 ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store double %.fca.0.load.i102, ptr %9, align 8
  store double %.fca.1.load.i101, ptr %.sroa.4.0..sroa_idx, align 8
  %i.ed = load double, ptr %7, align 8
  %i.ee = fcmp uge double %.fca.0.load.i102, %i.ed
  %i.ef = trunc nuw i8 %.6158 to i1
  %or.cond17 = select i1 %i.ee, i1 %i.ef, i1 false
  %i.eg = fcmp ule double %.fca.0.load.i102, 0.000000e+00
  %or.cond20.not = or i1 %i.eg, %or.cond17
  br i1 %or.cond20.not, label %bb.av, label %bb.at

bb.at:                                            ; preds = %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit107
  %i.eh = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %.fca.0.load.i102) #56
  %i.ei = fcmp ueq double %.fca.0.load.i102, +inf
  %or.cond134.not = or i1 %i.ei, %i.eh
  br i1 %or.cond134.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  store double %.fca.0.load.i102, ptr %7, align 8
  br label %bb.av

bb.av:                                            ; preds = %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit107, %bb.au, %bb.at
  %.7 = phi i8 [ %.6158, %bb.at ], [ 1, %bb.au ], [ %.6158, %_ZNK21QCPStatisticalBoxData10valueRangeEv.exit107 ] ; 3 uses
  %i.ej = load double, ptr %i.ac, align 8
  %i.ek = fcmp ule double %.fca.1.load.i101, %i.ej
  %i.el = trunc nuw i8 %.468157 to i1
  %or.cond22 = select i1 %i.ek, i1 %i.el, i1 false
  %i.em = fcmp ule double %.fca.1.load.i101, 0.000000e+00
  %or.cond25.not = or i1 %i.em, %or.cond22
  br i1 %or.cond25.not, label %bb.ay, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.en = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %.fca.1.load.i101) #56
  %i.eo = fcmp ueq double %.fca.1.load.i101, +inf
  %or.cond137.not = select i1 %i.en, i1 true, i1 %i.eo
  br i1 %or.cond137.not, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store double %.fca.1.load.i101, ptr %i.ac, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.av, %bb.al, %bb.am
  %.569 = phi i8 [ %.468157, %bb.al ], [ %.468157, %bb.am ], [ %.468157, %bb.aw ], [ 1, %bb.ax ], [ %.468157, %bb.av ] ; 2 uses
  %.8 = phi i8 [ %.6158, %bb.al ], [ %.6158, %bb.am ], [ %.7, %bb.aw ], [ %.7, %bb.ax ], [ %.7, %bb.av ] ; 2 uses
  %i.ep = getelementptr i8, ptr %.sroa.0.0156, i64 72 ; 2 uses
  %.not138 = icmp eq ptr %i.ep, %.sroa.035.0
  br i1 %.not138, label %.loopexit, label %bb.ak, !llvm.loop !1255

.loopexit:                                        ; preds = %bb.ay, %bb.aj, %bb.u, %.preheader148, %.preheader146, %.preheader, %bb.f
  %.670 = phi i8 [ 0, %bb.f ], [ %.165, %bb.u ], [ %.367, %bb.aj ], [ 0, %.preheader ], [ 0, %.preheader146 ], [ 0, %.preheader148 ], [ %.569, %bb.ay ]
  %.9 = phi i8 [ 0, %bb.f ], [ %.2, %bb.u ], [ %.5, %bb.aj ], [ 0, %.preheader ], [ 0, %.preheader146 ], [ 0, %.preheader148 ], [ %.8, %bb.ay ]
  %10 = trunc nuw i8 %.9 to i1
  %11 = select i1 %10, i8 %.670, i8 0
  store i8 %11, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  br label %bb.az

bb.az:                                            ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %7, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN17QCPStatisticalBox4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(328) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QPixmap, align 8             ; 6 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QString, align 8             ; 9 uses
  %5 = alloca %class.QDebug, align 8              ; 10 uses
  %6 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %7 = alloca %"class.QList<QCPStatisticalBoxData>::const_iterator", align 8 ; 6 uses
  %8 = alloca %"class.QList<QCPStatisticalBoxData>::const_iterator", align 8 ; 6 uses
  %9 = alloca %class.QList.49, align 8            ; 11 uses
  %10 = alloca %class.QList.49, align 8           ; 11 uses
  %11 = alloca %class.QList.49, align 8           ; 12 uses
  %12 = alloca %"class.QList<QCPStatisticalBoxData>::const_iterator", align 8 ; 6 uses
  %13 = alloca %"class.QList<QCPStatisticalBoxData>::const_iterator", align 8 ; 7 uses
  %14 = alloca %class.QCPScatterStyle, align 8    ; 13 uses
  %15 = alloca %class.QCPScatterStyle, align 8    ; 11 uses
  %16 = alloca %class.QCPDataSelection, align 16  ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp eq i32 %i.f, %i.g
  br i1 %i.h, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 112
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.j, i64 4
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp ne ptr %i.p, null
  br label %_ZNK8QPointerI7QCPAxisE4dataEv.exit

_ZNK8QPointerI7QCPAxisE4dataEv.exit:              ; preds = %bb.b, %bb.c, %bb.d
  %i.r = phi i1 [ %i.q, %bb.d ], [ false, %bb.c ], [ false, %bb.b ]
  %i.s = getelementptr i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit38.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit
  %i.v = getelementptr i8, ptr %i.t, i64 4
  %i.w = load atomic i32, ptr %i.v monotonic, align 4
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit38.thread, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit38

_ZNK8QPointerI7QCPAxisE4dataEv.exit38:            ; preds = %bb.e
  %i.y = getelementptr i8, ptr %0, i64 136
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = icmp ne ptr %i.z, null
  %or.cond = and i1 %i.r, %i.aa
  br i1 %or.cond, label %bb.q, label %_ZNK8QPointerI7QCPAxisE4dataEv.exit38.thread

_ZNK8QPointerI7QCPAxisE4dataEv.exit38.thread:     ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit, %bb.e, %_ZNK8QPointerI7QCPAxisE4dataEv.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  store i32 2, ptr %6, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.ab, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.ac, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %5, ptr noundef nonnull align 8 dereferenceable_or_null(32) %6)
  %i.ad = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %4, i64 50, ptr nonnull @__PRETTY_FUNCTION__._ZN17QCPStatisticalBox4drawEP10QCPPainter)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %_ZNK8QPointerI7QCPAxisE4dataEv.exit38.thread
  %i.ae = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %.noexc
  %i.af = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.f
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i.i, label %bb.g, label %_ZN7QStringD2Ev.exit.i

bb.g:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.ah = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  %i.ai = load ptr, ptr %5, align 8               ; 3 uses
  %i.aj = getelementptr i8, ptr %i.ai, i64 48
  %i.ak = load i8, ptr %i.aj, align 8, !range !175, !noundef !176
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.h, label %_ZN6QDebuglsEPKc.exit

bb.h:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.am = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ai, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.h
  %.pre = load ptr, ptr %5, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.i:                                             ; preds = %.noexc
  %i.an = landingpad { ptr, i32 }
          cleanup
  %i.ao = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.i
  %i.ap = atomicrmw sub ptr %i.ao, i32 1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i4.i, label %bb.j, label %_ZN7QStringD2Ev.exit5.i

bb.j:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.aq = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.j, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.ar = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.ai, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 25, ptr nonnull @.str.85)
          to label %.noexc48 unwind label %bb.p

.noexc48:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.as = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %.noexc48
  %i.at = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i44 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i.i44, label %_ZN7QStringD2Ev.exit.i47, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45:  ; preds = %bb.k
  %i.au = atomicrmw sub ptr %i.at, i32 1 acq_rel, align 4
  %.not.i.i.i46 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i.i46, label %bb.l, label %_ZN7QStringD2Ev.exit.i47

bb.l:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45
  %i.av = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.av, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit.i47

_ZN7QStringD2Ev.exit.i47:                         ; preds = %bb.l, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i45, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.aw = load ptr, ptr %5, align 8               ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 48
  %i.ay = load i8, ptr %i.ax, align 8, !range !175, !noundef !176
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.m, label %_ZN6QDebuglsEPKc.exit52

bb.m:                                             ; preds = %_ZN7QStringD2Ev.exit.i47
  %i.ba = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.aw, i8 noundef signext 32)
          to label %_ZN6QDebuglsEPKc.exit52 unwind label %bb.p ; 0 uses

bb.n:                                             ; preds = %.noexc48
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %i.bc = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i40 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i2.i40, label %_ZN7QStringD2Ev.exit5.i43, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i41

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i41: ; preds = %bb.n
  %i.bd = atomicrmw sub ptr %i.bc, i32 1 acq_rel, align 4
  %.not.i.i4.i42 = icmp eq i32 %i.bd, 1
  br i1 %.not.i.i4.i42, label %bb.o, label %_ZN7QStringD2Ev.exit5.i43

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i41
  %i.be = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.be, i64 noundef 2, i64 noundef 8) #51
end_hunk_5
begin_hunk_6_@_ZNK12QCPFinancial11getKeyRangeERbN3QCP10SignDomainE:bb.a
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI16QCPFinancialDataE8keyRangeERbN3QCP10SignDomainE(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPRange, align 8            ; 12 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3)
  %i.g = getelementptr i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = load i32, ptr %i.c, align 8
  %i.j = sext i32 %i.i to i64
  %.idx = mul nsw i64 %i.j, 40                    ; 5 uses
  %i.k = getelementptr i8, ptr %i.h, i64 %.idx    ; 4 uses
  %i.l = load i64, ptr %i.a, align 8
  %.idx111 = mul i64 %i.l, 40                     ; 5 uses
  %i.m = getelementptr i8, ptr %i.h, i64 %.idx111 ; 4 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader88
    i32 2, label %.preheader90
  ]

.preheader90:                                     ; preds = %bb.c
  %.not93 = icmp eq i64 %.idx, %.idx111
  br i1 %.not93, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader90
  %.promoted = load double, ptr %3, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted98 = load double, ptr %i.n, align 8
  br label %bb.n

.preheader88:                                     ; preds = %bb.c
  %.not84100 = icmp eq i64 %.idx, %.idx111
  br i1 %.not84100, label %.loopexit, label %.lr.ph104

.lr.ph104:                                        ; preds = %.preheader88
  %.promoted99 = load double, ptr %3, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.promoted107 = load double, ptr %i.o, align 8
  br label %bb.h

.preheader:                                       ; preds = %bb.c
  %.not85108 = icmp eq i64 %.idx, %.idx111
  br i1 %.not85108, label %.loopexit87, label %.lr.ph110

.lr.ph110:                                        ; preds = %.preheader, %bb.e
  %.sroa.0.0109 = phi ptr [ %i.t, %bb.e ], [ %i.k, %.preheader ] ; 3 uses
  %i.p = getelementptr i8, ptr %.sroa.0.0109, i64 8
  %i.q = load double, ptr %i.p, align 8
  %i.r = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.q) #56
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph110
  %i.s = load double, ptr %.sroa.0.0109, align 8
  store double %i.s, ptr %3, align 8
  br label %.loopexit87

bb.e:                                             ; preds = %.lr.ph110
  %i.t = getelementptr i8, ptr %.sroa.0.0109, i64 40 ; 2 uses
  %.not85 = icmp eq ptr %i.t, %i.m
  br i1 %.not85, label %.loopexit87, label %.lr.ph110, !llvm.loop !1301

.loopexit87:                                      ; preds = %bb.e, %.preheader, %bb.d
  %.0 = phi i8 [ 1, %bb.d ], [ 0, %.preheader ], [ 0, %bb.e ] ; 3 uses
  %.not86127 = icmp eq i64 %.idx111, %.idx
  br i1 %.not86127, label %.loopexit, label %.lr.ph129

bb.f:                                             ; preds = %.lr.ph129
  %.not86 = icmp eq ptr %i.u, %i.k
  br i1 %.not86, label %.loopexit, label %.lr.ph129, !llvm.loop !1302

.lr.ph129:                                        ; preds = %.loopexit87, %bb.f
  %.sroa.0.1128 = phi ptr [ %i.u, %bb.f ], [ %i.m, %.loopexit87 ] ; 2 uses
  %i.u = getelementptr i8, ptr %.sroa.0.1128, i64 -40 ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.0.1128, i64 -32
  %i.w = load double, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.w) #56
  br i1 %i.x, label %bb.f, label %bb.g, !llvm.loop !1302

bb.g:                                             ; preds = %.lr.ph129
  %i.y = load double, ptr %i.u, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.y, ptr %i.z, align 8
  br label %.loopexit

bb.h:                                             ; preds = %.lr.ph104, %bb.m
  %i.aa = phi double [ %.promoted107, %.lr.ph104 ], [ %i.am, %bb.m ] ; 3 uses
  %.4103 = phi i8 [ 0, %.lr.ph104 ], [ %.6, %bb.m ] ; 3 uses
  %.255102 = phi i8 [ 0, %.lr.ph104 ], [ %.356, %bb.m ] ; 3 uses
  %.sroa.0.3101 = phi ptr [ %i.k, %.lr.ph104 ], [ %i.ao, %bb.m ] ; 3 uses
  %i.ab = phi double [ %.promoted99, %.lr.ph104 ], [ %i.an, %bb.m ] ; 3 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.3101, i64 8
  %i.ad = load double, ptr %i.ac, align 8
  %i.ae = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ad) #56
  br i1 %i.ae, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = load double, ptr %.sroa.0.3101, align 8 ; 7 uses
  %i.ag = fcmp uge double %i.af, %i.ab
  %i.ah = trunc nuw i8 %.4103 to i1
  %or.cond5 = select i1 %i.ag, i1 %i.ah, i1 false
  %or.cond5.not = xor i1 %or.cond5, true
  %i.ai = fcmp olt double %i.af, 0.000000e+00     ; 2 uses
  %or.cond7 = and i1 %i.ai, %or.cond5.not
  br i1 %or.cond7, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store double %i.af, ptr %3, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.aj = phi double [ %i.af, %bb.j ], [ %i.ab, %bb.i ] ; 2 uses
  %.5 = phi i8 [ 1, %bb.j ], [ %.4103, %bb.i ]    ; 2 uses
  %i.ak = fcmp ule double %i.af, %i.aa
  %i.al = trunc nuw i8 %.255102 to i1
  %or.cond9 = select i1 %i.ak, i1 %i.al, i1 false
  %or.cond9.not = xor i1 %or.cond9, true
  %or.cond11 = and i1 %i.ai, %or.cond9.not
  br i1 %or.cond11, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store double %i.af, ptr %i.o, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.h
  %i.am = phi double [ %i.aa, %bb.h ], [ %i.af, %bb.l ], [ %i.aa, %bb.k ]
  %i.an = phi double [ %i.ab, %bb.h ], [ %i.aj, %bb.l ], [ %i.aj, %bb.k ]
  %.356 = phi i8 [ %.255102, %bb.h ], [ 1, %bb.l ], [ %.255102, %bb.k ] ; 2 uses
  %.6 = phi i8 [ %.4103, %bb.h ], [ %.5, %bb.l ], [ %.5, %bb.k ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.0.3101, i64 40 ; 2 uses
  %.not84 = icmp eq ptr %i.ao, %i.m
  br i1 %.not84, label %.loopexit, label %bb.h, !llvm.loop !1303

bb.n:                                             ; preds = %.lr.ph, %bb.s
  %i.ap = phi double [ %.promoted98, %.lr.ph ], [ %i.bb, %bb.s ] ; 3 uses
  %.796 = phi i8 [ 0, %.lr.ph ], [ %.9, %bb.s ]   ; 3 uses
  %.45795 = phi i8 [ 0, %.lr.ph ], [ %.558, %bb.s ] ; 3 uses
  %.sroa.0.494 = phi ptr [ %i.k, %.lr.ph ], [ %i.bd, %bb.s ] ; 3 uses
  %i.aq = phi double [ %.promoted, %.lr.ph ], [ %i.bc, %bb.s ] ; 3 uses
  %i.ar = getelementptr i8, ptr %.sroa.0.494, i64 8
  %i.as = load double, ptr %i.ar, align 8
  %i.at = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.as) #56
  br i1 %i.at, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load double, ptr %.sroa.0.494, align 8  ; 7 uses
  %i.av = fcmp uge double %i.au, %i.aq
  %i.aw = trunc nuw i8 %.796 to i1
  %or.cond13 = select i1 %i.av, i1 %i.aw, i1 false
  %or.cond13.not = xor i1 %or.cond13, true
  %i.ax = fcmp ogt double %i.au, 0.000000e+00     ; 2 uses
  %or.cond15 = and i1 %i.ax, %or.cond13.not
  br i1 %or.cond15, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store double %i.au, ptr %3, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ay = phi double [ %i.au, %bb.p ], [ %i.aq, %bb.o ] ; 2 uses
  %.8 = phi i8 [ 1, %bb.p ], [ %.796, %bb.o ]     ; 2 uses
  %i.az = fcmp ule double %i.au, %i.ap
  %i.ba = trunc nuw i8 %.45795 to i1
  %or.cond17 = select i1 %i.az, i1 %i.ba, i1 false
  %or.cond17.not = xor i1 %or.cond17, true
  %or.cond19 = and i1 %i.ax, %or.cond17.not
  br i1 %or.cond19, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store double %i.au, ptr %i.n, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.n
  %i.bb = phi double [ %i.ap, %bb.n ], [ %i.au, %bb.r ], [ %i.ap, %bb.q ]
  %i.bc = phi double [ %i.aq, %bb.n ], [ %i.ay, %bb.r ], [ %i.ay, %bb.q ]
  %.558 = phi i8 [ %.45795, %bb.n ], [ 1, %bb.r ], [ %.45795, %bb.q ] ; 2 uses
  %.9 = phi i8 [ %.796, %bb.n ], [ %.8, %bb.r ], [ %.8, %bb.q ] ; 2 uses
  %i.bd = getelementptr i8, ptr %.sroa.0.494, i64 40 ; 2 uses
  %.not = icmp eq ptr %i.bd, %i.m
  br i1 %.not, label %.loopexit, label %bb.n, !llvm.loop !1304

.loopexit:                                        ; preds = %bb.s, %bb.m, %bb.f, %.loopexit87, %.preheader90, %.preheader88, %bb.c, %bb.g
  %.659 = phi i8 [ 1, %bb.g ], [ 0, %.loopexit87 ], [ 0, %bb.c ], [ %.356, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ 0, %bb.f ], [ %.558, %bb.s ]
  %.10 = phi i8 [ %.0, %bb.g ], [ %.0, %.loopexit87 ], [ 0, %bb.c ], [ %.6, %bb.m ], [ 0, %.preheader88 ], [ 0, %.preheader90 ], [ %.0, %bb.f ], [ %.9, %bb.s ]
  %4 = trunc nuw i8 %.10 to i1
  %5 = select i1 %4, i8 %.659, i8 0
  store i8 %5, ptr %1, align 1
  br label %bb.t

bb.t:                                             ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %3, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK12QCPFinancial13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(264) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call { double, double } @_ZN16QCPDataContainerI16QCPFinancialDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3)
  ret { double, double } %i.c
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI16QCPFinancialDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPRange, align 16           ; 4 uses
  %5 = alloca %class.QCPRange, align 16           ; 4 uses
  %6 = alloca %class.QCPRange, align 16           ; 4 uses
  %7 = alloca %class.QCPFinancialData, align 8    ; 4 uses
  %8 = alloca %class.QCPFinancialData, align 8    ; 4 uses
  %9 = alloca %class.QCPRange, align 8            ; 13 uses
  %10 = alloca %class.QCPRange, align 8           ; 5 uses
  %11 = alloca %class.QCPRange, align 16          ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = trunc i64 %i.b to i32
  %i.f = icmp eq i32 %i.d, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %10)
  %i.g = load double, ptr %3, align 8
  %i.h = load double, ptr %10, align 8
  %i.i = fcmp oeq double %i.g, %i.h
  br i1 %i.i, label %bb.d, label %_ZNK8QCPRangeneERKS_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = load double, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = load double, ptr %i.l, align 8
  %i.n = fcmp une double %i.k, %i.m
  br label %_ZNK8QCPRangeneERKS_.exit

_ZNK8QCPRangeneERKS_.exit:                        ; preds = %bb.c, %bb.d
  %i.o = phi i1 [ true, %bb.c ], [ %i.n, %bb.d ]  ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %11)
  %i.p = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = load i32, ptr %i.c, align 8              ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 3 uses
  %i.t = getelementptr [40 x i8], ptr %i.q, i64 %i.s
  %i.u = load i64, ptr %i.a, align 8              ; 4 uses
  %i.v = getelementptr [40 x i8], ptr %i.q, i64 %i.u ; 2 uses
  br i1 %i.o, label %bb.e, label %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit

bb.e:                                             ; preds = %_ZNK8QCPRangeneERKS_.exit
  %i.w = trunc i64 %i.u to i32
  %i.x = icmp eq i32 %i.r, %i.w
  br i1 %i.x, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = load double, ptr %3, align 8
  %.idx6.i = mul nsw i64 %i.s, 40
  %i.z = getelementptr i8, ptr %i.q, i64 %.idx6.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @_ZN16QCPFinancialDataC1Eddddd(ptr noundef nonnull align 8 dereferenceable_or_null(40) %8, double noundef %i.y, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %.idx7.i = sub i64 %i.u, %i.s
  %gepdiff.i = mul i64 %.idx7.i, 40               ; 2 uses
  %i.aa = icmp sgt i64 %gepdiff.i, 0
  br i1 %i.aa, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.f
  %i.ab = udiv exact i64 %gepdiff.i, 40
  %i.ac = load double, ptr %8, align 8
  br label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.ab, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.z, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.ad = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.ae = getelementptr [40 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.ad ; 2 uses
  %i.af = load double, ptr %i.ae, align 8
  %i.ag = fcmp olt double %i.af, %i.ac            ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ae, i64 40
  %i.ai = xor i64 %i.ad, -1
  %i.aj = add nsw i64 %.016.i.i.i, %i.ai
  %.sroa.012.1.i.i.i = select i1 %i.ag, ptr %i.ah, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.ag, i64 %i.aj, i64 %i.ad ; 2 uses
  %i.ak = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.ak, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit, !llvm.loop !90

_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.f
  %.sroa.012.0.lcssa.i.i.i = phi ptr [ %i.z, %bb.f ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  %.pre = load i64, ptr %i.a, align 8             ; 3 uses
  %.pre162 = load i32, ptr %i.c, align 8          ; 2 uses
  %.pre163 = load ptr, ptr %i.p, align 8          ; 2 uses
  %.pre164 = trunc i64 %.pre to i32
  %i.al = icmp eq i32 %.pre162, %.pre164
  br i1 %i.al, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread, label %bb.g

_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread: ; preds = %bb.e, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit
  %.sroa.0.0.i175 = phi ptr [ %.sroa.012.0.lcssa.i.i.i, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit ], [ %i.v, %bb.e ]
  %i.am = phi i64 [ %.pre, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit ], [ %i.u, %bb.e ]
  %i.an = phi ptr [ %.pre163, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit ], [ %i.q, %bb.e ]
  %i.ao = getelementptr [40 x i8], ptr %i.an, i64 %i.am
  br label %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit

bb.g:                                             ; preds = %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aq = load double, ptr %i.ap, align 8
  %i.ar = sext i32 %.pre162 to i64                ; 2 uses
  %.idx6.i76 = mul nsw i64 %i.ar, 40
  %i.as = getelementptr i8, ptr %.pre163, i64 %.idx6.i76 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN16QCPFinancialDataC1Eddddd(ptr noundef nonnull align 8 dereferenceable_or_null(40) %7, double noundef %i.aq, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %.idx7.i77 = sub i64 %.pre, %i.ar
  %gepdiff.i78 = mul i64 %.idx7.i77, 40           ; 2 uses
  %i.at = icmp sgt i64 %gepdiff.i78, 0
  br i1 %i.at, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i81, label %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i81: ; preds = %bb.g
  %i.au = udiv exact i64 %gepdiff.i78, 40
  %i.av = load double, ptr %7, align 8
  br label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i81
  %.016.i.i.i83 = phi i64 [ %.1.i.i.i88, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82 ], [ %i.au, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i81 ] ; 2 uses
  %.sroa.012.015.i.i.i84 = phi ptr [ %.sroa.012.1.i.i.i87, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82 ], [ %i.as, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i81 ] ; 2 uses
  %i.aw = lshr i64 %.016.i.i.i83, 1               ; 3 uses
  %i.ax = getelementptr [40 x i8], ptr %.sroa.012.015.i.i.i84, i64 %i.aw ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = fcmp olt double %i.av, %i.ay            ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ax, i64 40
  %i.bb = xor i64 %i.aw, -1
  %i.bc = add nsw i64 %.016.i.i.i83, %i.bb
  %.sroa.012.1.i.i.i87 = select i1 %i.az, ptr %.sroa.012.015.i.i.i84, ptr %i.ba ; 2 uses
  %.1.i.i.i88 = select i1 %i.az, i64 %i.aw, i64 %i.bc ; 2 uses
  %i.bd = icmp sgt i64 %.1.i.i.i88, 0
  br i1 %i.bd, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82, label %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i, !llvm.loop !91

_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82, %bb.g
  %.sroa.012.0.lcssa.i.i.i79 = phi ptr [ %i.as, %bb.g ], [ %.sroa.012.1.i.i.i87, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  br label %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit

_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit: ; preds = %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread, %_ZNK8QCPRangeneERKS_.exit
  %.sroa.035.0 = phi ptr [ %i.v, %_ZNK8QCPRangeneERKS_.exit ], [ %i.ao, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread ], [ %.sroa.012.0.lcssa.i.i.i79, %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i ] ; 6 uses
  %.sroa.036.0 = phi ptr [ %i.t, %_ZNK8QCPRangeneERKS_.exit ], [ %.sroa.0.0.i175, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread ], [ %.sroa.012.0.lcssa.i.i.i, %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i ] ; 6 uses
  switch i32 %2, label %.loopexit [
    i32 1, label %.preheader
    i32 0, label %.preheader137
    i32 2, label %.preheader139
  ]

.preheader139:                                    ; preds = %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit
  %.not129141 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not129141, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader139
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.ab

.preheader137:                                    ; preds = %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit
  %.not132146 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not132146, label %.loopexit, label %.lr.ph150

.lr.ph150:                                        ; preds = %.preheader137
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  br label %bb.r

.preheader:                                       ; preds = %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit
  %.not135153 = icmp eq ptr %.sroa.036.0, %.sroa.035.0
  br i1 %.not135153, label %.loopexit, label %.lr.ph157

.lr.ph157:                                        ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN16QCPDataContainerI16QCPFinancialDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange:bb.a
  %i.bu = extractelement <2 x double> %i.bt, i64 1 ; 4 uses
  %i.bv = extractelement <2 x double> %i.bt, i64 0 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store <2 x double> %i.bt, ptr %11, align 16
  %i.bw = load double, ptr %9, align 8
  %i.bx = fcmp uge double %i.bv, %i.bw
  %i.by = trunc nuw i8 %.0156 to i1
  %or.cond3 = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bz = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bv) #56
  %i.ca = call double @llvm.fabs.f64(double %i.bv)
  %i.cb = fcmp ueq double %i.ca, +inf
  %or.cond.not = or i1 %i.cb, %i.bz
  br i1 %or.cond.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store double %i.bv, ptr %9, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.l
  %.1 = phi i8 [ 1, %bb.k ], [ %.0156, %bb.l ], [ 1, %bb.m ] ; 3 uses
  %i.cc = load double, ptr %i.bj, align 8
  %i.cd = fcmp ule double %i.bu, %i.cc
  %i.ce = trunc nuw i8 %.064155 to i1
  %or.cond5 = select i1 %i.cd, i1 %i.ce, i1 false
  br i1 %or.cond5, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cf = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bu) #56
  %i.cg = call double @llvm.fabs.f64(double %i.bu)
  %i.ch = fcmp ueq double %i.cg, +inf
  %or.cond116.not = select i1 %i.cf, i1 true, i1 %i.ch
  br i1 %or.cond116.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store double %i.bu, ptr %i.bj, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.n, %bb.i, %bb.j
  %.165 = phi i8 [ %.064155, %bb.i ], [ %.064155, %bb.j ], [ 1, %bb.n ], [ %.064155, %bb.o ], [ 1, %bb.p ] ; 2 uses
  %.2 = phi i8 [ %.0156, %bb.i ], [ %.0156, %bb.j ], [ %.1, %bb.n ], [ %.1, %bb.o ], [ %.1, %bb.p ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.sroa.0108.0154, i64 40 ; 2 uses
  %.not135 = icmp eq ptr %i.ci, %.sroa.035.0
  br i1 %.not135, label %.loopexit, label %bb.h, !llvm.loop !1305

bb.r:                                             ; preds = %.lr.ph150, %bb.aa
  %.3149 = phi i8 [ 0, %.lr.ph150 ], [ %.5, %bb.aa ] ; 5 uses
  %.266148 = phi i8 [ 0, %.lr.ph150 ], [ %.367, %bb.aa ] ; 5 uses
  %.sroa.0103.0147 = phi ptr [ %.sroa.036.0, %.lr.ph150 ], [ %i.dj, %bb.aa ] ; 4 uses
  br i1 %i.o, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.cj = load double, ptr %.sroa.0103.0147, align 8 ; 2 uses
  %i.ck = load double, ptr %3, align 8
  %i.cl = fcmp olt double %i.cj, %i.ck
  br i1 %i.cl, label %bb.aa, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = load double, ptr %i.bg, align 8
  %i.cn = fcmp ogt double %i.cj, %i.cm
  br i1 %i.cn, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.co = getelementptr i8, ptr %.sroa.0103.0147, i64 24
  %i.cp = load double, ptr %i.co, align 8
  %i.cq = getelementptr i8, ptr %.sroa.0103.0147, i64 16
  %i.cr = load double, ptr %i.cq, align 8
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.cp, double noundef %i.cr)
  %i.cs = load <2 x double>, ptr %5, align 16     ; 3 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 1 ; 5 uses
  %i.cu = extractelement <2 x double> %i.cs, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  store <2 x double> %i.cs, ptr %11, align 16
  %i.cv = load double, ptr %9, align 8
  %i.cw = fcmp uge double %i.cu, %i.cv
  %i.cx = trunc nuw i8 %.3149 to i1
  %or.cond7 = select i1 %i.cw, i1 %i.cx, i1 false
  %i.cy = fcmp uge double %i.cu, 0.000000e+00
  %or.cond10.not = or i1 %i.cy, %or.cond7
  br i1 %or.cond10.not, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cz = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.cu) #56
  %i.da = call double @llvm.fabs.f64(double %i.cu)
  %i.db = fcmp ueq double %i.da, +inf
  %or.cond119.not = or i1 %i.db, %i.cz
  br i1 %or.cond119.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store double %i.cu, ptr %9, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.u, %bb.w, %bb.v
  %.4 = phi i8 [ %.3149, %bb.v ], [ 1, %bb.w ], [ %.3149, %bb.u ] ; 3 uses
  %i.dc = load double, ptr %i.bh, align 8
  %i.dd = fcmp ule double %i.ct, %i.dc
  %i.de = trunc nuw i8 %.266148 to i1
  %or.cond12 = select i1 %i.dd, i1 %i.de, i1 false
  %i.df = fcmp uge double %i.ct, 0.000000e+00
  %or.cond15.not = or i1 %i.df, %or.cond12
  br i1 %or.cond15.not, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dg = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ct) #56
  %i.dh = call double @llvm.fabs.f64(double %i.ct)
  %i.di = fcmp ueq double %i.dh, +inf
  %or.cond122.not = select i1 %i.dg, i1 true, i1 %i.di
  br i1 %or.cond122.not, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store double %i.ct, ptr %i.bh, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %bb.x, %bb.s, %bb.t
  %.367 = phi i8 [ %.266148, %bb.s ], [ %.266148, %bb.t ], [ %.266148, %bb.y ], [ 1, %bb.z ], [ %.266148, %bb.x ] ; 2 uses
  %.5 = phi i8 [ %.3149, %bb.s ], [ %.3149, %bb.t ], [ %.4, %bb.y ], [ %.4, %bb.z ], [ %.4, %bb.x ] ; 2 uses
  %i.dj = getelementptr i8, ptr %.sroa.0103.0147, i64 40 ; 2 uses
  %.not132 = icmp eq ptr %i.dj, %.sroa.035.0
  br i1 %.not132, label %.loopexit, label %bb.r, !llvm.loop !1306

bb.ab:                                            ; preds = %.lr.ph, %bb.ak
  %.6144 = phi i8 [ 0, %.lr.ph ], [ %.8, %bb.ak ] ; 5 uses
  %.468143 = phi i8 [ 0, %.lr.ph ], [ %.569, %bb.ak ] ; 5 uses
  %.sroa.0.0142 = phi ptr [ %.sroa.036.0, %.lr.ph ], [ %i.ei, %bb.ak ] ; 4 uses
  br i1 %i.o, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dk = load double, ptr %.sroa.0.0142, align 8 ; 2 uses
  %i.dl = load double, ptr %3, align 8
  %i.dm = fcmp olt double %i.dk, %i.dl
  br i1 %i.dm, label %bb.ak, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = load double, ptr %i.be, align 8
  %i.do = fcmp ogt double %i.dk, %i.dn
  br i1 %i.do, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.dp = getelementptr i8, ptr %.sroa.0.0142, i64 24
  %i.dq = load double, ptr %i.dp, align 8
  %i.dr = getelementptr i8, ptr %.sroa.0.0142, i64 16
  %i.ds = load double, ptr %i.dr, align 8
  call void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.dq, double noundef %i.ds)
  %i.dt = load <2 x double>, ptr %4, align 16     ; 3 uses
  %i.du = extractelement <2 x double> %i.dt, i64 1 ; 5 uses
  %i.dv = extractelement <2 x double> %i.dt, i64 0 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  store <2 x double> %i.dt, ptr %11, align 16
  %i.dw = load double, ptr %9, align 8
  %i.dx = fcmp uge double %i.dv, %i.dw
  %i.dy = trunc nuw i8 %.6144 to i1
  %or.cond17 = select i1 %i.dx, i1 %i.dy, i1 false
  %i.dz = fcmp ule double %i.dv, 0.000000e+00
  %or.cond20.not = or i1 %i.dz, %or.cond17
  br i1 %or.cond20.not, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ea = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.dv) #56
  %i.eb = fcmp ueq double %i.dv, +inf
  %or.cond125.not = or i1 %i.eb, %i.ea
  br i1 %or.cond125.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store double %i.dv, ptr %9, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ae, %bb.ag, %bb.af
  %.7 = phi i8 [ %.6144, %bb.af ], [ 1, %bb.ag ], [ %.6144, %bb.ae ] ; 3 uses
  %i.ec = load double, ptr %i.bf, align 8
  %i.ed = fcmp ule double %i.du, %i.ec
  %i.ee = trunc nuw i8 %.468143 to i1
  %or.cond22 = select i1 %i.ed, i1 %i.ee, i1 false
  %i.ef = fcmp ule double %i.du, 0.000000e+00
  %or.cond25.not = or i1 %i.ef, %or.cond22
  br i1 %or.cond25.not, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.eg = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.du) #56
  %i.eh = fcmp ueq double %i.du, +inf
  %or.cond128.not = select i1 %i.eg, i1 true, i1 %i.eh
  br i1 %or.cond128.not, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store double %i.du, ptr %i.bf, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah, %bb.ac, %bb.ad
  %.569 = phi i8 [ %.468143, %bb.ac ], [ %.468143, %bb.ad ], [ %.468143, %bb.ai ], [ 1, %bb.aj ], [ %.468143, %bb.ah ] ; 2 uses
  %.8 = phi i8 [ %.6144, %bb.ac ], [ %.6144, %bb.ad ], [ %.7, %bb.ai ], [ %.7, %bb.aj ], [ %.7, %bb.ah ] ; 2 uses
  %i.ei = getelementptr i8, ptr %.sroa.0.0142, i64 40 ; 2 uses
  %.not129 = icmp eq ptr %i.ei, %.sroa.035.0
  br i1 %.not129, label %.loopexit, label %bb.ab, !llvm.loop !1307

.loopexit:                                        ; preds = %bb.ak, %bb.aa, %bb.q, %.preheader139, %.preheader137, %.preheader, %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit
  %.670 = phi i8 [ 0, %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit ], [ %.165, %bb.q ], [ %.367, %bb.aa ], [ 0, %.preheader ], [ 0, %.preheader137 ], [ 0, %.preheader139 ], [ %.569, %bb.ak ]
  %.9 = phi i8 [ 0, %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit ], [ %.2, %bb.q ], [ %.5, %bb.aa ], [ 0, %.preheader ], [ 0, %.preheader137 ], [ 0, %.preheader139 ], [ %.8, %bb.ak ]
  %12 = trunc nuw i8 %.9 to i1
  %13 = select i1 %12, i8 %.670, i8 0
  store i8 %13, ptr %1, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #51
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %bb.b
  %.fca.0.load = load double, ptr %9, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN12QCPFinancial16timeSeriesToOhlcERK5QListIdES3_dd(ptr dead_on_unwind noalias nofree writable writeonly sret(%class.QCPDataContainer.276) align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef readonly align 8 captures(none) dereferenceable(24) %2, double noundef %3, double noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.QCPDataContainer.276, align 8 ; 9 uses
  %6 = alloca %class.QCPFinancialData, align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  store i8 1, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = load i64, ptr %i.d, align 8
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.c, i64 %i.e) ; 3 uses
  %i.f = trunc i64 %.sroa.speculated to i32       ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %0, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  br label %_ZN16QCPDataContainerI16QCPFinancialDataED2Ev.exit57

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load double, ptr %i.j, align 8           ; 4 uses
  call void @_ZN16QCPFinancialDataC1Eddddd(ptr noundef nonnull align 8 dereferenceable_or_null(40) %6, double noundef 0.000000e+00, double noundef %i.k, double noundef %i.k, double noundef %i.k, double noundef %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = icmp sgt i32 %i.f, 0
  br i1 %i.m, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.n = load ptr, ptr %i.l, align 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = fsub double %i.o, %4
  %i.q = fdiv double %i.p, %3
  %i.r = fadd double %i.q, 5.000000e-01
  %i.s = call double @llvm.floor.f64(double %i.r)
  %i.t = fptosi double %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.y = add i64 %.sroa.speculated, 4294967295
  %i.z = and i64 %i.y, 4294967295
  %wide.trip.count = and i64 %.sroa.speculated, 2147483647
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre65 = load i8, ptr %5, align 8, !range !175
  %i.aa = load <2 x ptr>, ptr %i.a, align 8
  %.phi.trans.insert68 = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ab = load <2 x i64>, ptr %.phi.trans.insert68, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ac = phi i8 [ %.pre65, %._crit_edge.loopexit ], [ 1, %bb.c ]
  %i.ad = phi <2 x i64> [ %i.ab, %._crit_edge.loopexit ], [ zeroinitializer, %bb.c ]
  %i.ae = phi <2 x ptr> [ %i.aa, %._crit_edge.loopexit ], [ splat (ptr null), %bb.c ]
  store i8 %i.ac, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x ptr> %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.ad, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  br label %_ZN16QCPDataContainerI16QCPFinancialDataED2Ev.exit57

bb.d:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %.04761 = phi i32 [ %i.t, %.lr.ph ], [ %.1, %bb.m ] ; 4 uses
  %i.ah = load ptr, ptr %i.l, align 8
  %i.ai = getelementptr [8 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load double, ptr %i.ai, align 8
  %i.ak = fsub double %i.aj, %4
  %i.al = fdiv double %i.ak, %3
  %i.am = fadd double %i.al, 5.000000e-01
  %i.an = call double @llvm.floor.f64(double %i.am)
  %i.ao = fptosi double %i.an to i32              ; 3 uses
  %i.ap = icmp eq i32 %.04761, %i.ao
  %i.aq = load ptr, ptr %i.i, align 8
  %i.ar = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv ; 4 uses
  br i1 %i.ap, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.as = load double, ptr %i.ar, align 8         ; 3 uses
  %i.at = load double, ptr %i.x, align 8
  %i.au = fcmp olt double %i.as, %i.at
  br i1 %i.au, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store double %i.as, ptr %i.x, align 8
  %.pre = load double, ptr %i.ar, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.av = phi double [ %.pre, %bb.f ], [ %i.as, %bb.e ] ; 2 uses
  %i.aw = load double, ptr %i.w, align 8
  %i.ax = fcmp ogt double %i.av, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store double %i.av, ptr %i.w, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ay = icmp eq i64 %indvars.iv, %i.z
  br i1 %i.ay, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.az = load double, ptr %i.ar, align 8
  store double %i.az, ptr %i.u, align 8
  %i.ba = sitofp i32 %.04761 to double
  %i.bb = call double @llvm.fmuladd.f64(double %i.ba, double %3, double %4)
  store double %i.bb, ptr %6, align 8
  invoke void @_ZN16QCPDataContainerI16QCPFinancialDataE3addERKS0_(ptr noundef nonnull align 8 dereferenceable_or_null(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.m unwind label %bb.n

bb.k:                                             ; preds = %bb.d
  %i.bc = getelementptr i8, ptr %i.ar, i64 -8
  %i.bd = load double, ptr %i.bc, align 8
  store double %i.bd, ptr %i.u, align 8
  %i.be = add i32 %i.ao, -1
  %i.bf = sitofp i32 %i.be to double
  %i.bg = call double @llvm.fmuladd.f64(double %i.bf, double %3, double %4)
  store double %i.bg, ptr %6, align 8
  invoke void @_ZN16QCPDataContainerI16QCPFinancialDataE3addERKS0_(ptr noundef nonnull align 8 dereferenceable_or_null(40) %5, ptr noundef nonnull align 8 dereferenceable(40) %6)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bh = load ptr, ptr %i.i, align 8
  %i.bi = getelementptr [8 x i8], ptr %i.bh, i64 %indvars.iv ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8         ; 2 uses
  store double %i.bj, ptr %i.v, align 8
  store double %i.bj, ptr %i.w, align 8
  %i.bk = load double, ptr %i.bi, align 8
  store double %i.bk, ptr %i.x, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.l
  %.1 = phi i32 [ %.04761, %bb.j ], [ %.04761, %bb.i ], [ %i.ao, %bb.l ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !1308

bb.n:                                             ; preds = %bb.j, %bb.k
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %.pre64 = load ptr, ptr %i.a, align 8           ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  %.not.i.i.i.i = icmp eq ptr %.pre64, null
  br i1 %.not.i.i.i.i, label %_ZN16QCPDataContainerI16QCPFinancialDataED2Ev.exit, label %_ZN17QArrayDataPointerI16QCPFinancialDataE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI16QCPFinancialDataE5derefEv.exit.i.i.i: ; preds = %bb.n
  %i.bm = atomicrmw sub ptr %.pre64, i32 1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.bm, 1
  br i1 %.not.i.i.i, label %bb.o, label %_ZN16QCPDataContainerI16QCPFinancialDataED2Ev.exit

bb.o:                                             ; preds = %_ZN17QArrayDataPointerI16QCPFinancialDataE5derefEv.exit.i.i.i
  %i.bn = load ptr, ptr %i.a, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.bn, i64 noundef 40, i64 noundef 8) #51
  br label %_ZN16QCPDataContainerI16QCPFinancialDataED2Ev.exit

_ZN16QCPDataContainerI16QCPFinancialDataED2Ev.exit: ; preds = %bb.n, %_ZN17QArrayDataPointerI16QCPFinancialDataE5derefEv.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  resume { ptr, i32 } %i.bl

_ZN16QCPDataContainerI16QCPFinancialDataED2Ev.exit57: ; preds = %bb.b, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN12QCPFinancial4drawEP10QCPPainter(ptr noundef align 8 dereferenceable_or_null(264) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.QList<QCPFinancialData>::const_iterator", align 8 ; 6 uses
  %3 = alloca %"class.QList<QCPFinancialData>::const_iterator", align 8 ; 6 uses
  %4 = alloca %class.QList.49, align 8            ; 11 uses
  %5 = alloca %class.QList.49, align 8            ; 11 uses
  %6 = alloca %class.QList.49, align 8            ; 12 uses
  %7 = alloca %"class.QList<QCPFinancialData>::const_iterator", align 8 ; 8 uses
  %8 = alloca %"class.QList<QCPFinancialData>::const_iterator", align 8 ; 8 uses
  %9 = alloca %class.QCPDataSelection, align 16   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  store ptr null, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
end_hunk_7
begin_hunk_8_@_ZNK12QCPErrorBars11getKeyRangeERbN3QCP10SignDomainE:bb.a

bb.d:                                             ; preds = %.lr.ph, %bb.v
  %.090 = phi i8 [ 0, %.lr.ph ], [ %.6, %bb.v ]   ; 6 uses
  %.06689 = phi i8 [ 0, %.lr.ph ], [ %.571, %bb.v ] ; 6 uses
  %.sroa.0.088 = phi ptr [ %i.n, %.lr.ph ], [ %i.ct, %bb.v ] ; 5 uses
  %i.t = load i32, ptr %i.o, align 8
  %i.u = icmp eq i32 %i.t, 1
  %i.v = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.w = icmp eq ptr %i.v, null                   ; 2 uses
  br i1 %i.u, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  br i1 %i.w, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %i.v, i64 4
  %i.y = load atomic i32, ptr %i.x monotonic, align 4
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.g, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit:   ; preds = %bb.e, %bb.f, %bb.g
  %i.ab = phi ptr [ %i.aa, %bb.g ], [ null, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 200
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef ptr %i.ae(ptr noundef align 8 dereferenceable_or_null(184) %i.ab) ; 2 uses
  %i.ag = load ptr, ptr %i.i, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %.sroa.0.088 to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = lshr exact i64 %i.al, 4
  %i.an = trunc i64 %i.am to i32
  %i.ao = load ptr, ptr %i.af, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef double %i.aq(ptr noundef align 8 dereferenceable_or_null(8) %i.af, i32 noundef %i.an) ; 7 uses
  %i.as = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ar) #56
  br i1 %i.as, label %bb.v, label %bb.h

bb.h:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit
  %i.at = fcmp olt double %i.ar, 0.000000e+00
  %or.cond = and i1 %i.q, %i.at
  %i.au = fcmp ogt double %i.ar, 0.000000e+00
  %or.cond3 = and i1 %i.r, %i.au
  %i.av = or i1 %or.cond, %or.cond3
  %or.cond93 = or i1 %i.av, %i.p
  br i1 %or.cond93, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.aw = load double, ptr %3, align 8
  %i.ax = fcmp uge double %i.ar, %i.aw
  %i.ay = trunc nuw i8 %.090 to i1
  %or.cond5 = select i1 %i.ax, i1 %i.ay, i1 false
  br i1 %or.cond5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store double %i.ar, ptr %3, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.az = load double, ptr %i.s, align 8
  %i.ba = fcmp ule double %i.ar, %i.az
  %i.bb = trunc nuw i8 %.06689 to i1
  %or.cond7 = select i1 %i.ba, i1 %i.bb, i1 false
  br i1 %or.cond7, label %bb.v, label %bb.l

bb.l:                                             ; preds = %bb.k
  store double %i.ar, ptr %i.s, align 8
  br label %bb.v

bb.m:                                             ; preds = %bb.d
  br i1 %i.w, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = getelementptr i8, ptr %i.v, i64 4
  %i.bd = load atomic i32, ptr %i.bc monotonic, align 4
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = load ptr, ptr %i.g, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77: ; preds = %bb.m, %bb.n, %bb.o
  %i.bg = phi ptr [ %i.bf, %bb.o ], [ null, %bb.n ], [ null, %bb.m ] ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 200
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = call noundef ptr %i.bj(ptr noundef align 8 dereferenceable_or_null(184) %i.bg) ; 2 uses
  %i.bl = load ptr, ptr %i.i, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = ptrtoint ptr %.sroa.0.088 to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = lshr exact i64 %i.bq, 4
  %i.bs = trunc i64 %i.br to i32
  %i.bt = load ptr, ptr %i.bk, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = call noundef double %i.bv(ptr noundef align 8 dereferenceable_or_null(8) %i.bk, i32 noundef %i.bs) ; 3 uses
  %i.bx = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bw) #56
  br i1 %i.bx, label %bb.v, label %bb.p

bb.p:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77
  %i.by = getelementptr i8, ptr %.sroa.0.088, i64 8
  %i.bz = load double, ptr %i.by, align 8         ; 2 uses
  %i.ca = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bz) #56
  %i.cb = select i1 %i.ca, double 0.000000e+00, double %i.bz
  %i.cc = fadd double %i.bw, %i.cb                ; 4 uses
  %i.cd = fcmp olt double %i.cc, 0.000000e+00
  %or.cond9 = and i1 %i.q, %i.cd
  %i.ce = fcmp ogt double %i.cc, 0.000000e+00
  %or.cond11 = and i1 %i.r, %i.ce
  %i.cf = or i1 %or.cond9, %or.cond11
  %or.cond95 = or i1 %i.cf, %i.p
  br i1 %or.cond95, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cg = load double, ptr %i.s, align 8
  %i.ch = fcmp ule double %i.cc, %i.cg
  %i.ci = trunc nuw i8 %.06689 to i1
  %or.cond13 = select i1 %i.ch, i1 %i.ci, i1 false
  br i1 %or.cond13, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  store double %i.cc, ptr %i.s, align 8
  br label %bb.s

bb.s:                                             ; preds = %bb.p, %bb.r, %bb.q
  %.369 = phi i8 [ 1, %bb.q ], [ 1, %bb.r ], [ %.06689, %bb.p ] ; 3 uses
  %i.cj = load double, ptr %.sroa.0.088, align 8  ; 2 uses
  %i.ck = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.cj) #56
  %i.cl = select i1 %i.ck, double 0.000000e+00, double %i.cj
  %i.cm = fsub double %i.bw, %i.cl                ; 4 uses
  %i.cn = fcmp olt double %i.cm, 0.000000e+00
  %or.cond15 = and i1 %i.q, %i.cn
  %i.co = fcmp ogt double %i.cm, 0.000000e+00
  %or.cond17 = and i1 %i.r, %i.co
  %i.cp = or i1 %or.cond15, %or.cond17
  %or.cond97 = or i1 %i.cp, %i.p
  br i1 %or.cond97, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cq = load double, ptr %3, align 8
  %i.cr = fcmp uge double %i.cm, %i.cq
  %i.cs = trunc nuw i8 %.090 to i1
  %or.cond19 = select i1 %i.cr, i1 %i.cs, i1 false
  br i1 %or.cond19, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store double %i.cm, ptr %3, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.s, %bb.h, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77, %bb.u, %bb.t, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit, %bb.l, %bb.k
  %.571 = phi i8 [ %.06689, %bb.h ], [ %.06689, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit ], [ 1, %bb.k ], [ 1, %bb.l ], [ %.06689, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77 ], [ %.369, %bb.u ], [ %.369, %bb.t ], [ %.369, %bb.s ] ; 3 uses
  %.6 = phi i8 [ %.090, %bb.h ], [ %.090, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit ], [ 1, %bb.k ], [ 1, %bb.l ], [ %.090, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit77 ], [ 1, %bb.u ], [ 1, %bb.t ], [ %.090, %bb.s ] ; 3 uses
  %i.ct = getelementptr i8, ptr %.sroa.0.088, i64 16 ; 2 uses
  %i.cu = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.cv = getelementptr i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = getelementptr i8, ptr %i.cu, i64 16
  %i.cy = load i64, ptr %i.cx, align 8
  %i.cz = getelementptr [16 x i8], ptr %i.cw, i64 %i.cy
  %.not86 = icmp eq ptr %i.ct, %i.cz
  br i1 %.not86, label %._crit_edge, label %bb.d, !llvm.loop !1407

._crit_edge:                                      ; preds = %bb.v
  %i.da = trunc nuw i8 %.571 to i1                ; 2 uses
  %.not = xor i1 %i.da, true
  %i.db = trunc nuw i8 %.6 to i1                  ; 2 uses
  %or.cond21 = select i1 %.not, i1 true, i1 %i.db
  br i1 %or.cond21, label %bb.x, label %bb.w

bb.w:                                             ; preds = %._crit_edge
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dd = load double, ptr %i.dc, align 8
  store double %i.dd, ptr %3, align 8
  br label %.thread

bb.x:                                             ; preds = %._crit_edge
  %.not22 = xor i1 %i.db, true
  %or.cond24 = or i1 %i.da, %.not22
  br i1 %or.cond24, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = load double, ptr %3, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 8
  store double %i.de, ptr %i.df, align 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.x, %bb.y, %bb.w
  %.672 = phi i8 [ %.571, %bb.x ], [ 1, %bb.y ], [ 1, %bb.w ], [ 0, %bb.c ]
  %.7 = phi i8 [ %.6, %bb.x ], [ 1, %bb.y ], [ 1, %bb.w ], [ 0, %bb.c ]
  %i.dg = and i8 %.7, %.672
  store i8 %i.dg, ptr %1, align 1
  br label %bb.z

bb.z:                                             ; preds = %.thread, %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread
  %.fca.0.load = load double, ptr %3, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define { double, double } @_ZNK12QCPErrorBars13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(248) %0, ptr nofree noundef writeonly align 1 captures(none) dereferenceable(1) %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) dereferenceable(16) %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPRange, align 8            ; 13 uses
  %5 = alloca %class.QCPRange, align 8            ; 5 uses
  %i.a = getelementptr i8, ptr %0, i64 208        ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 4
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit

_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit: ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 216        ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not94 = icmp eq ptr %i.h, null
  br i1 %.not94, label %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread, label %bb.c

_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread: ; preds = %bb.a, %bb.b, %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit
  store i8 0, ptr %1, align 1
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4)
  br label %bb.ai

bb.c:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @_ZN8QCPRangeC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5)
  %i.i = load double, ptr %3, align 8
  %i.j = load double, ptr %5, align 8
  %i.k = fcmp oeq double %i.i, %i.j
  br i1 %i.k, label %bb.d, label %_ZNK8QCPRangeneERKS_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load double, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.o = load double, ptr %i.n, align 8
  %i.p = fcmp une double %i.m, %i.o
  br label %_ZNK8QCPRangeneERKS_.exit

_ZNK8QCPRangeneERKS_.exit:                        ; preds = %bb.c, %bb.d
  %i.q = phi i1 [ true, %bb.c ], [ %i.p, %bb.d ]  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  %i.r = getelementptr i8, ptr %0, i64 192        ; 6 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr i8, ptr %i.s, i64 16
  %i.w = load i64, ptr %i.v, align 8
  %i.x = getelementptr [16 x i8], ptr %i.u, i64 %i.w
  %i.y = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNK8QCPRangeneERKS_.exit
  %i.aa = getelementptr i8, ptr %i.y, i64 4
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.g, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit:   ; preds = %_ZNK8QCPRangeneERKS_.exit, %bb.e, %bb.f
  %i.ae = phi ptr [ %i.ad, %bb.f ], [ null, %bb.e ], [ null, %_ZNK8QCPRangeneERKS_.exit ] ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 200
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call noundef ptr %i.ah(ptr noundef align 8 dereferenceable_or_null(184) %i.ae) ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = call noundef zeroext i1 %i.al(ptr noundef align 8 dereferenceable_or_null(8) %i.ai)
  %or.cond = and i1 %i.q, %i.am
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit
  %i.an = load ptr, ptr %i.r, align 8
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load double, ptr %3, align 8
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 296
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = call noundef i32 %i.at(ptr noundef align 8 dereferenceable_or_null(248) %0, double noundef %i.aq, i1 noundef zeroext false)
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr [16 x i8], ptr %i.ap, i64 %i.av
  %i.ax = load ptr, ptr %i.r, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bb = load double, ptr %i.ba, align 8
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 304
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i32 %i.be(ptr noundef align 8 dereferenceable_or_null(248) %0, double noundef %i.bb, i1 noundef zeroext false)
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr [16 x i8], ptr %i.az, i64 %i.bg
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit
  %.sroa.051.0 = phi ptr [ %i.bh, %bb.g ], [ %i.x, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit ] ; 2 uses
  %.sroa.052.0 = phi ptr [ %i.aw, %bb.g ], [ %i.u, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit ] ; 2 uses
  %.not110111 = icmp eq ptr %.sroa.052.0, %.sroa.051.0
  br i1 %.not110111, label %.thread134, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bj = getelementptr i8, ptr %0, i64 224
  %i.bk = icmp eq i32 %2, 1                       ; 3 uses
  %i.bl = icmp eq i32 %2, 0                       ; 3 uses
  %i.bm = icmp eq i32 %2, 2                       ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br label %bb.i

._crit_edge:                                      ; preds = %.thread
  %i.bo = trunc nuw i8 %.587 to i1                ; 2 uses
  %.not = xor i1 %i.bo, true
  %i.bp = trunc nuw i8 %.6 to i1                  ; 2 uses
  %or.cond23 = select i1 %.not, i1 true, i1 %i.bp
  br i1 %or.cond23, label %bb.ag, label %bb.af

bb.i:                                             ; preds = %.lr.ph, %.thread
  %.0114 = phi i8 [ 0, %.lr.ph ], [ %.6, %.thread ] ; 8 uses
  %.082113 = phi i8 [ 0, %.lr.ph ], [ %.587, %.thread ] ; 8 uses
  %.sroa.0.0112 = phi ptr [ %.sroa.052.0, %.lr.ph ], [ %i.fr, %.thread ] ; 6 uses
  br i1 %i.q, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = getelementptr i8, ptr %i.bq, i64 4
  %i.bt = load atomic i32, ptr %i.bs monotonic, align 4
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load ptr, ptr %i.g, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95: ; preds = %bb.j, %bb.k, %bb.l
  %i.bw = phi ptr [ %i.bv, %bb.l ], [ null, %bb.k ], [ null, %bb.j ] ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 200
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = call noundef ptr %i.bz(ptr noundef align 8 dereferenceable_or_null(184) %i.bw) ; 2 uses
  %i.cb = load ptr, ptr %i.r, align 8
  %i.cc = getelementptr i8, ptr %i.cb, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %.sroa.0.0112 to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = lshr exact i64 %i.cg, 4
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = load ptr, ptr %i.ca, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call noundef double %i.cl(ptr noundef align 8 dereferenceable_or_null(8) %i.ca, i32 noundef %i.ci) ; 2 uses
  %i.cn = load double, ptr %3, align 8
  %i.co = fcmp olt double %i.cm, %i.cn
  br i1 %i.co, label %.thread, label %bb.m

bb.m:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95
  %i.cp = load double, ptr %i.bi, align 8
  %i.cq = fcmp ogt double %i.cm, %i.cp
  br i1 %i.cq, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.i
  %i.cr = load i32, ptr %i.bj, align 8
  %i.cs = icmp eq i32 %i.cr, 1
  %i.ct = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null                 ; 2 uses
  br i1 %i.cs, label %bb.o, label %bb.x

bb.o:                                             ; preds = %bb.n
  br i1 %i.cu, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cv = getelementptr i8, ptr %i.ct, i64 4
  %i.cw = load atomic i32, ptr %i.cv monotonic, align 4
  %i.cx = icmp eq i32 %i.cw, 0
  br i1 %i.cx, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cy = load ptr, ptr %i.g, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96: ; preds = %bb.o, %bb.p, %bb.q
  %i.cz = phi ptr [ %i.cy, %bb.q ], [ null, %bb.p ], [ null, %bb.o ] ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = call noundef ptr %i.dc(ptr noundef align 8 dereferenceable_or_null(184) %i.cz) ; 2 uses
  %i.de = load ptr, ptr %i.r, align 8
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = ptrtoint ptr %.sroa.0.0112 to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 4
  %i.dl = trunc i64 %i.dk to i32
  %i.dm = load ptr, ptr %i.dd, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 40
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = call noundef double %i.do(ptr noundef align 8 dereferenceable_or_null(8) %i.dd, i32 noundef %i.dl) ; 3 uses
  %i.dq = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.dp) #56
  br i1 %i.dq, label %.thread, label %bb.r

bb.r:                                             ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96
  %i.dr = getelementptr i8, ptr %.sroa.0.0112, i64 8
  %i.ds = load double, ptr %i.dr, align 8         ; 2 uses
  %i.dt = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ds) #56
  %i.du = select i1 %i.dt, double 0.000000e+00, double %i.ds
  %i.dv = fadd double %i.dp, %i.du                ; 4 uses
  %i.dw = fcmp olt double %i.dv, 0.000000e+00
  %or.cond3 = and i1 %i.bl, %i.dw
  %i.dx = fcmp ogt double %i.dv, 0.000000e+00
  %or.cond5 = and i1 %i.bm, %i.dx
  %i.dy = or i1 %or.cond3, %or.cond5
  %or.cond117 = or i1 %i.dy, %i.bk
  br i1 %or.cond117, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.dz = load double, ptr %i.bn, align 8
  %i.ea = fcmp ule double %i.dv, %i.dz
  %i.eb = trunc nuw i8 %.082113 to i1
  %or.cond7 = select i1 %i.ea, i1 %i.eb, i1 false
  br i1 %or.cond7, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store double %i.dv, ptr %i.bn, align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s
  %.183 = phi i8 [ 1, %bb.s ], [ 1, %bb.t ], [ %.082113, %bb.r ] ; 3 uses
  %i.ec = load double, ptr %.sroa.0.0112, align 8 ; 2 uses
  %i.ed = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ec) #56
  %i.ee = select i1 %i.ed, double 0.000000e+00, double %i.ec
  %i.ef = fsub double %i.dp, %i.ee                ; 4 uses
  %i.eg = fcmp olt double %i.ef, 0.000000e+00
  %or.cond9 = and i1 %i.bl, %i.eg
  %i.eh = fcmp ogt double %i.ef, 0.000000e+00
  %or.cond11 = and i1 %i.bm, %i.eh
  %i.ei = or i1 %or.cond9, %or.cond11
  %or.cond119 = or i1 %i.ei, %i.bk
  br i1 %or.cond119, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.ej = load double, ptr %4, align 8
  %i.ek = fcmp uge double %i.ef, %i.ej
  %i.el = trunc nuw i8 %.0114 to i1
  %or.cond13 = select i1 %i.ek, i1 %i.el, i1 false
  br i1 %or.cond13, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  store double %i.ef, ptr %4, align 8
  br label %.thread

bb.x:                                             ; preds = %bb.n
  br i1 %i.cu, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.em = getelementptr i8, ptr %i.ct, i64 4
  %i.en = load atomic i32, ptr %i.em monotonic, align 4
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ep = load ptr, ptr %i.g, align 8
  br label %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97

_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97: ; preds = %bb.x, %bb.y, %bb.z
  %i.eq = phi ptr [ %i.ep, %bb.z ], [ null, %bb.y ], [ null, %bb.x ] ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 200
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = call noundef ptr %i.et(ptr noundef align 8 dereferenceable_or_null(184) %i.eq) ; 2 uses
  %i.ev = load ptr, ptr %i.r, align 8
  %i.ew = getelementptr i8, ptr %i.ev, i64 8
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = ptrtoint ptr %.sroa.0.0112 to i64
  %i.ez = ptrtoint ptr %i.ex to i64
  %i.fa = sub i64 %i.ey, %i.ez
  %i.fb = lshr exact i64 %i.fa, 4
  %i.fc = trunc i64 %i.fb to i32
  %i.fd = load ptr, ptr %i.eu, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = call noundef double %i.ff(ptr noundef align 8 dereferenceable_or_null(8) %i.eu, i32 noundef %i.fc) ; 7 uses
  %i.fh = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.fg) #56
  br i1 %i.fh, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97
  %i.fi = fcmp olt double %i.fg, 0.000000e+00
  %or.cond15 = and i1 %i.bl, %i.fi
  %i.fj = fcmp ogt double %i.fg, 0.000000e+00
  %or.cond17 = and i1 %i.bm, %i.fj
  %i.fk = or i1 %or.cond15, %or.cond17
  %or.cond121 = or i1 %i.fk, %i.bk
  br i1 %or.cond121, label %bb.ab, label %.thread

bb.ab:                                            ; preds = %bb.aa
  %i.fl = load double, ptr %4, align 8
  %i.fm = fcmp uge double %i.fg, %i.fl
  %i.fn = trunc nuw i8 %.0114 to i1
  %or.cond19 = select i1 %i.fm, i1 %i.fn, i1 false
  br i1 %or.cond19, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store double %i.fg, ptr %4, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  %i.fo = load double, ptr %i.bn, align 8
  %i.fp = fcmp ule double %i.fg, %i.fo
  %i.fq = trunc nuw i8 %.082113 to i1
  %or.cond21 = select i1 %i.fp, i1 %i.fq, i1 false
  br i1 %or.cond21, label %.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store double %i.fg, ptr %i.bn, align 8
  br label %.thread

.thread:                                          ; preds = %bb.aa, %bb.u, %bb.m, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97, %bb.ae, %bb.ad, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96, %bb.w, %bb.v
  %.587 = phi i8 [ %.082113, %bb.aa ], [ %.183, %bb.u ], [ %.082113, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96 ], [ %.183, %bb.w ], [ %.183, %bb.v ], [ %.082113, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.082113, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95 ], [ %.082113, %bb.m ] ; 3 uses
  %.6 = phi i8 [ %.0114, %bb.aa ], [ %.0114, %bb.u ], [ %.0114, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit96 ], [ 1, %bb.w ], [ 1, %bb.v ], [ %.0114, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit97 ], [ 1, %bb.ad ], [ 1, %bb.ae ], [ %.0114, %_ZNK8QPointerI20QCPAbstractPlottableEptEv.exit95 ], [ %.0114, %bb.m ] ; 3 uses
  %i.fr = getelementptr i8, ptr %.sroa.0.0112, i64 16 ; 2 uses
  %.not110 = icmp eq ptr %i.fr, %.sroa.051.0
  br i1 %.not110, label %._crit_edge, label %bb.i, !llvm.loop !1408

bb.af:                                            ; preds = %._crit_edge
  %i.fs = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ft = load double, ptr %i.fs, align 8
  store double %i.ft, ptr %4, align 8
  br label %.thread134

bb.ag:                                            ; preds = %._crit_edge
  %.not24 = xor i1 %i.bp, true
  %or.cond26 = or i1 %i.bo, %.not24
  br i1 %or.cond26, label %.thread134, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fu = load double, ptr %4, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %i.fu, ptr %i.fv, align 8
  br label %.thread134

.thread134:                                       ; preds = %bb.h, %bb.ag, %bb.ah, %bb.af
  %.688 = phi i8 [ %.587, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.af ], [ 0, %bb.h ]
  %.7 = phi i8 [ %.6, %bb.ag ], [ 1, %bb.ah ], [ 1, %bb.af ], [ 0, %bb.h ]
  %i.fw = and i8 %.7, %.688
  store i8 %i.fw, ptr %1, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %.thread134, %_ZNK8QPointerI20QCPAbstractPlottableEcvPS0_Ev.exit.thread
  %.fca.0.load = load double, ptr %4, align 8
  %.fca.0.insert = insertvalue { double, double } poison, double %.fca.0.load, 0
  %.fca.1.gep = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load = load double, ptr %.fca.1.gep, align 8
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.fca.1.load, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListI6QLineFE6appendEOS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, ptr noundef align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  tail call void @_ZN9QtPrivate12QPodArrayOpsI6QLineFE7emplaceIJS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.b, ptr noundef align 8 dereferenceable(32) %1)
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i.i, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i.i

_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i.i: ; preds = %bb.a
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = icmp sgt i32 %i.d, 1
  br i1 %i.e, label %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i.i, label %_ZN5QListI6QLineFE11emplaceBackIJS0_EEERS0_DpOT_.exit

_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i.i, %bb.a
  tail call void @_ZN17QArrayDataPointerI6QLineFE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
  br label %_ZN5QListI6QLineFE11emplaceBackIJS0_EEERS0_DpOT_.exit

_ZN5QListI6QLineFE11emplaceBackIJS0_EEERS0_DpOT_.exit: ; preds = %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.i.i.i.i, %_ZNK17QArrayDataPointerI6QLineFE11needsDetachEv.exit.thread.i.i.i.i
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define void @_ZN19QCPItemStraightLineC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(168) %0, ptr noundef %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
_Z7qstrlenPKc.exit.i.i:
  %2 = alloca %class.QString, align 16            ; 8 uses
  %3 = alloca %class.QString, align 16            ; 8 uses
  %4 = alloca %class.QString, align 16            ; 10 uses
  %5 = alloca %class.QString, align 16            ; 10 uses
  %6 = alloca %class.QPen, align 8                ; 6 uses
  %7 = alloca %class.QColor, align 4              ; 5 uses
  %8 = alloca %class.QPen, align 8                ; 6 uses
  %9 = alloca %class.QBrush, align 8              ; 7 uses
  tail call void @_ZN15QCPAbstractItemC2EP11QCustomPlot(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 208) (i8, ptr @_ZTV19QCPItemStraightLine, i64 16), ptr %0, align 8
  %i.a = getelementptr i8, ptr %0, i64 136        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #51
  invoke void @_ZN7QString10fromLatin1E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 6, ptr nonnull @.str.194)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %_Z7qstrlenPKc.exit.i.i
  %i.b = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  br label %.body

bb.b:                                             ; preds = %_Z7qstrlenPKc.exit.i.i
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = load <2 x ptr>, ptr %3, align 16
  store ptr null, ptr %3, align 16
  store <2 x ptr> %i.d, ptr %4, align 16
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.g = load i64, ptr %i.f, align 16
  store i64 %i.g, ptr %i.e, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #51
  %i.h = invoke noundef ptr @_ZN15QCPAbstractItem14createPositionERK7QString(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.c unwind label %bb.n

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %4, align 16               ; 2 uses
  %.not.i.i.i17 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i17, label %_ZN7QStringD2Ev.exit, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i:      ; preds = %bb.c
  %i.j = atomicrmw sub ptr %i.i, i32 1 acq_rel, align 4
  %.not.i.i = icmp eq i32 %i.j, 1
  br i1 %.not.i.i, label %bb.d, label %_ZN7QStringD2Ev.exit

bb.d:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i
  %i.k = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.k, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit

_ZN7QStringD2Ev.exit:                             ; preds = %bb.c, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
  store ptr %i.h, ptr %i.a, align 8
  %i.l = getelementptr i8, ptr %0, i64 144        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #51
  invoke void @_ZN7QString10fromLatin1E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 6, ptr nonnull @.str.195)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  br label %.body23

bb.f:                                             ; preds = %_ZN7QStringD2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.o = load <2 x ptr>, ptr %2, align 16
  store ptr null, ptr %2, align 16
  store <2 x ptr> %i.o, ptr %5, align 16
  store ptr null, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = load i64, ptr %i.q, align 16
  store i64 %i.r, ptr %i.p, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #51
  %i.s = invoke noundef ptr @_ZN15QCPAbstractItem14createPositionERK7QString(ptr noundef align 8 dereferenceable_or_null(130) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.g unwind label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %5, align 16               ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i26, label %_ZN7QStringD2Ev.exit29, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27:    ; preds = %bb.g
  %i.u = atomicrmw sub ptr %i.t, i32 1 acq_rel, align 4
  %.not.i.i28 = icmp eq i32 %i.u, 1
  br i1 %.not.i.i28, label %bb.h, label %_ZN7QStringD2Ev.exit29

bb.h:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27
  %i.v = load ptr, ptr %5, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.v, i64 noundef 2, i64 noundef 8) #51
  br label %_ZN7QStringD2Ev.exit29

_ZN7QStringD2Ev.exit29:                           ; preds = %bb.g, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i27, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #51
  store ptr %i.s, ptr %i.l, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  invoke void @_ZN4QPenC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.w)
          to label %bb.i unwind label %bb.r

bb.i:                                             ; preds = %_ZN7QStringD2Ev.exit29
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  invoke void @_ZN4QPenC1Ev(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.x)
          to label %bb.j unwind label %bb.s

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 128
  call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  %i.aa = load ptr, ptr %i.l, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 128
  store <2 x double> splat (double 1.000000e+00), ptr %i.ab, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #51
  call void @_ZN6QColorC1EN2Qt11GlobalColorE(ptr noundef nonnull align 4 dereferenceable_or_null(14) %7, i32 noundef 2) #51
  invoke void @_ZN4QPenC1ERK6QColor(ptr noundef nonnull align 8 dereferenceable_or_null(8) %6, ptr noundef nonnull align 4 dereferenceable(14) %7)
          to label %bb.k unwind label %bb.t

bb.k:                                             ; preds = %bb.j
  %i.ac = call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.w, ptr noundef nonnull align 8 dereferenceable(8) %6) #51 ; 0 uses
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #51
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #51
  invoke void @_ZN6QBrushC1EN2Qt11GlobalColorENS0_10BrushStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %9, i32 noundef 9, i32 noundef 1)
          to label %bb.l unwind label %bb.u

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4QPenC1ERK6QBrushdN2Qt8PenStyleENS3_11PenCapStyleENS3_12PenJoinStyleE(ptr noundef nonnull align 8 dereferenceable_or_null(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %9, double noundef 2.000000e+00, i32 noundef 1, i32 noundef 16, i32 noundef 64)
          to label %bb.m unwind label %bb.v

bb.m:                                             ; preds = %bb.l
  %i.ad = call noundef align 8 dereferenceable(8) ptr @_ZN4QPenaSERKS_(ptr noundef nonnull align 8 dereferenceable_or_null(8) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %8) #51 ; 0 uses
  call void @_ZN4QPenD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %8) #51
  call void @_ZN6QBrushD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #51
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #51
  ret void

bb.n:                                             ; preds = %bb.b
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.af = load ptr, ptr %4, align 16              ; 2 uses
  %.not.i.i.i30 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i30, label %.body, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31:    ; preds = %bb.n
  %i.ag = atomicrmw sub ptr %i.af, i32 1 acq_rel, align 4
  %.not.i.i32 = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i32, label %bb.o, label %.body

bb.o:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31
  %i.ah = load ptr, ptr %4, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #51
  br label %.body

.body:                                            ; preds = %bb.a, %bb.o, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31, %bb.n
  %.pn = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ae, %bb.o ], [ %i.b, %bb.a ], [ %i.ae, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #51
end_hunk_8
