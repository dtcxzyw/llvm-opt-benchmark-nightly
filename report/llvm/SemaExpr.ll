Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaExpr?download=true
inline.NumInlined: 75953
inline.NumDeleted: 20715
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZN5clang4Sema26UsualArithmeticConversionsERNS_12ActionResultIPNS_4ExprELb1EEES5_NS_14SourceLocationENS_13ArithConvKindE:bb.a
bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.jt = icmp eq i32 %4, 4
  %i.ju = call fastcc i64 @_ZL23handleComplexConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %spec.select, i64 %.sroa.03.0.i78, i1 noundef zeroext %i.jt)
  br label %bb.bc

bb.at:                                            ; preds = %bb.ar
  %i.jv = load ptr, ptr %i.hy, align 16, !tbaa !791
  %i.jw = call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jv) #30
  br i1 %i.jw, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.jx = load ptr, ptr %i.gw, align 16, !tbaa !791
  %i.jy = call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.jx) #30
  br i1 %i.jy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.jz = icmp eq i32 %4, 4
  %i.ka = call fastcc i64 @_ZL21handleFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %spec.select, i64 %.sroa.03.0.i78, i1 noundef zeroext %i.jz)
  br label %bb.bc

bb.aw:                                            ; preds = %bb.au
  %i.kb = load ptr, ptr %i.hy, align 16, !tbaa !791
  %i.kc = call noundef zeroext i1 @_ZNK5clang4Type20isComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.kb) #30
  br i1 %i.kc, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.kd = load ptr, ptr %i.gw, align 16, !tbaa !791
  %i.ke = call noundef zeroext i1 @_ZNK5clang4Type20isComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.kd) #30
  br i1 %i.ke, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.kf = icmp eq i32 %4, 4
  %i.kg = call fastcc i64 @_ZL26handleComplexIntConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %spec.select, i64 %.sroa.03.0.i78, i1 noundef zeroext %i.kf)
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.kh = load ptr, ptr %i.hy, align 16, !tbaa !791
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %.sroa.0.0.copyload.i.i.i.i106 = load i64, ptr %i.ki, align 8, !tbaa !788
  %i.kj = and i64 %.sroa.0.0.copyload.i.i.i.i106, -16
  %i.kk = inttoptr i64 %i.kj to ptr
  %i.kl = load ptr, ptr %i.kk, align 16, !tbaa !791 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 16 ; 2 uses
  %i.kn = load i8, ptr %i.km, align 16            ; 3 uses
  %i.ko = icmp eq i8 %i.kn, 13
  %.not8.i107 = icmp ne ptr %i.kl, null
  %.not.not.not.i108 = and i1 %.not8.i107, %i.ko
  br i1 %.not.not.not.i108, label %_ZNK5clang4Type16isFixedPointTypeEv.exit111, label %_ZNK5clang4Type16isFixedPointTypeEv.exit111.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit111:      ; preds = %bb.az
  %i.kp = load i32, ptr %i.km, align 16
  %i.kq = lshr i32 %i.kp, 19
  %i.kr = and i32 %i.kq, 1023
  %i.ks = add nsw i32 %i.kr, -473
  %spec.select7.i110 = icmp ult i32 %i.ks, 24
  br i1 %spec.select7.i110, label %bb.ba, label %_ZNK5clang4Type16isFixedPointTypeEv.exit111.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit111.thread: ; preds = %bb.az, %_ZNK5clang4Type16isFixedPointTypeEv.exit111
  %i.kt = load ptr, ptr %i.gw, align 16, !tbaa !791
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 8
  %.sroa.0.0.copyload.i.i.i.i113 = load i64, ptr %i.ku, align 8, !tbaa !788
  %i.kv = and i64 %.sroa.0.0.copyload.i.i.i.i113, -16
  %i.kw = inttoptr i64 %i.kv to ptr
  %i.kx = load ptr, ptr %i.kw, align 16, !tbaa !791 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kx, i64 16 ; 2 uses
  %i.kz = load i8, ptr %i.ky, align 16            ; 2 uses
  %i.la = icmp eq i8 %i.kz, 13
  %.not8.i114 = icmp ne ptr %i.kx, null
  %.not.not.not.i115 = and i1 %.not8.i114, %i.la
  br i1 %.not.not.not.i115, label %_ZNK5clang4Type16isFixedPointTypeEv.exit118, label %_ZNK5clang4Type16isFixedPointTypeEv.exit118.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit118:      ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit111.thread
  %i.lb = load i32, ptr %i.ky, align 16
  %i.lc = lshr i32 %i.lb, 19
  %i.ld = and i32 %i.lc, 1023
  %i.le = add nsw i32 %i.ld, -473
  %spec.select7.i117 = icmp ult i32 %i.le, 24
  br i1 %spec.select7.i117, label %bb.ba, label %.thread182

