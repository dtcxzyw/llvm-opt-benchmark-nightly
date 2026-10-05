Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SemaOverload?download=true
inline.NumInlined: 15476
inline.NumDeleted: 6061
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZL24TryUserDefinedConversionRN5clang4SemaEPNS_4ExprENS_8QualTypeEbNS0_15AllowedExplicitEbbbb:bb.a
.lr.ph:                                           ; preds = %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit
  %i.dm = load ptr, ptr %7, align 8, !tbaa !515
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit
  %.05389 = phi ptr [ %i.dm, %.lr.ph ], [ %i.ee, %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit ] ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.05389, i64 104
  %i.dr = load i32, ptr %i.dq, align 8
  %i.ds = and i32 %i.dr, 2
  %.not56 = icmp eq i32 %i.ds, 0
  br i1 %.not56, label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dt = getelementptr inbounds nuw i8, ptr %.05389, i64 8
  call void @llvm.assume(i1 true) [ "align"(ptr %.05389, i64 8) ]
  %.0.copyload.i.i.i.i.i68 = load i64, ptr %i.dt, align 8
  %i.du = and i64 %.0.copyload.i.i.i.i.i68, -8
  %i.dv = inttoptr i64 %i.du to ptr               ; 2 uses
  %i.dw = load ptr, ptr %.05389, align 8, !tbaa !1477 ; 2 uses
  %i.dx = load i32, ptr %i.do, align 8, !tbaa !516 ; 2 uses
  %i.dy = load i32, ptr %i.dp, align 4, !tbaa !517
  %.not.i.i = icmp ult i32 %i.dx, %i.dy
  br i1 %.not.i.i, label %bb.s, label %bb.r, !prof !565

bb.r:                                             ; preds = %bb.q
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairIPN5clang9NamedDeclEPNS2_12FunctionDeclEELb1EE15growAndPushBackES7_(ptr noundef nonnull align 8 dereferenceable(16) %i.dn, ptr %i.dv, ptr %i.dw)
  br label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit

bb.s:                                             ; preds = %bb.q
  %i.dz = zext i32 %i.dx to i64
  %i.ea = load ptr, ptr %i.dn, align 8, !tbaa !515
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %i.dz ; 2 uses
  store ptr %i.dv, ptr %i.eb, align 1
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store ptr %i.dw, ptr %.sroa.3.0..sroa_idx.i.i, align 1
  %i.ec = load i32, ptr %i.do, align 8, !tbaa !516
  %i.ed = add i32 %i.ec, 1
  store i32 %i.ed, ptr %i.do, align 8, !tbaa !516
  br label %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit

_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit: ; preds = %bb.s, %bb.r, %bb.p
  %i.ee = getelementptr inbounds nuw i8, ptr %.05389, i64 168 ; 2 uses
  %i.ef = load ptr, ptr %7, align 8, !tbaa !515
  %i.eg = load i32, ptr %i.o, align 8, !tbaa !516
  %i.eh = zext i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [168 x i8], ptr %i.ef, i64 %i.eh
  %.not = icmp eq ptr %i.ee, %i.ei
  br i1 %.not, label %.loopexit, label %bb.p, !llvm.loop !2510

bb.t:                                             ; preds = %bb.b
  %i.ej = load i32, ptr %0, align 8               ; 2 uses
  %i.ek = and i32 %i.ej, 2147483647
  %i.el = icmp eq i32 %i.ek, 3
  br i1 %i.el, label %bb.u, label %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71

bb.u:                                             ; preds = %bb.t
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !515 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @free(ptr noundef %i.en) #28
  br label %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71

