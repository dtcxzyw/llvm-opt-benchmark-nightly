inline.NumInlined: 6662
inline.NumDeleted: 2140
begin_hunk_0_@_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEii:bb.a
  %i.m = load i8, ptr %i.l, align 2, !range !51
  %i.n = trunc nuw i8 %i.m to i1                  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 57
  %i.p = load i8, ptr %i.o, align 1, !range !51
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i = select i1 %i.n, i1 true, i1 %i.q
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 59
  %i.s = load i8, ptr %i.r, align 1, !range !51
  %i.t = trunc nuw i8 %i.s to i1                  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 6 uses
  %i.w = add i32 %2, -1                           ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load ptr, ptr %i.x, align 8              ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.aa = load i32, ptr %i.z, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_0, ptr noundef nonnull @.str.184) #28
  unreachable

bb.g:                                             ; preds = %.lr.ph, %bb.t
  %.081 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.t ]  ; 3 uses
  %.04080 = phi i32 [ %3, %.lr.ph ], [ %.141, %bb.t ] ; 6 uses
  %i.ab = add nuw nsw i32 %.081, %.04080
  %i.ac = lshr i32 %i.ab, 1                       ; 6 uses
  %i.ad = add nsw i32 %.081, %2                   ; 4 uses
  br i1 %.not.i, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = zext i32 %i.ad to i64                   ; 2 uses
  %i.af = lshr i64 %i.ae, 6
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.af
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !190
  %i.ai = and i64 %i.ae, 63
  %i.aj = shl nuw i64 1, %i.ai
  %i.ak = and i64 %i.ah, %i.aj
  %.not.i.i = icmp eq i64 %i.ak, 0
  br i1 %.not.i.i, label %.critedge, label %bb.l, !prof !659

bb.j:                                             ; preds = %bb.h
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = sext i32 %i.ad to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 6
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !190
  %i.as = and i64 %i.ao, 63
  %i.at = shl nuw i64 1, %i.as
  %i.au = and i64 %i.at, %i.ar
  %.not.i7.i = icmp eq i64 %i.au, 0
  br i1 %.not.i7.i, label %.critedge, label %bb.m, !prof !659

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit: ; preds = %bb.j
  %i.av = load i64, ptr %i.k, align 8, !tbaa !190
  %i.aw = and i64 %i.av, 1
  %.not.i6.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i6.i, label %.critedge, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52, !prof !659

bb.l:                                             ; preds = %bb.i
  %i.ax = add nsw i32 %i.ac, %2                   ; 2 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = lshr i64 %i.ay, 6
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.az
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !190
  %i.bc = and i64 %i.ay, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bb, %i.bd
  %.not.i.i51 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i51, label %.critedge, label %bb.n, !prof !660

bb.m:                                             ; preds = %bb.k
  %i.bf = add nsw i32 %i.ac, %2                   ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bg
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64                   ; 2 uses
  %i.bk = lshr i64 %i.bj, 6
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !190
  %i.bn = and i64 %i.bj, 63
  %i.bo = shl nuw i64 1, %i.bn
  %i.bp = and i64 %i.bo, %i.bm
  %.not.i7.i48 = icmp eq i64 %i.bp, 0
  br i1 %.not.i7.i48, label %.critedge, label %bb.o, !prof !660

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit
  %i.bq = load i64, ptr %i.k, align 8, !tbaa !190
  %i.br = and i64 %i.bq, 1
  %.not.i6.i50 = icmp eq i64 %i.br, 0
  br i1 %.not.i6.i50, label %.critedge, label %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59, !prof !660

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread: ; preds = %bb.g
  %i.bs = add nsw i32 %i.ac, %2
  %i.bt = add i32 %i.w, %.04080
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.bu = add i32 %i.w, %.04080                   ; 2 uses
  %i.bv = zext i32 %i.bu to i64                   ; 2 uses
  %i.bw = lshr i64 %i.bv, 6
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !190
  %i.bz = and i64 %i.bv, 63
  %i.ca = shl nuw i64 1, %i.bz
  %i.cb = and i64 %i.by, %i.ca
  %.not.i.i58 = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i58, label %.critedge, label %bb.p, !prof !660

bb.o:                                             ; preds = %bb.m
  %i.cc = add i32 %i.w, %.04080                   ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  %i.cg = zext i32 %i.cf to i64                   ; 2 uses
  %i.ch = lshr i64 %i.cg, 6
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !190
  %i.ck = and i64 %i.cg, 63
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = and i64 %i.cl, %i.cj
  %.not.i7.i55 = icmp eq i64 %i.cm, 0
  br i1 %.not.i7.i55, label %.critedge, label %.thread101, !prof !660

_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59: ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52
  %i.cn = add nsw i32 %i.ac, %2
  %i.co = add i32 %i.w, %.04080
  %i.cp = load i64, ptr %i.k, align 8, !tbaa !190
  %i.cq = and i64 %i.cp, 1
  %.not.i6.i57 = icmp eq i64 %i.cq, 0
  br i1 %.not.i6.i57, label %.critedge, label %.thread101, !prof !660