bb.ba:                                            ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit118, %_ZNK5clang4Type16isFixedPointTypeEv.exit111
  %i.lf = call fastcc i64 @_ZL26handleFixedPointConversionRN5clang4SemaENS_8QualTypeES2_(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %spec.select, i64 %.sroa.03.0.i78)
  br label %bb.bc

_ZNK5clang4Type16isFixedPointTypeEv.exit118.thread: ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit111.thread
  %i.lg = icmp eq i8 %i.kn, 35
  %i.lh = icmp eq i8 %i.kz, 35
  %or.cond184 = or i1 %i.lg, %i.lh
  br i1 %or.cond184, label %bb.bb, label %.thread183

.thread182:                                       ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit118
  %i.li = icmp eq i8 %i.kn, 35
  br i1 %i.li, label %bb.bb, label %.thread183

bb.bb:                                            ; preds = %.thread182, %_ZNK5clang4Type16isFixedPointTypeEv.exit118.thread
  %i.lj = icmp eq i32 %4, 4
  %i.lk = call fastcc i64 @_ZL36handleOverflowBehaviorTypeConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %spec.select, i64 %.sroa.03.0.i78, i1 noundef zeroext %i.lj)
  br label %bb.bc

.thread183:                                       ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit118.thread, %.thread182
  %i.ll = icmp eq i32 %4, 4
  %i.lm = call fastcc i64 @_ZL23handleIntegerConversionIXadL_ZN12_GLOBAL__N_114doIntegralCastERN5clang4SemaEPNS1_4ExprENS1_8QualTypeEEEXadL_ZNS0_14doIntegralCastES3_S5_S6_EEES6_S3_RNS1_12ActionResultIS5_Lb1EEES9_S6_S6_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %spec.select, i64 %.sroa.03.0.i78, i1 noundef zeroext %i.ll)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ad, %bb.af, %bb.ae, %.thread, %bb.an, %_ZNK5clang4Type16isFixedPointTypeEv.exit98, %.thread183, %bb.bb, %bb.ba, %bb.ay, %bb.av, %bb.as, %bb.al, %bb.y, %bb.x
  %.sroa.0170.2 = phi i64 [ 0, %bb.y ], [ 0, %bb.x ], [ %i.hc, %bb.ad ], [ 0, %bb.ae ], [ 0, %bb.af ], [ %i.ig, %bb.al ], [ %i.lm, %.thread183 ], [ 0, %bb.an ], [ %i.ju, %bb.as ], [ %i.ka, %bb.av ], [ %i.kg, %bb.ay ], [ %i.lf, %bb.ba ], [ %i.lk, %bb.bb ], [ 0, %_ZNK5clang4Type16isFixedPointTypeEv.exit98 ], [ 0, %.thread ]
  ret i64 %.sroa.0170.2
}

declare i64 @_ZNK5clang10ASTContext20getCommonSugaredTypeENS_8QualTypeES1_b(ptr noundef nonnull align 8 dereferenceable(23904), i64, i64, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL25unsupportedTypeConversionRKN5clang4SemaENS_8QualTypeES3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, i64 %1, i64 %2) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !791
  %i.d = tail call noundef zeroext i1 @_ZNK5clang4Type14isFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #30
  br i1 %i.d, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %2, -16
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !791
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Type14isFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #30
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 16, !tbaa !791 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i8, ptr %i.j, align 16
  %.not.i = icmp eq i8 %i.k, 14
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !788
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !791
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 16
  %i.r = icmp eq i8 %i.q, 14
  br i1 %i.r, label %bb.e, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.i) #30
  br label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.1.i = phi ptr [ %i.s, %bb.e ], [ %i.i, %bb.c ], [ null, %bb.d ] ; 2 uses
  %i.t = load ptr, ptr %i.f, align 16, !tbaa !791 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load i8, ptr %i.u, align 16
  %.not.i24 = icmp eq i8 %i.v, 14
  br i1 %.not.i24, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit27, label %bb.f

