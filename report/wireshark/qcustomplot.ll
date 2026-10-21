Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/qcustomplot?download=true
inline.NumInlined: 26883
inline.NumDeleted: 6472
loop-unroll.NumRuntimeUnrolled: 106
loop-unroll.NumUnrolled: 106
begin_hunk_0_@_ZN16QCPDataContainerI12QCPCurveDataE8keyRangeERbN3QCP10SignDomainE:bb.a
  %i.s = getelementptr i8, ptr %.sroa.0.2107, i64 16
  %i.t = load double, ptr %i.s, align 8
  %i.u = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.t) #55
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
  br i1 %.not85, label %.loopexit, label %bb.d, !llvm.loop !1165

bb.j:                                             ; preds = %.lr.ph101, %bb.o
  %i.af = phi double [ %.promoted104, %.lr.ph101 ], [ %i.as, %bb.o ] ; 3 uses
  %.4100 = phi i8 [ 0, %.lr.ph101 ], [ %.6, %bb.o ] ; 3 uses
  %.25599 = phi i8 [ 0, %.lr.ph101 ], [ %.356, %bb.o ] ; 3 uses
  %.sroa.0.398 = phi ptr [ %i.k, %.lr.ph101 ], [ %i.au, %bb.o ] ; 3 uses
  %i.ag = phi double [ %.promoted96, %.lr.ph101 ], [ %i.at, %bb.o ] ; 3 uses
  %i.ah = getelementptr i8, ptr %.sroa.0.398, i64 16
  %i.ai = load double, ptr %i.ah, align 8
  %i.aj = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ai) #55
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
  br i1 %.not84, label %.loopexit, label %bb.j, !llvm.loop !1166

bb.p:                                             ; preds = %.lr.ph, %bb.u
  %i.av = phi double [ %.promoted95, %.lr.ph ], [ %i.bi, %bb.u ] ; 3 uses
  %.793 = phi i8 [ 0, %.lr.ph ], [ %.9, %bb.u ]   ; 3 uses
  %.45792 = phi i8 [ 0, %.lr.ph ], [ %.558, %bb.u ] ; 3 uses
  %.sroa.0.491 = phi ptr [ %i.k, %.lr.ph ], [ %i.bk, %bb.u ] ; 3 uses
  %i.aw = phi double [ %.promoted, %.lr.ph ], [ %i.bj, %bb.u ] ; 3 uses
  %i.ax = getelementptr i8, ptr %.sroa.0.491, i64 16
  %i.ay = load double, ptr %i.ax, align 8
  %i.az = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ay) #55
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
  br i1 %.not, label %.loopexit, label %bb.p, !llvm.loop !1167

.loopexit:                                        ; preds = %bb.u, %bb.o, %bb.i, %.preheader88, %.preheader86, %.preheader, %bb.c
  %.659 = phi i8 [ %.154, %bb.i ], [ 0, %bb.c ], [ %.356, %bb.o ], [ 0, %.preheader ], [ 0, %.preheader86 ], [ 0, %.preheader88 ], [ %.558, %bb.u ]
  %.10 = phi i8 [ %.3, %bb.i ], [ 0, %bb.c ], [ %.6, %bb.o ], [ 0, %.preheader ], [ 0, %.preheader86 ], [ 0, %.preheader88 ], [ %.9, %bb.u ]
  %i.bl = trunc nuw i8 %.10 to i1
  %i.bm = select i1 %i.bl, i8 %.659, i8 0
  store i8 %i.bm, ptr %1, align 1
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
define { double, double } @_ZNK8QCPCurve13getValueRangeERbN3QCP10SignDomainERK8QCPRange(ptr nofree noundef readonly align 8 captures(none) dereferenceable_or_null(288) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call { double, double } @_ZN16QCPDataContainerI12QCPCurveDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %i.b, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3)
  ret { double, double } %i.c
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr { double, double } @_ZN16QCPDataContainerI12QCPCurveDataE10valueRangeERbN3QCP10SignDomainERK8QCPRange(ptr noundef align 8 dereferenceable_or_null(40) %0, ptr noundef align 1 dereferenceable(1) %1, i32 noundef %2, ptr noundef align 8 dereferenceable(16) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
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
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
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
  %i.an = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ai) #55
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
  %i.at = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.ah) #55
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
  br i1 %.not129.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !1168

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
  %i.bo = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bk) #55
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
  %i.bu = call noundef zeroext i1 @_Z6qIsNaNd(double noundef %i.bj) #55
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
  br i1 %.not135, label %.loopexit, label %bb.n, !llvm.loop !1169

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

end_hunk_0
begin_hunk_1_@_ZNK22QCPAbstractPlottable1DI12QCPGraphDataE17dataPixelPositionEi:bb.a
  %i.n = getelementptr [16 x i8], ptr %i.l, i64 %i.m
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load double, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = tail call { double, double } @_ZNK20QCPAbstractPlottable14coordsToPixelsEdd(ptr noundef align 8 dereferenceable_or_null(184) %0, double noundef %i.q, double noundef %i.s) ; 2 uses
  %i.u = extractvalue { double, double } %i.t, 0
  %i.v = extractvalue { double, double } %i.t, 1
  br label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i32 2, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.x, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.y = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 108, ptr @__PRETTY_FUNCTION__._ZNK22QCPAbstractPlottable1DI12QCPGraphDataE17dataPixelPositionEi)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  %i.z = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.e
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit.i

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.ac = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ac, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  %i.ad = load ptr, ptr %4, align 8               ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !range !175, !noundef !176
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZN6QDebuglsEPKc.exit

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ah = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ad, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.h:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.h
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i4.i, label %bb.i, label %_ZN7QStringD2Ev.exit5.i

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.al = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.am = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.ad, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 19, ptr @.str.177)
          to label %.noexc15 unwind label %bb.p

.noexc15:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.an = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %.noexc15
  %i.ao = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i11, label %_ZN7QStringD2Ev.exit.i14, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12:  ; preds = %bb.j
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i.i13 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i.i13, label %bb.k, label %_ZN7QStringD2Ev.exit.i14

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12
  %i.aq = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit.i14

_ZN7QStringD2Ev.exit.i14:                         ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.ar = load ptr, ptr %4, align 8               ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i8, ptr %i.as, align 8, !range !175, !noundef !176
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %_ZN6QDebuglsEPKc.exit19

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit.i14
  %i.av = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ar, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit19_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit19_crit_edge:               ; preds = %bb.l
  %.pre25 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit19

bb.m:                                             ; preds = %.noexc15
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i7 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i2.i7, label %_ZN7QStringD2Ev.exit5.i10, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8:  ; preds = %bb.m
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %.not.i.i4.i9 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i4.i9, label %bb.n, label %_ZN7QStringD2Ev.exit5.i10

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8
  %i.az = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit5.i10

_ZN7QStringD2Ev.exit5.i10:                        ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %.body

_ZN6QDebuglsEPKc.exit19:                          ; preds = %._ZN6QDebuglsEPKc.exit19_crit_edge, %_ZN7QStringD2Ev.exit.i14
  %i.ba = phi ptr [ %.pre25, %._ZN6QDebuglsEPKc.exit19_crit_edge ], [ %i.ar, %_ZN7QStringD2Ev.exit.i14 ]
  %i.bb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.ba, i32 noundef %1)
          to label %.noexc20 unwind label %bb.p   ; 0 uses

.noexc20:                                         ; preds = %_ZN6QDebuglsEPKc.exit19
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load i8, ptr %i.bd, align 8, !range !175, !noundef !176
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %_ZN6QDebuglsEi.exit

