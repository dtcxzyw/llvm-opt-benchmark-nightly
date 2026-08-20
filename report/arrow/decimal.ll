inline.NumInlined: 1554
inline.NumDeleted: 561
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIfEENS_6ResultIS2_EET_ii:bb.a
  %i.ao = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29, !range !38, !noundef !39
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_10Decimal256EEET_ii.exit

bb.k:                                             ; preds = %bb.g
  %i.as = tail call { float, i32 } @llvm.frexp.f32.i32(float %1) ; 2 uses
  %i.at = extractvalue { float, i32 } %i.as, 1    ; 3 uses
  %i.au = extractvalue { float, i32 } %i.as, 0
  %i.av = tail call noundef float @ldexpf(float noundef %i.au, i32 noundef 24) #26, !tbaa !3
  %i.aw = fptoui float %i.av to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false), !alias.scope !425
  store i64 %i.aw, ptr %6, align 8, !tbaa !121, !alias.scope !425
  %i.ay = icmp slt i32 %i.at, 24
  br i1 %i.ay, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.az = sub nsw i32 24, %i.at                   ; 2 uses
  %i.ba = icmp samesign ult i32 %3, 69
  br i1 %i.ba, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.bb = zext nneg i32 %3 to i64
  %i.bc = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bb
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bc) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, i32 noundef %i.az)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.r

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.be = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 2176)) ; 0 uses
  %i.bf = sub nsw i32 76, %2
  %.sroa.speculated46 = call i32 @llvm.smax.i32(i32 %i.bf, i32 1)
  %i.bg = add nsw i32 %3, -68
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.074 = phi i32 [ %i.bn, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03373 = phi i32 [ %i.bi, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.06872 = phi i32 [ %i.bo, %.lr.ph ], [ %i.az, %.lr.ph.preheader ] ; 2 uses
  %.06971 = phi i32 [ %i.bs, %.lr.ph ], [ %i.bg, %.lr.ph.preheader ] ; 2 uses
  %i.bh = call i32 @llvm.umin.i32(i32 %.sroa.speculated46, i32 %.06971) ; 3 uses
  %i.bi = add nuw nsw i32 %.03373, %i.bh          ; 2 uses
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrowL20kCeilLog2PowersOfTenE, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3
  %i.bm = sub nsw i32 %i.bl, %.074
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bm, i32 %.06872) ; 3 uses
  %i.bn = add nsw i32 %.sroa.speculated, %.074
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, i32 noundef %.sroa.speculated)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bo = sub nsw i32 %.06872, %.sroa.speculated  ; 3 uses
  %i.bp = zext nneg i32 %i.bh to i64
  %i.bq = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bp
  %i.br = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bq) ; 0 uses
  %i.bs = sub nsw i32 %.06971, %i.bh              ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, 0                   ; 2 uses
  %i.bu = icmp sgt i32 %i.bo, 0                   ; 2 uses
  %i.bv = select i1 %i.bt, i1 %i.bu, i1 false
  br i1 %i.bv, label %.lr.ph, label %._crit_edge, !llvm.loop !428

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.bt, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bw = zext nneg i32 %i.bs to i64
  %i.bx = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bw
  %i.by = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bx) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  br i1 %i.bu, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, i32 noundef %i.bo)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.bz = add nsw i32 %i.at, -24
  %i.ca = zext nneg i32 %3 to i64
  %i.cb = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.ca
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.cb) ; 0 uses
  %i.cd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256lSEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.bz) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.q
  %i.ce = call noundef zeroext i1 @_ZNK5arrow15BasicDecimal25615FitsInPrecisionEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %2)
  br i1 %i.ce, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %10, float noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.cf = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %.not.i42 = icmp eq ptr %i.cf, null
  br i1 %.not.i42, label %_ZN5arrow6StatusD2Ev.exit43, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !29, !range !38, !noundef !39
  %i.ci = trunc nuw i8 %i.ch to i1
  br i1 %i.ci, label %_ZN5arrow6StatusD2Ev.exit43, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  br label %_ZN5arrow6StatusD2Ev.exit43

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN5arrow6StatusD2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_10Decimal256EEET_ii.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_10Decimal256EEET_ii.exit: ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit, %bb.w
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIfEENS_6StatusET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca float, align 4                    ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store float %1, ptr %i.a, align 4, !tbaa !47
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  store i32 %3, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !429
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_15BasicDecimal256EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.36), !noalias !429
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !16, !noalias !429 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !429
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !16, !noalias !429 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !54, !noalias !429
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !429
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !429
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nofree noundef readonly byval(%"class.arrow::Decimal256") align 8 captures(none) %1, i32 noundef %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::array.16", align 8    ; 11 uses
  %4 = alloca %"struct.std::array.16", align 8    ; 6 uses
  %5 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %6 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.b = sdiv i32 %2, 64                          ; 7 uses
  %i.c = srem i32 %2, 64                          ; 5 uses
  %i.d = icmp sgt i32 %2, 255
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 0, i64 32, i1 false)
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %i.e = icmp sgt i32 %2, 63
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.b to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %7 = add nsw i32 %i.b, -1
  %8 = icmp ult i32 %7, 3
  br i1 %8, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 33554428
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.03341.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod63 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod63)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.03341.epil = phi i64 [ %.03341.epil.init, %.lr.ph.epil.preheader ], [ %i.i, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.f = icmp ne i64 %.03341.epil, 0
  %i.g = zext i1 %i.f to i64
  %9 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil
  %i.h = load i64, ptr %9, align 8, !tbaa !121
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !434

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.e
  %.033.lcssa = phi i64 [ 0, %bb.e ], [ %i.n, %._crit_edge.loopexit.unr-lcssa ], [ %i.i, %.lr.ph.epil ] ; 3 uses
  %.not = icmp eq i32 %i.c, 0
  %10 = sext i32 %i.b to i64                      ; 2 uses
  br i1 %.not, label %.lr.ph45.split.us.preheader, label %.lr.ph45.split.preheader

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.3, %.lr.ph ] ; 5 uses
  %.03341 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.n, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %11 = icmp ne i64 %.03341, 0
  %12 = zext i1 %11 to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %14 = load i64, ptr %13, align 8, !tbaa !121
  %15 = or i64 %14, %12
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i64
  %18 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %19 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %20 = load i64, ptr %19, align 8, !tbaa !121
  %21 = or i64 %20, %17
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %25 = getelementptr inbounds nuw i8, ptr %24, i64 16
  %26 = load i64, ptr %25, align 8, !tbaa !121
  %27 = or i64 %26, %23
  %i.j = icmp ne i64 %27, 0
  %i.k = zext i1 %i.j to i64
  %28 = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.l = getelementptr inbounds nuw i8, ptr %28, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !121
  %i.n = or i64 %i.m, %i.k                        ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !435