bb.f:                                             ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.0.0.copyload.i.i.i.i25 = load i64, ptr %i.w, align 8, !tbaa !788
  %i.x = and i64 %.sroa.0.0.copyload.i.i.i.i25, -16
  %i.y = inttoptr i64 %i.x to ptr
  %i.z = load ptr, ptr %i.y, align 16, !tbaa !791
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load i8, ptr %i.aa, align 16
  %i.ac = icmp eq i8 %i.ab, 14
  br i1 %i.ac, label %bb.g, label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit27

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.t) #30
  br label %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit27

_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit27: ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit, %bb.f, %bb.g
  %.1.i26 = phi ptr [ %i.ad, %bb.g ], [ %i.t, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit ], [ null, %bb.f ] ; 2 uses
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit27
  %i.ae = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.ae, align 16, !tbaa !788
  br label %bb.i

bb.i:                                             ; preds = %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit27, %bb.h
  %.sroa.06.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.h ], [ %1, %_ZNK5clang4Type5getAsINS_11ComplexTypeEEEPKT_v.exit27 ]
  %.not16 = icmp eq ptr %.1.i26, null
  br i1 %.not16, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %.1.i26, i64 32
  %.sroa.0.0.copyload.i28 = load i64, ptr %i.af, align 16, !tbaa !788
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.05.0 = phi i64 [ %.sroa.0.0.copyload.i28, %bb.j ], [ %2, %bb.i ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ai = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.ah, i64 %.sroa.06.0) #30 ; 2 uses
  %i.aj = load ptr, ptr %i.ag, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.ak = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.aj, i64 %.sroa.05.0) #30 ; 2 uses
  %.not17.a = icmp eq ptr %i.ai, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %.not17.a, label %3, label %bb.l

3:                                                ; preds = %bb.k
  %.not18 = icmp eq ptr %i.ak, @_ZN4llvm11APFloatBase11semIEEEquadE
  br i1 %.not18, label %bb.m, label %.thread

bb.l:                                             ; preds = %bb.k
  %.not19 = icmp eq ptr %i.ai, @_ZN4llvm11APFloatBase11semIEEEquadE
  %.not20 = icmp eq ptr %i.ak, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %or.cond.a = and i1 %.not19, %.not20
  br i1 %or.cond.a, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l, %3
  br label %.thread

.thread:                                          ; preds = %3, %bb.m, %bb.l, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.m ], [ false, %3 ], [ false, %bb.l ]
  ret i1 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL23handleComplexConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i64 %3, i64 %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_ZL37handleComplexIntegerToFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %4, i64 %3, i1 noundef zeroext false)
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i1 @_ZL37handleComplexIntegerToFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %3, i64 %4, i1 noundef zeroext %5)
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.e = tail call noundef i32 @_ZNK5clang10ASTContext20getFloatingTypeOrderENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.d, i64 %3, i64 %4) #30 ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = xor i1 %5, true
  %i.h = tail call fastcc i64 @_ZL28handleComplexFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEENS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %3, i64 %4, i1 noundef zeroext %i.g)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = icmp ne i32 %i.e, 0
  %i.j = tail call fastcc i64 @_ZL28handleComplexFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEENS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %4, i64 %3, i1 noundef zeroext %i.i)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  %.sroa.033.1 = phi i64 [ %4, %bb.b ], [ %3, %bb.a ], [ %i.h, %bb.d ], [ %i.j, %bb.e ]
  ret i64 %.sroa.033.1
}