bb.o:                                             ; preds = %.noexc20
  %i.bg = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bc, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.p ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc20, %bb.o
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN6QDebuglsEPKc.exit19, %bb.l, %_ZN6QDebuglsEPKc.exit, %bb.g, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %_ZN7QStringD2Ev.exit5.i10, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %_ZN7QStringD2Ev.exit5.i ], [ %i.bh, %bb.p ], [ %i.aw, %_ZN7QStringD2Ev.exit5.i10 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %_ZN6QDebuglsEi.exit, %bb.c
  %.sroa.3.0 = phi double [ %i.v, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.sroa.024.0 = phi double [ %i.u, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZNK22QCPAbstractPlottable1DI12QCPGraphDataE16sortKeyIsMainKeyEv(ptr noundef align 8 dereferenceable_or_null(208) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK22QCPAbstractPlottable1DI12QCPGraphDataE14selectTestRectERK6QRectFb(ptr dead_on_unwind noalias writable sret(%class.QCPDataSelection) align 8 %0, ptr noundef align 8 dereferenceable_or_null(208) %1, ptr noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPGraphData, align 8        ; 4 uses
  %5 = alloca %class.QCPGraphData, align 8        ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %6 = alloca %class.QCPRange, align 8            ; 9 uses
  %7 = alloca %class.QCPRange, align 8            ; 6 uses
  %8 = alloca %class.QCPDataRange, align 4        ; 5 uses
  %9 = alloca %class.QCPDataRange, align 4        ; 5 uses
  tail call void @_ZN16QCPDataSelectionC1Ev(ptr noundef align 8 dereferenceable_or_null(24) %0)
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 144
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr i8, ptr %1, i64 192        ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = trunc i64 %i.k to i32
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.x = getelementptr i8, ptr %1, i64 128
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.y, i64 4
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38:           ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %1, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.af = load double, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load double, ptr %i.ag, align 8
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.af, double noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit unwind label %bb.n

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load <2 x double>, ptr %2, align 8
  %i.ak = load <2 x double>, ptr %i.ai, align 8
  %i.al = fadd <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.am, double noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41 unwind label %bb.n

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41: ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.ao = load double, ptr %i.a, align 8
  %i.ap = load double, ptr %i.c, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef %i.ao, double noundef %i.ap)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.aq = load double, ptr %i.b, align 8
  %i.ar = load double, ptr %i.d, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7, double noundef %i.aq, double noundef %i.ar)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 32
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 24
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %10 = getelementptr [16 x i8], ptr %i.au, i64 %i.az
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp eq i32 %i.aw, %i.ba
  br i1 %i.bb, label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load double, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  invoke void @_ZN12QCPGraphDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.bc, double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.k
  %.idx7.i = shl nsw i64 %i.ax, 4
  %i.bd = getelementptr i8, ptr %i.au, i64 %.idx7.i ; 2 uses
  %.fca.0.load.i.i = load double, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.be = sub i64 %i.az, %i.ax
  %gepdiff.i = shl i64 %i.be, 4
  %i.bf = ashr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit

_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.noexc, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bf, %.noexc ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bd, %.noexc ] ; 2 uses
  %i.bh = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.bi = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = fcmp olt double %i.bj, %.fca.0.load.i.i ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 16
  %i.bm = xor i64 %i.bh, -1
  %i.bn = add nsw i64 %.016.i.i.i, %i.bm
  %.sroa.012.1.i.i.i = select i1 %i.bk, ptr %i.bl, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.bk, i64 %i.bn, i64 %i.bh ; 2 uses
  %i.bo = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.bo, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit, !llvm.loop !51

_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit: ; preds = %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.j, %.noexc
  %.sroa.04.0.i = phi ptr [ %10, %bb.j ], [ %i.bd, %.noexc ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 32
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.bu = trunc i64 %i.br to i32
  %i.bv = icmp eq i32 %i.bt, %i.bu
  %i.bw = getelementptr i8, ptr %i.bp, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit
  %i.by = getelementptr [16 x i8], ptr %i.bx, i64 %i.br
  br label %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit

bb.m:                                             ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bz = load double, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN12QCPGraphDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.bz, double noundef 0.000000e+00)
          to label %.noexc54 unwind label %bb.ac

.noexc54:                                         ; preds = %bb.m
  %i.ca = sext i32 %i.bt to i64                   ; 2 uses
  %.idx7.i42 = shl nsw i64 %i.ca, 4
  %i.cb = getelementptr i8, ptr %i.bx, i64 %.idx7.i42 ; 2 uses
  %.fca.0.load.i.i43 = load double, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cc = sub i64 %i.br, %i.ca
  %gepdiff.i44 = shl i64 %i.cc, 4
  %i.cd = ashr exact i64 %gepdiff.i44, 4          ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47, label %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit

_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47: ; preds = %.noexc54, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47
  %.016.i.i.i48 = phi i64 [ %.1.i.i.i53, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47 ], [ %i.cd, %.noexc54 ] ; 2 uses
  %.sroa.012.015.i.i.i49 = phi ptr [ %.sroa.012.1.i.i.i52, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47 ], [ %i.cb, %.noexc54 ] ; 2 uses
  %i.cf = lshr i64 %.016.i.i.i48, 1               ; 3 uses
  %i.cg = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i49, i64 %i.cf ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8
  %i.ci = fcmp olt double %.fca.0.load.i.i43, %i.ch ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 16
  %i.ck = xor i64 %i.cf, -1
  %i.cl = add nsw i64 %.016.i.i.i48, %i.ck
  %.sroa.012.1.i.i.i52 = select i1 %i.ci, ptr %.sroa.012.015.i.i.i49, ptr %i.cj ; 2 uses
  %.1.i.i.i53 = select i1 %i.ci, i64 %i.cf, i64 %i.cl ; 2 uses
  %i.cm = icmp sgt i64 %.1.i.i.i53, 0
  br i1 %i.cm, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47, label %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit, !llvm.loop !52

bb.n:                                             ; preds = %bb.h, %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.o:                                             ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit: ; preds = %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47, %.noexc54, %bb.l
  %.sroa.04.0.i46 = phi ptr [ %i.by, %bb.l ], [ %i.cb, %.noexc54 ], [ %.sroa.012.1.i.i.i52, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47 ] ; 3 uses
  %i.cp = icmp eq ptr %.sroa.04.0.i, %.sroa.04.0.i46
  br i1 %i.cp, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZNK8QCPRange8containsEd.exit.thread
  %.not29 = icmp eq i32 %.127, -1
  br i1 %.not29, label %bb.ab, label %bb.y

bb.q:                                             ; preds = %.preheader, %_ZNK8QCPRange8containsEd.exit.thread
  %.02694 = phi i32 [ -1, %.preheader ], [ %.127, %_ZNK8QCPRange8containsEd.exit.thread ] ; 3 uses
  %.sroa.0.093 = phi ptr [ %.sroa.04.0.i, %.preheader ], [ %i.em, %_ZNK8QCPRange8containsEd.exit.thread ] ; 6 uses
  %i.cs = icmp eq i32 %.02694, -1
  %i.ct = getelementptr i8, ptr %.sroa.0.093, i64 8
  %i.cu = load double, ptr %i.ct, align 8         ; 2 uses
  %i.cv = load double, ptr %7, align 8
  %i.cw = fcmp oge double %i.cu, %i.cv
  %i.cx = load double, ptr %12, align 8
  %i.cy = fcmp ole double %i.cu, %i.cx
  %or.cond = select i1 %i.cw, i1 %i.cy, i1 false  ; 2 uses
  br i1 %i.cs, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond, label %bb.s, label %_ZNK8QCPRange8containsEd.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cz = load double, ptr %.sroa.0.093, align 8  ; 2 uses
  %i.da = load double, ptr %6, align 8
  %i.db = fcmp oge double %i.cz, %i.da
  %i.dc = load double, ptr %i.cq, align 8
  %i.dd = fcmp ole double %i.cz, %i.dc
  %or.cond84 = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond84, label %bb.t, label %_ZNK8QCPRange8containsEd.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr i8, ptr %i.de, i64 32
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [16 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = ptrtoint ptr %.sroa.0.093 to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 4
  %i.dp = trunc i64 %i.do to i32
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.u:                                             ; preds = %bb.q
  br i1 %or.cond, label %bb.v, label %_ZNK8QCPRange8containsEd.exit56.thread

bb.v:                                             ; preds = %bb.u
  %i.dq = load double, ptr %.sroa.0.093, align 8  ; 2 uses
  %i.dr = load double, ptr %6, align 8
  %i.ds = fcmp oge double %i.dq, %i.dr
  %i.dt = load double, ptr %i.cq, align 8
  %i.du = fcmp ole double %i.dq, %i.dt
  %or.cond90 = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond90, label %_ZNK8QCPRange8containsEd.exit.thread, label %_ZNK8QCPRange8containsEd.exit56.thread

_ZNK8QCPRange8containsEd.exit56.thread:           ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.dv = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr i8, ptr %i.dv, i64 32
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr [16 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = ptrtoint ptr %.sroa.0.093 to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = lshr exact i64 %i.ee, 4
  %i.eg = trunc i64 %i.ef to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %8, i32 noundef %.02694, i32 noundef %i.eg)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZNK8QCPRange8containsEd.exit56.thread
  %i.eh = load i64, ptr %i.cr, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %.noexc58 unwind label %bb.x

.noexc58:                                         ; preds = %bb.w
  %i.ei = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc58
  %i.ej = load atomic i32, ptr %i.ei monotonic, align 4
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc58
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit unwind label %bb.x

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.x:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.w, %_ZNK8QCPRange8containsEd.exit56.thread
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.ae

_ZNK8QCPRange8containsEd.exit.thread:             ; preds = %bb.v, %bb.s, %bb.r, %bb.t, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit
  %.127 = phi i32 [ %i.dp, %bb.t ], [ -1, %bb.r ], [ -1, %bb.s ], [ %.02694, %bb.v ], [ -1, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit ] ; 3 uses
  %i.em = getelementptr i8, ptr %.sroa.0.093, i64 16 ; 2 uses
  %.not91 = icmp eq ptr %i.em, %.sroa.04.0.i46
  br i1 %.not91, label %bb.p, label %bb.q, !llvm.loop !1868

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.en = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr i8, ptr %i.en, i64 32
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [16 x i8], ptr %i.ep, i64 %i.es
  %i.eu = ptrtoint ptr %.sroa.04.0.i46 to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 4
  %i.ey = trunc i64 %i.ex to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %9, i32 noundef %.127, i32 noundef %i.ey)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ez = load i64, ptr %i.cr, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %.noexc63 unwind label %bb.aa

.noexc63:                                         ; preds = %bb.z
  %i.fa = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i60 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i60, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61: ; preds = %.noexc63
  %i.fb = load atomic i32, ptr %i.fa monotonic, align 4
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61, %.noexc63
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65 unwind label %bb.aa

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62, %bb.z, %bb.y
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65, %bb.p
  invoke void @_ZN16QCPDataSelection8simplifyEv(ptr noundef align 8 dereferenceable_or_null(24) %0)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.i, %bb.m, %bb.k, %bb.ab
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %_ZNK16QCPDataContainerI12QCPGraphDataE7findEndEdb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.ae:                                            ; preds = %bb.x, %bb.aa, %bb.ac
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.ac ], [ %i.el, %bb.x ], [ %i.fd, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.o
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ae ], [ %i.co, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.cn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @_ZN16QCPDataSelectionD2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #50
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.f, %bb.g, %bb.d, %bb.e, %bb.ad, %bb.c, %bb.b, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef i32 @_ZNK22QCPAbstractPlottable1DI12QCPGraphDataE9findBeginEdb(ptr noundef align 8 dereferenceable_or_null(208) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPGraphData, align 8        ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.d
  br label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit

bb.c:                                             ; preds = %bb.a
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %.idx7.i = shl nsw i64 %i.l, 4
  %i.m = getelementptr i8, ptr %i.j, i64 %.idx7.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN12QCPGraphDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3, double noundef %1, double noundef 0.000000e+00)
  %.fca.0.load.i.i = load double, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = sub i64 %i.d, %i.l
  %gepdiff.i = shl i64 %i.n, 4
  %i.o = ashr exact i64 %gepdiff.i, 4             ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN5QListI12QCPGraphDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i

_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.c, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.r = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp olt double %i.s, %.fca.0.load.i.i   ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.016.i.i.i, %i.v
  %.sroa.012.1.i.i.i = select i1 %i.t, ptr %i.u, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.q  ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN5QListI12QCPGraphDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i, !llvm.loop !51

_ZSt11lower_boundIN5QListI12QCPGraphDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.c
  %.sroa.012.0.lcssa.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI12QCPGraphDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 3 uses
  br i1 %2, label %bb.d, label %_ZNK16QCPDataContainerI12QCPGraphDataE9findBeginEdb.exit

bb.d:                                             ; preds = %_ZSt11lower_boundIN5QListI12QCPGraphDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i
  %i.y = load ptr, ptr %i.i, align 8
  %i.z = load i32, ptr %i.e, align 8
  %i.aa = sext i32 %i.z to i64
end_hunk_1
begin_hunk_2_@_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE10selectTestERK7QPointFbP8QVariant:bb.a
  %i.aq = getelementptr i8, ptr %i.ao, i64 4
  %i.ar = load atomic i32, ptr %i.aq monotonic, align 4
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZNK8QPointerI7QCPAxisEptEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load ptr, ptr %i.r, align 8
  br label %_ZNK8QPointerI7QCPAxisEptEv.exit

_ZNK8QPointerI7QCPAxisEptEv.exit:                 ; preds = %bb.i, %bb.j, %bb.k
  %i.au = phi ptr [ %i.at, %bb.k ], [ null, %bb.j ], [ null, %bb.i ] ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 304
  %.sroa.0.0.copyload.i = load double, ptr %i.av, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr i8, ptr %i.au, i64 312
  %.sroa.2.0.copyload.i = load double, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.aw = load ptr, ptr %i.t, align 8             ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph, label %bb.l

bb.l:                                             ; preds = %_ZNK8QPointerI7QCPAxisEptEv.exit
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load atomic i32, ptr %i.ay monotonic, align 4
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = load ptr, ptr %i.z, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.l, %_ZNK8QPointerI7QCPAxisEptEv.exit
  %i.bc = phi ptr [ %i.bb, %bb.m ], [ null, %bb.l ], [ null, %_ZNK8QPointerI7QCPAxisEptEv.exit ] ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 304
  %.sroa.0.0.copyload.i73 = load double, ptr %i.bd, align 8
  %.sroa.2.0..sroa_idx.i74 = getelementptr i8, ptr %i.bc, i64 312
  %.sroa.2.0.copyload.i75 = load double, ptr %.sroa.2.0..sroa_idx.i74, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.n

._crit_edge:                                      ; preds = %_ZNK8QCPRange8containsEd.exit.thread
  %.pre = load ptr, ptr %i.d, align 8             ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 24
  %.pre126 = load i64, ptr %.phi.trans.insert, align 8
  %.pre129 = trunc i64 %.pre126 to i32
  %.phi.trans.insert127 = getelementptr i8, ptr %.pre, i64 32
  %.pre128 = load i32, ptr %.phi.trans.insert127, align 8
  %.pre130 = sub i32 %.pre129, %.pre128
  %.not42 = icmp eq i32 %.229, %.pre130
  br i1 %.not42, label %bb.x, label %bb.t

bb.n:                                             ; preds = %.lr.ph, %_ZNK8QCPRange8containsEd.exit.thread
  %.025124 = phi double [ f0x7FEFFFFFFFFFFFFF, %.lr.ph ], [ %.2, %_ZNK8QCPRange8containsEd.exit.thread ] ; 3 uses
  %.027123 = phi i32 [ %i.ah, %.lr.ph ], [ %.229, %_ZNK8QCPRange8containsEd.exit.thread ] ; 2 uses
  %.sroa.087.0122 = phi ptr [ %i.al, %.lr.ph ], [ %i.cm, %_ZNK8QCPRange8containsEd.exit.thread ] ; 4 uses
  %i.bf = getelementptr i8, ptr %.sroa.087.0122, i64 8
  %i.bg = load double, ptr %i.bf, align 8         ; 3 uses
  %i.bh = getelementptr i8, ptr %.sroa.087.0122, i64 16
  %i.bi = load double, ptr %i.bh, align 8         ; 3 uses
  %i.bj = fcmp oge double %i.bg, %.sroa.0.0.copyload.i
  %i.bk = fcmp ole double %i.bg, %.sroa.2.0.copyload.i
  %or.cond.not113.not118 = select i1 %i.bj, i1 %i.bk, i1 false
  %i.bl = fcmp oge double %i.bi, %.sroa.0.0.copyload.i73
  %or.cond107.not115 = select i1 %or.cond.not113.not118, i1 %i.bl, i1 false
  %i.bm = fcmp ole double %i.bi, %.sroa.2.0.copyload.i75
  %or.cond108 = select i1 %or.cond107.not115, i1 %i.bm, i1 false
  br i1 %or.cond108, label %bb.o, label %_ZNK8QCPRange8containsEd.exit.thread

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.bn = invoke { double, double } @_ZNK20QCPAbstractPlottable14coordsToPixelsEdd(ptr noundef align 8 dereferenceable_or_null(184) %0, double noundef %i.bg, double noundef %i.bi)
          to label %bb.p unwind label %bb.s       ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bo = extractvalue { double, double } %i.bn, 0
  %i.bp = extractvalue { double, double } %i.bn, 1
  %i.bq = load <2 x double>, ptr %1, align 8
  %i.br = insertelement <2 x double> poison, double %i.bo, i64 0
  %i.bs = insertelement <2 x double> %i.br, double %i.bp, i64 1
  %i.bt = fsub <2 x double> %i.bs, %i.bq
  store <2 x double> %i.bt, ptr %6, align 16
  invoke void @_ZN11QCPVector2DC1ERK7QPointF(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bu = load double, ptr %5, align 8            ; 2 uses
  %i.bv = load double, ptr %i.be, align 8         ; 2 uses
  %i.bw = fmul double %i.bv, %i.bv
  %i.bx = call noundef double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.bw) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %i.by = fcmp olt double %i.bx, %.025124
  br i1 %i.by, label %bb.r, label %_ZNK8QCPRange8containsEd.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bz = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = getelementptr i8, ptr %i.bz, i64 32
  %i.cd = load i32, ptr %i.cc, align 8
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [24 x i8], ptr %i.cb, i64 %i.ce
  %i.cg = ptrtoint ptr %.sroa.087.0122 to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = sdiv exact i64 %i.ci, 24
  %i.ck = trunc i64 %i.cj to i32
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.ad

_ZNK8QCPRange8containsEd.exit.thread:             ; preds = %bb.n, %bb.q, %bb.r
  %.229 = phi i32 [ %.027123, %bb.n ], [ %.027123, %bb.q ], [ %i.ck, %bb.r ] ; 4 uses
  %.2 = phi double [ %.025124, %bb.n ], [ %.025124, %bb.q ], [ %i.bx, %bb.r ] ; 2 uses
  %i.cm = getelementptr i8, ptr %.sroa.087.0122, i64 24 ; 2 uses
  %.not110 = icmp eq ptr %i.cm, %i.am
  br i1 %.not110, label %._crit_edge, label %bb.n, !llvm.loop !1907

bb.t:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.cn = add i32 %.229, 1
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %7, i32 noundef %.229, i32 noundef %i.cn)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.cp = load i64, ptr %i.co, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i64 noundef %i.cp, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %.noexc81 unwind label %bb.w

.noexc81:                                         ; preds = %bb.u
  %i.cq = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc81
  %i.cr = load atomic i32, ptr %i.cq monotonic, align 4
  %i.cs = icmp sgt i32 %i.cr, 1
  br i1 %i.cs, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc81
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit unwind label %bb.w

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.x

bb.v:                                             ; preds = %bb.z, %bb.x
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.w:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.u, %bb.t
  %i.cu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.ad

bb.x:                                             ; preds = %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit, %._crit_edge
  invoke void @_ZN16QCPDataSelection8simplifyEv(ptr noundef nonnull align 8 dereferenceable_or_null(24) %4)
          to label %bb.y unwind label %bb.v

bb.y:                                             ; preds = %bb.x
  %.not43 = icmp eq ptr %3, null
  br i1 %.not43, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN8QVariant8setValueIR16QCPDataSelectionvEEvOT_(ptr noundef nonnull align 8 dereferenceable_or_null(32) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cv = call noundef double @sqrt(double noundef %.2) #50
  br label %bb.ab

bb.ab:                                            ; preds = %bb.h, %bb.aa
  %.0 = phi double [ %i.cv, %bb.aa ], [ -1.000000e+00, %bb.h ]
  %i.cw = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i.i.i.i, label %_ZN16QCPDataSelectionD2Ev.exit, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i: ; preds = %bb.ab
  %i.cx = atomicrmw add ptr %i.cw, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.cx, 1
  br i1 %.not.i.i.i, label %bb.ac, label %_ZN16QCPDataSelectionD2Ev.exit

bb.ac:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i
  %i.cy = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.cy, i64 noundef 8, i64 noundef 8) #50
  br label %_ZN16QCPDataSelectionD2Ev.exit

_ZN16QCPDataSelectionD2Ev.exit:                   ; preds = %bb.ab, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.ad:                                            ; preds = %bb.v, %bb.w, %bb.s
  %.pn44.pn.pn.pn = phi { ptr, i32 } [ %i.cl, %bb.s ], [ %i.cu, %bb.w ], [ %i.ct, %bb.v ]
  %i.cz = load ptr, ptr %4, align 8               ; 2 uses
  %.not.i.i.i.i83 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i83, label %_ZN16QCPDataSelectionD2Ev.exit86, label %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i84

_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i84: ; preds = %bb.ad
  %i.da = atomicrmw add ptr %i.cz, i32 -1 acq_rel, align 4
  %.not.i.i.i85 = icmp eq i32 %i.da, 1
  br i1 %.not.i.i.i85, label %bb.ae, label %_ZN16QCPDataSelectionD2Ev.exit86

bb.ae:                                            ; preds = %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i84
  %i.db = load ptr, ptr %4, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.db, i64 noundef 8, i64 noundef 8) #50
  br label %_ZN16QCPDataSelectionD2Ev.exit86