.lr.ph45.split.preheader:                         ; preds = %._crit_edge
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %10
  %i.p = load i64, ptr %i.o, align 8, !tbaa !121
  %i.q = sub nsw i32 64, %i.c
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl i64 %i.p, %i.r
  %i.t = icmp ne i64 %.033.lcssa, 0
  %i.u = zext i1 %i.t to i64
  %i.v = zext nneg i32 %i.c to i64
  %i.w = lshr i64 %.033.lcssa, %i.v
  %i.x = or i64 %i.w, %i.u
  %i.y = or i64 %i.x, %i.s
  %i.z = zext nneg i32 %i.c to i64
  %i.aa = sub nsw i32 64, %i.c
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = sext i32 %i.b to i64                    ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 3)
  %i.ad = add nuw nsw i32 %smax, 1
  %wide.trip.count52 = zext nneg i32 %i.ad to i64
  br label %.lr.ph45.split

.lr.ph45.split.us.preheader:                      ; preds = %._crit_edge
  %i.ae = shl nsw i64 %10, 3
  %scevgep = getelementptr i8, ptr %3, i64 %i.ae
  %smax54 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 3)
  %i.af = sub nsw i32 %smax54, %i.b
  %i.ag = zext i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = add nuw nsw i64 %i.ah, 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(1) %scevgep, i64 %i.ai, i1 false), !tbaa !121
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %bb.g, %.lr.ph45.split.us.preheader
  %.160 = phi i64 [ %.033.lcssa, %.lr.ph45.split.us.preheader ], [ %i.y, %bb.g ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 32, i1 false)
  %i.aj = icmp ugt i64 %.160, -9223372036854775808
  br i1 %i.aj, label %bb.h, label %bb.i

.lr.ph45.split:                                   ; preds = %.lr.ph45.split.preheader, %bb.g
  %indvars.iv49 = phi i64 [ %i.ac, %.lr.ph45.split.preheader ], [ %indvars.iv.next50, %bb.g ] ; 4 uses
  %i.ak = getelementptr [8 x i8], ptr %3, i64 %indvars.iv49 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !121
  %i.am = lshr i64 %i.al, %i.z                    ; 2 uses
  %i.an = sub nsw i64 %indvars.iv49, %i.ac
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.an ; 2 uses
  store i64 %i.am, ptr %i.ao, align 8, !tbaa !121
  %i.ap = icmp eq i64 %indvars.iv49, 3
  br i1 %i.ap, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph45.split
  %i.aq = getelementptr i8, ptr %i.ak, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !121
  %i.as = shl i64 %i.ar, %i.ab
  %i.at = or i64 %i.as, %i.am
  store i64 %i.at, ptr %i.ao, align 8, !tbaa !121
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph45.split, %bb.f
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond53.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count52
  br i1 %exitcond53.not, label %._crit_edge46, label %.lr.ph45.split, !llvm.loop !436

bb.h:                                             ; preds = %._crit_edge46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !alias.scope !437
  store i64 1, ptr %5, align 8, !tbaa !121, !alias.scope !437
  %i.av = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %bb.l

bb.i:                                             ; preds = %._crit_edge46
  %i.aw = icmp eq i64 %.160, -9223372036854775808
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = load i64, ptr %0, align 8, !tbaa !121
  %i.ay = and i64 %i.ax, 1
  %.not39 = icmp eq i64 %i.ay, 0
  br i1 %.not39, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false), !alias.scope !440
  store i64 1, ptr %6, align 8, !tbaa !121, !alias.scope !440
  %i.ba = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l, %bb.b
  ret void
}

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256lSEj(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZNK5arrow15BasicDecimal25615FitsInPrecisionEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256pLERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE16FromPositiveRealIdEENS_6ResultIS2_EET_ii(ptr dead_on_unwind noalias writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %6 = alloca %"class.arrow::Decimal256", align 8 ; 18 uses
  %7 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %8 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %9 = alloca %"class.arrow::Decimal256", align 8 ; 4 uses
  %10 = alloca %"class.arrow::Status", align 8    ; 6 uses
  %i.b = icmp slt i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !443)
  %i.c = sext i32 %3 to i64
  %i.d = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 608
  %i.f = load double, ptr %i.e, align 8, !tbaa !58, !noalias !443
  %i.g = fmul double %1, %i.f
  %i.h = tail call double @llvm.nearbyint.f64(double %i.g) ; 3 uses
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 608
  %i.l = load double, ptr %i.k, align 8, !tbaa !58, !noalias !443
  %i.m = fcmp ult double %i.h, %i.l
  br i1 %i.m, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !443
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %4, double noundef %1, i32 noundef %2, i32 noundef range(i32 -2147483648, 0) %3), !noalias !443
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  %i.n = load ptr, ptr %4, align 8, !tbaa !7, !noalias !443 ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.d, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !29, !range !38, !noundef !39
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %_ZN5arrow6StatusD2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  br label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !443
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

