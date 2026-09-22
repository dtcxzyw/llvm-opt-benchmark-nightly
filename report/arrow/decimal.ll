Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/arrow/original/decimal?download=true
inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow8internal12JoinToStringIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_:bb.a
  %.pn27 = phi { ptr, i32 } [ %i.bh, %bb.o ], [ %i.ay, %bb.f ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5.i ], [ %i.az, %bb.g ], [ %i.ba, %bb.h ], [ %i.bb, %bb.i ], [ %i.bc, %bb.j ], [ %i.bd, %bb.k ], [ %i.be, %bb.l ], [ %i.bg, %bb.n ], [ %i.bf, %bb.m ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #26
  resume { ptr, i32 } %.pn27
}

declare void @_ZNK5arrow14BasicDecimal3219GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE16FromPositiveRealIfEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias writable align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Decimal64", align 8  ; 10 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !382)
  %i.b = sext i32 %3 to i64
  %i.c = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.b
  %i.d = getelementptr i8, ptr %i.c, i64 304
  %i.e = load float, ptr %i.d, align 4, !tbaa !37, !noalias !382
  %i.f = fmul float %1, %i.e
  %i.g = tail call noundef float @llvm.nearbyint.f32(float %i.f) ; 3 uses
  %i.h = sext i32 %2 to i64
  %i.i = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 304
  %i.k = load float, ptr %i.j, align 4, !tbaa !37, !noalias !382 ; 2 uses
  %i.l = fneg float %i.k
  %i.m = fcmp ugt float %i.g, %i.l
  %i.n = fcmp ult float %i.g, %i.k
  %or.cond.i = and i1 %i.m, %i.n
  br i1 %or.cond.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !382
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %4, float noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 0) %3), !noalias !382
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.o = load ptr, ptr %4, align 8, !tbaa !14, !noalias !382 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32, !range !33, !noundef !34
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !382
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal64EEET_ii.exit

bb.f:                                             ; preds = %bb.b
  %i.s = fptosi float %i.g to i64
  store ptr null, ptr %0, align 8, !tbaa !14, !alias.scope !382
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.t, align 8, !alias.scope !382
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal64EEET_ii.exit

bb.g:                                             ; preds = %bb.a
  %i.u = sub nsw i32 %2, %3
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 304
  %i.y = load float, ptr %i.x, align 4, !tbaa !37
  %i.z = fcmp ogt float %1, %i.y
  br i1 %i.z, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %5, float noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.aa = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !32, !range !33, !noundef !34
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal64EEET_ii.exit

bb.k:                                             ; preds = %bb.g
  %i.ae = tail call { float, i32 } @llvm.frexp.f32.i32(float %1) ; 2 uses
  %i.af = extractvalue { float, i32 } %i.ae, 1    ; 4 uses
  %i.ag = extractvalue { float, i32 } %i.ae, 0
  %i.ah = tail call noundef float @ldexpf(float noundef %i.ag, i32 noundef 24) #26, !tbaa !10
  %i.ai = fptoui float %i.ah to i64               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.aj = icmp slt i32 %i.af, 24
  br i1 %i.aj, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.ak = sub nsw i32 24, %i.af                   ; 2 uses
  %i.al = icmp samesign ult i32 %3, 11
  br i1 %i.al, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.am = zext nneg i32 %3 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !44
  %i.ap = mul i64 %i.ao, %i.ai                    ; 2 uses
  %i.aq = add nsw i32 %i.af, 40
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl i64 %i.ap, %i.ar                    ; 2 uses
  %i.at = zext nneg i32 %i.ak to i64
  %.013.i = ashr i64 %i.ap, %i.at                 ; 3 uses
  %i.au = icmp ugt i64 %i.as, -9223372036854775808
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = add nsw i64 %.013.i, 1
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit

bb.o:                                             ; preds = %bb.m
  %i.aw = icmp eq i64 %i.as, -9223372036854775808
  %i.ax = and i64 %.013.i, 1
  %i.ay = select i1 %i.aw, i64 %i.ax, i64 0
  %spec.select.i = add nsw i64 %i.ay, %.013.i
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit: ; preds = %bb.n, %bb.o
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.o ], [ %i.av, %bb.n ]
  store i64 %.sroa.0.0.i, ptr %6, align 8
  br label %bb.y

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.az = mul i64 %i.ai, 10000000000
  %i.ba = sub nsw i32 18, %2
  %.sroa.speculated63 = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %i.bb = add nsw i32 %3, -10
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52
  %.091 = phi i32 [ %i.bi, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.03590 = phi i32 [ %i.bd, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ 0, %.lr.ph.preheader ]
  %.08489 = phi i32 [ %i.bu, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.08588 = phi i32 [ %i.bz, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ %i.bb, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi i64 [ %i.by, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ %i.az, %.lr.ph.preheader ] ; 3 uses
  %.sroa.speculated69 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated63, i32 %.08588) ; 3 uses
  %i.bd = add nuw nsw i32 %.03590, %.sroa.speculated69 ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrowL20kCeilLog2PowersOfTenE, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10 ; 2 uses
  %i.bh = sub nsw i32 %i.bg, %.091                ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %.08489) ; 4 uses
  %i.bi = add nsw i32 %.sroa.speculated, %.091
  %i.bj = icmp eq i32 %i.bg, %.091
  br i1 %i.bj, label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bk = icmp sgt i32 %i.bh, 0
  %i.bl = sub nsw i32 64, %.sroa.speculated
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl i64 %i.bc, %i.bm
  %narrow.i47 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 0)
  %i.bo = zext nneg i32 %narrow.i47 to i64
  %.013.i48 = ashr i64 %i.bc, %i.bo               ; 3 uses
  %.0.i49 = select i1 %i.bk, i64 %i.bn, i64 0     ; 2 uses
  %i.bp = icmp ugt i64 %.0.i49, -9223372036854775808
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i64 %.013.i48, 1
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52

bb.r:                                             ; preds = %bb.p
  %i.br = icmp eq i64 %.0.i49, -9223372036854775808
  %i.bs = and i64 %.013.i48, 1
  %i.bt = select i1 %i.br, i64 %i.bs, i64 0
  %spec.select.i50 = add nsw i64 %i.bt, %.013.i48
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52: ; preds = %.lr.ph, %bb.q, %bb.r
  %.sroa.0.0.i51 = phi i64 [ %i.bc, %.lr.ph ], [ %i.bq, %bb.q ], [ %spec.select.i50, %bb.r ]
  %i.bu = sub nsw i32 %.08489, %.sroa.speculated  ; 4 uses
  %i.bv = zext nneg i32 %.sroa.speculated69 to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.by = mul i64 %i.bx, %.sroa.0.0.i51           ; 4 uses
  %i.bz = sub nuw nsw i32 %.08588, %.sroa.speculated69 ; 3 uses
  %8 = icmp ne i32 %i.bz, 0                       ; 2 uses
  %i.ca = icmp sgt i32 %i.bu, 0                   ; 2 uses
  %i.cb = select i1 %8, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !381

._crit_edge:                                      ; preds = %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52
  store i64 %i.by, ptr %6, align 8
  br i1 %8, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.cc = zext nneg i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !44
  %i.cf = mul i64 %i.by, %i.ce                    ; 2 uses
  store i64 %i.cf, ptr %6, align 8, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %.val = phi i64 [ %i.cf, %bb.s ], [ %i.by, %._crit_edge ] ; 2 uses
  br i1 %i.ca, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cg = sub nsw i32 64, %i.bu
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl i64 %.val, %i.ch                    ; 2 uses
  %i.cj = zext nneg i32 %i.bu to i64
  %.013.i54 = ashr i64 %.val, %i.cj               ; 3 uses
  %i.ck = icmp ugt i64 %i.ci, -9223372036854775808
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = add nsw i64 %.013.i54, 1
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58