.critedge:                                        ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.i, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit52, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_1, ptr noundef nonnull @.str.191) #28
  unreachable

bb.p:                                             ; preds = %bb.n, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread
  %i.cr = phi i32 [ %i.bs, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread ], [ %i.ax, %bb.n ] ; 2 uses
  %i.cs = phi i32 [ %i.bt, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59.thread ], [ %i.bu, %bb.n ] ; 2 uses
  br i1 %i.n, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61, label %.thread101

.thread101:                                       ; preds = %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59, %bb.o, %bb.p
  %i.ct = phi i32 [ %i.cs, %bb.p ], [ %i.cc, %bb.o ], [ %i.co, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59 ]
  %i.cu = phi i32 [ %i.cr, %bb.p ], [ %i.bf, %bb.o ], [ %i.cn, %_ZNK8facebook5velox13DecodedVector8isNullAtEi.exit59 ]
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.cv
  %.0.i.i.ph.in = select i1 %i.t, ptr %i.z, ptr %i.cw
  %.0.i.i.ph = load i32, ptr %.0.i.i.ph.in, align 4, !tbaa !3
  %i.cx = sext i32 %.0.i.i.ph to i64
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !149 ; 2 uses
  %i.da = sext i32 %i.ad to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.da
  %.0.i.i60.ph.in = select i1 %i.t, ptr %i.z, ptr %i.db
  %.0.i.i60.ph = load i32, ptr %.0.i.i60.ph.in, align 4, !tbaa !3
  %i.dc = sext i32 %.0.i.i60.ph to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !149 ; 2 uses
  br i1 %i.t, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63, label %bb.q

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61: ; preds = %bb.p
  %i.df = sext i32 %i.cr to i64
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !149
  %i.di = sext i32 %i.ad to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.di
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !149
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63

bb.q:                                             ; preds = %.thread101
  %i.dl = sext i32 %i.ct to i64
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63: ; preds = %.thread101, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61, %bb.q
  %i.do = phi double [ %i.de, %bb.q ], [ %i.dk, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61 ], [ %i.de, %.thread101 ] ; 2 uses
  %i.dp = phi double [ %i.cz, %bb.q ], [ %i.dh, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61 ], [ %i.cz, %.thread101 ] ; 4 uses
  %.0.i.i62 = phi i32 [ %i.dn, %bb.q ], [ %i.cs, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit61 ], [ %i.aa, %.thread101 ]
  %i.dq = sext i32 %.0.i.i62 to i64
  %i.dr = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.dq
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !149 ; 2 uses
  %i.dt = fcmp ugt double %i.do, %i.dp
  %i.du = fcmp ugt double %i.dp, %i.ds
  %.not43 = or i1 %i.dt, %i.du
  br i1 %.not43, label %bb.r, label %bb.s, !prof !46

bb.r:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_2, ptr noundef nonnull @.str.193) #28
  unreachable

bb.s:                                             ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit63
  %6 = tail call double @llvm.fabs.f64(double %i.dp)
  %7 = fcmp ueq double %6, +inf
  %8 = tail call double @llvm.fabs.f64(double %i.do)
  %9 = fcmp ueq double %8, +inf
  %or.cond.not83 = or i1 %9, %7
  %10 = tail call double @llvm.fabs.f64(double %i.ds)
  %11 = fcmp ueq double %10, +inf
  %or.cond76 = or i1 %or.cond.not83, %11
  br i1 %or.cond76, label %.critedge45, label %bb.t, !prof !661

.critedge45:                                      ; preds = %bb.s
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEiiE18veloxCheckFailArgs_3, ptr noundef nonnull @.str.48) #28
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.dv = fcmp olt double %0, %i.dp               ; 2 uses
  %i.dw = add nuw nsw i32 %i.ac, 1
  %.141 = select i1 %i.dv, i32 %i.ac, i32 %.04080 ; 2 uses
  %.1 = select i1 %i.dv, i32 %.081, i32 %i.dw     ; 3 uses
  %i.dx = icmp slt i32 %.1, %.141
  br i1 %i.dx, label %bb.g, label %._crit_edge, !llvm.loop !662

._crit_edge:                                      ; preds = %bb.t
  %i.dy = zext nneg i32 %.1 to i64
  ret i64 %i.dy
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlT_E_ZNS4_22applyToSelectedNoThrowISS_EEvSC_SR_EUlSR_E_EEvSC_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i32 noundef range(i32 -33554432, 33554432) %1, i64 noundef %2) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %4 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %i.a = load i8, ptr %0, align 8, !tbaa !663, !range !51, !noundef !52
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !666
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !190
  %i.g = xor i8 %i.a, 1
  %i.h = zext nneg i8 %i.g to i64
  %i.i = sub nsw i64 0, %i.h
  %i.j = xor i64 %i.f, %i.i
  %i.k = and i64 %i.j, %2                         ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %.loopexit18, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = shl nsw i32 %1, 6
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit
  %.025 = phi i64 [ %i.k, %.preheader ], [ %i.cs, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit ] ; 3 uses
  %i.o = call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %.025, i1 true)
  %i.p = trunc nuw nsw i64 %i.o to i32
  %i.q = or disjoint i32 %i.m, %i.p               ; 4 uses
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !667  ; 2 uses
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !668, !nonnull !52, !align !222 ; 6 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !615, !nonnull !52, !align !222
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !522
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !618, !nonnull !52, !align !222
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !522
  %i.y = sext i32 %i.q to i64                     ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !619, !nonnull !52, !align !222
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !522
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ab
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !620, !nonnull !52, !align !222
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !371 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !395
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 58
  %i.ap = load i8, ptr %i.ao, align 2, !tbaa !405, !range !51, !noundef !52
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 59
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !406, !range !51, !noundef !52
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 64
  %i.av = load i32, ptr %i.au, align 8, !tbaa !407
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i