bb.f:                                             ; preds = %bb.b
  %i.r = tail call double @ldexp(double noundef %i.h, i32 noundef -192) #26, !tbaa !3, !noalias !443
  %i.s = tail call double @llvm.floor.f64(double %i.r) ; 2 uses
  %i.t = tail call double @ldexp(double noundef %i.s, i32 noundef 192) #26, !tbaa !3, !noalias !443
  %i.u = fsub double %i.h, %i.t                   ; 2 uses
  %i.v = tail call double @ldexp(double noundef %i.u, i32 noundef -128) #26, !tbaa !3, !noalias !443
  %i.w = tail call double @llvm.floor.f64(double %i.v) ; 2 uses
  %i.x = tail call double @ldexp(double noundef %i.w, i32 noundef 128) #26, !tbaa !3, !noalias !443
  %i.y = fsub double %i.u, %i.x                   ; 2 uses
  %i.z = tail call double @ldexp(double noundef %i.y, i32 noundef -64) #26, !tbaa !3, !noalias !443
  %i.aa = tail call double @llvm.floor.f64(double %i.z) ; 2 uses
  %i.ab = tail call double @ldexp(double noundef %i.aa, i32 noundef 64) #26, !tbaa !3, !noalias !443
  %i.ac = fsub double %i.y, %i.ab
  %i.ad = fptoui double %i.ac to i64
  %i.ae = fptoui double %i.aa to i64
  %i.af = fptoui double %i.w to i64
  %i.ag = fptoui double %i.s to i64
  store ptr null, ptr %0, align 8, !tbaa !7, !alias.scope !443
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ah, align 8, !alias.scope !443
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %.sroa.422.0..sroa_idx.i, align 8, !alias.scope !443
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.af, ptr %.sroa.523.0..sroa_idx.i, align 8, !alias.scope !443
  %.sroa.624.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.ag, ptr %.sroa.624.0..sroa_idx.i, align 8, !alias.scope !443
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

bb.g:                                             ; preds = %bb.a
  %i.ai = sub nsw i32 %2, %3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 608
  %i.am = load double, ptr %i.al, align 8, !tbaa !58
  %i.an = fcmp ogt double %1, %i.am
  br i1 %i.an, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %5, double noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  %i.ao = load ptr, ptr %5, align 8, !tbaa !7     ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29, !range !38, !noundef !39
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.h, %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.as = call double @frexp(double noundef %1, ptr noundef nonnull %i.a) #26
  %i.at = tail call double @ldexp(double noundef %i.as, i32 noundef 53) #26, !tbaa !3
  %i.au = fptoui double %i.at to i64
  %i.av = load i32, ptr %i.a, align 4, !tbaa !3   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false), !alias.scope !446
  store i64 %i.au, ptr %6, align 8, !tbaa !121, !alias.scope !446
  %i.ax = icmp slt i32 %i.av, 53
  br i1 %i.ax, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ay = sub nsw i32 53, %i.av                   ; 2 uses
  %i.az = icmp samesign ult i32 %3, 61
  br i1 %i.az, label %bb.m, label %.lr.ph.preheader

bb.m:                                             ; preds = %bb.l
  %i.ba = zext nneg i32 %3 to i64
  %i.bb = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.ba
  %i.bc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bb) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, i32 noundef %i.ay)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  br label %bb.r

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.bd = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 1920)) ; 0 uses
  %i.be = sub nsw i32 76, %2
  %.sroa.speculated46 = call i32 @llvm.smax.i32(i32 %i.be, i32 1)
  %i.bf = add nsw i32 %3, -60
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.073 = phi i32 [ %i.bm, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03372 = phi i32 [ %i.bh, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.06771 = phi i32 [ %i.bn, %.lr.ph ], [ %i.ay, %.lr.ph.preheader ] ; 2 uses
  %.06870 = phi i32 [ %i.br, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ] ; 2 uses
  %i.bg = call i32 @llvm.umin.i32(i32 %.sroa.speculated46, i32 %.06870) ; 3 uses
  %i.bh = add nuw nsw i32 %.03372, %i.bg          ; 2 uses
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr @_ZN5arrowL20kCeilLog2PowersOfTenE, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = sub nsw i32 %i.bk, %.073
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bl, i32 %.06771) ; 3 uses
  %i.bm = add nsw i32 %.sroa.speculated, %.073
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, i32 noundef %.sroa.speculated)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %8, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  %i.bn = sub nsw i32 %.06771, %.sroa.speculated  ; 3 uses
  %i.bo = zext nneg i32 %i.bg to i64
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bo
  %i.bq = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bp) ; 0 uses
  %i.br = sub nsw i32 %.06870, %i.bg              ; 3 uses
  %i.bs = icmp sgt i32 %i.br, 0                   ; 2 uses
  %i.bt = icmp sgt i32 %i.bn, 0                   ; 2 uses
  %i.bu = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %i.bu, label %.lr.ph, label %._crit_edge, !llvm.loop !449