_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71: ; preds = %bb.t, %bb.u, %bb.v
  %i.eq = and i32 %i.ej, -2147483648
  %i.er = or disjoint i32 %i.eq, 5
  store i32 %i.er, ptr %0, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.0.0.copyload.i.i.i69 = load i64, ptr %i.es, align 8, !tbaa !75
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.et, align 8, !tbaa !1362
  %i.eu = inttoptr i64 %.sroa.0.0.copyload.i.i.i69 to ptr
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !1363
  %i.ew = inttoptr i64 %3 to ptr
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ew, ptr %i.ex, align 8, !tbaa !1364
  store ptr %2, ptr %i.b, align 8, !tbaa !1365
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5clang27AmbiguousConversionSequence13addConversionEPNS_9NamedDeclEPNS_12FunctionDeclE.exit, %_ZN5clang26ImplicitConversionSequence12setAmbiguousEv.exit, %bb.l, %bb.m, %_ZN5clang26ImplicitConversionSequence11setStandardEv.exit, %_ZN5clang26ImplicitConversionSequence14setUserDefinedEv.exit, %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit71, %bb.b
  call void @_ZN5clang20OverloadCandidateSetD2Ev(ptr noundef nonnull align 8 dead_on_return(7844) dereferenceable(7844) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.w

bb.w:                                             ; preds = %_ZN5clang26ImplicitConversionSequence6setBadENS_21BadConversionSequence11FailureKindEPNS_4ExprENS_8QualTypeE.exit, %.loopexit
  ret void
}

declare i64 @_ZNK5clang10ASTContext21getArrayParameterTypeENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904), i64) local_unnamed_addr #6

declare i64 @_ZNK5clang18ArrayParameterType20getConstantArrayTypeERKNS_10ASTContextE(ptr noundef nonnull align 16 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(23904)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN5clang4Sema42IsStringLiteralToNonConstPointerConversionEPNS_4ExprENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(18640), ptr noundef, i64) local_unnamed_addr #6

declare noundef zeroext i1 @_ZNK5clang4Type16isArithmeticTypeEv(ptr noundef nonnull align 16 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL25IsFloatingPointConversionRN5clang4SemaENS_8QualTypeES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(18640) %0, i64 %1, i64 %2) unnamed_addr #5 {
bb.a:
  %i.a = and i64 %1, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !74
  %i.d = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #28
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %2, -16
  %i.f = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !74
  %i.h = tail call noundef zeroext i1 @_ZNK5clang4Type18isRealFloatingTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.g) #28
  br i1 %i.h, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 16, !tbaa !74
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.j, align 8, !tbaa !75
  %i.k = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i, -16
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load ptr, ptr %i.l, align 16, !tbaa !74  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  %i.o = load i8, ptr %i.n, align 16
  %i.p = icmp ne i8 %i.o, 13
  %.not7.i.i = icmp eq ptr %i.m, null
  %.not.not.not.i.i.not55 = or i1 %.not7.i.i, %i.p ; 2 uses
  br i1 %.not.not.not.i.i.not55, label %._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge, label %_ZNK5clang4Type14isBFloat16TypeEv.exit

._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge: ; preds = %bb.c
  %.pre = load ptr, ptr %i.f, align 16, !tbaa !74
  br label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread

_ZNK5clang4Type14isBFloat16TypeEv.exit:           ; preds = %bb.c
  %i.q = load i32, ptr %i.n, align 16
  %i.r = and i32 %i.q, 536346624
  %i.s = icmp eq i32 %i.r, 263192576
  %.pre56 = load ptr, ptr %i.f, align 16, !tbaa !74 ; 4 uses
  br i1 %i.s, label %bb.d, label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread

bb.d:                                             ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.pre56, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i11 = load i64, ptr %i.t, align 8, !tbaa !75
  %i.u = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i11, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !74  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = load i8, ptr %i.x, align 16
  %i.z = icmp eq i8 %i.y, 13
  %.not7.i.i12 = icmp ne ptr %i.w, null
  %.not.not.not.i.i13 = and i1 %.not7.i.i12, %i.z
  br i1 %.not.not.not.i.i13, label %_ZNK5clang4Type13isFloat16TypeEv.exit, label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread

_ZNK5clang4Type13isFloat16TypeEv.exit:            ; preds = %bb.d
  %i.aa = load i32, ptr %i.x, align 16
  %i.ab = and i32 %i.aa, 536346624
  switch i32 %i.ab, label %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread [
    i32 262668288, label %bb.f
    i32 260571136, label %bb.f
  ]