declare noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL21handleFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i64 %3, i64 %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %3, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !791
  %i.d = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #30 ; 3 uses
  %i.e = and i64 %4, -16
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !791
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #30
  %i.i = load ptr, ptr %i.b, align 16, !tbaa !791
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !788
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !791 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = load i8, ptr %i.n, align 16
  %i.p = icmp eq i8 %i.o, 13
  %.not8.i = icmp ne ptr %i.m, null
  %.not.not.not.i = and i1 %.not8.i, %i.p         ; 2 uses
  br i1 %.not.not.not.i, label %_ZNK5clang4Type16isFixedPointTypeEv.exit, label %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit:         ; preds = %bb.a
  %i.q = load i32, ptr %i.n, align 16
  %i.r = lshr i32 %i.q, 19
  %i.s = and i32 %i.r, 1023
  %i.t = add nsw i32 %i.s, -473
  %spec.select7.i = icmp ult i32 %i.t, 24
  br i1 %spec.select7.i, label %bb.b, label %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit.thread:  ; preds = %bb.a, %_ZNK5clang4Type16isFixedPointTypeEv.exit
  %i.u = load ptr, ptr %i.f, align 16, !tbaa !791
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload.i.i.i.i51 = load i64, ptr %i.v, align 8, !tbaa !788
  %i.w = and i64 %.sroa.0.0.copyload.i.i.i.i51, -16
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = load ptr, ptr %i.x, align 16, !tbaa !791 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 16
  %i.ab = icmp eq i8 %i.aa, 13
  %.not8.i52 = icmp ne ptr %i.y, null
  %.not.not.not.i53 = and i1 %.not8.i52, %i.ab
  br i1 %.not.not.not.i53, label %_ZNK5clang4Type16isFixedPointTypeEv.exit56, label %_ZNK5clang4Type16isFixedPointTypeEv.exit56.thread

_ZNK5clang4Type16isFixedPointTypeEv.exit56:       ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread
  %i.ac = load i32, ptr %i.z, align 16
  %i.ad = lshr i32 %i.ac, 19
  %i.ae = and i32 %i.ad, 1023
  %i.af = add nsw i32 %i.ae, -473
  %spec.select7.i55 = icmp ult i32 %i.af, 24
  br i1 %spec.select7.i55, label %bb.b, label %_ZNK5clang4Type16isFixedPointTypeEv.exit56.thread

bb.b:                                             ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit56, %_ZNK5clang4Type16isFixedPointTypeEv.exit
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ag = load i64, ptr %2, align 8, !tbaa !1532
  %i.ah = and i64 %i.ag, -2
  %i.ai = inttoptr i64 %i.ah to ptr
  %i.aj = tail call i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ai, i64 %3, i32 noundef 31, i32 noundef 0, ptr noundef null, i32 noundef 0) #30
  store i64 %i.aj, ptr %2, align 8, !tbaa !815
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  br i1 %5, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %1, align 8, !tbaa !1532
  %i.al = and i64 %i.ak, -2
  %i.am = inttoptr i64 %i.al to ptr
  %i.an = tail call i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.am, i64 %4, i32 noundef 31, i32 noundef 0, ptr noundef null, i32 noundef 0) #30
  store i64 %i.an, ptr %1, align 8, !tbaa !815
  br label %bb.o

_ZNK5clang4Type16isFixedPointTypeEv.exit56.thread: ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit.thread, %_ZNK5clang4Type16isFixedPointTypeEv.exit56
  %or.cond = and i1 %i.d, %i.h
  br i1 %or.cond, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit56.thread
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.aq = tail call noundef i32 @_ZNK5clang10ASTContext20getFloatingTypeOrderENS_8QualTypeES1_(ptr noundef nonnull align 8 dereferenceable(23904) %i.ap, i64 %3, i64 %4) #30
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.as = load i64, ptr %2, align 8, !tbaa !1532
  %i.at = and i64 %i.as, -2
  %i.au = inttoptr i64 %i.at to ptr
  %i.av = tail call i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.au, i64 %3, i32 noundef 39, i32 noundef 0, ptr noundef null, i32 noundef 0) #30
  store i64 %i.av, ptr %2, align 8, !tbaa !815
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  br i1 %5, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = load i64, ptr %1, align 8, !tbaa !1532
  %i.ax = and i64 %i.aw, -2
  %i.ay = inttoptr i64 %i.ax to ptr
  %i.az = tail call i64 @_ZN5clang4Sema17ImpCastExprToTypeEPNS_4ExprENS_8QualTypeENS_8CastKindENS_13ExprValueKindEPKN4llvm11SmallVectorIPNS_16CXXBaseSpecifierELj4EEENS_21CheckedConversionKindE(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef %i.ay, i64 %4, i32 noundef 39, i32 noundef 0, ptr noundef null, i32 noundef 0) #30
  store i64 %i.az, ptr %1, align 8, !tbaa !815
  br label %bb.o