bb.w:                                             ; preds = %bb.u
  %i.cm = icmp eq i64 %i.ci, -9223372036854775808
  %i.cn = and i64 %.013.i54, 1
  %i.co = select i1 %i.cm, i64 %i.cn, i64 0
  %spec.select.i56 = add nsw i64 %i.co, %.013.i54
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58: ; preds = %bb.v, %bb.w
  %.sroa.0.0.i57 = phi i64 [ %spec.select.i56, %bb.w ], [ %i.cl, %bb.v ]
  store i64 %.sroa.0.0.i57, ptr %6, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.k
  %i.cp = add nsw i32 %i.af, -24
  %i.cq = zext nneg i32 %3 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !44
  %i.ct = mul i64 %i.cs, %i.ai
  store i64 %i.ct, ptr %6, align 8, !tbaa !44
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow14BasicDecimal64lSEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.cp) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58, %bb.t, %bb.x
  %i.cv = call noundef zeroext i1 @_ZNK5arrow14BasicDecimal6415FitsInPrecisionEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
  br i1 %i.cv, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %7, float noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  %i.cw = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %.not.i59 = icmp eq ptr %i.cw, null
  br i1 %.not.i59, label %_ZN5arrow6StatusD2Ev.exit60, label %bb.aa, !prof !23

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !32, !range !33, !noundef !34
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN5arrow6StatusD2Ev.exit60, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  br label %_ZN5arrow6StatusD2Ev.exit60

_ZN5arrow6StatusD2Ev.exit60:                      ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i64, ptr %6, align 8
  store i64 %i.db, ptr %i.da, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal64EEET_ii.exit

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal64EEET_ii.exit: ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit, %bb.ad
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow14BasicDecimal646NegateEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store float %1, ptr %i.a, align 4, !tbaa !37
  store i32 %2, ptr %i.b, align 4, !tbaa !10
  store i32 %3, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !387
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_14BasicDecimal64EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.36), !noalias !387
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !21, !noalias !387 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !387
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !21, !noalias !387 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !38, !noalias !387
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !387
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !387
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow14BasicDecimal64lSEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5arrow14BasicDecimal6415FitsInPrecisionEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { float, i32 } @llvm.frexp.f32.i32(float) #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float noundef, i32 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.arrow::Decimal64", align 8  ; 10 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !391)
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 608
  %i.f = load double, ptr %i.e, align 8, !tbaa !40, !noalias !391
  %i.g = fmul double %1, %i.f
  %i.h = tail call double @llvm.nearbyint.f64(double %i.g) ; 3 uses
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 608
  %i.l = load double, ptr %i.k, align 8, !tbaa !40, !noalias !391 ; 2 uses
  %i.m = fneg double %i.l
  %i.n = fcmp ugt double %i.h, %i.m
  %i.o = fcmp ult double %i.h, %i.l
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !391
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %4, double noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 0) %3), !noalias !391
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.p = load ptr, ptr %4, align 8, !tbaa !14, !noalias !391 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32, !range !33, !noundef !34
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !391
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal64EEET_ii.exit

bb.f:                                             ; preds = %bb.b
  %i.t = fptosi double %i.h to i64
  store ptr null, ptr %0, align 8, !tbaa !14, !alias.scope !391
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %i.u, align 8, !alias.scope !391
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal64EEET_ii.exit

bb.g:                                             ; preds = %bb.a
  %i.v = sub nsw i32 %2, %3
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 608
  %i.z = load double, ptr %i.y, align 8, !tbaa !40
  %i.aa = fcmp ogt double %1, %i.z
  br i1 %i.aa, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %5, double noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.ab = load ptr, ptr %5, align 8, !tbaa !14    ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !23

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !32, !range !33, !noundef !34
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal64EEET_ii.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.af = call double @frexp(double noundef %1, ptr noundef nonnull %i.a) #26
  %i.ag = tail call double @ldexp(double noundef %i.af, i32 noundef 53) #26, !tbaa !10
  %i.ah = fptoui double %i.ag to i64              ; 3 uses
  %i.ai = load i32, ptr %i.a, align 4, !tbaa !10  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.aj = icmp slt i32 %i.ai, 53
  br i1 %i.aj, label %bb.l, label %bb.x

bb.l:                                             ; preds = %bb.k
  %i.ak = sub nsw i32 53, %i.ai                   ; 2 uses
  %i.al = icmp samesign ult i32 %3, 3
  br i1 %i.al, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.am = zext nneg i32 %3 to i64
  %i.an = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.am
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !44
  %i.ap = mul i64 %i.ao, %i.ah                    ; 2 uses
  %i.aq = add nsw i32 %i.ai, 11
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = shl i64 %i.ap, %i.ar                    ; 2 uses
  %i.at = zext nneg i32 %i.ak to i64
  %.013.i = ashr i64 %i.ap, %i.at                 ; 3 uses
  %i.au = icmp ugt i64 %i.as, -9223372036854775808
  br i1 %i.au, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.av = add nsw i64 %.013.i, 1
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit

bb.o:                                             ; preds = %bb.m
  %i.aw = icmp eq i64 %i.as, -9223372036854775808
  %i.ax = and i64 %.013.i, 1
  %i.ay = select i1 %i.aw, i64 %i.ax, i64 0
  %spec.select.i = add nsw i64 %i.ay, %.013.i
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit: ; preds = %bb.n, %bb.o
  %.sroa.0.0.i = phi i64 [ %spec.select.i, %bb.o ], [ %i.av, %bb.n ]
  store i64 %.sroa.0.0.i, ptr %6, align 8
  br label %bb.y

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.az = mul i64 %i.ah, 100
  %i.ba = sub nsw i32 18, %2
  %.sroa.speculated63 = tail call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %i.bb = add nsw i32 %3, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52
  %.090 = phi i32 [ %i.bi, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.03589 = phi i32 [ %i.bd, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ 0, %.lr.ph.preheader ]
  %.08388 = phi i32 [ %i.bu, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ %i.ak, %.lr.ph.preheader ] ; 2 uses
  %.08487 = phi i32 [ %i.bz, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ %i.bb, %.lr.ph.preheader ] ; 2 uses
  %i.bc = phi i64 [ %i.by, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52 ], [ %i.az, %.lr.ph.preheader ] ; 3 uses
  %.sroa.speculated69 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated63, i32 %.08487) ; 3 uses
  %i.bd = add nuw nsw i32 %.03589, %.sroa.speculated69 ; 2 uses
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrowL20kCeilLog2PowersOfTenE, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !10 ; 2 uses
  %i.bh = sub nsw i32 %i.bg, %.090                ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.bh, i32 %.08388) ; 4 uses
  %i.bi = add nsw i32 %.sroa.speculated, %.090
  %i.bj = icmp eq i32 %i.bg, %.090
  br i1 %i.bj, label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.bk = icmp sgt i32 %i.bh, 0
  %i.bl = sub nsw i32 64, %.sroa.speculated
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = shl i64 %i.bc, %i.bm
  %narrow.i47 = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated, i32 0)
  %i.bo = zext nneg i32 %narrow.i47 to i64
  %.013.i48 = ashr i64 %i.bc, %i.bo               ; 3 uses
  %.0.i49 = select i1 %i.bk, i64 %i.bn, i64 0     ; 2 uses
  %i.bp = icmp ugt i64 %.0.i49, -9223372036854775808
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bq = add nsw i64 %.013.i48, 1
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52

bb.r:                                             ; preds = %bb.p
  %i.br = icmp eq i64 %.0.i49, -9223372036854775808
  %i.bs = and i64 %.013.i48, 1
  %i.bt = select i1 %i.br, i64 %i.bs, i64 0
  %spec.select.i50 = add nsw i64 %i.bt, %.013.i48
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52: ; preds = %.lr.ph, %bb.q, %bb.r
  %.sroa.0.0.i51 = phi i64 [ %i.bc, %.lr.ph ], [ %i.bq, %bb.q ], [ %spec.select.i50, %bb.r ]
  %i.bu = sub nsw i32 %.08388, %.sroa.speculated  ; 4 uses
  %i.bv = zext nneg i32 %.sroa.speculated69 to i64
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.bv
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !44
  %i.by = mul i64 %i.bx, %.sroa.0.0.i51           ; 4 uses
  %i.bz = sub nuw nsw i32 %.08487, %.sroa.speculated69 ; 3 uses
  %8 = icmp ne i32 %i.bz, 0                       ; 2 uses
  %i.ca = icmp sgt i32 %i.bu, 0                   ; 2 uses
  %i.cb = select i1 %8, i1 %i.ca, i1 false
  br i1 %i.cb, label %.lr.ph, label %._crit_edge, !llvm.loop !390

._crit_edge:                                      ; preds = %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit52
  store i64 %i.by, ptr %6, align 8
  br i1 %8, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge
  %i.cc = zext nneg i32 %i.bz to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !44
  %i.cf = mul i64 %i.by, %i.ce                    ; 2 uses
  store i64 %i.cf, ptr %6, align 8, !tbaa !44
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  %.val = phi i64 [ %i.cf, %bb.s ], [ %i.by, %._crit_edge ] ; 2 uses
  br i1 %i.ca, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.cg = sub nsw i32 64, %i.bu
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = shl i64 %.val, %i.ch                    ; 2 uses
  %i.cj = zext nneg i32 %i.bu to i64
  %.013.i54 = ashr i64 %.val, %i.cj               ; 3 uses
  %i.ck = icmp ugt i64 %i.ci, -9223372036854775808
  br i1 %i.ck, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cl = add nsw i64 %.013.i54, 1
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58

