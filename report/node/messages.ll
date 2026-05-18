inline.NumInlined: 1641
inline.NumDeleted: 719
begin_hunk_0_@_ZN2v88internal10ErrorUtils8ToStringEPNS0_7IsolateENS0_12DirectHandleINS0_6ObjectEEENS1_21ToStringMessageSourceE:bb.a
  br i1 %i.am, label %.thread111, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.an = trunc i64 %i.aj to i1
  br i1 %i.an, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.g
  %i.ao = add nsw i64 %i.aj, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load atomic volatile i64, ptr %i.ap monotonic, align 8
  %i.ar = add i64 %i.aq, 11
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = load atomic volatile i16, ptr %i.as monotonic, align 2
  %i.au = icmp ult i16 %i.at, 128
  br i1 %i.au, label %.thread111, label %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit

_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit: ; preds = %bb.g, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.av = call ptr @_ZN2v88internal6Object15ConvertToStringINS0_6HandleEQsr3stdE16is_convertible_vIT_IS1_ENS0_12DirectHandleIS1_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES5_(ptr noundef nonnull %0, ptr nonnull %i.ah) #14 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.critedge, label %.thread111

.critedge:                                        ; preds = %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52

.thread111:                                       ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.f, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit
  %.sroa.068.0.ph = phi ptr [ %i.t, %bb.f ], [ %i.av, %_ZN2v88internal6Object8ToStringIS1_NS0_6HandleEQsr3stdE16is_convertible_vIT0_IT_ENS0_12DirectHandleIS5_EEEEENS4_INS0_6StringEE9MaybeTypeEPNS0_7IsolateES6_.exit ], [ %i.ah, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.critedge46

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br label %.thread109

.thread109:                                       ; preds = %bb.d, %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 6648
  %i.ay = call fastcc ptr @_ZN2v88internal12_GLOBAL__N_126GetStringPropertyOrDefaultEPNS0_7IsolateENS0_12DirectHandleINS0_10JSReceiverEEENS4_INS0_6StringEEENS0_6HandleIS7_EE(ptr noundef nonnull %0, ptr nonnull %1, ptr nonnull %i.ax, ptr nonnull %i.t) ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52, label %.critedge46

.critedge46:                                      ; preds = %.thread109, %.thread111
  %.sroa.068.2 = phi ptr [ %.sroa.068.0.ph, %.thread111 ], [ %i.ay, %.thread109 ] ; 3 uses
  %i.ba = load i64, ptr %i.r, align 8
  %i.bb = add i64 %i.ba, -1
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52, label %bb.i

bb.i:                                             ; preds = %.critedge46
  %i.bg = load i64, ptr %.sroa.068.2, align 8
  %i.bh = add i64 %i.bg, -1
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr noundef nonnull %0) #14
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr nonnull %i.r) #14
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load i32, ptr %i.bm, align 8
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.k, label %.critedge120.preheader

.critedge120.preheader:                           ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bs = load ptr, ptr %i.bp, align 8
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = add i64 %i.bt, -1
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bq, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bz = zext i32 %i.bw to i64
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %i.bz
  store i16 58, ptr %i.ca, align 2
  %i.cb = load i32, ptr %i.bq, align 4            ; 2 uses
  %i.cc = load i32, ptr %i.br, align 8
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.n, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 8 uses
  %i.ch = load i32, ptr %i.cg, align 4            ; 4 uses
  %i.ci = sub nsw i32 %i.cf, %i.ch
  %i.cj = icmp sgt i32 %i.ci, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = add i64 %i.cm, -1
  %i.co = inttoptr i64 %i.cn to ptr               ; 2 uses
  br i1 %i.cj, label %bb.l, label %.preheader

.preheader:                                       ; preds = %bb.k
  %i.cp = add nsw i32 %i.ch, 1
  store i32 %i.cp, ptr %i.cg, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cr = zext i32 %i.ch to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cr
  store i8 58, ptr %i.cs, align 1
  %i.ct = load i32, ptr %i.cg, align 4            ; 2 uses
  %i.cu = load i32, ptr %i.ce, align 8
  %i.cv = icmp eq i32 %i.ct, %i.cu
  br i1 %i.cv, label %bb.m, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %i.cx = zext i32 %i.ch to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i16 8250, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.cg, align 4
  %i.da = add nsw i32 %i.cz, 2                    ; 2 uses
  store i32 %i.da, ptr %i.cg, align 4
  %i.db = load i32, ptr %i.ce, align 8
  %i.dc = icmp eq i32 %i.da, %i.db
  br i1 %i.dc, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