._crit_edge:                                      ; preds = %.lr.ph
  br i1 %i.bs, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge
  %i.bv = zext nneg i32 %i.br to i64
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bv
  %i.bx = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.bw) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge
  br i1 %i.bt, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion17RoundedRightShiftENS_10Decimal256Ei(ptr dead_on_unwind noalias writable align 8 %9, ptr noundef nonnull byval(%"class.arrow::Decimal256") align 8 %6, i32 noundef %i.bn)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.r

bb.q:                                             ; preds = %bb.k
  %i.by = add nsw i32 %i.av, -53
  %i.bz = zext nneg i32 %3 to i64
  %i.ca = getelementptr inbounds nuw [32 x i8], ptr @_ZN5arrowL22kDecimal256PowersOfTenE, i64 %i.bz
  %i.cb = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256mLERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.ca) ; 0 uses
  %i.cc = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5arrow15BasicDecimal256lSEj(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %i.by) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.m, %bb.p, %bb.o, %bb.q
  %i.cd = call noundef zeroext i1 @_ZNK5arrow15BasicDecimal25615FitsInPrecisionEi(ptr noundef nonnull align 8 dereferenceable(32) %6, i32 noundef %2)
  br i1 %i.cd, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #26
  call fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias writable align 8 %10, double noundef %1, i32 noundef %2, i32 noundef %3)
  call void @_ZN5arrow6ResultINS_10Decimal256EEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  %i.ce = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  %.not.i42 = icmp eq ptr %i.ce, null
  br i1 %.not.i42, label %_ZN5arrow6StatusD2Ev.exit43, label %bb.t, !prof !28

bb.t:                                             ; preds = %bb.s
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 1
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !29, !range !38, !noundef !39
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %_ZN5arrow6StatusD2Ev.exit43, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  br label %_ZN5arrow6StatusD2Ev.exit43

_ZN5arrow6StatusD2Ev.exit43:                      ; preds = %bb.s, %bb.t, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #26
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  store ptr null, ptr %0, align 8, !tbaa !7
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN5arrow6StatusD2Ev.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii.exit: ; preds = %bb.f, %_ZN5arrow6StatusD2Ev.exit.i, %_ZN5arrow6StatusD2Ev.exit, %bb.w
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE13OverflowErrorIdEENS_6StatusET_ii(ptr dead_on_unwind noalias nonnull writable align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  store double %1, ptr %i.a, align 8, !tbaa !58
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  store i32 %3, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26, !noalias !450
  call void @_ZN5arrow8internal12JoinToStringIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(16) @.str.30, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 1 dereferenceable(5) @.str.33, ptr noundef nonnull align 8 dereferenceable(8) @_ZN5arrow13DecimalTraitsINS_15BasicDecimal256EE9kTypeNameE, ptr noundef nonnull align 1 dereferenceable(14) @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 1 dereferenceable(11) @.str.35, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(12) @.str.36), !noalias !450
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !16, !noalias !450 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.g = load i64, ptr %i.e, align 8, !tbaa !54, !noalias !450
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #27
  br label %_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %4, align 8, !tbaa !16, !noalias !450 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !tbaa !54, !noalias !450
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !450
  resume { ptr, i32 } %i.i

_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26, !noalias !450
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef float @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIfEET_RKNS_10Decimal256Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 8 uses
  %.sroa.017.0.copyload = load i64, ptr %0, align 8 ; 2 uses
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.418.0.copyload = load i64, ptr %.sroa.418.0..sroa_idx, align 8 ; 2 uses
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.519.0.copyload = load i64, ptr %.sroa.519.0..sroa_idx, align 8 ; 2 uses
  %.sroa.620.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.620.0.copyload = load i64, ptr %.sroa.620.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp slt i32 %1, 1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %.sroa.620.0.copyload, 0
  %i.c = icmp eq i64 %.sroa.519.0.copyload, 0
  %or.cond = select i1 %i.b, i1 %i.c, i1 false
  %i.d = icmp eq i64 %.sroa.418.0.copyload, 0
  %or.cond21 = select i1 %or.cond, i1 %i.d, i1 false
  %i.e = icmp ult i64 %.sroa.017.0.copyload, 16777215
  %or.cond22 = select i1 %or.cond21, i1 %i.e, i1 false
  br i1 %or.cond22, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = sub nsw i32 0, %1                        ; 2 uses
  %i.g = add i32 %1, 76
  %i.h = icmp ult i32 %i.g, 153
  br i1 %i.h, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 304
  %i.l = load float, ptr %i.k, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit

bb.e:                                             ; preds = %bb.c
  %i.m = sitofp i32 %i.f to float
  %i.n = tail call noundef float @powf(float noundef 1.000000e+01, float noundef %i.m) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi float [ %i.l, %bb.d ], [ %i.n, %bb.e ]
  %i.o = icmp eq i64 %.sroa.620.0.copyload, 0
  %i.p = icmp eq i64 %.sroa.519.0.copyload, 0
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  %i.r = uitofp i64 %.sroa.418.0.copyload to float
  %i.s = fmul nnan float %i.r, f0x5F800000
  %i.t = select i1 %i.q, float %i.s, float +inf
  %i.u = uitofp i64 %.sroa.017.0.copyload to float
  %i.v = fadd nnan float %i.t, %i.u
  %i.w = fmul float %i.v, %.0.i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.sroa.013.0.copyload = load i64, ptr %2, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx, align 8
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.515.0.copyload = load i64, ptr %.sroa.515.0..sroa_idx, align 8
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.616.0.copyload = load i64, ptr %.sroa.616.0..sroa_idx, align 8
  %i.x = icmp eq i64 %.sroa.616.0.copyload, 0
  %i.y = icmp eq i64 %.sroa.515.0.copyload, 0
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  %i.aa = uitofp i64 %.sroa.414.0.copyload to float
  %i.ab = fmul nnan float %i.aa, f0x5F800000
  %i.ac = select i1 %i.z, float %i.ab, float +inf
  %i.ad = uitofp i64 %.sroa.013.0.copyload to float
  %i.ae = fadd nnan float %i.ac, %i.ad
  %.sroa.0.0.copyload = load i64, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.af = sub nsw i32 0, %1                       ; 2 uses
  %i.ag = icmp samesign ult i32 %1, 77
  br i1 %i.ag, label %bb.g, label %bb.h, !prof !28

bb.g:                                             ; preds = %bb.f
  %i.ah = sext i32 %i.af to i64
  %i.ai = getelementptr [4 x i8], ptr @_ZN5arrowL17kFloatPowersOfTenE, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 304
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !47
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12

bb.h:                                             ; preds = %bb.f
  %i.al = sitofp i32 %i.af to float
  %i.am = call noundef float @powf(float noundef 1.000000e+01, float noundef %i.al) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12: ; preds = %bb.g, %bb.h
  %.0.i.i11 = phi float [ %i.ak, %bb.g ], [ %i.am, %bb.h ]
  %i.an = icmp eq i64 %.sroa.6.0.copyload, 0
  %i.ao = icmp eq i64 %.sroa.5.0.copyload, 0
  %i.ap = select i1 %i.an, i1 %i.ao, i1 false
  %i.aq = uitofp i64 %.sroa.4.0.copyload to float
  %i.ar = fmul nnan float %i.aq, f0x5F800000
  %i.as = select i1 %i.ap, float %i.ar, float +inf
  %i.at = uitofp i64 %.sroa.0.0.copyload to float
  %i.au = fadd nnan float %i.as, %i.at
  %i.av = fmul float %i.au, %.0.i.i11
  %i.aw = fadd float %i.ae, %i.av
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %bb.i

bb.i:                                             ; preds = %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit
  %.0 = phi float [ %i.w, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit ], [ %i.aw, %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIfEET_RKNS_10Decimal256Ei.exit12 ]
  ret float %.0
}