_ZNK5clang4Type14isBFloat16TypeEv.exit.thread:    ; preds = %_ZNK5clang4Type13isFloat16TypeEv.exit, %._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge, %bb.d, %_ZNK5clang4Type14isBFloat16TypeEv.exit
  %i.ac = phi ptr [ %.pre, %._ZNK5clang4Type14isBFloat16TypeEv.exit.thread_crit_edge ], [ %.pre56, %bb.d ], [ %.pre56, %_ZNK5clang4Type13isFloat16TypeEv.exit ], [ %.pre56, %_ZNK5clang4Type14isBFloat16TypeEv.exit ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i21 = load i64, ptr %i.ad, align 8, !tbaa !75
  %i.ae = and i64 %.sroa.0.0.copyload.i.i.i.i.i.i21, -16
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !74 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 16
  %i.aj = icmp eq i8 %i.ai, 13
  %.not7.i.i22 = icmp ne ptr %i.ag, null
  %.not.not.not.i.i23 = and i1 %.not7.i.i22, %i.aj
  br i1 %.not.not.not.i.i23, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread

_ZNK5clang4Type14isBFloat16TypeEv.exit25:         ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread
  %i.ak = load i32, ptr %i.ah, align 16
  %i.al = and i32 %i.ak, 536346624
  %i.am = icmp ne i32 %i.al, 263192576
  %brmerge = or i1 %.not.not.not.i.i.not55, %i.am
  br i1 %brmerge, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread, label %_ZNK5clang4Type13isFloat16TypeEv.exit31

_ZNK5clang4Type13isFloat16TypeEv.exit31:          ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit25
  %i.an = load i32, ptr %i.n, align 16
  %i.ao = and i32 %i.an, 536346624
  switch i32 %i.ao, label %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread [
    i32 262668288, label %bb.f
    i32 260571136, label %bb.f
  ]

_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread:  ; preds = %_ZNK5clang4Type13isFloat16TypeEv.exit31, %_ZNK5clang4Type14isBFloat16TypeEv.exit25, %_ZNK5clang4Type14isBFloat16TypeEv.exit.thread
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.ar = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.aq, i64 %1) #28 ; 2 uses
  %i.as = load ptr, ptr %i.ap, align 8, !tbaa !1228, !nonnull !87, !align !500
  %i.at = tail call noundef nonnull align 4 dereferenceable(29) ptr @_ZNK5clang10ASTContext21getFloatTypeSemanticsENS_8QualTypeE(ptr noundef nonnull align 8 dereferenceable(23904) %i.as, i64 %2) #28 ; 2 uses
  %i.au = icmp eq ptr %i.ar, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  br i1 %i.au, label %3, label %bb.e

3:                                                ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread
  %4 = icmp eq ptr %i.at, @_ZN4llvm11APFloatBase11semIEEEquadE
  br i1 %4, label %bb.f, label %.thread54

bb.e:                                             ; preds = %_ZNK5clang4Type14isBFloat16TypeEv.exit25.thread
  %5 = icmp eq ptr %i.ar, @_ZN4llvm11APFloatBase11semIEEEquadE
  %6 = icmp eq ptr %i.at, @_ZN4llvm11APFloatBase18semPPCDoubleDoubleE
  %or.cond = and i1 %5, %6
  br i1 %or.cond, label %bb.f, label %.thread54

.thread54:                                        ; preds = %3, %bb.e
  br label %bb.f

bb.f:                                             ; preds = %_ZNK5clang4Type13isFloat16TypeEv.exit31, %_ZNK5clang4Type13isFloat16TypeEv.exit31, %_ZNK5clang4Type13isFloat16TypeEv.exit, %_ZNK5clang4Type13isFloat16TypeEv.exit, %bb.e, %.thread54, %3, %bb.a, %bb.b
  %.1 = phi i1 [ false, %bb.a ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit ], [ false, %bb.b ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit31 ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit31 ], [ false, %_ZNK5clang4Type13isFloat16TypeEv.exit ], [ true, %.thread54 ], [ false, %bb.e ], [ false, %3 ]
  ret i1 %.1
}