_ZN16QCPDataSelectionD2Ev.exit86:                 ; preds = %bb.ad, %_ZN17QArrayDataPointerI12QCPDataRangeE5derefEv.exit.i.i.i84, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  resume { ptr, i32 } %.pn44.pn.pn.pn

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.f, %bb.g, %bb.d, %bb.e, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit49, %bb.b, %bb.c, %_ZN16QCPDataSelectionD2Ev.exit
  %.1 = phi double [ -1.000000e+00, %bb.b ], [ %.0, %_ZN16QCPDataSelectionD2Ev.exit ], [ -1.000000e+00, %bb.c ], [ -1.000000e+00, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit49 ], [ -1.000000e+00, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit ], [ -1.000000e+00, %bb.d ], [ -1.000000e+00, %bb.e ], [ -1.000000e+00, %bb.g ], [ -1.000000e+00, %bb.f ]
  ret double %.1
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef ptr @_ZN22QCPAbstractPlottable1DI12QCPCurveDataE11interface1DEv(ptr noundef align 8 dereferenceable_or_null(208) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  ret ptr %i.a
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef i32 @_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE9dataCountEv(ptr noundef align 8 dereferenceable_or_null(208) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.b, i64 32
  %i.f = load i32, ptr %i.e, align 8
  %i.g = trunc i64 %i.d to i32
  %i.h = sub i32 %i.g, %i.f
  ret i32 %i.h
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef double @_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE11dataMainKeyEi(ptr noundef align 8 dereferenceable_or_null(208) %0, i32 noundef %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.QString, align 8             ; 9 uses
  %3 = alloca %class.QString, align 8             ; 9 uses
  %4 = alloca %class.QDebug, align 8              ; 12 uses
  %5 = alloca %class.QMessageLogger, align 8      ; 7 uses
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.c, i64 32
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = trunc i64 %i.e to i32
  %i.i = sub i32 %i.h, %i.g
  %i.j = icmp slt i32 %1, %i.i
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.c, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %i.g to i64
  %i.n = getelementptr [24 x i8], ptr %i.l, i64 %i.m
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr [24 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %i.r = load double, ptr %i.q, align 8
  br label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i32 2, ptr %5, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.s, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.t, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.u = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 101, ptr @__PRETTY_FUNCTION__._ZNK22QCPAbstractPlottable1DI12QCPCurveDataE11dataMainKeyEi)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  %i.v = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.u, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %.noexc
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.e
  %i.x = atomicrmw add ptr %i.w, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.x, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit.i

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.y = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.y, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  %i.z = load ptr, ptr %4, align 8                ; 3 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 48
  %i.ab = load i8, ptr %i.aa, align 8, !range !175, !noundef !176
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.g, label %_ZN6QDebuglsEPKc.exit

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ad = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.z, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.h:                                             ; preds = %.noexc
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %i.af = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.h
  %i.ag = atomicrmw add ptr %i.af, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ag, 1
  br i1 %.not.i.i4.i, label %bb.i, label %_ZN7QStringD2Ev.exit5.i

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.ah = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ah, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.ai = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.z, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 19, ptr @.str.177)
          to label %.noexc17 unwind label %bb.p

.noexc17:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.aj = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %.noexc17
  %i.ak = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i13 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i.i13, label %_ZN7QStringD2Ev.exit.i16, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i14

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i14:  ; preds = %bb.j
  %i.al = atomicrmw add ptr %i.ak, i32 -1 acq_rel, align 4
  %.not.i.i.i15 = icmp eq i32 %i.al, 1
  br i1 %.not.i.i.i15, label %bb.k, label %_ZN7QStringD2Ev.exit.i16

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i14
  %i.am = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.am, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit.i16

_ZN7QStringD2Ev.exit.i16:                         ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i14, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.an = load ptr, ptr %4, align 8               ; 3 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 48
  %i.ap = load i8, ptr %i.ao, align 8, !range !175, !noundef !176
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.l, label %_ZN6QDebuglsEPKc.exit21

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit.i16
  %i.ar = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.an, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit21_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit21_crit_edge:               ; preds = %bb.l
  %.pre25 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit21

bb.m:                                             ; preds = %.noexc17
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i9 = icmp eq ptr %i.at, null
  br i1 %.not.i.i.i2.i9, label %_ZN7QStringD2Ev.exit5.i12, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i10

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i10: ; preds = %bb.m
  %i.au = atomicrmw add ptr %i.at, i32 -1 acq_rel, align 4
  %.not.i.i4.i11 = icmp eq i32 %i.au, 1
  br i1 %.not.i.i4.i11, label %bb.n, label %_ZN7QStringD2Ev.exit5.i12

end_hunk_2
begin_hunk_3_@_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE17dataPixelPositionEi:bb.a
  %.not.i.i.i.i11 = icmp eq ptr %i.ap, null
  br i1 %.not.i.i.i.i11, label %_ZN7QStringD2Ev.exit.i14, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12:  ; preds = %bb.j
  %i.aq = atomicrmw add ptr %i.ap, i32 -1 acq_rel, align 4
  %.not.i.i.i13 = icmp eq i32 %i.aq, 1
  br i1 %.not.i.i.i13, label %bb.k, label %_ZN7QStringD2Ev.exit.i14

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12
  %i.ar = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ar, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit.i14

_ZN7QStringD2Ev.exit.i14:                         ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.as = load ptr, ptr %4, align 8               ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 48
  %i.au = load i8, ptr %i.at, align 8, !range !175, !noundef !176
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.l, label %_ZN6QDebuglsEPKc.exit19

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit.i14
  %i.aw = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.as, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit19_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit19_crit_edge:               ; preds = %bb.l
  %.pre25 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit19

bb.m:                                             ; preds = %.noexc15
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i7 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i2.i7, label %_ZN7QStringD2Ev.exit5.i10, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8:  ; preds = %bb.m
  %i.az = atomicrmw add ptr %i.ay, i32 -1 acq_rel, align 4
  %.not.i.i4.i9 = icmp eq i32 %i.az, 1
  br i1 %.not.i.i4.i9, label %bb.n, label %_ZN7QStringD2Ev.exit5.i10

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8
  %i.ba = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ba, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit5.i10

_ZN7QStringD2Ev.exit5.i10:                        ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %.body

_ZN6QDebuglsEPKc.exit19:                          ; preds = %._ZN6QDebuglsEPKc.exit19_crit_edge, %_ZN7QStringD2Ev.exit.i14
  %i.bb = phi ptr [ %.pre25, %._ZN6QDebuglsEPKc.exit19_crit_edge ], [ %i.as, %_ZN7QStringD2Ev.exit.i14 ]
  %i.bc = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.bb, i32 noundef %1)
          to label %.noexc20 unwind label %bb.p   ; 0 uses

.noexc20:                                         ; preds = %_ZN6QDebuglsEPKc.exit19
  %i.bd = load ptr, ptr %4, align 8               ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %i.bf = load i8, ptr %i.be, align 8, !range !175, !noundef !176
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %_ZN6QDebuglsEi.exit

bb.o:                                             ; preds = %.noexc20
  %i.bh = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bd, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.p ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc20, %bb.o
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN6QDebuglsEPKc.exit19, %bb.l, %_ZN6QDebuglsEPKc.exit, %bb.g, %bb.d
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %_ZN7QStringD2Ev.exit5.i10, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %_ZN7QStringD2Ev.exit5.i ], [ %i.bi, %bb.p ], [ %i.ax, %_ZN7QStringD2Ev.exit5.i10 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %_ZN6QDebuglsEi.exit, %bb.c
  %.sroa.3.0 = phi double [ %i.w, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.sroa.024.0 = phi double [ %i.v, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE16sortKeyIsMainKeyEv(ptr noundef align 8 dereferenceable_or_null(208) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK22QCPAbstractPlottable1DI12QCPCurveDataE14selectTestRectERK6QRectFb(ptr dead_on_unwind noalias writable sret(%class.QCPDataSelection) align 8 %0, ptr noundef align 8 dereferenceable_or_null(208) %1, ptr noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %4 = alloca %class.QCPRange, align 8            ; 7 uses
  %5 = alloca %class.QCPRange, align 8            ; 6 uses
  %6 = alloca %class.QCPDataRange, align 4        ; 5 uses
  %7 = alloca %class.QCPDataRange, align 4        ; 5 uses
  tail call void @_ZN16QCPDataSelectionC1Ev(ptr noundef align 8 dereferenceable_or_null(24) %0)
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 144
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr i8, ptr %1, i64 192        ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = trunc i64 %i.k to i32
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.x = getelementptr i8, ptr %1, i64 128
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.y, i64 4
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38:           ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %1, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.af = load double, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load double, ptr %i.ag, align 8
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.af, double noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit unwind label %8

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load <2 x double>, ptr %2, align 8
  %i.ak = load <2 x double>, ptr %i.ai, align 8
  %i.al = fadd <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.am, double noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41 unwind label %8

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41: ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  %i.ao = load double, ptr %i.a, align 8
  %i.ap = load double, ptr %i.c, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.ao, double noundef %i.ap)
          to label %bb.i unwind label %10

bb.i:                                             ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  %i.aq = load double, ptr %i.b, align 8
  %i.ar = load double, ptr %i.d, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.aq, double noundef %i.ar)
          to label %bb.j unwind label %bb.w

8:                                                ; preds = %bb.h, %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

10:                                               ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41
  %11 = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 32
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = sext i32 %i.aw to i64
  %.idx = mul nsw i64 %i.ax, 24                   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 24
  %i.az = load i64, ptr %i.ay, align 8
  %.idx92 = mul i64 %i.az, 24                     ; 2 uses
  %i.ba = getelementptr i8, ptr %i.au, i64 %.idx92 ; 2 uses
  %i.bb = icmp eq i64 %.idx, %.idx92
  br i1 %i.bb, label %bb.x, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.bc = getelementptr i8, ptr %i.au, i64 %.idx
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.k

._crit_edge:                                      ; preds = %_ZNK8QCPRange8containsEd.exit.thread
  %.not29 = icmp eq i32 %.127, -1
  br i1 %.not29, label %bb.v, label %bb.s

bb.k:                                             ; preds = %.lr.ph, %_ZNK8QCPRange8containsEd.exit.thread
  %.02697 = phi i32 [ -1, %.lr.ph ], [ %.127, %_ZNK8QCPRange8containsEd.exit.thread ] ; 3 uses
  %.sroa.0.096 = phi ptr [ %i.bc, %.lr.ph ], [ %i.dc, %_ZNK8QCPRange8containsEd.exit.thread ] ; 6 uses
  %i.bg = icmp eq i32 %.02697, -1
  %i.bh = getelementptr i8, ptr %.sroa.0.096, i64 16
  %i.bi = load double, ptr %i.bh, align 8         ; 2 uses
  %i.bj = load double, ptr %5, align 8
  %i.bk = fcmp oge double %i.bi, %i.bj
  %i.bl = load double, ptr %i.bd, align 8
  %i.bm = fcmp ole double %i.bi, %i.bl
  %or.cond = select i1 %i.bk, i1 %i.bm, i1 false  ; 2 uses
  br i1 %i.bg, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  br i1 %or.cond, label %bb.m, label %_ZNK8QCPRange8containsEd.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr i8, ptr %.sroa.0.096, i64 8
  %i.bo = load double, ptr %i.bn, align 8         ; 2 uses
  %i.bp = load double, ptr %4, align 8
  %i.bq = fcmp oge double %i.bo, %i.bp
  %i.br = load double, ptr %i.be, align 8
  %i.bs = fcmp ole double %i.bo, %i.br
  %or.cond85 = select i1 %i.bq, i1 %i.bs, i1 false
  br i1 %or.cond85, label %bb.n, label %_ZNK8QCPRange8containsEd.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.bt = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = getelementptr i8, ptr %i.bt, i64 32
  %i.bx = load i32, ptr %i.bw, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [24 x i8], ptr %i.bv, i64 %i.by
  %i.ca = ptrtoint ptr %.sroa.0.096 to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 24
  %i.ce = trunc i64 %i.cd to i32
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.o:                                             ; preds = %bb.k
  br i1 %or.cond, label %bb.p, label %_ZNK8QCPRange8containsEd.exit57.thread

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr i8, ptr %.sroa.0.096, i64 8
  %i.cg = load double, ptr %i.cf, align 8         ; 2 uses
  %i.ch = load double, ptr %4, align 8
  %i.ci = fcmp oge double %i.cg, %i.ch
  %i.cj = load double, ptr %i.be, align 8
  %i.ck = fcmp ole double %i.cg, %i.cj
  %or.cond91 = select i1 %i.ci, i1 %i.ck, i1 false
  br i1 %or.cond91, label %_ZNK8QCPRange8containsEd.exit.thread, label %_ZNK8QCPRange8containsEd.exit57.thread

_ZNK8QCPRange8containsEd.exit57.thread:           ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.cl = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 16
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cl, i64 32
  %i.cp = load i32, ptr %i.co, align 8
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr [24 x i8], ptr %i.cn, i64 %i.cq
  %i.cs = ptrtoint ptr %.sroa.0.096 to i64
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = sdiv exact i64 %i.cu, 24
  %i.cw = trunc i64 %i.cv to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %6, i32 noundef %.02697, i32 noundef %i.cw)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %_ZNK8QCPRange8containsEd.exit57.thread
  %i.cx = load i64, ptr %i.bf, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.cx, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %.noexc59 unwind label %bb.r

.noexc59:                                         ; preds = %bb.q
  %i.cy = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cy, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc59
  %i.cz = load atomic i32, ptr %i.cy monotonic, align 4
  %i.da = icmp sgt i32 %i.cz, 1
  br i1 %i.da, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc59
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit unwind label %bb.r

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.r:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.q, %_ZNK8QCPRange8containsEd.exit57.thread
  %i.db = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.y

_ZNK8QCPRange8containsEd.exit.thread:             ; preds = %bb.p, %bb.m, %bb.l, %bb.n, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit
  %.127 = phi i32 [ %i.ce, %bb.n ], [ -1, %bb.l ], [ -1, %bb.m ], [ %.02697, %bb.p ], [ -1, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit ] ; 3 uses
  %i.dc = getelementptr i8, ptr %.sroa.0.096, i64 24 ; 2 uses
  %.not93 = icmp eq ptr %i.dc, %i.ba
  br i1 %.not93, label %._crit_edge, label %bb.k, !llvm.loop !1908

bb.s:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.dd = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.de = getelementptr i8, ptr %i.dd, i64 16
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = getelementptr i8, ptr %i.dd, i64 32
  %i.dh = load i32, ptr %i.dg, align 8
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr [24 x i8], ptr %i.df, i64 %i.di
  %i.dk = ptrtoint ptr %i.ba to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 24
  %i.do = trunc i64 %i.dn to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %7, i32 noundef %.127, i32 noundef %i.do)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dq = load i64, ptr %i.dp, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.dq, ptr noundef nonnull align 4 dereferenceable(8) %7)
          to label %.noexc64 unwind label %bb.u