declare void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef double @_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion14ToRealPositiveIdEET_RKNS_10Decimal256Ei(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.arrow::BasicDecimal256", align 16 ; 6 uses
  %3 = alloca %"class.arrow::BasicDecimal256", align 8 ; 5 uses
  %i.a = load <4 x i64>, ptr %0, align 8          ; 4 uses
  %i.b = icmp slt i32 %1, 1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shufflevector <4 x i64> %i.a, <4 x i64> poison, <2 x i32> <i32 2, i32 3>
  %i.d = icmp eq <2 x i64> %i.c, zeroinitializer  ; 2 uses
  %i.e = extractelement <2 x i1> %i.d, i64 0
  %i.f = extractelement <2 x i1> %i.d, i64 1
  %or.cond = select i1 %i.f, i1 %i.e, i1 false
  %i.g = extractelement <4 x i64> %i.a, i64 1
  %i.h = icmp eq i64 %i.g, 0
  %or.cond21 = select i1 %or.cond, i1 %i.h, i1 false
  %i.i = extractelement <4 x i64> %i.a, i64 0
  %i.j = icmp ult i64 %i.i, 9007199254740991
  %or.cond22 = select i1 %or.cond21, i1 %i.j, i1 false
  br i1 %or.cond22, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = sub nsw i32 0, %1                        ; 2 uses
  %i.l = add i32 %1, 76
  %i.m = icmp ult i32 %i.l, 153
  br i1 %i.m, label %bb.d, label %bb.e, !prof !28

bb.d:                                             ; preds = %bb.c
  %i.n = sext i32 %i.k to i64
  %i.o = getelementptr [8 x i8], ptr @_ZN5arrowL18kDoublePowersOfTenE, i64 %i.n
  %i.p = getelementptr i8, ptr %i.o, i64 608
  %i.q = load double, ptr %i.p, align 8, !tbaa !58
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit

bb.e:                                             ; preds = %bb.c
  %i.r = sitofp i32 %i.k to double
  %i.s = tail call double @pow(double noundef 1.000000e+01, double noundef %i.r) #26, !tbaa !3
  br label %_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit

_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion21ToRealPositiveNoSplitIdEET_RKNS_10Decimal256Ei.exit: ; preds = %bb.d, %bb.e
  %.0.i.i = phi double [ %i.q, %bb.d ], [ %i.s, %bb.e ]
  %i.t = uitofp <4 x i64> %i.a to <4 x double>    ; 2 uses
  %i.u = fmul nnan <4 x double> %i.t, <double poison, double f0x43F0000000000000, double f0x47F0000000000000, double f0x4BF0000000000000> ; 3 uses
  %i.v = extractelement <4 x double> %i.u, i64 2
  %i.w = extractelement <4 x double> %i.u, i64 3
  %i.x = fadd double %i.v, %i.w
  %i.y = extractelement <4 x double> %i.u, i64 1
  %i.z = fadd double %i.y, %i.x
  %i.aa = extractelement <4 x double> %i.t, i64 0
  %i.ab = fadd double %i.z, %i.aa
  %i.ac = fmul double %i.ab, %.0.i.i
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @_ZNK5arrow15BasicDecimal25619GetWholeAndFractionEiPS0_S1_(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3)
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ad = load <2 x i64>, ptr %.sroa.515.0..sroa_idx, align 16
  %i.ae = uitofp <2 x i64> %i.ad to <2 x double>
  %i.af = fmul nnan <2 x double> %i.ae, <double f0x47F0000000000000, double f0x4BF0000000000000> ; 2 uses
  %shift = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.af, %shift
  %i.ag = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ah = load <2 x i64>, ptr %2, align 16
  %i.ai = uitofp <2 x i64> %i.ah to <2 x double>  ; 2 uses
  %i.aj = extractelement <2 x double> %i.ai, i64 1
  %i.ak = fmul nnan double %i.aj, f0x43F0000000000000
  %i.al = fadd double %i.ak, %i.ag
  %i.am = extractelement <2 x double> %i.ai, i64 0
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i32
!234 = distinct !{!234, !235, !"_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!235 = distinct !{!235, !"_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!238 = distinct !{!238, !"_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!239 = !{!240, !242, !244}
!240 = distinct !{!240, !241, !"_ZSt9__find_ifISt16reverse_iteratorIPKmEN9__gnu_cxx5__ops10_Iter_predIZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_EEET_SM_SM_T0_St26random_access_iterator_tag: argument 0"}
!241 = distinct !{!241, !"_ZSt9__find_ifISt16reverse_iteratorIPKmEN9__gnu_cxx5__ops10_Iter_predIZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_EEET_SM_SM_T0_St26random_access_iterator_tag"}
!242 = distinct !{!242, !243, !"_ZSt9__find_ifISt16reverse_iteratorIPKmEN9__gnu_cxx5__ops10_Iter_predIZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_EEET_SM_SM_T0_: argument 0"}
!243 = distinct !{!243, !"_ZSt9__find_ifISt16reverse_iteratorIPKmEN9__gnu_cxx5__ops10_Iter_predIZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_EEET_SM_SM_T0_"}
!244 = distinct !{!244, !245, !"_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_: argument 0"}
!245 = distinct !{!245, !"_ZSt7find_ifISt16reverse_iteratorIPKmEZN5arrowL31AppendLittleEndianArrayToStringILm4EEEvRKSt5arrayImXT_EEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEUlmE_ET_SI_SI_T0_"}
!246 = !{i64 0, i64 32, !54}
!247 = distinct !{!247, !67}
!248 = distinct !{!248, !67}
!249 = distinct !{!249, !67}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev: argument 0"}
!252 = distinct !{!252, !"_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev"}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal256EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_: argument 0"}
!255 = distinct !{!255, !"_ZN5arrow12_GLOBAL__N_117DecimalFromStringINS_10Decimal256EEENS_6StatusEPKcSt17basic_string_viewIcSt11char_traitsIcEEPT_PiSC_"}
!256 = !{!257, !259, !254}
!257 = distinct !{!257, !258, !"_ZN5arrow6Status8FromArgsIJRA37_KcRPS2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!258 = distinct !{!258, !"_ZN5arrow6Status8FromArgsIJRA37_KcRPS2_EEES0_NS_10StatusCodeEDpOT_"}
!259 = distinct !{!259, !260, !"_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_: argument 0"}
!260 = distinct !{!260, !"_ZN5arrow6Status7InvalidIJRA37_KcRPS2_EEES0_DpOT_"}
!261 = !{!262, !264, !254}
!262 = distinct !{!262, !263, !"_ZN5arrow6Status8FromArgsIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!263 = distinct !{!263, !"_ZN5arrow6Status8FromArgsIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_NS_10StatusCodeEDpOT_"}
!264 = distinct !{!264, !265, !"_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_: argument 0"}
!265 = distinct !{!265, !"_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA18_S2_RPS2_RA8_S2_EEES0_DpOT_"}
!266 = !{!267, !269, !254}
!267 = distinct !{!267, !268, !"_ZN5arrow6Status8FromArgsIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!268 = distinct !{!268, !"_ZN5arrow6Status8FromArgsIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_NS_10StatusCodeEDpOT_"}
!269 = distinct !{!269, !270, !"_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_: argument 0"}
!270 = distinct !{!270, !"_ZN5arrow6Status7InvalidIJRA13_KcRSt17basic_string_viewIcSt11char_traitsIcEERA28_S2_RPS2_EEES0_DpOT_"}
!271 = !{!272, !254}
!272 = distinct !{!272, !273, !"_ZN5arrow6Status2OKEv: argument 0"}
!273 = distinct !{!273, !"_ZN5arrow6Status2OKEv"}
!274 = !{!275}
!275 = distinct !{!275, !276, !"_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE: argument 0"}
!276 = distinct !{!276, !"_ZN5arrow10Decimal25610FromStringESt17basic_string_viewIcSt11char_traitsIcEE"}
!277 = !{!278}
!278 = distinct !{!278, !279, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii: argument 0"}
!279 = distinct !{!279, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE8FromRealIfEENS_6ResultIS2_EET_ii"}
!280 = !{!281, !283, !278}
!281 = distinct !{!281, !282, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA15_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!282 = distinct !{!282, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA15_S2_EEES0_NS_10StatusCodeEDpOT_"}
!283 = distinct !{!283, !284, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA15_S2_EEES0_DpOT_: argument 0"}
!284 = distinct !{!284, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA15_S2_EEES0_DpOT_"}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii: argument 0"}
!287 = distinct !{!287, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_10Decimal256ENS0_24Decimal256RealConversionEE8FromRealIdEENS_6ResultIS2_EET_ii"}
!288 = !{!289, !291, !286}
!289 = distinct !{!289, !290, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA15_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!290 = distinct !{!290, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA15_S2_EEES0_NS_10StatusCodeEDpOT_"}
!291 = distinct !{!291, !292, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_: argument 0"}
!292 = distinct !{!292, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA15_S2_EEES0_DpOT_"}
!293 = !{!294}
!294 = distinct !{!294, !295, !"_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev: argument 0"}
!295 = distinct !{!295, !"_ZNK5arrow10Decimal25615ToIntegerStringB5cxx11Ev"}
!296 = !{!36, !37, i64 0}
!297 = !{!298, !4, i64 8}
!298 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!299 = !{!298, !4, i64 12}
!300 = !{!301, !301, i64 0}
!301 = !{!"vtable pointer", !6, i64 0}
!302 = distinct !{null, null, null, null}
!303 = distinct !{null}
!304 = !{!305}
!305 = distinct !{!305, !306, !"_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!306 = distinct !{!306, !"_ZN5arrow8internal12JoinToStringIJRA25_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!307 = !{!308, !316, i64 8}
!308 = !{!"_ZTSN5arrow8internal19StringStreamWrapperE", !309, i64 0, !316, i64 8}
!309 = !{!"_ZTSSt10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !310, i64 0}
!310 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !311, i64 0}
!311 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !312, i64 0}
!312 = !{!"_ZTSSt5tupleIJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !313, i64 0}
!313 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !314, i64 0}
!314 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEELb0EE", !315, i64 0}
!315 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!316 = !{!"p1 _ZTSSo", !10, i64 0}
!317 = !{i64 8}
!318 = !{!319}
!319 = distinct !{!319, !320, !"_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!320 = distinct !{!320, !"_ZN5arrow8internal12JoinToStringIJRA43_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!321 = !{!322}
!322 = distinct !{!322, !323, !"_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!323 = distinct !{!323, !"_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!324 = !{!325}
!325 = distinct !{!325, !326, !"_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_: argument 0"}
!326 = distinct !{!326, !"_ZN5arrow8internal12JoinToStringIJRA22_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_"}
!327 = !{!328}
!328 = distinct !{!328, !329, !"_ZN5arrow12_GLOBAL__N_123Decimal32RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal32EEET_ii: argument 0"}
!329 = distinct !{!329, !"_ZN5arrow12_GLOBAL__N_123Decimal32RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal32EEET_ii"}
!330 = !{!331, !328}
!331 = distinct !{!331, !332, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE13OverflowErrorIfEENS_6StatusET_ii: argument 0"}
!332 = distinct !{!332, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE13OverflowErrorIfEENS_6StatusET_ii"}
!333 = !{!334, !336, !331, !328}
!334 = distinct !{!334, !335, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!335 = distinct !{!335, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!336 = distinct !{!336, !337, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!337 = distinct !{!337, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
!338 = !{!339, !341, i64 32}
!339 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !340, i64 24, !341, i64 28, !341, i64 32, !342, i64 40, !343, i64 48, !5, i64 64, !4, i64 192, !344, i64 200, !345, i64 208}
!340 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!341 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!342 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !10, i64 0}
!343 = !{!"_ZTSNSt8ios_base6_WordsE", !10, i64 0, !20, i64 8}
!344 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !10, i64 0}
!345 = !{!"_ZTSSt6locale", !346, i64 0}
!346 = !{!"p1 _ZTSNSt6locale5_ImplE", !10, i64 0}
!347 = !{!348}
!348 = distinct !{!348, !349, !"_ZN5arrow12_GLOBAL__N_123Decimal32RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal32EEET_ii: argument 0"}
!349 = distinct !{!349, !"_ZN5arrow12_GLOBAL__N_123Decimal32RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal32EEET_ii"}
!350 = !{!351, !348}
!351 = distinct !{!351, !352, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE13OverflowErrorIdEENS_6StatusET_ii: argument 0"}
!352 = distinct !{!352, !"_ZN5arrow12_GLOBAL__N_121DecimalRealConversionINS_9Decimal32ENS0_23Decimal32RealConversionEE13OverflowErrorIdEENS_6StatusET_ii"}
!353 = !{!354, !356, !351, !348}
!354 = distinct !{!354, !355, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!355 = distinct !{!355, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!356 = distinct !{!356, !357, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!357 = distinct !{!357, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal64EEET_ii: argument 0"}
!360 = distinct !{!360, !"_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_9Decimal64EEET_ii"}
!361 = distinct !{!361, !67}
!362 = !{!363, !365}
!363 = distinct !{!363, !364, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!364 = distinct !{!364, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!365 = distinct !{!365, !366, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!366 = distinct !{!366, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
!367 = !{!368}
!368 = distinct !{!368, !369, !"_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal64EEET_ii: argument 0"}
!369 = distinct !{!369, !"_ZN5arrow12_GLOBAL__N_123Decimal64RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_9Decimal64EEET_ii"}
!370 = distinct !{!370, !67}
!371 = !{!372, !374}
!372 = distinct !{!372, !373, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!373 = distinct !{!373, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!374 = distinct !{!374, !375, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!375 = distinct !{!375, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
!376 = !{!377}
!377 = distinct !{!377, !378, !"_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_10Decimal128EEET_ii: argument 0"}
!378 = distinct !{!378, !"_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_10Decimal128EEET_ii"}
!379 = distinct !{!379, !67}
!380 = distinct !{!380, !381}
!381 = !{!"llvm.loop.unroll.disable"}
!382 = distinct !{!382, !67}
!383 = !{!384, !386}
!384 = distinct !{!384, !385, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!385 = distinct !{!385, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!386 = distinct !{!386, !387, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!387 = distinct !{!387, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal128EEET_ii: argument 0"}
!390 = distinct !{!390, !"_ZN5arrow12_GLOBAL__N_124Decimal128RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal128EEET_ii"}
!391 = distinct !{!391, !381}
!392 = distinct !{!392, !67}
!393 = !{!394, !396}
!394 = distinct !{!394, !395, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!395 = distinct !{!395, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!396 = distinct !{!396, !397, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!397 = distinct !{!397, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
!398 = distinct !{!398, !67}
!399 = !{!"branch_weights", i32 1, i32 1048575}
!400 = !{!401, !411, i64 40}
!401 = !{!"_ZTSN5arrow8DataTypeE", !402, i64 0, !406, i64 24, !411, i64 40, !412, i64 48}
!402 = !{!"_ZTSN5arrow6detail15FingerprintableE", !403, i64 8, !403, i64 16}
!403 = !{!"_ZTSSt6atomicIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !404, i64 0}
!404 = !{!"_ZTSSt13__atomic_baseIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE", !405, i64 0}
!405 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!406 = !{!"_ZTSSt23enable_shared_from_thisIN5arrow8DataTypeEE", !407, i64 0}
!407 = !{!"_ZTSSt8weak_ptrIN5arrow8DataTypeEE", !408, i64 0}
!408 = !{!"_ZTSSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE", !409, i64 0, !410, i64 8}
!409 = !{!"p1 _ZTSN5arrow8DataTypeE", !10, i64 0}
!410 = !{!"_ZTSSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EE", !37, i64 0}
!411 = !{!"_ZTSN5arrow4Type4typeE", !5, i64 0}
!412 = !{!"_ZTSSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !413, i64 0}
!413 = !{!"_ZTSSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE", !414, i64 0}
!414 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE12_Vector_implE", !415, i64 0}
!415 = !{!"_ZTSNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE17_Vector_impl_dataE", !416, i64 0, !416, i64 8, !416, i64 16}
!416 = !{!"p1 _ZTSSt10shared_ptrIN5arrow5FieldEE", !10, i64 0}
!417 = !{!"branch_weights", i32 2146410443, i32 1073205}
!418 = distinct !{!418, !67}
!419 = !{!"branch_weights", i32 4000000, i32 4001}
!420 = distinct !{!420, !67}
!421 = distinct !{!421, !67}
!422 = !{!423}
!423 = distinct !{!423, !424, !"_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_10Decimal256EEET_ii: argument 0"}
!424 = distinct !{!424, !"_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIfEENS_6ResultINS_10Decimal256EEET_ii"}
!425 = !{!426}
!426 = distinct !{!426, !427, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsImEESt5arrayImLm4EET_: argument 0"}
!427 = distinct !{!427, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsImEESt5arrayImLm4EET_"}
!428 = distinct !{!428, !67}
!429 = !{!430, !432}
!430 = distinct !{!430, !431, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!431 = distinct !{!431, !"_ZN5arrow6Status8FromArgsIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!432 = distinct !{!432, !433, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!433 = distinct !{!433, !"_ZN5arrow6Status7InvalidIJRA16_KcRfRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
!434 = distinct !{!434, !381}
!435 = distinct !{!435, !67}
!436 = distinct !{!436, !67}
!437 = !{!438}
!438 = distinct !{!438, !439, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsIiEESt5arrayImLm4EET_: argument 0"}
!439 = distinct !{!439, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsIiEESt5arrayImLm4EET_"}
!440 = !{!441}
!441 = distinct !{!441, !442, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsIiEESt5arrayImLm4EET_: argument 0"}
!442 = distinct !{!442, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsIiEESt5arrayImLm4EET_"}
!443 = !{!444}
!444 = distinct !{!444, !445, !"_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii: argument 0"}
!445 = distinct !{!445, !"_ZN5arrow12_GLOBAL__N_124Decimal256RealConversion22FromPositiveRealApproxIdEENS_6ResultINS_10Decimal256EEET_ii"}
!446 = !{!447}
!447 = distinct !{!447, !448, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsImEESt5arrayImLm4EET_: argument 0"}
!448 = distinct !{!448, !"_ZN5arrow19GenericBasicDecimalINS_15BasicDecimal256ELi256ELi4EE16WordsFromLowBitsImEESt5arrayImLm4EET_"}
!449 = distinct !{!449, !67}
!450 = !{!451, !453}
!451 = distinct !{!451, !452, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_: argument 0"}
!452 = distinct !{!452, !"_ZN5arrow6Status8FromArgsIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_NS_10StatusCodeEDpOT_"}
!453 = distinct !{!453, !454, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_: argument 0"}
!454 = distinct !{!454, !"_ZN5arrow6Status7InvalidIJRA16_KcRdRA5_S2_RKPS2_RA14_S2_RiRA11_S2_SD_RA12_S2_EEES0_DpOT_"}
end_hunk_1