declare noundef zeroext i1 @_ZN5clang8SemaObjC25isObjCWritebackConversionENS_8QualTypeES1_RS1_(ptr noundef nonnull align 8 dereferenceable(328), i64, i64, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef zeroext i1 @_ZL18IsVectorConversionRN5clang4SemaENS_8QualTypeES2_RNS_22ImplicitConversionKindES4_PNS_4ExprEbb(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %1, i64 %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr noundef %5, i1 noundef zeroext %6, i1 noundef zeroext %7) unnamed_addr #5 {
bb.a:
  %8 = alloca %"class.clang::QualType", align 8   ; 2 uses
  %9 = alloca %"class.clang::QualType", align 8   ; 2 uses
  %10 = alloca %"class.clang::SemaBase::SemaDiagnosticBuilder", align 8 ; 5 uses
  store i64 %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  %i.a = and i64 %2, -16
  %i.b = inttoptr i64 %i.a to ptr                 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 16, !tbaa !74  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !75
  %i.e = and i64 %.sroa.0.0.copyload.i.i.i.i, -16
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = load ptr, ptr %i.f, align 16, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load i8, ptr %i.h, align 16              ; 2 uses
  %i.j = and i8 %i.i, -2
  %spec.select.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.j, 58
  %.pre204 = and i64 %1, -16
  %.pre205 = inttoptr i64 %.pre204 to ptr         ; 8 uses
  br i1 %spec.select.i.i.i.i.i.i.i.i.i, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %.pre205, align 16, !tbaa !74
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.0.0.copyload.i.i.i.i118 = load i64, ptr %i.l, align 8, !tbaa !75
  %i.m = and i64 %.sroa.0.0.copyload.i.i.i.i118, -16
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = load ptr, ptr %i.n, align 16, !tbaa !74
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i8, ptr %i.p, align 16
  %i.r = and i8 %i.q, -2
  %spec.select.i.i.i.i.i.i.i.i.i119 = icmp eq i8 %i.r, 58
  br i1 %spec.select.i.i.i.i.i.i.i.i.i119, label %._crit_edge, label %.thread164

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.pre205, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !75
  %i.u = and i64 %i.t, -16
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = load ptr, ptr %i.v, align 16, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !75
  %i.z = and i64 %i.y, -16
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load ptr, ptr %i.aa, align 16, !tbaa !74
  %i.ac = icmp eq ptr %i.w, %i.ab
  br i1 %i.ac, label %.thread164, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1252, !nonnull !87, !align !500
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 80
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = and i64 %i.ag, 1099511627776
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = load i8, ptr %i.ai, align 16
  %.not.i = icmp eq i8 %i.aj, 59
  br i1 %.not.i, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ak = icmp eq i8 %i.i, 59
  br i1 %i.ak, label %bb.f, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit

bb.f:                                             ; preds = %bb.e
  %i.al = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.c) #28
  br label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit

_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit: ; preds = %bb.d, %bb.e, %bb.f
  %.1.i = phi ptr [ %i.al, %bb.f ], [ %i.c, %bb.d ], [ null, %bb.e ] ; 3 uses
  %i.am = load ptr, ptr %.pre205, align 16, !tbaa !74 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i8, ptr %i.an, align 16
  %.not.i123 = icmp eq i8 %i.ao, 59
  br i1 %.not.i123, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit126, label %bb.g

bb.g:                                             ; preds = %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.0.0.copyload.i.i.i.i124 = load i64, ptr %i.ap, align 8, !tbaa !75
  %i.aq = and i64 %.sroa.0.0.copyload.i.i.i.i124, -16
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load ptr, ptr %i.ar, align 16, !tbaa !74
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i8, ptr %i.at, align 16
  %i.av = icmp eq i8 %i.au, 59
  br i1 %i.av, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.aw = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.am) #28
  br label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit126