.noexc64:                                         ; preds = %bb.t
  %i.dr = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i61 = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i.i.i61, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i63, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i62

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i62: ; preds = %.noexc64
  %i.ds = load atomic i32, ptr %i.dr monotonic, align 4
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i63, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit66

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i63: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i62, %.noexc64
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit66 unwind label %bb.u

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit66: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i62, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.v

bb.u:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i63, %bb.t, %bb.s
  %i.du = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.y

bb.v:                                             ; preds = %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit66, %._crit_edge
  invoke void @_ZN16QCPDataSelection8simplifyEv(ptr noundef align 8 dereferenceable_or_null(24) %0)
          to label %bb.x unwind label %bb.w

bb.w:                                             ; preds = %bb.i, %bb.v
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.v, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.y:                                             ; preds = %bb.r, %bb.u, %bb.w
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dv, %bb.w ], [ %i.db, %bb.r ], [ %i.du, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %10
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.y ], [ %11, %10 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %8
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.z ], [ %9, %8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @_ZN16QCPDataSelectionD2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #50
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn
end_hunk_3
begin_hunk_4_@_ZNK22QCPAbstractPlottable1DI11QCPBarsDataE17dataPixelPositionEi:bb.a
  %i.n = getelementptr [16 x i8], ptr %i.l, i64 %i.m
  %i.o = zext nneg i32 %1 to i64
  %i.p = getelementptr [16 x i8], ptr %i.n, i64 %i.o ; 2 uses
  %i.q = load double, ptr %i.p, align 8
  %i.r = getelementptr i8, ptr %i.p, i64 8
  %i.s = load double, ptr %i.r, align 8
  %i.t = tail call { double, double } @_ZNK20QCPAbstractPlottable14coordsToPixelsEdd(ptr noundef align 8 dereferenceable_or_null(184) %0, double noundef %i.q, double noundef %i.s) ; 2 uses
  %i.u = extractvalue { double, double } %i.t, 0
  %i.v = extractvalue { double, double } %i.t, 1
  br label %bb.q

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  store i32 2, ptr %5, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.w, i8 0, i64 20, i1 false)
  store ptr @.str.230, ptr %i.x, align 8
  call void @_ZNK14QMessageLogger5debugEv(ptr dead_on_unwind nonnull writable sret(%class.QDebug) align 8 %4, ptr noundef nonnull align 8 dereferenceable_or_null(32) %5)
  %i.y = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %3, i64 106, ptr @__PRETTY_FUNCTION__._ZNK22QCPAbstractPlottable1DI11QCPBarsDataE17dataPixelPositionEi)
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.d
  %i.z = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %.noexc
  %i.aa = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i.i.i, label %_ZN7QStringD2Ev.exit.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i:    ; preds = %bb.e
  %i.ab = atomicrmw add ptr %i.aa, i32 -1 acq_rel, align 4
  %.not.i.i.i = icmp eq i32 %i.ab, 1
  br i1 %.not.i.i.i, label %bb.f, label %_ZN7QStringD2Ev.exit.i