bb.m:                                             ; preds = %.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  %.pre125 = load i32, ptr %i.cg, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit: ; preds = %.preheader, %bb.m
  %i.dd = phi i32 [ %i.ct, %.preheader ], [ %.pre125, %bb.m ] ; 2 uses
  %i.de = load ptr, ptr %i.ck, align 8
  %i.df = load i64, ptr %i.de, align 8
  %i.dg = add i64 %i.df, -1
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = add nsw i32 %i.dd, 1
  store i32 %i.di, ptr %i.cg, align 4
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dk = zext i32 %i.dd to i64
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dk
  store i8 32, ptr %i.dl, align 1
  %i.dm = load i32, ptr %i.cg, align 4
  %i.dn = load i32, ptr %i.ce, align 8
  %i.do = icmp eq i32 %i.dm, %i.dn
  br i1 %i.do, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

bb.n:                                             ; preds = %.critedge120.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  %.pre = load i32, ptr %i.bq, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit: ; preds = %.critedge120.preheader, %bb.n
  %i.dp = phi i32 [ %i.cb, %.critedge120.preheader ], [ %.pre, %bb.n ] ; 2 uses
  %i.dq = load ptr, ptr %i.bp, align 8
  %i.dr = load i64, ptr %i.dq, align 8
  %i.ds = add i64 %i.dr, -1
  %i.dt = inttoptr i64 %i.ds to ptr
  %i.du = add nsw i32 %i.dp, 1
  store i32 %i.du, ptr %i.bq, align 4
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dw = zext i32 %i.dp to i64
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.dv, i64 %i.dw
  store i16 32, ptr %i.dx, align 2
  %i.dy = load i32, ptr %i.bq, align 4
  %i.dz = load i32, ptr %i.br, align 8
  %i.ea = icmp eq i32 %i.dy, %i.dz
  br i1 %i.ea, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit, %bb.l
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  br label %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit

_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit.sink.split, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit, %bb.l
  call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %5, ptr nonnull %.sroa.068.2) #14
  %i.eb = call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  br label %_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52