bb.j:                                             ; preds = %_ZNK5clang4Type16isFixedPointTypeEv.exit56.thread
  br i1 %i.d, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  br i1 %.not.not.not.i, label %_ZNK5clang4Type10isHalfTypeEv.exit, label %_ZNK5clang4Type10isHalfTypeEv.exit.thread

_ZNK5clang4Type10isHalfTypeEv.exit:               ; preds = %bb.k
  %i.ba = load i32, ptr %i.n, align 16
  %i.bb = and i32 %i.ba, 536346624
  %i.bc = icmp eq i32 %i.bb, 260571136
  br i1 %i.bc, label %bb.l, label %_ZNK5clang4Type10isHalfTypeEv.exit.thread

bb.l:                                             ; preds = %_ZNK5clang4Type10isHalfTypeEv.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !786, !nonnull !97, !align !787
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = and i64 %i.bg, 17179869184
  %.not = icmp eq i64 %i.bh, 0
  br i1 %.not, label %bb.m, label %_ZNK5clang4Type10isHalfTypeEv.exit.thread

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !1116, !nonnull !97, !align !787
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 19064
  %.sroa.0.0.copyload.i = load i64, ptr %i.bk, align 8, !tbaa !788
  br label %_ZNK5clang4Type10isHalfTypeEv.exit.thread

_ZNK5clang4Type10isHalfTypeEv.exit.thread:        ; preds = %bb.k, %bb.m, %bb.l, %_ZNK5clang4Type10isHalfTypeEv.exit
  %.sroa.072.0 = phi i64 [ %.sroa.0.0.copyload.i, %bb.m ], [ %3, %bb.l ], [ %3, %_ZNK5clang4Type10isHalfTypeEv.exit ], [ %3, %bb.k ]
  %i.bl = xor i1 %5, true
  %i.bm = tail call fastcc i64 @_ZL26handleIntToFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 %.sroa.072.0, i64 %4, i1 noundef zeroext %i.bl, i1 noundef zeroext true)
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bn = xor i1 %5, true
  %i.bo = tail call fastcc i64 @_ZL26handleIntToFloatConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_bb(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 %4, i64 %3, i1 noundef zeroext true, i1 noundef zeroext %i.bn)
  br label %bb.o

bb.o:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.c, %bb.e, %bb.d, %bb.n, %_ZNK5clang4Type10isHalfTypeEv.exit.thread
  %.sroa.045.1 = phi i64 [ %i.bo, %bb.n ], [ %3, %bb.c ], [ %i.bm, %_ZNK5clang4Type10isHalfTypeEv.exit.thread ], [ %4, %bb.d ], [ %4, %bb.e ], [ %3, %bb.g ], [ %4, %bb.i ], [ %4, %bb.h ]
  ret i64 %.sroa.045.1
}

declare noundef zeroext i1 @_ZNK5clang4Type20isComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc i64 @_ZL26handleComplexIntConversionRN5clang4SemaERNS_12ActionResultIPNS_4ExprELb1EEES6_NS_8QualTypeES7_b(ptr noundef nonnull align 8 dereferenceable(18640) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %2, i64 %3, i64 %4, i1 noundef zeroext %5) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %3, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !791
  %i.d = tail call noundef ptr @_ZNK5clang4Type23getAsComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #30 ; 3 uses
  %i.e = and i64 %4, -16
  %i.f = inttoptr i64 %i.e to ptr                 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !791
  %i.h = tail call noundef ptr @_ZNK5clang4Type23getAsComplexIntegerTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #30 ; 3 uses
end_hunk_0