bb.f:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i
  %i.ac = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ac, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit.i

_ZN7QStringD2Ev.exit.i:                           ; preds = %bb.f, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  %i.ad = load ptr, ptr %4, align 8               ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 48
  %i.af = load i8, ptr %i.ae, align 8, !range !175, !noundef !176
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.g, label %_ZN6QDebuglsEPKc.exit

bb.g:                                             ; preds = %_ZN7QStringD2Ev.exit.i
  %i.ah = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ad, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit_crit_edge:                 ; preds = %bb.g
  %.pre = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit

bb.h:                                             ; preds = %.noexc
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %3, align 8               ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i2.i, label %_ZN7QStringD2Ev.exit5.i, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i:   ; preds = %bb.h
  %i.ak = atomicrmw add ptr %i.aj, i32 -1 acq_rel, align 4
  %.not.i.i4.i = icmp eq i32 %i.ak, 1
  br i1 %.not.i.i4.i, label %bb.i, label %_ZN7QStringD2Ev.exit5.i

bb.i:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i
  %i.al = load ptr, ptr %3, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.al, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit5.i

_ZN7QStringD2Ev.exit5.i:                          ; preds = %bb.i, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br label %.body

_ZN6QDebuglsEPKc.exit:                            ; preds = %._ZN6QDebuglsEPKc.exit_crit_edge, %_ZN7QStringD2Ev.exit.i
  %i.am = phi ptr [ %.pre, %._ZN6QDebuglsEPKc.exit_crit_edge ], [ %i.ad, %_ZN7QStringD2Ev.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #50
  invoke void @_ZN7QString8fromUtf8E14QByteArrayView(ptr dead_on_unwind nonnull writable sret(%class.QString) align 8 %2, i64 19, ptr @.str.177)
          to label %.noexc15 unwind label %bb.p

.noexc15:                                         ; preds = %_ZN6QDebuglsEPKc.exit
  %i.an = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsERK7QString(ptr noundef align 8 dereferenceable_or_null(16) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %.noexc15
  %i.ao = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i11, label %_ZN7QStringD2Ev.exit.i14, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12:  ; preds = %bb.j
  %i.ap = atomicrmw add ptr %i.ao, i32 -1 acq_rel, align 4
  %.not.i.i.i13 = icmp eq i32 %i.ap, 1
  br i1 %.not.i.i.i13, label %bb.k, label %_ZN7QStringD2Ev.exit.i14

bb.k:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12
  %i.aq = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.aq, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit.i14

_ZN7QStringD2Ev.exit.i14:                         ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.ar = load ptr, ptr %4, align 8               ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i8, ptr %i.as, align 8, !range !175, !noundef !176
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %_ZN6QDebuglsEPKc.exit19

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit.i14
  %i.av = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ar, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit19_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit19_crit_edge:               ; preds = %bb.l
  %.pre25 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit19

bb.m:                                             ; preds = %.noexc15
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i7 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i2.i7, label %_ZN7QStringD2Ev.exit5.i10, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8:  ; preds = %bb.m
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %.not.i.i4.i9 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i4.i9, label %bb.n, label %_ZN7QStringD2Ev.exit5.i10

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8
  %i.az = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit5.i10

_ZN7QStringD2Ev.exit5.i10:                        ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %.body

_ZN6QDebuglsEPKc.exit19:                          ; preds = %._ZN6QDebuglsEPKc.exit19_crit_edge, %_ZN7QStringD2Ev.exit.i14
  %i.ba = phi ptr [ %.pre25, %._ZN6QDebuglsEPKc.exit19_crit_edge ], [ %i.ar, %_ZN7QStringD2Ev.exit.i14 ]
  %i.bb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.ba, i32 noundef %1)
          to label %.noexc20 unwind label %bb.p   ; 0 uses

.noexc20:                                         ; preds = %_ZN6QDebuglsEPKc.exit19
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load i8, ptr %i.bd, align 8, !range !175, !noundef !176
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %_ZN6QDebuglsEi.exit

bb.o:                                             ; preds = %.noexc20
  %i.bg = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bc, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.p ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc20, %bb.o
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN6QDebuglsEPKc.exit19, %bb.l, %_ZN6QDebuglsEPKc.exit, %bb.g, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %_ZN7QStringD2Ev.exit5.i10, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %_ZN7QStringD2Ev.exit5.i ], [ %i.bh, %bb.p ], [ %i.aw, %_ZN7QStringD2Ev.exit5.i10 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %_ZN6QDebuglsEi.exit, %bb.c
  %.sroa.3.0 = phi double [ %i.v, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.sroa.024.0 = phi double [ %i.u, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZNK22QCPAbstractPlottable1DI11QCPBarsDataE16sortKeyIsMainKeyEv(ptr noundef align 8 dereferenceable_or_null(208) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK22QCPAbstractPlottable1DI11QCPBarsDataE14selectTestRectERK6QRectFb(ptr dead_on_unwind noalias writable sret(%class.QCPDataSelection) align 8 %0, ptr noundef align 8 dereferenceable_or_null(208) %1, ptr noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPBarsData, align 8         ; 4 uses
  %5 = alloca %class.QCPBarsData, align 8         ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %6 = alloca %class.QCPRange, align 8            ; 9 uses
  %7 = alloca %class.QCPRange, align 8            ; 6 uses
  %8 = alloca %class.QCPDataRange, align 4        ; 5 uses
  %9 = alloca %class.QCPDataRange, align 4        ; 5 uses
  tail call void @_ZN16QCPDataSelectionC1Ev(ptr noundef align 8 dereferenceable_or_null(24) %0)
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 144
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr i8, ptr %1, i64 192        ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = trunc i64 %i.k to i32
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.x = getelementptr i8, ptr %1, i64 128
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.y, i64 4
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38:           ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %1, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.af = load double, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load double, ptr %i.ag, align 8
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.af, double noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit unwind label %bb.n

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load <2 x double>, ptr %2, align 8
  %i.ak = load <2 x double>, ptr %i.ai, align 8
  %i.al = fadd <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.am, double noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41 unwind label %bb.n

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41: ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.ao = load double, ptr %i.a, align 8
  %i.ap = load double, ptr %i.c, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef %i.ao, double noundef %i.ap)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.aq = load double, ptr %i.b, align 8
  %i.ar = load double, ptr %i.d, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7, double noundef %i.aq, double noundef %i.ar)
          to label %bb.j unwind label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr i8, ptr %i.as, i64 32
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 24
  %i.az = load i64, ptr %i.ay, align 8            ; 3 uses
  %10 = getelementptr [16 x i8], ptr %i.au, i64 %i.az
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp eq i32 %i.aw, %i.ba
  br i1 %i.bb, label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load double, ptr %6, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  invoke void @_ZN11QCPBarsDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %5, double noundef %i.bc, double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.k
  %.idx7.i = shl nsw i64 %i.ax, 4
  %i.bd = getelementptr i8, ptr %i.au, i64 %.idx7.i ; 2 uses
  %.fca.0.load.i.i = load double, ptr %5, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.be = sub i64 %i.az, %i.ax
  %gepdiff.i = shl i64 %i.be, 4
  %i.bf = ashr exact i64 %gepdiff.i, 4            ; 2 uses
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit

_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %.noexc, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bf, %.noexc ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bd, %.noexc ] ; 2 uses
  %i.bh = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.bi = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = fcmp olt double %i.bj, %.fca.0.load.i.i ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 16
  %i.bm = xor i64 %i.bh, -1
  %i.bn = add nsw i64 %.016.i.i.i, %i.bm
  %.sroa.012.1.i.i.i = select i1 %i.bk, ptr %i.bl, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.bk, i64 %i.bn, i64 %i.bh ; 2 uses
  %i.bo = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.bo, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit, !llvm.loop !73

_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit: ; preds = %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.j, %.noexc
  %.sroa.04.0.i = phi ptr [ %10, %bb.j ], [ %i.bd, %.noexc ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  %i.bp = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 24
  %i.br = load i64, ptr %i.bq, align 8            ; 3 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 32
  %i.bt = load i32, ptr %i.bs, align 8            ; 2 uses
  %i.bu = trunc i64 %i.br to i32
  %i.bv = icmp eq i32 %i.bt, %i.bu
  %i.bw = getelementptr i8, ptr %i.bp, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8            ; 2 uses
  br i1 %i.bv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit
  %i.by = getelementptr [16 x i8], ptr %i.bx, i64 %i.br
  br label %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit

bb.m:                                             ; preds = %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bz = load double, ptr %11, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  invoke void @_ZN11QCPBarsDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %4, double noundef %i.bz, double noundef 0.000000e+00)
          to label %.noexc54 unwind label %bb.ac

.noexc54:                                         ; preds = %bb.m
  %i.ca = sext i32 %i.bt to i64                   ; 2 uses
  %.idx7.i42 = shl nsw i64 %i.ca, 4
  %i.cb = getelementptr i8, ptr %i.bx, i64 %.idx7.i42 ; 2 uses
  %.fca.0.load.i.i43 = load double, ptr %4, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cc = sub i64 %i.br, %i.ca
  %gepdiff.i44 = shl i64 %i.cc, 4
  %i.cd = ashr exact i64 %gepdiff.i44, 4          ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, 0
  br i1 %i.ce, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47, label %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit

_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47: ; preds = %.noexc54, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47
  %.016.i.i.i48 = phi i64 [ %.1.i.i.i53, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47 ], [ %i.cd, %.noexc54 ] ; 2 uses
  %.sroa.012.015.i.i.i49 = phi ptr [ %.sroa.012.1.i.i.i52, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47 ], [ %i.cb, %.noexc54 ] ; 2 uses
  %i.cf = lshr i64 %.016.i.i.i48, 1               ; 3 uses
  %i.cg = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i49, i64 %i.cf ; 2 uses
  %i.ch = load double, ptr %i.cg, align 8
  %i.ci = fcmp olt double %.fca.0.load.i.i43, %i.ch ; 2 uses
  %i.cj = getelementptr i8, ptr %i.cg, i64 16
  %i.ck = xor i64 %i.cf, -1
  %i.cl = add nsw i64 %.016.i.i.i48, %i.ck
  %.sroa.012.1.i.i.i52 = select i1 %i.ci, ptr %.sroa.012.015.i.i.i49, ptr %i.cj ; 2 uses
  %.1.i.i.i53 = select i1 %i.ci, i64 %i.cf, i64 %i.cl ; 2 uses
  %i.cm = icmp sgt i64 %.1.i.i.i53, 0
  br i1 %i.cm, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47, label %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit, !llvm.loop !74

bb.n:                                             ; preds = %bb.h, %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.o:                                             ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit41
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit: ; preds = %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47, %.noexc54, %bb.l
  %.sroa.04.0.i46 = phi ptr [ %i.by, %bb.l ], [ %i.cb, %.noexc54 ], [ %.sroa.012.1.i.i.i52, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i47 ] ; 3 uses
  %i.cp = icmp eq ptr %.sroa.04.0.i, %.sroa.04.0.i46
  br i1 %i.cp, label %bb.ad, label %.preheader

.preheader:                                       ; preds = %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.q

bb.p:                                             ; preds = %_ZNK8QCPRange8containsEd.exit.thread
  %.not29 = icmp eq i32 %.127, -1
  br i1 %.not29, label %bb.ab, label %bb.y

bb.q:                                             ; preds = %.preheader, %_ZNK8QCPRange8containsEd.exit.thread
  %.02694 = phi i32 [ -1, %.preheader ], [ %.127, %_ZNK8QCPRange8containsEd.exit.thread ] ; 3 uses
  %.sroa.0.093 = phi ptr [ %.sroa.04.0.i, %.preheader ], [ %i.em, %_ZNK8QCPRange8containsEd.exit.thread ] ; 6 uses
  %i.cs = icmp eq i32 %.02694, -1
  %i.ct = getelementptr i8, ptr %.sroa.0.093, i64 8
  %i.cu = load double, ptr %i.ct, align 8         ; 2 uses
  %i.cv = load double, ptr %7, align 8
  %i.cw = fcmp oge double %i.cu, %i.cv
  %i.cx = load double, ptr %12, align 8
  %i.cy = fcmp ole double %i.cu, %i.cx
  %or.cond = select i1 %i.cw, i1 %i.cy, i1 false  ; 2 uses
  br i1 %i.cs, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br i1 %or.cond, label %bb.s, label %_ZNK8QCPRange8containsEd.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cz = load double, ptr %.sroa.0.093, align 8  ; 2 uses
  %i.da = load double, ptr %6, align 8
  %i.db = fcmp oge double %i.cz, %i.da
  %i.dc = load double, ptr %i.cq, align 8
  %i.dd = fcmp ole double %i.cz, %i.dc
  %or.cond84 = select i1 %i.db, i1 %i.dd, i1 false
  br i1 %or.cond84, label %bb.t, label %_ZNK8QCPRange8containsEd.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.de = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = getelementptr i8, ptr %i.de, i64 32
  %i.di = load i32, ptr %i.dh, align 8
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr [16 x i8], ptr %i.dg, i64 %i.dj
  %i.dl = ptrtoint ptr %.sroa.0.093 to i64
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = lshr exact i64 %i.dn, 4
  %i.dp = trunc i64 %i.do to i32
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.u:                                             ; preds = %bb.q
  br i1 %or.cond, label %bb.v, label %_ZNK8QCPRange8containsEd.exit56.thread

bb.v:                                             ; preds = %bb.u
  %i.dq = load double, ptr %.sroa.0.093, align 8  ; 2 uses
  %i.dr = load double, ptr %6, align 8
  %i.ds = fcmp oge double %i.dq, %i.dr
  %i.dt = load double, ptr %i.cq, align 8
  %i.du = fcmp ole double %i.dq, %i.dt
  %or.cond90 = select i1 %i.ds, i1 %i.du, i1 false
  br i1 %or.cond90, label %_ZNK8QCPRange8containsEd.exit.thread, label %_ZNK8QCPRange8containsEd.exit56.thread

_ZNK8QCPRange8containsEd.exit56.thread:           ; preds = %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.dv = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = getelementptr i8, ptr %i.dv, i64 32
  %i.dz = load i32, ptr %i.dy, align 8
  %i.ea = sext i32 %i.dz to i64
  %i.eb = getelementptr [16 x i8], ptr %i.dx, i64 %i.ea
  %i.ec = ptrtoint ptr %.sroa.0.093 to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = lshr exact i64 %i.ee, 4
  %i.eg = trunc i64 %i.ef to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %8, i32 noundef %.02694, i32 noundef %i.eg)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZNK8QCPRange8containsEd.exit56.thread
  %i.eh = load i64, ptr %i.cr, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.eh, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %.noexc58 unwind label %bb.x

.noexc58:                                         ; preds = %bb.w
  %i.ei = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc58
  %i.ej = load atomic i32, ptr %i.ei monotonic, align 4
  %i.ek = icmp sgt i32 %i.ej, 1
  br i1 %i.ek, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc58
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit unwind label %bb.x

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.x:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.w, %_ZNK8QCPRange8containsEd.exit56.thread
  %i.el = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.ae

_ZNK8QCPRange8containsEd.exit.thread:             ; preds = %bb.v, %bb.s, %bb.r, %bb.t, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit
  %.127 = phi i32 [ %i.dp, %bb.t ], [ -1, %bb.r ], [ -1, %bb.s ], [ %.02694, %bb.v ], [ -1, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit ] ; 3 uses
  %i.em = getelementptr i8, ptr %.sroa.0.093, i64 16 ; 2 uses
  %.not91 = icmp eq ptr %i.em, %.sroa.04.0.i46
  br i1 %.not91, label %bb.p, label %bb.q, !llvm.loop !1959

bb.y:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.en = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr i8, ptr %i.en, i64 32
  %i.er = load i32, ptr %i.eq, align 8
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr [16 x i8], ptr %i.ep, i64 %i.es
  %i.eu = ptrtoint ptr %.sroa.04.0.i46 to i64
  %i.ev = ptrtoint ptr %i.et to i64
  %i.ew = sub i64 %i.eu, %i.ev
  %i.ex = lshr exact i64 %i.ew, 4
  %i.ey = trunc i64 %i.ex to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %9, i32 noundef %.127, i32 noundef %i.ey)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ez = load i64, ptr %i.cr, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ez, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %.noexc63 unwind label %bb.aa