bb.e:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !408
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.ax, i64 %i.y
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3
  br label %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i

_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi i32 [ %i.az, %bb.e ], [ %i.av, %bb.d ], [ %i.q, %bb.b ]
  %i.ba = sext i32 %.0.i.i.i to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !149
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !621, !nonnull !52, !align !222
  %i.bf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bg = invoke fastcc noundef i64 @_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIdEEldRNS0_13DecodedVectorEii(double noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i32 noundef %i.ai, i32 noundef %i.ad)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit unwind label %bb.f

_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit: ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !622, !nonnull !52, !align !222
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !229
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.y
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !190
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.f:                                             ; preds = %.noexc, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { ptr, i32 } %i.bl, 1      ; 2 uses
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #24
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bm) #24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !411 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !28
  %i.bx = icmp eq i64 %i.bw, 4
  br i1 %i.bx, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.g
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !30
  %or.cond.not.i.i.i = icmp eq i8 %i.by, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ca, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !30
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cc, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ce, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #28
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.cg = icmp eq i32 %i.bn, %i.cf
  br i1 %i.cg, label %bb.i, label %.loopexit19

bb.i:                                             ; preds = %bb.h
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.bm) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !414
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.l:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %3, align 8, !tbaa !414
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlT_E_ZNS4_22applyToSelectedNoThrowISS_EEvSC_SR_EUlSR_E_EEvSC_SR_T0_EUlSR_E_EEvPKmiibSR_ENKUlimE_clEim:bb.a
  %i.ba = sext i32 %.0.i.i.i to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ba
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !149
  %i.bd = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !676, !nonnull !52, !align !222
  %i.bf = invoke noundef ptr @_ZN8facebook5velox4exec18LocalDecodedVector3getEv(ptr noundef nonnull align 8 dereferenceable(16) %i.be)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bg = invoke fastcc noundef i64 @_ZN8facebook5velox9functions12_GLOBAL__N_111widthBucketIlEEldRNS0_13DecodedVectorEii(double noundef %i.bc, ptr noundef nonnull align 8 dereferenceable(120) %i.bf, i32 noundef %i.ai, i32 noundef %i.ad)
          to label %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit unwind label %bb.f

_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit: ; preds = %.noexc
  %i.bh = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !677, !nonnull !52, !align !222
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !229
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.y
  store i64 %i.bg, ptr %i.bk, align 8, !tbaa !190
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.f:                                             ; preds = %.noexc, %_ZNK8facebook5velox13DecodedVector7valueAtIdEET_i.exit.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0      ; 2 uses
  %i.bn = extractvalue { ptr, i32 } %i.bl, 1      ; 2 uses
  %i.bo = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #24
  %i.bp = icmp eq i32 %i.bn, %i.bo
  br i1 %i.bp, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bq = call ptr @__cxa_begin_catch(ptr %i.bm) #24
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !411 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 144
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !47 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 152
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !28
  %i.bx = icmp eq i64 %i.bw, 4
  br i1 %i.bx, label %.lr.ph.i.i.i.preheader.i.preheader, label %.loopexit

.lr.ph.i.i.i.preheader.i.preheader:               ; preds = %bb.g
  %i.by = load i8, ptr %i.bu, align 1, !tbaa !30
  %or.cond.not.i.i.i = icmp eq i8 %i.by, 85
  br i1 %or.cond.not.i.i.i, label %tailrecurse.i.i.i.i, label %.loopexit

tailrecurse.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.preheader.i.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !30
  %or.cond.not.i.i.i.1 = icmp eq i8 %i.ca, 83
  br i1 %or.cond.not.i.i.i.1, label %tailrecurse.i.i.i.i.1, label %.loopexit

tailrecurse.i.i.i.i.1:                            ; preds = %tailrecurse.i.i.i.i
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !30
  %or.cond.not.i.i.i.2 = icmp eq i8 %i.cc, 69
  br i1 %or.cond.not.i.i.i.2, label %tailrecurse.i.i.i.i.2, label %.loopexit

tailrecurse.i.i.i.i.2:                            ; preds = %tailrecurse.i.i.i.i.1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !30
  %or.cond.not.i.i.i.3 = icmp eq i8 %i.ce, 82
  br i1 %or.cond.not.i.i.i.3, label %tailrecurse.i.i.i.i.3, label %.loopexit