bb.w:                                             ; preds = %bb.u
  %i.cm = icmp eq i64 %i.ci, -9223372036854775808
  %i.cn = and i64 %.013.i54, 1
  %i.co = select i1 %i.cm, i64 %i.cn, i64 0
  %spec.select.i56 = add nsw i64 %i.co, %.013.i54
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58: ; preds = %bb.v, %bb.w
  %.sroa.0.0.i57 = phi i64 [ %spec.select.i56, %bb.w ], [ %i.cl, %bb.v ]
  store i64 %.sroa.0.0.i57, ptr %6, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.k
  %i.cp = add nsw i32 %i.ai, -53
  %i.cq = zext nneg i32 %3 to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5arrowL21kDecimal64PowersOfTenE, i64 %i.cq
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !44
  %i.ct = mul i64 %i.cs, %i.ah
  store i64 %i.ct, ptr %6, align 8, !tbaa !44
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN5arrow14BasicDecimal64lSEj(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %i.cp) ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit, %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion17RoundedRightShiftERKNS_9Decimal64Ei.exit58, %bb.t, %bb.x
  %i.cv = call noundef zeroext i1 @_ZNK5arrow14BasicDecimal6415FitsInPrecisionEi(ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef %2)
  br i1 %i.cv, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %7, double noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_9Decimal64EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  %i.cw = load ptr, ptr %7, align 8, !tbaa !14    ; 2 uses
  %.not.i59 = icmp eq ptr %i.cw, null
  br i1 %.not.i59, label %_ZN5arrow6StatusD2Ev.exit60, label %bb.aa, !prof !23

bb.aa:                                            ; preds = %bb.z
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !32, !range !33, !noundef !34
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %_ZN5arrow6StatusD2Ev.exit60, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  br label %_ZN5arrow6StatusD2Ev.exit60

_ZN5arrow6StatusD2Ev.exit60:                      ; preds = %bb.z, %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  store ptr null, ptr %0, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load i64, ptr %6, align 8
  store i64 %i.db, ptr %i.da, align 8
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %_ZN5arrow6StatusD2Ev.exit60
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal64EEET_ii.exit

_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal64EEET_ii.exit: ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit, %bb.ad
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal64ENS0_23Decimal64RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store double %1, ptr %i.a, align 8, !tbaa !40
  store i32 %2, ptr %i.b, align 4, !tbaa !10
  store i32 %3, ptr %i.c, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !396
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_14BasicDecimal64EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.36), !noalias !396
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !21, !noalias !396 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !38, !noalias !396
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !21, !noalias !396 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !38, !noalias !396
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !396
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !396
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare double @frexp(double noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @ldexp(double noundef, i32 noundef) local_unnamed_addr #19

declare void @_ZNK5arrow14BasicDecimal6419GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE16FromPositiveRealIfEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias writable align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %6 = alloca %"class.arrow::Decimal128", align 8 ; 19 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = icmp slt i32 %3, 0
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.b = fpext float %1 to double
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 608
  %i.f = load double, ptr %i.e, align 8, !tbaa !40, !noalias !401
  %i.g = fmul double %i.f, %i.b
  %i.h = tail call double @llvm.nearbyint.f64(double %i.g) ; 4 uses
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 608
  %i.l = load double, ptr %i.k, align 8, !tbaa !40, !noalias !401 ; 2 uses
  %i.m = fneg double %i.l
  %i.n = fcmp ugt double %i.h, %i.m
  %i.o = fcmp ult double %i.h, %i.l
  %or.cond.i = and i1 %i.n, %i.o
  br i1 %or.cond.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !401
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal128ENS0_24Decimal128RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %4, float noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 0) %3), !noalias !401
  call void @_ZN5arrow6ResultINS_10Decimal128EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.p = load ptr, ptr %4, align 8, !tbaa !14, !noalias !401 ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d, !prof !23

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !32, !range !33, !noundef !34
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
end_hunk_0