.noexc63:                                         ; preds = %bb.z
  %i.fa = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i60 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i.i.i.i.i60, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61: ; preds = %.noexc63
  %i.fb = load atomic i32, ptr %i.fa monotonic, align 4
  %i.fc = icmp sgt i32 %i.fb, 1
  br i1 %i.fc, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61, %.noexc63
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65 unwind label %bb.aa

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i61, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  br label %bb.ab

bb.aa:                                            ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i62, %bb.z, %bb.y
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  br label %bb.ae

bb.ab:                                            ; preds = %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit65, %bb.p
  invoke void @_ZN16QCPDataSelection8simplifyEv(ptr noundef align 8 dereferenceable_or_null(24) %0)
          to label %bb.ad unwind label %bb.ac

bb.ac:                                            ; preds = %bb.i, %bb.m, %bb.k, %bb.ab
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab, %_ZNK16QCPDataContainerI11QCPBarsDataE7findEndEdb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.ae:                                            ; preds = %bb.x, %bb.aa, %bb.ac
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.fe, %bb.ac ], [ %i.el, %bb.x ], [ %i.fd, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.o
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ae ], [ %i.co, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.n
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.af ], [ %i.cn, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @_ZN16QCPDataSelectionD2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #50
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.f, %bb.g, %bb.d, %bb.e, %bb.ad, %bb.c, %bb.b, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit38, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef i32 @_ZNK22QCPAbstractPlottable1DI11QCPBarsDataE9findBeginEdb(ptr noundef align 8 dereferenceable_or_null(208) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPBarsData, align 8         ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr [16 x i8], ptr %i.j, i64 %i.d
  br label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit

bb.c:                                             ; preds = %bb.a
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %.idx7.i = shl nsw i64 %i.l, 4
  %i.m = getelementptr i8, ptr %i.j, i64 %.idx7.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN11QCPBarsDataC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %3, double noundef %1, double noundef 0.000000e+00)
  %.fca.0.load.i.i = load double, ptr %3, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.n = sub i64 %i.d, %i.l
  %gepdiff.i = shl i64 %i.n, 4
  %i.o = ashr exact i64 %gepdiff.i, 4             ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN5QListI11QCPBarsDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i

_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %bb.c, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.o, %bb.c ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.r = getelementptr [16 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp olt double %i.s, %.fca.0.load.i.i   ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 16
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.016.i.i.i, %i.v
  %.sroa.012.1.i.i.i = select i1 %i.t, ptr %i.u, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.q  ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN5QListI11QCPBarsDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i, !llvm.loop !73

_ZSt11lower_boundIN5QListI11QCPBarsDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.c
  %.sroa.012.0.lcssa.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI11QCPBarsDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 3 uses
  br i1 %2, label %bb.d, label %_ZNK16QCPDataContainerI11QCPBarsDataE9findBeginEdb.exit

bb.d:                                             ; preds = %_ZSt11lower_boundIN5QListI11QCPBarsDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i
  %i.y = load ptr, ptr %i.i, align 8
  %i.z = load i32, ptr %i.e, align 8
  %i.aa = sext i32 %i.z to i64
end_hunk_4
begin_hunk_5_@_ZNK22QCPAbstractPlottable1DI16QCPFinancialDataE17dataPixelPositionEi:bb.a
  br label %_ZN7QStringD2Ev.exit.i14

_ZN7QStringD2Ev.exit.i14:                         ; preds = %bb.k, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i.i12, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  %i.ar = load ptr, ptr %4, align 8               ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 48
  %i.at = load i8, ptr %i.as, align 8, !range !175, !noundef !176
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.l, label %_ZN6QDebuglsEPKc.exit19

bb.l:                                             ; preds = %_ZN7QStringD2Ev.exit.i14
  %i.av = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.ar, i8 noundef signext 32)
          to label %._ZN6QDebuglsEPKc.exit19_crit_edge unwind label %bb.p ; 0 uses

._ZN6QDebuglsEPKc.exit19_crit_edge:               ; preds = %bb.l
  %.pre25 = load ptr, ptr %4, align 8
  br label %_ZN6QDebuglsEPKc.exit19

bb.m:                                             ; preds = %.noexc15
  %i.aw = landingpad { ptr, i32 }
          cleanup
  %i.ax = load ptr, ptr %2, align 8               ; 2 uses
  %.not.i.i.i2.i7 = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i2.i7, label %_ZN7QStringD2Ev.exit5.i10, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8:  ; preds = %bb.m
  %i.ay = atomicrmw add ptr %i.ax, i32 -1 acq_rel, align 4
  %.not.i.i4.i9 = icmp eq i32 %i.ay, 1
  br i1 %.not.i.i4.i9, label %bb.n, label %_ZN7QStringD2Ev.exit5.i10

bb.n:                                             ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8
  %i.az = load ptr, ptr %2, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.az, i64 noundef 2, i64 noundef 8) #50
  br label %_ZN7QStringD2Ev.exit5.i10

_ZN7QStringD2Ev.exit5.i10:                        ; preds = %bb.n, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i3.i8, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #50
  br label %.body