_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit126: ; preds = %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit, %bb.h
  %.1.i125 = phi ptr [ %i.aw, %bb.h ], [ %i.am, %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit ] ; 4 uses
  %i.ax = icmp ne ptr %.1.i, null                 ; 2 uses
  %i.ay = icmp ne ptr %.1.i125, null              ; 2 uses
  %or.cond = and i1 %i.ax, %i.ay
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit126
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i125, i64 20
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !75 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.1.i, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !75 ; 2 uses
  %i.bd = icmp ult i32 %i.ba, %i.bc
  br i1 %i.bd, label %.thread164, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = icmp eq i32 %i.ba, %i.bc
  %. = select i1 %i.be, i32 0, i32 31
  store i32 %., ptr %4, align 4, !tbaa !1809
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i125, i64 32
  %.sroa.0.0.copyload.i = load i64, ptr %i.bf, align 16, !tbaa !75 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i, i64 32
  %.sroa.0.0.copyload.i127 = load i64, ptr %i.bg, align 16, !tbaa !75 ; 2 uses
  %i.bh = and i64 %.sroa.0.0.copyload.i, -16
  %i.bi = inttoptr i64 %i.bh to ptr
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !75
  %i.bl = and i64 %i.bk, -16
  %i.bm = inttoptr i64 %i.bl to ptr
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !74
  %i.bo = and i64 %.sroa.0.0.copyload.i127, -16
  %i.bp = inttoptr i64 %i.bo to ptr
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !75
  %i.bs = and i64 %i.br, -16
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = load ptr, ptr %i.bt, align 16, !tbaa !74
  %i.bv = icmp eq ptr %i.bn, %i.bu
  br i1 %i.bv, label %.thread164, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = tail call fastcc noundef zeroext i1 @_ZL33IsVectorOrMatrixElementConversionRN5clang4SemaENS_8QualTypeES2_RNS_22ImplicitConversionKindEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i, i64 %.sroa.0.0.copyload.i127, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef %5)
  br label %.thread164

bb.l:                                             ; preds = %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit126
  %.not203 = xor i1 %i.ay, true
  %or.cond3 = or i1 %i.ax, %.not203
  br i1 %or.cond3, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 31, ptr %4, align 4, !tbaa !1809
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i125, i64 32
  %.sroa.0.0.copyload.i128 = load i64, ptr %i.bx, align 16, !tbaa !75 ; 2 uses
  %i.by = and i64 %.sroa.0.0.copyload.i128, -16
  %i.bz = inttoptr i64 %i.by to ptr
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !75
  %i.cc = and i64 %i.cb, -16
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = load ptr, ptr %i.cd, align 16, !tbaa !74
  %i.cf = load i64, ptr %i.x, align 8, !tbaa !75
  %i.cg = and i64 %i.cf, -16
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = load ptr, ptr %i.ch, align 16, !tbaa !74
  %i.cj = icmp eq ptr %i.ce, %i.ci
  br i1 %i.cj, label %.thread164, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = tail call fastcc noundef zeroext i1 @_ZL33IsVectorOrMatrixElementConversionRN5clang4SemaENS_8QualTypeES2_RNS_22ImplicitConversionKindEPNS_4ExprE(ptr noundef nonnull align 8 dereferenceable(18640) %0, i64 %.sroa.0.0.copyload.i128, i64 %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef %5)
  br label %.thread164

.thread:                                          ; preds = %bb.g, %bb.l, %bb.c
  %i.cl = load ptr, ptr %i.b, align 16, !tbaa !74 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cn = load i8, ptr %i.cm, align 16
  %.not.i130 = icmp eq i8 %i.cn, 59
  br i1 %.not.i130, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133.thread169, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.sroa.0.0.copyload.i.i.i.i131 = load i64, ptr %i.co, align 8, !tbaa !75
  %i.cp = and i64 %.sroa.0.0.copyload.i.i.i.i131, -16
  %i.cq = inttoptr i64 %i.cp to ptr
  %i.cr = load ptr, ptr %i.cq, align 16, !tbaa !74
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i8, ptr %i.cs, align 16
  %i.cu = icmp eq i8 %i.ct, 59
  br i1 %i.cu, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133.thread

_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133: ; preds = %bb.o
  %i.cv = tail call noundef ptr @_ZNK5clang4Type27getUnqualifiedDesugaredTypeEv(ptr noundef nonnull align 16 dereferenceable(24) %i.cl) #28 ; 2 uses
  %.not113 = icmp eq ptr %i.cv, null
  br i1 %.not113, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133.thread, label %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133.thread169

_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133.thread169: ; preds = %.thread, %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133
  %.1.i132172 = phi ptr [ %i.cv, %_ZNK5clang4Type5getAsINS_13ExtVectorTypeEEEPKT_v.exit133 ], [ %i.cl, %.thread ] ; 2 uses
  %i.cw = load ptr, ptr %.pre205, align 16, !tbaa !74 ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
end_hunk_0