tailrecurse.i.i.i.i.3:                            ; preds = %tailrecurse.i.i.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %4) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx22setVeloxExceptionErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.o unwind label %bb.q

.loopexit:                                        ; preds = %bb.g, %.lr.ph.i.i.i.preheader.i.preheader, %tailrecurse.i.i.i.i, %tailrecurse.i.i.i.i.1, %tailrecurse.i.i.i.i.2
  invoke void @__cxa_rethrow() #28
          to label %bb.u unwind label %bb.n

bb.h:                                             ; preds = %bb.f
  %i.cf = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #24
  %i.cg = icmp eq i32 %i.bn, %i.cf
  br i1 %i.cg, label %bb.i, label %.loopexit19

bb.i:                                             ; preds = %bb.h
  %i.ch = call ptr @__cxa_begin_catch(ptr %i.bm) #24 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @_ZSt17current_exceptionv(ptr dead_on_unwind nonnull writable sret(%"class.std::__exception_ptr::exception_ptr") align 8 %3) #24
  invoke void @_ZN8facebook5velox4exec7EvalCtx8setErrorEiRKNSt15__exception_ptr13exception_ptrE(ptr noundef nonnull align 8 dereferenceable(104) %i.r, i32 noundef %i.q, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ci = load ptr, ptr %3, align 8, !tbaa !414
  %.not.i = icmp eq ptr %i.ci, null
  br i1 %.not.i, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit:   ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.l:                                             ; preds = %bb.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load ptr, ptr %3, align 8, !tbaa !414
  %.not.i12 = icmp eq ptr %i.ck, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.t

bb.n:                                             ; preds = %.loopexit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.o:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cm = load ptr, ptr %4, align 8, !tbaa !414
  %.not.i14 = icmp eq ptr %i.cm, null
  br i1 %.not.i14, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15: ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  call void @__cxa_end_catch()
  br label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit

bb.q:                                             ; preds = %tailrecurse.i.i.i.i.3
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %i.co = load ptr, ptr %4, align 8, !tbaa !414
  %.not.i16 = icmp eq ptr %i.co, null
  br i1 %.not.i16, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #24
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17: ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.s

bb.s:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17, %bb.n
  %.pn.i = phi { ptr, i32 } [ %i.cn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit17 ], [ %i.cl, %bb.n ]
  invoke void @__cxa_end_catch()
          to label %.loopexit19 unwind label %bb.t

.loopexit19:                                      ; preds = %bb.h, %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %.merged.i = phi { ptr, i32 } [ %i.cj, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ], [ %.pn.i, %bb.s ], [ %i.bl, %bb.h ]
  resume { ptr, i32 } %.merged.i

bb.t:                                             ; preds = %bb.s, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13
  %i.cp = landingpad { ptr, i32 }
          catch ptr null
  %i.cq = extractvalue { ptr, i32 } %i.cp, 0
  call void @__clang_call_terminate(ptr %i.cq) #27
  unreachable

bb.u:                                             ; preds = %.loopexit
  unreachable

_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit: ; preds = %_ZZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlT_E_clIiEEDaSO_.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit15
  %i.cr = add i64 %.025, -1
  %i.cs = and i64 %i.cr, %.025                    ; 2 uses
  %.not10 = icmp eq i64 %i.cs, 0
  br i1 %.not10, label %.loopexit18, label %bb.b, !llvm.loop !695

.loopexit18:                                      ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #22

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #17 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind }
attributes #25 = { builtin allocsize(0) }
attributes #26 = { builtin nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE", !9, i64 0, !12, i64 8, !13, i64 16, !12, i64 24, !15, i64 32, !14, i64 48}
!9 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !10, i64 0}
!10 = !{!"any p2 pointer", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !14, i64 0}
!14 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !11, i64 0}
!15 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !16, i64 0, !12, i64 8}
!16 = !{!"float", !5, i64 0}
!17 = !{!8, !12, i64 8}
!18 = !{!15, !16, i64 0}
!19 = !{!20, !21, i64 0}
!20 = !{!"_ZTSSt18_Bit_iterator_base", !21, i64 0, !4, i64 8}
!21 = !{!"p1 long", !11, i64 0}
!22 = !{!23, !21, i64 32}
!23 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !24, i64 0, !24, i64 16, !21, i64 32}
!24 = !{!"_ZTSSt13_Bit_iterator", !20, i64 0}
!25 = !{!26, !27, i64 0}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !27, i64 0}
!27 = !{!"p1 omnipotent char", !11, i64 0}
!28 = !{!29, !12, i64 8}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0, !12, i64 8, !5, i64 16}
!30 = !{!5, !5, i64 0}
!31 = !{!32, !33, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEESaIS5_EE17_Vector_impl_dataE", !33, i64 0, !33, i64 8, !33, i64 16}
!33 = !{!"p1 _ZTSSt10shared_ptrIN8facebook5velox4exec17FunctionSignatureEE", !11, i64 0}
!34 = !{!32, !33, i64 16}
!35 = !{!36, !37, i64 0}
!36 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!37 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!38 = !{!11, !11, i64 0}
!39 = !{!32, !33, i64 8}
!40 = !{!41, !4, i64 8}
!41 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!42 = !{!41, !4, i64 12}
!43 = !{!44, !44, i64 0}
!44 = !{!"vtable pointer", !6, i64 0}
!45 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox4exec17FunctionSignatureELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!46 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!47 = !{!29, !27, i64 0}
!48 = !{!49, !50, i64 104}
!49 = !{!"_ZTSSt22_Optional_payload_baseIN8facebook5velox4exec13TypeSignatureEE", !5, i64 0, !50, i64 104}
!50 = !{!"bool", !5, i64 0}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!54, !50, i64 32}
!54 = !{!"_ZTSSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !5, i64 0, !50, i64 32}
!55 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE17_Vector_impl_dataE", !58, i64 0, !58, i64 8, !58, i64 16}
!58 = !{!"p1 _ZTSN8facebook5velox4exec13TypeSignatureE", !11, i64 0}
!59 = !{!57, !58, i64 8}
!60 = distinct !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{ptr @_ZN8facebook5velox4exec13TypeSignatureD2Ev, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!64 = !{!57, !58, i64 16}
!65 = distinct !{null, null}
!66 = distinct !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev, null}
!67 = !{ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!68 = !{!69, !70, i64 8}
!69 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec17VectorFunctionArgESaIS3_EE17_Vector_impl_dataE", !70, i64 0, !70, i64 8, !70, i64 16}
!70 = !{!"p1 _ZTSN8facebook5velox4exec17VectorFunctionArgE", !11, i64 0}
!71 = !{!69, !70, i64 0}
!72 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!73 = !{!74}
!74 = distinct !{!74, !75, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!75 = distinct !{!75, !"_ZN8facebook5velox12errorMessageIJmiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKiELi2ELi0ELy20EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!78 = distinct !{!78, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmKiELi2ELi0ELy20EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!79 = !{!80, !81, i64 0}
!80 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EE", !81, i64 0, !36, i64 8}
!81 = !{!"p1 _ZTSN8facebook5velox4TypeE", !11, i64 0}
!82 = !{!83, !86, i64 16}
!83 = !{!"_ZTSN8facebook5velox4TypeE", !84, i64 0, !85, i64 8, !86, i64 16, !50, i64 17}
!84 = !{!"_ZTSN8facebook5velox4TreeIKSt10shared_ptrIKNS0_4TypeEEEE"}
!85 = !{!"_ZTSN8facebook5velox13ISerializableE"}
!86 = !{!"_ZTSN8facebook5velox8TypeKindE", !5, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!90 = distinct !{!90, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!91 = !{!92}
!92 = distinct !{!92, !93, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!93 = distinct !{!93, !"_ZN8facebook5velox12errorMessageIJNS0_8TypeKindES2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!94 = !{!95, !96, i64 0}
!95 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EE", !96, i64 0, !36, i64 8}
!96 = !{!"p1 _ZTSN8facebook5velox10BaseVectorE", !11, i64 0}
!97 = !{!98, !111, i64 120}
!98 = !{!"_ZTSN8facebook5velox15ArrayVectorBaseE", !99, i64 0, !102, i64 96, !111, i64 104, !102, i64 112, !111, i64 120}
!99 = !{!"_ZTSN8facebook5velox10BaseVectorE", !100, i64 8, !86, i64 24, !50, i64 25, !101, i64 28, !102, i64 32, !21, i64 40, !104, i64 48, !4, i64 56, !105, i64 60, !105, i64 68, !105, i64 76, !105, i64 84, !109, i64 92, !50, i64 93}
!100 = !{!"_ZTSSt10shared_ptrIKN8facebook5velox4TypeEE", !80, i64 0}
!101 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !5, i64 0}
!102 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !103, i64 0}
!103 = !{!"p1 _ZTSN8facebook5velox6BufferE", !11, i64 0}
!104 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !11, i64 0}
!105 = !{!"_ZTSSt8optionalIiE", !106, i64 0}
!106 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !107, i64 0}
!107 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !108, i64 0}
!108 = !{!"_ZTSSt22_Optional_payload_baseIiE", !5, i64 0, !50, i64 4}
!109 = !{!"_ZTSSt6atomicIbE", !110, i64 0}
!110 = !{!"_ZTSSt13__atomic_baseIbE", !50, i64 0}
!111 = !{!"p1 int", !11, i64 0}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!114 = distinct !{!114, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!115 = !{!98, !111, i64 104}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 double", !11, i64 0}
!118 = !{!119, !117, i64 16}
!119 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !117, i64 0, !117, i64 8, !117, i64 16}
!120 = !{!121}
!121 = distinct !{!121, !122, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!122 = distinct !{!122, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!123 = !{!124}
!124 = distinct !{!124, !125, !"_ZSt11make_sharedIN8facebook5velox9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBinsEJSt6vectorIdSaIdEEEESt10shared_ptrIT_EDpOT0_: argument 0"}
!125 = distinct !{!125, !"_ZSt11make_sharedIN8facebook5velox9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBinsEJSt6vectorIdSaIdEEEESt10shared_ptrIT_EDpOT0_"}
!126 = !{!127, !111, i64 0}
!127 = !{!"_ZTSN6google8SiteFlagE", !111, i64 0, !27, i64 8, !12, i64 16, !128, i64 24}
!128 = !{!"p1 _ZTSN6google8SiteFlagE", !11, i64 0}
!129 = !{!130, !132}
!130 = distinct !{!130, !131, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!131 = distinct !{!131, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!132 = distinct !{!132, !133, !"_ZSt11make_sharedIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZSt11make_sharedIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdEEJEESt10shared_ptrIT_EDpOT0_"}
!134 = !{!132}
!135 = !{!136, !138}
!136 = distinct !{!136, !137, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_: argument 0"}
!137 = distinct !{!137, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSD_"}
!138 = distinct !{!138, !139, !"_ZSt11make_sharedIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEEJEESt10shared_ptrIT_EDpOT0_: argument 0"}
!139 = distinct !{!139, !"_ZSt11make_sharedIN8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlEEJEESt10shared_ptrIT_EDpOT0_"}
!140 = !{!138}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!143 = distinct !{!143, !"_ZN8facebook5velox12errorMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_N3fmt3v1117basic_string_viewIcEEDpRKT_"}
!144 = !{!145, !146, i64 0}
!145 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox4exec14VectorFunctionELN9__gnu_cxx12_Lock_policyE2EE", !146, i64 0, !36, i64 8}
!146 = !{!"p1 _ZTSN8facebook5velox4exec14VectorFunctionE", !11, i64 0}
!147 = !{!119, !117, i64 0}
!148 = !{!119, !117, i64 8}
!149 = !{!150, !150, i64 0}
!150 = !{!"double", !5, i64 0}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZN8facebook5velox12errorMessageIJddEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!153 = distinct !{!153, !"_ZN8facebook5velox12errorMessageIJddEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!154 = distinct !{!154, !62, !155}
!155 = !{!"llvm.loop.peeled.count", i32 1}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZN8facebook5velox12errorMessageIJllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!158 = distinct !{!158, !"_ZN8facebook5velox12errorMessageIJllEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!159 = distinct !{!159, !62, !155}
!160 = distinct !{null, ptr @_ZNSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EED2Ev}
!161 = !{!162, !50, i64 96}
!162 = !{!"_ZTSN8facebook5velox4exec13TypeSignatureE", !29, i64 0, !163, i64 32, !166, i64 56, !50, i64 96}
!163 = !{!"_ZTSSt6vectorIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !164, i64 0}
!164 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE", !165, i64 0}
!165 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox4exec13TypeSignatureESaIS3_EE12_Vector_implE", !57, i64 0}
end_hunk_1
begin_hunk_2_@llvm.smax.i64/@llvm.fabs.v3f64
!461 = !{!462, !329, i64 0}
!462 = !{!"_ZTSN8facebook5velox4exec18LocalDecodedVectorE", !329, i64 0, !463, i64 8}
!463 = !{!"_ZTSSt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !464, i64 0}
!464 = !{!"_ZTSSt15__uniq_ptr_dataIN8facebook5velox13DecodedVectorESt14default_deleteIS2_ELb1ELb1EE", !465, i64 0}
!465 = !{!"_ZTSSt15__uniq_ptr_implIN8facebook5velox13DecodedVectorESt14default_deleteIS2_EE", !466, i64 0}
!466 = !{!"_ZTSSt5tupleIJPN8facebook5velox13DecodedVectorESt14default_deleteIS2_EEE", !467, i64 0}
!467 = !{!"_ZTSSt11_Tuple_implILm0EJPN8facebook5velox13DecodedVectorESt14default_deleteIS2_EEE", !468, i64 0}
!468 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox13DecodedVectorELb0EE", !372, i64 0}
!469 = !{!468, !372, i64 0}
!470 = !{!427, !12, i64 32}
!471 = !{!472}
!472 = distinct !{!472, !473, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!473 = distinct !{!473, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!474 = !{!475}
!475 = distinct !{!475, !476, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!476 = distinct !{!476, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!477 = !{!427, !12, i64 24}
!478 = !{!479}
!479 = distinct !{!479, !480, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!480 = distinct !{!480, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!481 = !{!482}
!482 = distinct !{!482, !483, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!483 = distinct !{!483, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!484 = !{!104, !104, i64 0}
!485 = !{!486}
!486 = distinct !{!486, !487, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!487 = distinct !{!487, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!488 = !{!489}
!489 = distinct !{!489, !490, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!490 = distinct !{!490, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!491 = !{!492}
!492 = distinct !{!492, !493, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!493 = distinct !{!493, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!494 = !{!495}
!495 = distinct !{!495, !496, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!496 = distinct !{!496, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!497 = !{!498}
!498 = distinct !{!498, !499, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!499 = distinct !{!499, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!500 = !{!430, !430, i64 0}
!501 = !{!502}
!502 = distinct !{!502, !503, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!503 = distinct !{!503, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!504 = !{!381, !21, i64 16}
!505 = !{!381, !21, i64 8}
!506 = distinct !{!506, !62, !240, !241}
!507 = !{!"branch_weights", i32 4, i32 12}
!508 = distinct !{!508, !62, !240, !241}
!509 = distinct !{!509, !62, !241, !240}
!510 = distinct !{!510, !62, !240, !241}
!511 = distinct !{!511, !62, !240, !241}
!512 = distinct !{!512, !62, !241, !240}
!513 = distinct !{!513, !62, !240, !241}
!514 = distinct !{!514, !62, !240, !241}
!515 = distinct !{!515, !62, !241, !240}
!516 = distinct !{!516, !62, !240, !241}
!517 = distinct !{!517, !62, !240, !241}
!518 = distinct !{!518, !62, !241, !240}
!519 = !{!520, !50, i64 16}
!520 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUlimE_", !21, i64 0, !111, i64 8, !50, i64 16}
!521 = !{!520, !21, i64 0}
!522 = !{!111, !111, i64 0}
!523 = !{!524}
!524 = distinct !{!524, !525, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!525 = distinct !{!525, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!526 = !{!527}
!527 = distinct !{!527, !528, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!528 = distinct !{!528, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!529 = !{!530}
!530 = distinct !{!530, !531, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!531 = distinct !{!531, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!532 = !{!533}
!533 = distinct !{!533, !534, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!534 = distinct !{!534, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!537 = distinct !{!537, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!540 = distinct !{!540, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!541 = !{!429, !4, i64 0}
!542 = !{!543}
!543 = distinct !{!543, !544, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!544 = distinct !{!544, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!545 = !{!546}
!546 = distinct !{!546, !547, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!547 = distinct !{!547, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!548 = distinct !{!548, !62, !240, !241}
!549 = distinct !{!549, !62, !240, !241}
!550 = distinct !{!550, !62, !241, !240}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!553 = distinct !{!553, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_"}
!554 = !{!555}
!555 = distinct !{!555, !553, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!556 = distinct !{!556, !62}
!557 = !{!345, !50, i64 16}
!558 = !{!351, !352, i64 8}
!559 = !{!351, !352, i64 16}
!560 = !{!404, !111, i64 0}
!561 = !{!404, !111, i64 16}
!562 = !{!351, !352, i64 0}
!563 = !{!564}
!564 = distinct !{!564, !565, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!565 = distinct !{!565, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!566 = !{!567}
!567 = distinct !{!567, !565, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!568 = !{!567, !569}
!569 = distinct !{!569, !570}
!570 = distinct !{!570, !"LVerDomain"}
!571 = !{!564, !572}
!572 = distinct !{!572, !570}
!573 = distinct !{!573, !62, !240, !241}
!574 = distinct !{!574, !62, !240, !241}
!575 = distinct !{!575, !62, !240}
!576 = !{!577}
!577 = distinct !{!577, !578, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!578 = distinct !{!578, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!579 = !{!580}
!580 = distinct !{!580, !578, !"_ZSt19__relocate_object_aISt10unique_ptrIN8facebook5velox13DecodedVectorESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!581 = !{!580, !582}
!582 = distinct !{!582, !583}
!583 = distinct !{!583, !"LVerDomain"}
!584 = !{!577, !585}
!585 = distinct !{!585, !583}
!586 = distinct !{!586, !62, !240, !241}
!587 = distinct !{!587, !62, !240, !241}
!588 = distinct !{!588, !62, !240}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!591 = distinct !{!591, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_"}
!592 = !{!593}
!593 = distinct !{!593, !591, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!594 = !{!595}
!595 = distinct !{!595, !596, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!596 = distinct !{!596, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_"}
!597 = !{!598}
!598 = distinct !{!598, !596, !"_ZSt19__relocate_object_aIN8facebook5velox4exec18LocalDecodedVectorES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!599 = !{!600}
!600 = distinct !{!600, !601, !"_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv: argument 0"}
!601 = distinct !{!601, !"_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv"}
!602 = !{!352, !352, i64 0}
!603 = !{!400, !50, i64 8}
!604 = !{!396, !50, i64 61}
!605 = !{!606, !50, i64 0}
!606 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISF_EERKSD_IKNS0_4TypeEERS4_RSF_EUlT_E_ZNS4_22applyToSelectedNoThrowISR_EEvSB_SQ_EUlSQ_E_EEvSB_SQ_T0_EUlSQ_E_EEvPKmiibSQ_EUlimE_", !50, i64 0, !21, i64 8, !607, i64 16}
!607 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_136WidthBucketArrayFunctionConstantBins5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISD_EERKSB_IKNS0_4TypeEERS2_RSD_EUlT_E_ZNS2_22applyToSelectedNoThrowISP_EEvS9_SO_EUlSO_E_EEvS9_SO_T0_EUlSO_E_", !11, i64 0, !11, i64 8, !608, i64 16}
!608 = !{!"p1 _ZTSN8facebook5velox4exec7EvalCtxE", !11, i64 0}
!609 = !{!606, !21, i64 8}
!610 = !{!607, !608, i64 16}
!611 = !{!607, !11, i64 0}
!612 = distinct !{!612, !62}
!613 = distinct !{null, null}
!614 = !{!396, !96, i64 48}
!615 = !{!616, !617, i64 0}
!616 = !{!"_ZTSZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_", !617, i64 0, !617, i64 8, !617, i64 16, !392, i64 24, !393, i64 32, !370, i64 40}
!617 = !{!"p2 int", !10, i64 0}
!618 = !{!616, !617, i64 8}
!619 = !{!616, !617, i64 16}
!620 = !{!616, !393, i64 32}
!621 = !{!616, !370, i64 40}
!622 = !{!616, !392, i64 24}
!623 = distinct !{!623, !62}
!624 = distinct !{!624, !62}
!625 = !{!626}
!626 = distinct !{!626, !627, !"_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv: argument 0"}
!627 = distinct !{!627, !"_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv"}
!628 = distinct !{!628, !62}
!629 = distinct !{!629, !62}
!630 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!631 = !{!99, !101, i64 28}
!632 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!633 = distinct !{!633, !62}
!634 = !{!635, !50, i64 0}
!635 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_EUlimE_", !50, i64 0, !21, i64 8, !636, i64 16}
!636 = !{!"_ZTSZN8facebook5velox9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS4_PKT_PKmPKiEUliE_", !617, i64 0, !392, i64 8, !617, i64 16, !617, i64 24, !340, i64 32}
!637 = !{!635, !21, i64 8}
!638 = !{!639, !50, i64 0}
!639 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_9functions13toElementRowsINS0_11ArrayVectorEEENS0_17SelectivityVectorEiRKS6_PKT_PKmPKiEUliE_EEvSD_iibS9_EUliE_", !50, i64 0, !21, i64 8, !636, i64 16}
!640 = !{!639, !21, i64 8}
!641 = distinct !{!641, !62}
!642 = !{!643, !21, i64 0}
!643 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUliE_", !21, i64 0, !111, i64 8, !50, i64 16}
!644 = !{!643, !50, i64 16}
!645 = !{!636, !617, i64 0}
!646 = !{!636, !392, i64 8}
!647 = !{!636, !617, i64 16}
!648 = !{!636, !617, i64 24}
!649 = !{!636, !340, i64 32}
!650 = distinct !{!650, !62}
!651 = distinct !{!651, !62}
!652 = distinct !{!652, !62}
!653 = distinct !{!653, !62}
!654 = distinct !{!654, !62}
!655 = !{!656}
!656 = distinct !{!656, !657, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!657 = distinct !{!657, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!658 = !{!396, !21, i64 24}
!659 = !{!"branch_weights", !"expected", i32 1717128, i32 2145766520}
!660 = !{!"branch_weights", !"expected", i32 1073204, i32 2146410444}
!661 = !{!"branch_weights", i32 6003000, i32 -294967296}
!662 = distinct !{!662, !62}
!663 = !{!664, !50, i64 0}
!664 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlT_E_ZNS4_22applyToSelectedNoThrowISS_EEvSC_SR_EUlSR_E_EEvSC_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_", !50, i64 0, !21, i64 8, !665, i64 16}
!665 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIdE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_EUlSP_E_", !11, i64 0, !11, i64 8, !608, i64 16}
!666 = !{!664, !21, i64 8}
!667 = !{!665, !608, i64 16}
!668 = !{!665, !11, i64 0}
!669 = distinct !{!669, !62}
!670 = distinct !{null, null}
!671 = !{!672, !617, i64 0}
!672 = !{!"_ZTSZNK8facebook5velox9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_EUlT_E_", !617, i64 0, !617, i64 8, !617, i64 16, !392, i64 24, !393, i64 32, !370, i64 40}
!673 = !{!672, !617, i64 8}
!674 = !{!672, !617, i64 16}
!675 = !{!672, !393, i64 32}
!676 = !{!672, !370, i64 40}
!677 = !{!672, !392, i64 24}
!678 = distinct !{!678, !62}
!679 = distinct !{!679, !62}
!680 = !{!681}
!681 = distinct !{!681, !682, !"_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv: argument 0"}
!682 = distinct !{!682, !"_ZN8facebook5velox4core7ExecCtx16getDecodedVectorEv"}
!683 = distinct !{!683, !62}
!684 = distinct !{!684, !62}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!687 = distinct !{!687, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!688 = distinct !{!688, !62}
!689 = !{!690, !50, i64 0}
!690 = !{!"_ZTSZN8facebook5velox4bits10forEachBitIZNS0_4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISG_EERKSE_IKNS0_4TypeEERS4_RSG_EUlT_E_ZNS4_22applyToSelectedNoThrowISS_EEvSC_SR_EUlSR_E_EEvSC_SR_T0_EUlSR_E_EEvPKmiibSR_EUlimE_", !50, i64 0, !21, i64 8, !691, i64 16}
!691 = !{!"_ZTSZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_124WidthBucketArrayFunctionIlE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_EUlSP_E_", !11, i64 0, !11, i64 8, !608, i64 16}
!692 = !{!690, !21, i64 8}
!693 = !{!691, !608, i64 16}
!694 = !{!691, !11, i64 0}
!695 = distinct !{!695, !62}
end_hunk_2