_ZN6QDebuglsEPKc.exit19:                          ; preds = %._ZN6QDebuglsEPKc.exit19_crit_edge, %_ZN7QStringD2Ev.exit.i14
  %i.ba = phi ptr [ %.pre25, %._ZN6QDebuglsEPKc.exit19_crit_edge ], [ %i.ar, %_ZN7QStringD2Ev.exit.i14 ]
  %i.bb = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEi(ptr noundef align 8 dereferenceable_or_null(16) %i.ba, i32 noundef %1)
          to label %.noexc20 unwind label %bb.p   ; 0 uses

.noexc20:                                         ; preds = %_ZN6QDebuglsEPKc.exit19
  %i.bc = load ptr, ptr %4, align 8               ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 48
  %i.be = load i8, ptr %i.bd, align 8, !range !175, !noundef !176
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.o, label %_ZN6QDebuglsEi.exit

bb.o:                                             ; preds = %.noexc20
  %i.bg = invoke noundef align 8 dereferenceable(16) ptr @_ZN11QTextStreamlsEc(ptr noundef align 8 dereferenceable_or_null(16) %i.bc, i8 noundef signext 32)
          to label %_ZN6QDebuglsEi.exit unwind label %bb.p ; 0 uses

_ZN6QDebuglsEi.exit:                              ; preds = %.noexc20, %bb.o
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %bb.q

bb.p:                                             ; preds = %bb.o, %_ZN6QDebuglsEPKc.exit19, %bb.l, %_ZN6QDebuglsEPKc.exit, %bb.g, %bb.d
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.p, %_ZN7QStringD2Ev.exit5.i10, %_ZN7QStringD2Ev.exit5.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.ai, %_ZN7QStringD2Ev.exit5.i ], [ %i.bh, %bb.p ], [ %i.aw, %_ZN7QStringD2Ev.exit5.i10 ]
  call void @_ZN6QDebugD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %4) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  resume { ptr, i32 } %eh.lpad-body