_ZNK2v88internal11MaybeHandleINS0_6StringEE2ToIS2_EEbPNS0_6HandleIT_EE.exit52: ; preds = %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit, %bb.i, %.critedge46, %.thread109, %.critedge, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit
  %.sroa.077.3 = phi ptr [ null, %_ZN2v88internal11FactoryBaseINS0_7FactoryEE25NewStringFromAsciiCheckedEPKcNS0_14AllocationTypeE.exit ], [ null, %_ZN2v88internal7TryCastINS0_10JSReceiverENS0_6ObjectENS0_12DirectHandleEQ24HasTryCastImplementationIT1_T_T0_EEEbS5_IS7_EPS5_IS6_E.exit ], [ null, %.thread109 ], [ %.sroa.068.2, %.critedge46 ], [ %i.eb, %_ZN2v88internal24IncrementalStringBuilder20AppendCStringLiteralILi3EEEvRAT__Kc.exit ], [ null, %.critedge ], [ %i.r, %bb.i ]
  ret ptr %.sroa.077.3
}

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #3

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal16MessageFormatter9TryFormatEPNS0_7IsolateENS0_15MessageTemplateENS_4base6VectorIKNS0_12DirectHandleINS0_6StringEEEEE(ptr noundef %0, i32 noundef %1, ptr readonly captures(none) %2, i64 %3) local_unnamed_addr #2 align 2 {
bb.a:
  %4 = alloca %"class.v8::internal::IncrementalStringBuilder", align 8 ; 31 uses
  %i.a = tail call noundef ptr @_ZN2v88internal16MessageFormatter14TemplateStringENS0_15MessageTemplateE(i32 noundef %1) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  call void @_ZN2v88internal24IncrementalStringBuilderC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef %0) #14
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 19 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 60 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 22 uses
  %5 = insertelement <42 x i32> poison, i32 %1, i64 0
  %6 = shufflevector <42 x i32> %5, <42 x i32> poison, <42 x i32> zeroinitializer ; 2 uses
  %7 = icmp eq <42 x i32> %6, <i32 50, i32 55, i32 464, i32 463, i32 80, i32 82, i32 238, i32 239, i32 244, i32 247, i32 313, i32 316, i32 317, i32 318, i32 325, i32 326, i32 329, i32 87, i32 253, i32 249, i32 250, i32 91, i32 352, i32 336, i32 355, i32 353, i32 356, i32 354, i32 278, i32 128, i32 132, i32 172, i32 177, i32 178, i32 183, i32 186, i32 93, i32 206, i32 214, i32 215, i32 407, i32 413>
  %i.f = bitcast <42 x i1> %7 to i42
  %i.g = call range(i42 0, 43) i42 @llvm.ctpop.i42(i42 %i.f)
  %i.h = icmp eq i32 %1, 475
  %i.i = zext i1 %i.h to i42
  %i.j = or i42 %i.g, %i.i
  %.not16 = icmp eq i42 %i.j, 0
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17, %bb.a
  %.sroa.6.0 = phi i64 [ %3, %bb.a ], [ %.sroa.6.1, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17 ] ; 12 uses
  %.sroa.0.0 = phi ptr [ %2, %bb.a ], [ %.sroa.0.1, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17 ] ; 14 uses
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.jn, %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17 ] ; 11 uses
  %i.k = load i8, ptr %.0, align 1                ; 3 uses
  switch i8 %i.k, label %bb.af [
    i8 0, label %bb.c
    i8 37, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = icmp eq i64 %.sroa.6.0, 0
  br i1 %i.l, label %bb.al, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %8 = icmp eq <42 x i32> %6, <i32 50, i32 55, i32 464, i32 463, i32 80, i32 82, i32 238, i32 239, i32 244, i32 247, i32 313, i32 316, i32 317, i32 318, i32 325, i32 326, i32 329, i32 87, i32 253, i32 249, i32 250, i32 91, i32 352, i32 336, i32 355, i32 353, i32 356, i32 354, i32 278, i32 128, i32 132, i32 172, i32 177, i32 178, i32 183, i32 186, i32 93, i32 206, i32 214, i32 215, i32 407, i32 413>
  %i.m = bitcast <42 x i1> %8 to i42
  %i.n = call range(i42 0, 43) i42 @llvm.ctpop.i42(i42 %i.m)
  %i.o = icmp eq i32 %1, 475
  %i.p = zext i1 %i.o to i42
  %i.q = or i42 %i.n, %i.p
  %i.r = icmp eq i42 %i.q, 0
  br i1 %i.r, label %bb.ak, label %bb.al

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 5 uses
  %i.t = load i8, ptr %i.s, align 1
  %i.u = icmp eq i8 %i.t, 37
  br i1 %i.u, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.v = load i32, ptr %i.b, align 8
  %i.w = icmp eq i32 %i.v, 0
  %i.x = load ptr, ptr %i.c, align 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.d, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ae = zext i32 %i.ab to i64                   ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 37, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.d, align 4
  %i.ah = load i32, ptr %i.e, align 8
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.g, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17

bb.g:                                             ; preds = %bb.f
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17

bb.h:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.ae
  store i16 37, ptr %i.aj, align 2
  %i.ak = load i32, ptr %i.d, align 4
  %i.al = load i32, ptr %i.e, align 8
  %i.am = icmp eq i32 %i.ak, %i.al
  br i1 %i.am, label %bb.i, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17

bb.i:                                             ; preds = %bb.h
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit17

bb.j:                                             ; preds = %bb.d
  %i.an = icmp eq i64 %.sroa.6.0, 0
  br i1 %i.an, label %.preheader49.preheader, label %bb.ae

.preheader49.preheader:                           ; preds = %bb.j
  br i1 %.not16, label %bb.ad, label %bb.k

bb.k:                                             ; preds = %.preheader49.preheader
  %i.ao = load i32, ptr %i.b, align 8
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = add i64 %i.ar, -1
  %i.at = inttoptr i64 %i.as to ptr
  %i.au = load i32, ptr %i.d, align 4             ; 2 uses
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.d, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ax = zext i32 %i.au to i64                   ; 2 uses
  br i1 %i.ap, label %.preheader46.preheader, label %.preheader47.preheader

.preheader47.preheader:                           ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %i.aw, i64 %i.ax
  store i16 117, ptr %i.ay, align 2
  %i.az = load i32, ptr %i.d, align 4             ; 2 uses
  %i.ba = load i32, ptr %i.e, align 8
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.u, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

.preheader46.preheader:                           ; preds = %bb.k
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ax
  store i8 117, ptr %i.bc, align 1
  %i.bd = load i32, ptr %i.d, align 4             ; 2 uses
  %i.be = load i32, ptr %i.e, align 8
  %i.bf = icmp eq i32 %i.bd, %i.be
  br i1 %i.bf, label %bb.l, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

bb.l:                                             ; preds = %.preheader46.preheader
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %.pre62 = load i32, ptr %i.d, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit: ; preds = %.preheader46.preheader, %bb.l
  %i.bg = phi i32 [ %i.bd, %.preheader46.preheader ], [ %.pre62, %bb.l ] ; 2 uses
  %i.bh = load ptr, ptr %i.c, align 8
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = add i64 %i.bi, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = add nsw i32 %i.bg, 1
  store i32 %i.bl, ptr %i.d, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bn = zext i32 %i.bg to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bn
  store i8 110, ptr %i.bo, align 1
  %i.bp = load i32, ptr %i.d, align 4             ; 2 uses
  %i.bq = load i32, ptr %i.e, align 8
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.m, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1

bb.m:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %.pre63 = load i32, ptr %i.d, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1: ; preds = %bb.m, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit
  %i.bs = phi i32 [ %.pre63, %bb.m ], [ %i.bp, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit ] ; 2 uses
  %i.bt = load ptr, ptr %i.c, align 8
  %i.bu = load i64, ptr %i.bt, align 8
  %i.bv = add i64 %i.bu, -1
  %i.bw = inttoptr i64 %i.bv to ptr
  %i.bx = add nsw i32 %i.bs, 1
  store i32 %i.bx, ptr %i.d, align 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.bz = zext i32 %i.bs to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bz
  store i8 100, ptr %i.ca, align 1
  %i.cb = load i32, ptr %i.d, align 4             ; 2 uses
  %i.cc = load i32, ptr %i.e, align 8
  %i.cd = icmp eq i32 %i.cb, %i.cc
  br i1 %i.cd, label %bb.n, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.2

bb.n:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %.pre64 = load i32, ptr %i.d, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.2

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.2: ; preds = %bb.n, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1
  %i.ce = phi i32 [ %.pre64, %bb.n ], [ %i.cb, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.1 ] ; 2 uses
  %i.cf = load ptr, ptr %i.c, align 8
  %i.cg = load i64, ptr %i.cf, align 8
  %i.ch = add i64 %i.cg, -1
  %i.ci = inttoptr i64 %i.ch to ptr
  %i.cj = add nsw i32 %i.ce, 1
  store i32 %i.cj, ptr %i.d, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %i.cl = zext i32 %i.ce to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cl
  store i8 101, ptr %i.cm, align 1
  %i.cn = load i32, ptr %i.d, align 4             ; 2 uses
  %i.co = load i32, ptr %i.e, align 8
  %i.cp = icmp eq i32 %i.cn, %i.co
  br i1 %i.cp, label %bb.o, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.3

bb.o:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.2
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %.pre65 = load i32, ptr %i.d, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.3

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.3: ; preds = %bb.o, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.2
  %i.cq = phi i32 [ %.pre65, %bb.o ], [ %i.cn, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.2 ] ; 2 uses
  %i.cr = load ptr, ptr %i.c, align 8
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = add i64 %i.cs, -1
  %i.cu = inttoptr i64 %i.ct to ptr
  %i.cv = add nsw i32 %i.cq, 1
  store i32 %i.cv, ptr %i.d, align 4
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cx = zext i32 %i.cq to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cx
  store i8 102, ptr %i.cy, align 1
  %i.cz = load i32, ptr %i.d, align 4             ; 2 uses
  %i.da = load i32, ptr %i.e, align 8
  %i.db = icmp eq i32 %i.cz, %i.da
  br i1 %i.db, label %bb.p, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.4

bb.p:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.3
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %.pre66 = load i32, ptr %i.d, align 4
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.4

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.4: ; preds = %bb.p, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.3
  %i.dc = phi i32 [ %.pre66, %bb.p ], [ %i.cz, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.3 ] ; 2 uses
  %i.dd = load ptr, ptr %i.c, align 8
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = add i64 %i.de, -1
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = add nsw i32 %i.dc, 1
  store i32 %i.dh, ptr %i.d, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dj = zext i32 %i.dc to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.dj
  store i8 105, ptr %i.dk, align 1
  %i.dl = load i32, ptr %i.d, align 4             ; 2 uses
  %i.dm = load i32, ptr %i.e, align 8
  %i.dn = icmp eq i32 %i.dl, %i.dm
  br i1 %i.dn, label %bb.q, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.5

bb.q:                                             ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit.4
  call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
end_hunk_0