bb.q:                                             ; preds = %_ZN6QDebuglsEi.exit, %bb.c
  %.sroa.3.0 = phi double [ %i.v, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.sroa.024.0 = phi double [ %i.u, %bb.c ], [ 0.000000e+00, %_ZN6QDebuglsEi.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.024.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef zeroext i1 @_ZNK22QCPAbstractPlottable1DI16QCPFinancialDataE16sortKeyIsMainKeyEv(ptr noundef align 8 dereferenceable_or_null(208) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK22QCPAbstractPlottable1DI16QCPFinancialDataE14selectTestRectERK6QRectFb(ptr dead_on_unwind noalias writable sret(%class.QCPDataSelection) align 8 %0, ptr noundef align 8 dereferenceable_or_null(208) %1, ptr noundef align 8 dereferenceable(32) %2, i1 noundef zeroext %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.QCPFinancialData, align 8    ; 4 uses
  %5 = alloca %class.QCPFinancialData, align 8    ; 4 uses
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %6 = alloca %class.QCPRange, align 8            ; 9 uses
  %7 = alloca %class.QCPRange, align 8            ; 6 uses
  %8 = alloca %class.QCPDataRange, align 4        ; 5 uses
  %9 = alloca %class.QCPDataRange, align 4        ; 5 uses
  tail call void @_ZN16QCPDataSelectionC1Ev(ptr noundef align 8 dereferenceable_or_null(24) %0)
  br i1 %3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 144
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr i8, ptr %1, i64 192        ; 6 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr i8, ptr %i.i, i64 32
  %i.m = load i32, ptr %i.l, align 8
  %i.n = trunc i64 %i.k to i32
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr i8, ptr %1, i64 112
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %i.q, i64 4
  %i.t = load atomic i32, ptr %i.s monotonic, align 4
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit:             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %1, i64 120
  %i.w = load ptr, ptr %i.v, align 8
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  %i.x = getelementptr i8, ptr %1, i64 128
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.y, i64 4
  %i.ab = load atomic i32, ptr %i.aa monotonic, align 4
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit36

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit36:           ; preds = %bb.g
  %i.ad = getelementptr i8, ptr %1, i64 136
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not27 = icmp eq ptr %i.ae, null
  br i1 %.not27, label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread, label %bb.h

bb.h:                                             ; preds = %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #50
  %i.af = load double, ptr %2, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = load double, ptr %i.ag, align 8
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.af, double noundef %i.ah, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit unwind label %bb.m

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit: ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.aj = load <2 x double>, ptr %2, align 8
  %i.ak = load <2 x double>, ptr %i.ai, align 8
  %i.al = fadd <2 x double> %i.aj, %i.ak          ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = extractelement <2 x double> %i.al, i64 1
  invoke void @_ZNK20QCPAbstractPlottable14pixelsToCoordsEddRdS0_(ptr noundef readonly align 8 dereferenceable_or_null(184) %1, double noundef %i.am, double noundef %i.an, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit39 unwind label %bb.m

_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit39: ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #50
  %i.ao = load double, ptr %i.a, align 8
  %i.ap = load double, ptr %i.c, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %6, double noundef %i.ao, double noundef %i.ap)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit39
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #50
  %i.aq = load double, ptr %i.b, align 8
  %i.ar = load double, ptr %i.d, align 8
  invoke void @_ZN8QCPRangeC1Edd(ptr noundef nonnull align 8 dereferenceable_or_null(16) %7, double noundef %i.aq, double noundef %i.ar)
          to label %bb.j unwind label %bb.ab

bb.j:                                             ; preds = %bb.i
  %i.as = load ptr, ptr %i.h, align 8             ; 3 uses
  %i.at = getelementptr i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr i8, ptr %i.as, i64 32
  %i.aw = load i32, ptr %i.av, align 8            ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr i8, ptr %i.as, i64 24
  %i.az = load i64, ptr %i.ay, align 8            ; 4 uses
  %10 = getelementptr [40 x i8], ptr %i.au, i64 %i.az
  %i.ba = trunc i64 %i.az to i32
  %i.bb = icmp eq i32 %i.aw, %i.ba
  br i1 %i.bb, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread.a, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load double, ptr %6, align 8
  %.idx6.i = mul nsw i64 %i.ax, 40
  %i.bd = getelementptr i8, ptr %i.au, i64 %.idx6.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #50
  invoke void @_ZN16QCPFinancialDataC1Eddddd(ptr noundef nonnull align 8 dereferenceable_or_null(40) %5, double noundef %i.bc, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %.noexc unwind label %bb.ab

.noexc:                                           ; preds = %bb.k
  %.idx7.i = sub i64 %i.az, %i.ax
  %gepdiff.i = mul i64 %.idx7.i, 40               ; 2 uses
  %i.be = icmp sgt i64 %gepdiff.i, 0
  br i1 %i.be, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %.noexc
  %i.bf = udiv exact i64 %gepdiff.i, 40
  %i.bg = load double, ptr %5, align 8
  br label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bf, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.bd, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.bh = lshr i64 %.016.i.i.i, 1                 ; 3 uses
  %i.bi = getelementptr [40 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.bh ; 2 uses
  %i.bj = load double, ptr %i.bi, align 8
  %i.bk = fcmp olt double %i.bj, %i.bg            ; 2 uses
  %i.bl = getelementptr i8, ptr %i.bi, i64 40
  %i.bm = xor i64 %i.bh, -1
  %i.bn = add nsw i64 %.016.i.i.i, %i.bm
  %.sroa.012.1.i.i.i = select i1 %i.bk, ptr %i.bl, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.bk, i64 %i.bn, i64 %i.bh ; 2 uses
  %i.bo = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.bo, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit, !llvm.loop !90

_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %.noexc
  %.sroa.012.0.lcssa.i.i.i = phi ptr [ %i.bd, %.noexc ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #50
  %.pre = load ptr, ptr %i.h, align 8             ; 3 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 24
  %.pre94.a = load i64, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.phi.trans.insert95.a = getelementptr i8, ptr %.pre, i64 32
  %.pre96.a = load i32, ptr %.phi.trans.insert95.a, align 8 ; 2 uses
  %.phi.trans.insert97 = getelementptr i8, ptr %.pre, i64 16
  %.pre98 = load ptr, ptr %.phi.trans.insert97, align 8 ; 2 uses
  %.pre99 = trunc i64 %.pre94.a to i32
  %i.bp = icmp eq i32 %.pre96.a, %.pre99
  br i1 %i.bp, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread.a, label %bb.l

_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread.a: ; preds = %bb.j, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit
  %.sroa.0.0.i110 = phi ptr [ %.sroa.012.0.lcssa.i.i.i, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit ], [ %10, %bb.j ]
  %i.bq = phi i64 [ %.pre94.a, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit ], [ %i.az, %bb.j ]
  %i.br = phi ptr [ %.pre98, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit ], [ %i.au, %bb.j ]
  %i.bs = getelementptr [40 x i8], ptr %i.br, i64 %i.bq
  br label %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit

bb.l:                                             ; preds = %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit
  %11 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bt = load double, ptr %11, align 8
  %i.bu = sext i32 %.pre96.a to i64               ; 2 uses
  %.idx6.i40 = mul nsw i64 %i.bu, 40
  %i.bv = getelementptr i8, ptr %.pre98, i64 %.idx6.i40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #50
  invoke void @_ZN16QCPFinancialDataC1Eddddd(ptr noundef nonnull align 8 dereferenceable_or_null(40) %4, double noundef %i.bt, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
          to label %.noexc53 unwind label %bb.ab

.noexc53:                                         ; preds = %bb.l
  %.idx7.i41 = sub i64 %.pre94.a, %i.bu
  %gepdiff.i42 = mul i64 %.idx7.i41, 40           ; 2 uses
  %i.bw = icmp sgt i64 %gepdiff.i42, 0
  br i1 %i.bw, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i45, label %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i45: ; preds = %.noexc53
  %i.bx = udiv exact i64 %gepdiff.i42, 40
  %i.by = load double, ptr %4, align 8
  br label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i45
  %.016.i.i.i47 = phi i64 [ %.1.i.i.i52, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46 ], [ %i.bx, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i45 ] ; 2 uses
  %.sroa.012.015.i.i.i48 = phi ptr [ %.sroa.012.1.i.i.i51, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46 ], [ %i.bv, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i45 ] ; 2 uses
  %i.bz = lshr i64 %.016.i.i.i47, 1               ; 3 uses
  %i.ca = getelementptr [40 x i8], ptr %.sroa.012.015.i.i.i48, i64 %i.bz ; 2 uses
  %i.cb = load double, ptr %i.ca, align 8
  %i.cc = fcmp olt double %i.by, %i.cb            ; 2 uses
  %i.cd = getelementptr i8, ptr %i.ca, i64 40
  %i.ce = xor i64 %i.bz, -1
  %i.cf = add nsw i64 %.016.i.i.i47, %i.ce
  %.sroa.012.1.i.i.i51 = select i1 %i.cc, ptr %.sroa.012.015.i.i.i48, ptr %i.cd ; 2 uses
  %.1.i.i.i52 = select i1 %i.cc, i64 %i.bz, i64 %i.cf ; 2 uses
  %i.cg = icmp sgt i64 %.1.i.i.i52, 0
  br i1 %i.cg, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46, label %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i, !llvm.loop !91

_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46, %.noexc53
  %.sroa.012.0.lcssa.i.i.i43 = phi ptr [ %i.bv, %.noexc53 ], [ %.sroa.012.1.i.i.i51, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i46 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #50
  br label %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit

bb.m:                                             ; preds = %bb.h, %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.n:                                             ; preds = %_ZNK20QCPAbstractPlottable14pixelsToCoordsERK7QPointFRdS3_.exit39
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit: ; preds = %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread.a, %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i
  %.sroa.0.0.i109 = phi ptr [ %.sroa.0.0.i110, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread.a ], [ %.sroa.012.0.lcssa.i.i.i, %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i ] ; 2 uses
  %.sroa.0.0.i44 = phi ptr [ %i.bs, %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit.thread.a ], [ %.sroa.012.0.lcssa.i.i.i43, %_ZSt11upper_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i ] ; 3 uses
  %i.cj = icmp eq ptr %.sroa.0.0.i109, %.sroa.0.0.i44
  br i1 %i.cj, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit
  %12 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.p

bb.o:                                             ; preds = %_ZNK8QCPRange8containsEd.exit.thread
  %.not28 = icmp eq i32 %.126, -1
  br i1 %.not28, label %bb.aa, label %bb.x

bb.p:                                             ; preds = %.preheader, %_ZNK8QCPRange8containsEd.exit.thread
  %.02593 = phi i32 [ -1, %.preheader ], [ %.126, %_ZNK8QCPRange8containsEd.exit.thread ] ; 3 uses
  %.sroa.0.092 = phi ptr [ %.sroa.0.0.i109, %.preheader ], [ %i.eg, %_ZNK8QCPRange8containsEd.exit.thread ] ; 6 uses
  %i.cm = icmp eq i32 %.02593, -1
  %i.cn = getelementptr i8, ptr %.sroa.0.092, i64 8
  %i.co = load double, ptr %i.cn, align 8         ; 2 uses
  %i.cp = load double, ptr %7, align 8
  %i.cq = fcmp oge double %i.co, %i.cp
  %i.cr = load double, ptr %12, align 8
  %i.cs = fcmp ole double %i.co, %i.cr
  %or.cond = select i1 %i.cq, i1 %i.cs, i1 false  ; 2 uses
  br i1 %i.cm, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  br i1 %or.cond, label %bb.r, label %_ZNK8QCPRange8containsEd.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.ct = load double, ptr %.sroa.0.092, align 8  ; 2 uses
  %i.cu = load double, ptr %6, align 8
  %i.cv = fcmp oge double %i.ct, %i.cu
  %i.cw = load double, ptr %i.ck, align 8
  %i.cx = fcmp ole double %i.ct, %i.cw
  %or.cond83 = select i1 %i.cv, i1 %i.cx, i1 false
  br i1 %or.cond83, label %bb.s, label %_ZNK8QCPRange8containsEd.exit.thread

bb.s:                                             ; preds = %bb.r
  %i.cy = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 16
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.cy, i64 32
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = sext i32 %i.dc to i64
  %i.de = getelementptr [40 x i8], ptr %i.da, i64 %i.dd
  %i.df = ptrtoint ptr %.sroa.0.092 to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 40
  %i.dj = trunc i64 %i.di to i32
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.t:                                             ; preds = %bb.p
  br i1 %or.cond, label %bb.u, label %_ZNK8QCPRange8containsEd.exit55.thread

bb.u:                                             ; preds = %bb.t
  %i.dk = load double, ptr %.sroa.0.092, align 8  ; 2 uses
  %i.dl = load double, ptr %6, align 8
  %i.dm = fcmp oge double %i.dk, %i.dl
  %i.dn = load double, ptr %i.ck, align 8
  %i.do = fcmp ole double %i.dk, %i.dn
  %or.cond89 = select i1 %i.dm, i1 %i.do, i1 false
  br i1 %or.cond89, label %_ZNK8QCPRange8containsEd.exit.thread, label %_ZNK8QCPRange8containsEd.exit55.thread

_ZNK8QCPRange8containsEd.exit55.thread:           ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #50
  %i.dp = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = getelementptr i8, ptr %i.dp, i64 32
  %i.dt = load i32, ptr %i.ds, align 8
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr [40 x i8], ptr %i.dr, i64 %i.du
  %i.dw = ptrtoint ptr %.sroa.0.092 to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = sdiv exact i64 %i.dy, 40
  %i.ea = trunc i64 %i.dz to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %8, i32 noundef %.02593, i32 noundef %i.ea)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZNK8QCPRange8containsEd.exit55.thread
  %i.eb = load i64, ptr %i.cl, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.eb, ptr noundef nonnull align 4 dereferenceable(8) %8)
          to label %.noexc57 unwind label %bb.w

.noexc57:                                         ; preds = %bb.v
  %i.ec = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ec, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i: ; preds = %.noexc57
  %i.ed = load atomic i32, ptr %i.ec monotonic, align 4
  %i.ee = icmp sgt i32 %i.ed, 1
  br i1 %i.ee, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %.noexc57
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit unwind label %bb.w

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %_ZNK8QCPRange8containsEd.exit.thread

bb.w:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i, %bb.v, %_ZNK8QCPRange8containsEd.exit55.thread
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #50
  br label %bb.ad

_ZNK8QCPRange8containsEd.exit.thread:             ; preds = %bb.u, %bb.r, %bb.q, %bb.s, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit
  %.126 = phi i32 [ %i.dj, %bb.s ], [ -1, %bb.q ], [ -1, %bb.r ], [ %.02593, %bb.u ], [ -1, %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit ] ; 3 uses
  %i.eg = getelementptr i8, ptr %.sroa.0.092, i64 40 ; 2 uses
  %.not90 = icmp eq ptr %i.eg, %.sroa.0.0.i44
  br i1 %.not90, label %bb.o, label %bb.p, !llvm.loop !2026

bb.x:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #50
  %i.eh = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr i8, ptr %i.eh, i64 32
  %i.el = load i32, ptr %i.ek, align 8
  %i.em = sext i32 %i.el to i64
  %i.en = getelementptr [40 x i8], ptr %i.ej, i64 %i.em
  %i.eo = ptrtoint ptr %.sroa.0.0.i44 to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = sdiv exact i64 %i.eq, 40
  %i.es = trunc i64 %i.er to i32
  invoke void @_ZN12QCPDataRangeC1Eii(ptr noundef nonnull align 4 dereferenceable_or_null(8) %9, i32 noundef %.126, i32 noundef %i.es)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.et = load i64, ptr %i.cl, align 8
  invoke void @_ZN9QtPrivate16QMovableArrayOpsI12QCPDataRangeE7emplaceIJRKS1_EEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.et, ptr noundef nonnull align 4 dereferenceable(8) %9)
          to label %.noexc62 unwind label %bb.z

.noexc62:                                         ; preds = %bb.y
  %i.eu = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i.i59 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i.i.i.i.i59, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i61, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i60

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i60: ; preds = %.noexc62
  %i.ev = load atomic i32, ptr %i.eu monotonic, align 4
  %i.ew = icmp sgt i32 %i.ev, 1
  br i1 %i.ew, label %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i61, label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit64

_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i61: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i60, %.noexc62
  invoke void @_ZN17QArrayDataPointerI12QCPDataRangeE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS1_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit64 unwind label %bb.z

_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit64: ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.i.i.i.i.i.i60, %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  br label %bb.aa

bb.z:                                             ; preds = %_ZNK17QArrayDataPointerI12QCPDataRangeE11needsDetachEv.exit.thread.i.i.i.i.i.i61, %bb.y, %bb.x
  %i.ex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #50
  br label %bb.ad

bb.aa:                                            ; preds = %_ZN16QCPDataSelection12addDataRangeERK12QCPDataRangeb.exit64, %bb.o
  invoke void @_ZN16QCPDataSelection8simplifyEv(ptr noundef align 8 dereferenceable_or_null(24) %0)
          to label %bb.ac unwind label %bb.ab

bb.ab:                                            ; preds = %bb.i, %bb.l, %bb.k, %bb.aa
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa, %_ZNK16QCPDataContainerI16QCPFinancialDataE7findEndEdb.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  br label %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread

bb.ad:                                            ; preds = %bb.w, %bb.z, %bb.ab
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.ab ], [ %i.ef, %bb.w ], [ %i.ex, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #50
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.n
  %.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn, %bb.ad ], [ %i.ci, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #50
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.m
  %.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn, %bb.ae ], [ %i.ch, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #50
  call void @_ZN16QCPDataSelectionD2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #50
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn

_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit.thread:      ; preds = %bb.f, %bb.g, %bb.d, %bb.e, %bb.ac, %bb.c, %bb.b, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit36, %_ZNK8QPointerI7QCPAxisEcvPS0_Ev.exit
  ret void
}

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr noundef i32 @_ZNK22QCPAbstractPlottable1DI16QCPFinancialDataE9findBeginEdb(ptr noundef align 8 dereferenceable_or_null(208) %0, double noundef %1, i1 noundef zeroext %2) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.QCPFinancialData, align 8    ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 192        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 24
  %i.d = load i64, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %i.g = trunc i64 %i.d to i32
  %i.h = icmp eq i32 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.b, i64 16       ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr [40 x i8], ptr %i.j, i64 %i.d
  br label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit

bb.c:                                             ; preds = %bb.a
  %i.l = sext i32 %i.f to i64                     ; 2 uses
  %.idx6.i = mul nsw i64 %i.l, 40
  %i.m = getelementptr i8, ptr %i.j, i64 %.idx6.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #50
  call void @_ZN16QCPFinancialDataC1Eddddd(ptr noundef nonnull align 8 dereferenceable_or_null(40) %3, double noundef %1, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00)
  %.idx7.i = sub i64 %i.d, %i.l
  %gepdiff.i = mul i64 %.idx7.i, 40               ; 2 uses
  %i.n = icmp sgt i64 %gepdiff.i, 0
  br i1 %i.n, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i, label %_ZSt11lower_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i: ; preds = %bb.c
  %i.o = udiv exact i64 %gepdiff.i, 40
  %i.p = load double, ptr %3, align 8
  br label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i

_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i
  %.016.i.i.i = phi i64 [ %.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.o, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %.sroa.012.015.i.i.i = phi ptr [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ], [ %i.m, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.preheader.i.i.i ] ; 2 uses
  %i.q = lshr i64 %.016.i.i.i, 1                  ; 3 uses
  %i.r = getelementptr [40 x i8], ptr %.sroa.012.015.i.i.i, i64 %i.q ; 2 uses
  %i.s = load double, ptr %i.r, align 8
  %i.t = fcmp olt double %i.s, %i.p               ; 2 uses
  %i.u = getelementptr i8, ptr %i.r, i64 40
  %i.v = xor i64 %i.q, -1
  %i.w = add nsw i64 %.016.i.i.i, %i.v
  %.sroa.012.1.i.i.i = select i1 %i.t, ptr %i.u, ptr %.sroa.012.015.i.i.i ; 2 uses
  %.1.i.i.i = select i1 %i.t, i64 %i.w, i64 %i.q  ; 2 uses
  %i.x = icmp sgt i64 %.1.i.i.i, 0
  br i1 %i.x, label %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, label %_ZSt11lower_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i, !llvm.loop !90

_ZSt11lower_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i: ; preds = %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i, %bb.c
  %.sroa.012.0.lcssa.i.i.i = phi ptr [ %i.m, %bb.c ], [ %.sroa.012.1.i.i.i, %_ZSt9__advanceIN5QListI16QCPFinancialDataE14const_iteratorExEvRT_T0_St26random_access_iterator_tag.exit.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #50
  br i1 %2, label %bb.d, label %_ZNK16QCPDataContainerI16QCPFinancialDataE9findBeginEdb.exit

bb.d:                                             ; preds = %_ZSt11lower_boundIN5QListI16QCPFinancialDataE14const_iteratorES1_PFbRKS1_S5_EET_S8_S8_RKT0_T1_.exit.i
end_hunk_5
