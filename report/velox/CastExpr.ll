inline.NumInlined: 87494
inline.NumDeleted: 10547
begin_hunk_0_@_ZZN8facebook5velox4exec8CastExpr37applyFloatingPointToDecimalCastKernelIflEEvRKNS0_17SelectivityVectorERKNS0_10BaseVectorERNS1_7EvalCtxERKSt10shared_ptrIKNS0_4TypeEERSC_IS7_EENKUliE_clEi:bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !184
  %.not.i12 = icmp eq ptr %i.be, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.bd, %bb.k ], [ %i.bd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNK8facebook5velox4exec8CastExpr22setNullInResultAtErrorEv.exit.thread, %bb.b
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i14, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.n, !prof !244

bb.n:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %.pn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ]
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i15, label %_ZN8facebook5velox6StatusD2Ev.exit16, label %bb.p, !prof !244

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit16

_ZN8facebook5velox6StatusD2Ev.exit16:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIflEENS0_6StatusET_iiRT0_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.6232", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call float @llvm.fabs.f32(float %1) ; 2 uses
  %i.c = fcmp ueq float %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !27535
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !27538
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.318, i64 33, i64 0, ptr nonnull %14), !noalias !27538
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %13, align 8, !tbaa !177, !noalias !27538 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.e, align 8, !tbaa !179, !noalias !27538
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %13, align 8, !tbaa !177, !noalias !27538 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !179, !noalias !27538
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !27538
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !27538
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !27535
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.o = fcmp ole float %1, f0xDF000000
  %i.p = fcmp ogt float %1, f0x5F000000
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !27541
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39, !noalias !27544
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %12), !noalias !27544
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %11, align 8, !tbaa !177, !noalias !27544 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !179, !noalias !27544
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %11, align 8, !tbaa !177, !noalias !27544 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25: ; preds = %bb.h
  %i.z = load i64, ptr %i.x, align 8, !tbaa !179, !noalias !27544
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !27544
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !27544
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !27541
  br label %bb.ah

bb.i:                                             ; preds = %bb.e
  %i.ab = fptoui float %i.b to i128               ; 3 uses
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ad = icmp ult i128 %i.ab, 10
  br i1 %i.ad, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.0.i62 = phi i32 [ %i.al, %bb.o ], [ 1, %.preheader ] ; 4 uses
  %.011.i61 = phi i128 [ %i.ak, %bb.o ], [ %i.ab, %.preheader ] ; 5 uses
  %i.ae = icmp ult i128 %.011.i61, 100
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw nsw i32 %.0.i62, 1
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.ag = icmp ult i128 %.011.i61, 1000
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = add nuw nsw i32 %.0.i62, 2
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp ult i128 %.011.i61, 10000
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw nsw i32 %.0.i62, 3
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ak = udiv i128 %.011.i61, 10000
  %i.al = add nuw nsw i32 %.0.i62, 4              ; 2 uses
  %i.am = icmp ult i128 %.011.i61, 100000
  br i1 %i.am, label %.loopexit, label %.lr.ph, !llvm.loop !1087

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.aj, %bb.n ], [ %i.af, %bb.j ], [ %i.ah, %bb.l ], [ 1, %.preheader ], [ %i.al, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i                 ; 2 uses
  %15 = sub nsw i32 7, %.012.i.fr
  %16 = icmp sgt i32 %.012.i.fr, 7
  %spec.select = select i1 %16, i32 0, i32 %15
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.an = phi i32 [ 7, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  %i.ao = fpext nnan ninf float %1 to x86_fp80
  %17 = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %17
  %i.aq = load i128, ptr %i.ap, align 16, !tbaa !1073
  %i.ar = sitofp i128 %i.aq to x86_fp80
  %i.as = fmul nnan x86_fp80 %i.ao, %i.ar
  %i.at = tail call noundef x86_fp80 @llvm.round.f80(x86_fp80 %i.as) ; 8 uses
  %i.au = fcmp olt x86_fp80 %i.at, f0x403DFFFFFFFFFFFFFFFE
  br i1 %i.au, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.av = fcmp ugt x86_fp80 %i.at, f0x403DFFFFFFFFFFFFFFFE
  br i1 %i.av, label %bb.u, label %bb.q, !prof !6497

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef x86_fp80 @nextafterl(x86_fp80 noundef f0x403DFFFFFFFFFFFFFFFE, x86_fp80 noundef 0.000000e+00) #39, !tbaa !3 ; 2 uses
  %i.ax = fsub x86_fp80 %i.at, %i.aw
  %i.ay = fptosi x86_fp80 %i.ax to i64
  %i.az = fptosi x86_fp80 %i.aw to i64
  %i.ba = sub nsw i64 9223372036854775807, %i.az
  %.not.i.i.i = icmp slt i64 %i.ba, %i.ay
  br i1 %.not.i.i.i, label %bb.u, label %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

bb.r:                                             ; preds = %.thread
  %i.bb = fcmp ugt x86_fp80 %i.at, f0xC03E8000000000000000
  br i1 %i.bb, label %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = fcmp olt x86_fp80 %i.at, f0xC03E8000000000000000
  br i1 %i.bc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = tail call noundef x86_fp80 @nextafterl(x86_fp80 noundef f0xC03E8000000000000000, x86_fp80 noundef 0.000000e+00) #39, !tbaa !3 ; 2 uses
  %i.be = fsub x86_fp80 %i.at, %i.bd
  %i.bf = fptosi x86_fp80 %i.be to i64
  %i.bg = fptosi x86_fp80 %i.bd to i64
  %i.bh = sub nsw i64 -9223372036854775808, %i.bg
  %.not18.i.i.i = icmp sgt i64 %i.bh, %i.bf
  br i1 %.not18.i.i.i, label %bb.u, label %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i: ; preds = %bb.t, %bb.r, %bb.q
  %i.bi = fptosi x86_fp80 %i.at to i64            ; 4 uses
  %i.bj = sitofp i64 %i.bi to x86_fp80
  %i.bk = fcmp une x86_fp80 %i.at, %i.bj
  br i1 %i.bk, label %bb.u, label %_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.s, %bb.t, %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !27547
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39, !noalias !27550
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %10), !noalias !27550
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %9)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %9, align 8, !tbaa !177, !noalias !27550 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.v
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !179, !noalias !27550
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35

bb.w:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %9, align 8, !tbaa !177, !noalias !27550 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30: ; preds = %bb.w
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !179, !noalias !27550
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !27550
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !27550
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !27547
  br label %bb.ah

_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !173
  %i.bw = icmp sgt i32 %3, %i.an
  br i1 %i.bw, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit
  %i.bx = sub nsw i32 %3, %i.an
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.by
  %i.ca = load i128, ptr %i.bz, align 16, !tbaa !1073
  %i.cb = sext i64 %i.bi to i128
  %i.cc = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %i.cb, i128 %i.ca) ; 2 uses
  %i.cd = extractvalue { i128, i1 } %i.cc, 1
  %i.ce = extractvalue { i128, i1 } %i.cc, 0      ; 2 uses
  %i.cf = trunc i128 %i.ce to i64                 ; 3 uses
  %i.cg = sext i64 %i.cf to i128                  ; 2 uses
  %i.ch = icmp ne i128 %i.ce, %i.cg
  %i.ci = or i1 %i.cd, %i.ch
  store i64 %i.cf, ptr %i.a, align 8
  br i1 %i.ci, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !27553
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !27556
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %8), !noalias !27556
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %7)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %7, align 8, !tbaa !177, !noalias !27556 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.z
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !179, !noalias !27556
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41

bb.aa:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %7, align 8, !tbaa !177, !noalias !27556 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36: ; preds = %bb.aa
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !179, !noalias !27556
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !27556
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !27556
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !27553
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit
  %i.cu = sub nsw i32 %i.an, %3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.cv
  %i.cx = load i128, ptr %i.cw, align 16, !tbaa !1073
  %i.cy = call noundef i64 @_ZN8facebook5velox11DecimalUtil17divideWithRoundUpIllnEET_RS3_T0_T1_bhh(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.bi, i128 noundef %i.cx, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !173 ; 2 uses
  %.pre66 = sext i64 %.pre to i128
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.ab
  %.pre-phi = phi i128 [ %i.cg, %bb.x ], [ %.pre66, %bb.ab ] ; 2 uses
  %i.cz = phi i64 [ %i.cf, %bb.x ], [ %.pre, %bb.ab ]
  %i.da = and i32 %2, 255
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.db
  %i.dd = load i128, ptr %i.dc, align 16, !tbaa !1073 ; 2 uses
  %i.de = icmp sgt i128 %i.dd, %.pre-phi
  %i.df = sub nsw i128 0, %i.dd
  %i.dg = icmp sgt i128 %.pre-phi, %i.df
  %i.dh = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !27559
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !27562
  %.sroa.08.0.insert.ext.i.i = zext i32 %2 to i128
  store i128 %.sroa.08.0.insert.ext.i.i, ptr %6, align 16, !noalias !27562
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.320, i64 44, i64 1, ptr nonnull %6), !noalias !27562
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %5)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.di = load ptr, ptr %5, align 8, !tbaa !177, !noalias !27562 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.ad
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !179, !noalias !27562
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %5, align 8, !tbaa !177, !noalias !27562 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
end_hunk_0
begin_hunk_1_@_ZZN8facebook5velox4exec8CastExpr37applyFloatingPointToDecimalCastKernelIdlEEvRKNS0_17SelectivityVectorERKNS0_10BaseVectorERNS1_7EvalCtxERKSt10shared_ptrIKNS0_4TypeEERSC_IS7_EENKUliE_clEi:bb.a
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = load ptr, ptr %3, align 8, !tbaa !184
  %.not.i12 = icmp eq ptr %i.be, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.bd, %bb.k ], [ %i.bd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNK8facebook5velox4exec8CastExpr22setNullInResultAtErrorEv.exit.thread, %bb.b
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i14, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.n, !prof !244

bb.n:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %.pn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ]
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i15, label %_ZN8facebook5velox6StatusD2Ev.exit16, label %bb.p, !prof !244

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit16

_ZN8facebook5velox6StatusD2Ev.exit16:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIdlEENS0_6StatusET_iiRT0_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.6232", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.c = fcmp ueq double %i.b, +inf
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !27612
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !27615
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.318, i64 33, i64 0, ptr nonnull %14), !noalias !27615
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %13, align 8, !tbaa !177, !noalias !27615 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.e, align 8, !tbaa !179, !noalias !27615
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %13, align 8, !tbaa !177, !noalias !27615 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.m = load i64, ptr %i.k, align 8, !tbaa !179, !noalias !27615
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26 ], [ %i.bq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31 ], [ %i.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37 ], [ %i.dn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !27615
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !27615
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !27612
  br label %bb.ah

bb.e:                                             ; preds = %bb.a
  %i.o = fcmp ole double %1, f0xC3E0000000000000
  %i.p = fcmp ogt double %1, f0x43DFFFFFFFFFFFFF
  %or.cond = or i1 %i.o, %i.p
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !27618
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39, !noalias !27621
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %12), !noalias !27621
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %11, align 8, !tbaa !177, !noalias !27621 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !179, !noalias !27621
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %11, align 8, !tbaa !177, !noalias !27621 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25: ; preds = %bb.h
  %i.z = load i64, ptr %i.x, align 8, !tbaa !179, !noalias !27621
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !27621
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !27621
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !27618
  br label %bb.ah

bb.i:                                             ; preds = %bb.e
  %i.ab = fptoui double %i.b to i128              ; 3 uses
  %i.ac = icmp eq i128 %i.ab, 0
  br i1 %i.ac, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ad = icmp ult i128 %i.ab, 10
  br i1 %i.ad, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.0.i62 = phi i32 [ %i.al, %bb.o ], [ 1, %.preheader ] ; 4 uses
  %.011.i61 = phi i128 [ %i.ak, %bb.o ], [ %i.ab, %.preheader ] ; 5 uses
  %i.ae = icmp ult i128 %.011.i61, 100
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.af = add nuw nsw i32 %.0.i62, 1
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.ag = icmp ult i128 %.011.i61, 1000
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ah = add nuw nsw i32 %.0.i62, 2
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.ai = icmp ult i128 %.011.i61, 10000
  br i1 %i.ai, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aj = add nuw nsw i32 %.0.i62, 3
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.ak = udiv i128 %.011.i61, 10000
  %i.al = add nuw nsw i32 %.0.i62, 4              ; 2 uses
  %i.am = icmp ult i128 %.011.i61, 100000
  br i1 %i.am, label %.loopexit, label %.lr.ph, !llvm.loop !1087

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.aj, %bb.n ], [ %i.af, %bb.j ], [ %i.ah, %bb.l ], [ 1, %.preheader ], [ %i.al, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i                 ; 2 uses
  %15 = sub nsw i32 15, %.012.i.fr
  %16 = icmp sgt i32 %.012.i.fr, 15
  %spec.select = select i1 %16, i32 0, i32 %15
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.an = phi i32 [ 15, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  %i.ao = fpext nnan ninf double %1 to x86_fp80
  %17 = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %17
  %i.aq = load i128, ptr %i.ap, align 16, !tbaa !1073
  %i.ar = sitofp i128 %i.aq to x86_fp80
  %i.as = fmul nnan x86_fp80 %i.ao, %i.ar
  %i.at = tail call noundef x86_fp80 @llvm.round.f80(x86_fp80 %i.as) ; 8 uses
  %i.au = fcmp olt x86_fp80 %i.at, f0x403DFFFFFFFFFFFFFFFE
  br i1 %i.au, label %bb.r, label %bb.p

bb.p:                                             ; preds = %.thread
  %i.av = fcmp ugt x86_fp80 %i.at, f0x403DFFFFFFFFFFFFFFFE
  br i1 %i.av, label %bb.u, label %bb.q, !prof !6497

bb.q:                                             ; preds = %bb.p
  %i.aw = tail call noundef x86_fp80 @nextafterl(x86_fp80 noundef f0x403DFFFFFFFFFFFFFFFE, x86_fp80 noundef 0.000000e+00) #39, !tbaa !3 ; 2 uses
  %i.ax = fsub x86_fp80 %i.at, %i.aw
  %i.ay = fptosi x86_fp80 %i.ax to i64
  %i.az = fptosi x86_fp80 %i.aw to i64
  %i.ba = sub nsw i64 9223372036854775807, %i.az
  %.not.i.i.i = icmp slt i64 %i.ba, %i.ay
  br i1 %.not.i.i.i, label %bb.u, label %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

bb.r:                                             ; preds = %.thread
  %i.bb = fcmp ugt x86_fp80 %i.at, f0xC03E8000000000000000
  br i1 %i.bb, label %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bc = fcmp olt x86_fp80 %i.at, f0xC03E8000000000000000
  br i1 %i.bc, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bd = tail call noundef x86_fp80 @nextafterl(x86_fp80 noundef f0xC03E8000000000000000, x86_fp80 noundef 0.000000e+00) #39, !tbaa !3 ; 2 uses
  %i.be = fsub x86_fp80 %i.at, %i.bd
  %i.bf = fptosi x86_fp80 %i.be to i64
  %i.bg = fptosi x86_fp80 %i.bd to i64
  %i.bh = sub nsw i64 -9223372036854775808, %i.bg
  %.not18.i.i.i = icmp sgt i64 %i.bh, %i.bf
  br i1 %.not18.i.i.i, label %bb.u, label %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i

_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i: ; preds = %bb.t, %bb.r, %bb.q
  %i.bi = fptosi x86_fp80 %i.at to i64            ; 4 uses
  %i.bj = sitofp i64 %i.bi to x86_fp80
  %i.bk = fcmp une x86_fp80 %i.at, %i.bj
  br i1 %i.bk, label %bb.u, label %_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit

bb.u:                                             ; preds = %bb.p, %bb.q, %bb.s, %bb.t, %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !27624
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39, !noalias !27627
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %10), !noalias !27627
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %9)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bl = load ptr, ptr %9, align 8, !tbaa !177, !noalias !27627 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.v
  %i.bo = load i64, ptr %i.bm, align 8, !tbaa !179, !noalias !27627
  %i.bp = add i64 %i.bo, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bp) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35

bb.w:                                             ; preds = %bb.u
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %9, align 8, !tbaa !177, !noalias !27627 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bt = icmp eq ptr %i.br, %i.bs
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30: ; preds = %bb.w
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !179, !noalias !27627
  %i.bv = add i64 %i.bu, 1
  call void @_ZdlPvm(ptr noundef %i.br, i64 noundef %i.bv) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !27627
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !27627
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !27624
  br label %bb.ah

_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit: ; preds = %_ZN5folly6detail15checkConversionIleEENSt9enable_ifIXaaaasr3std17is_floating_pointIT0_EE5value13is_integral_vIT_Entsr3std7is_sameIS4_bEE5valueEbE4typeERKS3_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  store i64 %i.bi, ptr %i.a, align 8, !tbaa !173
  %i.bw = icmp sgt i32 %3, %i.an
  br i1 %i.bw, label %bb.x, label %bb.ab

bb.x:                                             ; preds = %_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit
  %i.bx = sub nsw i32 %3, %i.an
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.by
  %i.ca = load i128, ptr %i.bz, align 16, !tbaa !1073
  %i.cb = sext i64 %i.bi to i128
  %i.cc = tail call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %i.cb, i128 %i.ca) ; 2 uses
  %i.cd = extractvalue { i128, i1 } %i.cc, 1
  %i.ce = extractvalue { i128, i1 } %i.cc, 0      ; 2 uses
  %i.cf = trunc i128 %i.ce to i64                 ; 3 uses
  %i.cg = sext i64 %i.cf to i128                  ; 2 uses
  %i.ch = icmp ne i128 %i.ce, %i.cg
  %i.ci = or i1 %i.cd, %i.ch
  store i64 %i.cf, ptr %i.a, align 8
  br i1 %i.ci, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !27630
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !27633
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %8), !noalias !27633
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %7)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cj = load ptr, ptr %7, align 8, !tbaa !177, !noalias !27633 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cl = icmp eq ptr %i.cj, %i.ck
  br i1 %i.cl, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.z
  %i.cm = load i64, ptr %i.ck, align 8, !tbaa !179, !noalias !27633
  %i.cn = add i64 %i.cm, 1
  call void @_ZdlPvm(ptr noundef %i.cj, i64 noundef %i.cn) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41

bb.aa:                                            ; preds = %bb.y
  %i.co = landingpad { ptr, i32 }
          cleanup
  %i.cp = load ptr, ptr %7, align 8, !tbaa !177, !noalias !27633 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cr = icmp eq ptr %i.cp, %i.cq
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36: ; preds = %bb.aa
  %i.cs = load i64, ptr %i.cq, align 8, !tbaa !179, !noalias !27633
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.ct) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !27633
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !27633
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !27630
  br label %bb.ag

bb.ab:                                            ; preds = %_ZNKR5folly8ExpectedIlNS_14ConversionCodeEE5valueEv.exit
  %i.cu = sub nsw i32 %i.an, %3
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.cv
  %i.cx = load i128, ptr %i.cw, align 16, !tbaa !1073
  %i.cy = call noundef i64 @_ZN8facebook5velox11DecimalUtil17divideWithRoundUpIllnEET_RS3_T0_T1_bhh(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.bi, i128 noundef %i.cx, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 0 uses
  %.pre = load i64, ptr %i.a, align 8, !tbaa !173 ; 2 uses
  %.pre66 = sext i64 %.pre to i128
  br label %.critedge

.critedge:                                        ; preds = %bb.x, %bb.ab
  %.pre-phi = phi i128 [ %i.cg, %bb.x ], [ %.pre66, %bb.ab ] ; 2 uses
  %i.cz = phi i64 [ %i.cf, %bb.x ], [ %.pre, %bb.ab ]
  %i.da = and i32 %2, 255
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.db
  %i.dd = load i128, ptr %i.dc, align 16, !tbaa !1073 ; 2 uses
  %i.de = icmp sgt i128 %i.dd, %.pre-phi
  %i.df = sub nsw i128 0, %i.dd
  %i.dg = icmp sgt i128 %.pre-phi, %i.df
  %i.dh = select i1 %i.de, i1 %i.dg, i1 false
  br i1 %i.dh, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !27636
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !27639
  %.sroa.08.0.insert.ext.i.i = zext i32 %2 to i128
  store i128 %.sroa.08.0.insert.ext.i.i, ptr %6, align 16, !noalias !27639
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.320, i64 44, i64 1, ptr nonnull %6), !noalias !27639
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %5)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.di = load ptr, ptr %5, align 8, !tbaa !177, !noalias !27639 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.ad
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !179, !noalias !27639
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit

bb.ae:                                            ; preds = %bb.ac
  %i.dn = landingpad { ptr, i32 }
          cleanup
  %i.do = load ptr, ptr %5, align 8, !tbaa !177, !noalias !27639 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
end_hunk_1
begin_hunk_2_@_ZZN8facebook5velox4exec8CastExpr37applyFloatingPointToDecimalCastKernelIfnEEvRKNS0_17SelectivityVectorERKNS0_10BaseVectorERNS1_7EvalCtxERKSt10shared_ptrIKNS0_4TypeEERSC_IS7_EENKUliE_clEi:bb.a
  %i.be = load ptr, ptr %3, align 8, !tbaa !184
  %.not.i12 = icmp eq ptr %i.be, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.bd, %bb.k ], [ %i.bd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNK8facebook5velox4exec8CastExpr22setNullInResultAtErrorEv.exit.thread, %bb.b
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i14, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.n, !prof !244

bb.n:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %.pn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ]
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i15, label %_ZN8facebook5velox6StatusD2Ev.exit16, label %bb.p, !prof !244

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit16

_ZN8facebook5velox6StatusD2Ev.exit16:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIfnEENS0_6StatusET_iiRT0_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, float noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.6232", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %15 = alloca %"class.folly::Expected.3395", align 16 ; 5 uses
  %i.b = alloca i128, align 16                    ; 6 uses
  %i.c = tail call float @llvm.fabs.f32(float %1) ; 2 uses
  %i.d = fcmp ueq float %i.c, +inf
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !28321
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !28324
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.318, i64 33, i64 0, ptr nonnull %14), !noalias !28324
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %13, align 8, !tbaa !177, !noalias !28324 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !179, !noalias !28324
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %13, align 8, !tbaa !177, !noalias !28324 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !179, !noalias !28324
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !28324
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !28324
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !28321
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.p = fcmp ole float %1, f0xFF000000
  %i.q = fcmp ogt float %1, f0x7F000000
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !28327
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39, !noalias !28330
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %12), !noalias !28330
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %11, align 8, !tbaa !177, !noalias !28330 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !tbaa !179, !noalias !28330
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %11, align 8, !tbaa !177, !noalias !28330 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !179, !noalias !28330
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !28330
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !28330
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !28327
  br label %bb.af

bb.i:                                             ; preds = %bb.e
  %i.ac = fptoui float %i.c to i128               ; 3 uses
  %i.ad = icmp eq i128 %i.ac, 0
  br i1 %i.ad, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ae = icmp ult i128 %i.ac, 10
  br i1 %i.ae, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.0.i54 = phi i32 [ %i.am, %bb.o ], [ 1, %.preheader ] ; 4 uses
  %.011.i53 = phi i128 [ %i.al, %bb.o ], [ %i.ac, %.preheader ] ; 5 uses
  %i.af = icmp ult i128 %.011.i53, 100
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ag = add nuw nsw i32 %.0.i54, 1
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.ah = icmp ult i128 %.011.i53, 1000
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = add nuw nsw i32 %.0.i54, 2
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp ult i128 %.011.i53, 10000
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = add nuw nsw i32 %.0.i54, 3
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.al = udiv i128 %.011.i53, 10000
  %i.am = add nuw nsw i32 %.0.i54, 4              ; 2 uses
  %i.an = icmp ult i128 %.011.i53, 100000
  br i1 %i.an, label %.loopexit, label %.lr.ph, !llvm.loop !1087

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.ak, %bb.n ], [ %i.ag, %bb.j ], [ %i.ai, %bb.l ], [ 1, %.preheader ], [ %i.am, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i                 ; 2 uses
  %16 = sub nsw i32 7, %.012.i.fr
  %17 = icmp sgt i32 %.012.i.fr, 7
  %spec.select = select i1 %17, i32 0, i32 %16
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.ao = phi i32 [ 7, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ap = fpext nnan ninf float %1 to x86_fp80
  %18 = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %18
  %i.ar = load i128, ptr %i.aq, align 16, !tbaa !1073
  %i.as = sitofp i128 %i.ar to x86_fp80
  %i.at = fmul nnan x86_fp80 %i.ap, %i.as
  %i.au = tail call noundef x86_fp80 @llvm.round.f80(x86_fp80 %i.at)
  store x86_fp80 %i.au, ptr %i.a, align 16, !tbaa !28333
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  call void @_ZN5folly6detail9convertToIneEENSt9enable_ifIXooaa13is_integral_vIT0_Esr3std17is_floating_pointIT_EE5valueaasr3std17is_floating_pointIS3_EE5value13is_integral_vIS4_EENS_8ExpectedIS4_NS_14ConversionCodeEEEE4typeERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.3395") align 16 %15, ptr noundef nonnull align 16 dereferenceable(16) %i.a) #39
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aw = load i8, ptr %i.av, align 16, !tbaa !15744 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !28335
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39, !noalias !28338
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %10), !noalias !28338
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %9)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %9, align 8, !tbaa !177, !noalias !28338 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.q
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !179, !noalias !28338
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35

bb.r:                                             ; preds = %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %9, align 8, !tbaa !177, !noalias !28338 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30: ; preds = %bb.r
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !179, !noalias !28338
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !28338
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !28338
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !28335
  br label %bb.ae

bb.s:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %cond = icmp eq i8 %i.aw, 1
  br i1 %cond, label %_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit, label %bb.t, !prof !26069

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #16
  unreachable

_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit: ; preds = %bb.s
  %i.bj = load i128, ptr %15, align 16, !tbaa !1073 ; 3 uses
  store i128 %i.bj, ptr %i.b, align 16, !tbaa !1073
  %i.bk = icmp sgt i32 %3, %i.ao
  br i1 %i.bk, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit
  %i.bl = sub nsw i32 %3, %i.ao
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.bm
  %i.bo = load i128, ptr %i.bn, align 16, !tbaa !1073
  %i.bp = call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %i.bj, i128 %i.bo) ; 2 uses
  %i.bq = extractvalue { i128, i1 } %i.bp, 1
  %i.br = extractvalue { i128, i1 } %i.bp, 0      ; 2 uses
  store i128 %i.br, ptr %i.b, align 16
  br i1 %i.bq, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !28341
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !28344
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %8), !noalias !28344
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %7)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %7, align 8, !tbaa !177, !noalias !28344 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.w
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !179, !noalias !28344
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41

bb.x:                                             ; preds = %bb.v
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %7, align 8, !tbaa !177, !noalias !28344 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36: ; preds = %bb.x
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !179, !noalias !28344
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !28344
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !28344
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !28341
  br label %bb.ad

bb.y:                                             ; preds = %_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit
  %i.cd = sub nsw i32 %i.ao, %3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.ce
  %i.cg = load i128, ptr %i.cf, align 16, !tbaa !1073
  %i.ch = call noundef i128 @_ZN8facebook5velox11DecimalUtil17divideWithRoundUpInnnEET_RS3_T0_T1_bhh(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i128 noundef %i.bj, i128 noundef %i.cg, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 0 uses
  %.pre = load i128, ptr %i.b, align 16, !tbaa !1073
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.y
  %i.ci = phi i128 [ %i.br, %bb.u ], [ %.pre, %bb.y ] ; 3 uses
  %i.cj = and i32 %2, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.ck
  %i.cm = load i128, ptr %i.cl, align 16, !tbaa !1073 ; 2 uses
  %i.cn = icmp slt i128 %i.ci, %i.cm
  %i.co = sub nsw i128 0, %i.cm
  %i.cp = icmp sgt i128 %i.ci, %i.co
  %i.cq = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !28347
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !28350
  %.sroa.08.0.insert.ext.i.i = zext i32 %2 to i128
  store i128 %.sroa.08.0.insert.ext.i.i, ptr %6, align 16, !noalias !28350
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.320, i64 44, i64 1, ptr nonnull %6), !noalias !28350
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cr = load ptr, ptr %5, align 8, !tbaa !177, !noalias !28350 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.aa
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !179, !noalias !28350
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %5, align 8, !tbaa !177, !noalias !28350 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.ab
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !179, !noalias !28350
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !28350
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !28350
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !28347
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge
  store i128 %i.ci, ptr %4, align 16, !tbaa !1073
  store ptr null, ptr %0, align 8, !tbaa !1939, !alias.scope !28353
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41, %bb.ac, %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.af
end_hunk_2
begin_hunk_3_@_ZZN8facebook5velox4exec8CastExpr37applyFloatingPointToDecimalCastKernelIdnEEvRKNS0_17SelectivityVectorERKNS0_10BaseVectorERNS1_7EvalCtxERKSt10shared_ptrIKNS0_4TypeEERSC_IS7_EENKUliE_clEi:bb.a
  %i.be = load ptr, ptr %3, align 8, !tbaa !184
  %.not.i12 = icmp eq ptr %i.be, null
  br i1 %.not.i12, label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #39
  br label %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13

_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13: ; preds = %bb.l, %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.j ], [ %i.bd, %bb.k ], [ %i.bd, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #39
  br label %bb.o

bb.m:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit, %_ZNK8facebook5velox4exec8CastExpr22setNullInResultAtErrorEv.exit.thread, %bb.b
  %i.bf = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i14 = icmp eq ptr %i.bf, null
  br i1 %.not.i14, label %_ZN8facebook5velox6StatusD2Ev.exit, label %bb.n, !prof !244

bb.n:                                             ; preds = %bb.m
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit

_ZN8facebook5velox6StatusD2Ev.exit:               ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  ret void

bb.o:                                             ; preds = %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13, %bb.f
  %.pn10 = phi { ptr, i32 } [ %i.aq, %bb.f ], [ %.pn, %_ZNSt15__exception_ptr13exception_ptrD2Ev.exit13 ]
  %i.bg = load ptr, ptr %2, align 8, !tbaa !1939
  %.not.i15 = icmp eq ptr %i.bg, null
  br i1 %.not.i15, label %_ZN8facebook5velox6StatusD2Ev.exit16, label %bb.p, !prof !244

bb.p:                                             ; preds = %bb.o
  call void @_ZN8facebook5velox6Status11deleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN8facebook5velox6StatusD2Ev.exit16

_ZN8facebook5velox6StatusD2Ev.exit16:             ; preds = %bb.o, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  resume { ptr, i32 } %.pn10
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox11DecimalUtil20rescaleFloatingPointIdnEENS0_6StatusET_iiRT0_(ptr dead_on_unwind noalias writable sret(%"class.facebook::velox::Status") align 8 %0, double noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 16 dereferenceable(16) %4) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.6232", align 16 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store.1253", align 16 ; 4 uses
  %i.a = alloca x86_fp80, align 16                ; 4 uses
  %15 = alloca %"class.folly::Expected.3395", align 16 ; 5 uses
  %i.b = alloca i128, align 16                    ; 6 uses
  %i.c = tail call double @llvm.fabs.f64(double %1) ; 2 uses
  %i.d = fcmp ueq double %i.c, +inf
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13), !noalias !28400
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #39, !noalias !28403
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr nonnull @.str.318, i64 33, i64 0, ptr nonnull %14), !noalias !28403
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %13)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %13, align 8, !tbaa !177, !noalias !28403 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !179, !noalias !28403
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %13, align 8, !tbaa !177, !noalias !28403 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i: ; preds = %bb.d
  %i.n = load i64, ptr %i.l, align 8, !tbaa !179, !noalias !28403
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i ], [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26 ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31 ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37 ], [ %i.cw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !28403
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA34_KcEEES1_DpOT_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #39, !noalias !28403
  call void @llvm.lifetime.end.p0(ptr nonnull %13), !noalias !28400
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.p = fcmp ole double %1, f0xC7E0000000000000
  %i.q = fcmp ogt double %1, f0x47DFFFFFFFFFFFFF
  %or.cond = or i1 %i.p, %i.q
  br i1 %or.cond, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %11), !noalias !28406
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #39, !noalias !28409
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %12), !noalias !28409
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %11)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %11, align 8, !tbaa !177, !noalias !28409 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28: ; preds = %bb.g
  %i.u = load i64, ptr %i.s, align 8, !tbaa !179, !noalias !28409
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %11, align 8, !tbaa !177, !noalias !28409 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !179, !noalias !28409
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i26: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !28409
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #39, !noalias !28409
  call void @llvm.lifetime.end.p0(ptr nonnull %11), !noalias !28406
  br label %bb.af

bb.i:                                             ; preds = %bb.e
  %i.ac = fptoui double %i.c to i128              ; 3 uses
  %i.ad = icmp eq i128 %i.ac, 0
  br i1 %i.ad, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.ae = icmp ult i128 %i.ac, 10
  br i1 %i.ae, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %.0.i54 = phi i32 [ %i.am, %bb.o ], [ 1, %.preheader ] ; 4 uses
  %.011.i53 = phi i128 [ %i.al, %bb.o ], [ %i.ac, %.preheader ] ; 5 uses
  %i.af = icmp ult i128 %.011.i53, 100
  br i1 %i.af, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  %i.ag = add nuw nsw i32 %.0.i54, 1
  br label %.loopexit

bb.k:                                             ; preds = %.lr.ph
  %i.ah = icmp ult i128 %.011.i53, 1000
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = add nuw nsw i32 %.0.i54, 2
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.aj = icmp ult i128 %.011.i53, 10000
  br i1 %i.aj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ak = add nuw nsw i32 %.0.i54, 3
  br label %.loopexit

bb.o:                                             ; preds = %bb.m
  %i.al = udiv i128 %.011.i53, 10000
  %i.am = add nuw nsw i32 %.0.i54, 4              ; 2 uses
  %i.an = icmp ult i128 %.011.i53, 100000
  br i1 %i.an, label %.loopexit, label %.lr.ph, !llvm.loop !1087

.loopexit:                                        ; preds = %bb.o, %.preheader, %bb.n, %bb.l, %bb.j
  %.012.i = phi i32 [ %i.ak, %bb.n ], [ %i.ag, %bb.j ], [ %i.ai, %bb.l ], [ 1, %.preheader ], [ %i.am, %bb.o ]
  %.012.i.fr = freeze i32 %.012.i                 ; 2 uses
  %16 = sub nsw i32 15, %.012.i.fr
  %17 = icmp sgt i32 %.012.i.fr, 15
  %spec.select = select i1 %17, i32 0, i32 %16
  br label %.thread

.thread:                                          ; preds = %.loopexit, %bb.i
  %i.ao = phi i32 [ 15, %bb.i ], [ %spec.select, %.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #39
  %i.ap = fpext nnan ninf double %1 to x86_fp80
  %18 = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %18
  %i.ar = load i128, ptr %i.aq, align 16, !tbaa !1073
  %i.as = sitofp i128 %i.ar to x86_fp80
  %i.at = fmul nnan x86_fp80 %i.ap, %i.as
  %i.au = tail call noundef x86_fp80 @llvm.round.f80(x86_fp80 %i.at)
  store x86_fp80 %i.au, ptr %i.a, align 16, !tbaa !28333
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #39
  call void @_ZN5folly6detail9convertToIneEENSt9enable_ifIXooaa13is_integral_vIT0_Esr3std17is_floating_pointIT_EE5valueaasr3std17is_floating_pointIS3_EE5value13is_integral_vIS4_EENS_8ExpectedIS4_NS_14ConversionCodeEEEE4typeERKS3_(ptr dead_on_unwind nonnull writable sret(%"class.folly::Expected.3395") align 16 %15, ptr noundef nonnull align 16 dereferenceable(16) %i.a) #39
  %i.av = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.aw = load i8, ptr %i.av, align 16, !tbaa !15744 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9), !noalias !28412
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #39, !noalias !28415
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %10), !noalias !28415
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %9)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ay = load ptr, ptr %9, align 8, !tbaa !177, !noalias !28415 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33: ; preds = %bb.q
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !179, !noalias !28415
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.ay, i64 noundef %i.bc) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35

bb.r:                                             ; preds = %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  %i.be = load ptr, ptr %9, align 8, !tbaa !177, !noalias !28415 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30: ; preds = %bb.r
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !179, !noalias !28415
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i31: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !28415
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #39, !noalias !28415
  call void @llvm.lifetime.end.p0(ptr nonnull %9), !noalias !28412
  br label %bb.ae

bb.s:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #39
  %cond = icmp eq i8 %i.aw, 1
  br i1 %cond, label %_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit, label %bb.t, !prof !26069

bb.t:                                             ; preds = %bb.s
  call void @_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_() #16
  unreachable

_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit: ; preds = %bb.s
  %i.bj = load i128, ptr %15, align 16, !tbaa !1073 ; 3 uses
  store i128 %i.bj, ptr %i.b, align 16, !tbaa !1073
  %i.bk = icmp sgt i32 %3, %i.ao
  br i1 %i.bk, label %bb.u, label %bb.y

bb.u:                                             ; preds = %_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit
  %i.bl = sub nsw i32 %3, %i.ao
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.bm
  %i.bo = load i128, ptr %i.bn, align 16, !tbaa !1073
  %i.bp = call { i128, i1 } @llvm.smul.with.overflow.i128(i128 %i.bj, i128 %i.bo) ; 2 uses
  %i.bq = extractvalue { i128, i1 } %i.bp, 1
  %i.br = extractvalue { i128, i1 } %i.bp, 0      ; 2 uses
  store i128 %i.br, ptr %i.b, align 16
  br i1 %i.bq, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %7), !noalias !28418
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #39, !noalias !28421
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr nonnull @.str.319, i64 17, i64 0, ptr nonnull %8), !noalias !28421
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %7)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.bs = load ptr, ptr %7, align 8, !tbaa !177, !noalias !28421 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39: ; preds = %bb.w
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !179, !noalias !28421
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41

bb.x:                                             ; preds = %bb.v
  %i.bx = landingpad { ptr, i32 }
          cleanup
  %i.by = load ptr, ptr %7, align 8, !tbaa !177, !noalias !28421 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36: ; preds = %bb.x
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !179, !noalias !28421
  %i.cc = add i64 %i.cb, 1
  call void @_ZdlPvm(ptr noundef %i.by, i64 noundef %i.cc) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6.i.i37: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !28421
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #39, !noalias !28421
  call void @llvm.lifetime.end.p0(ptr nonnull %7), !noalias !28418
  br label %bb.ad

bb.y:                                             ; preds = %_ZNKR5folly8ExpectedInNS_14ConversionCodeEE5valueEv.exit
  %i.cd = sub nsw i32 %i.ao, %3
  %i.ce = zext nneg i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.ce
  %i.cg = load i128, ptr %i.cf, align 16, !tbaa !1073
  %i.ch = call noundef i128 @_ZN8facebook5velox11DecimalUtil17divideWithRoundUpInnnEET_RS3_T0_T1_bhh(ptr noundef nonnull align 16 dereferenceable(16) %i.b, i128 noundef %i.bj, i128 noundef %i.cg, i1 noundef zeroext false, i8 noundef zeroext 0, i8 noundef zeroext 0) ; 0 uses
  %.pre = load i128, ptr %i.b, align 16, !tbaa !1073
  br label %.critedge

.critedge:                                        ; preds = %bb.u, %bb.y
  %i.ci = phi i128 [ %i.br, %bb.u ], [ %.pre, %bb.y ] ; 3 uses
  %i.cj = and i32 %2, 255
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [16 x i8], ptr @_ZN8facebook5velox11DecimalUtil12kPowersOfTenE, i64 %i.ck
  %i.cm = load i128, ptr %i.cl, align 16, !tbaa !1073 ; 2 uses
  %i.cn = icmp slt i128 %i.ci, %i.cm
  %i.co = sub nsw i128 0, %i.cm
  %i.cp = icmp sgt i128 %i.ci, %i.co
  %i.cq = select i1 %i.cn, i1 %i.cp, i1 false
  br i1 %i.cq, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %5), !noalias !28424
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #39, !noalias !28427
  %.sroa.08.0.insert.ext.i.i = zext i32 %2 to i128
  store i128 %.sroa.08.0.insert.ext.i.i, ptr %6, align 16, !noalias !28427
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.320, i64 44, i64 1, ptr nonnull %6), !noalias !28427
  invoke void @_ZN8facebook5velox6StatusC1ENS0_10StatusCodeENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 1, ptr noundef nonnull %5)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cr = load ptr, ptr %5, align 8, !tbaa !177, !noalias !28427 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42: ; preds = %bb.aa
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !179, !noalias !28427
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cr, i64 noundef %i.cv) #49
  br label %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit

bb.ab:                                            ; preds = %bb.z
  %i.cw = landingpad { ptr, i32 }
          cleanup
  %i.cx = load ptr, ptr %5, align 8, !tbaa !177, !noalias !28427 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.cz = icmp eq ptr %i.cx, %i.cy
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.ab
  %i.da = load i64, ptr %i.cy, align 8, !tbaa !179, !noalias !28427
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cx, i64 noundef %i.db) #49
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !28427
  br label %common.resume

_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #39, !noalias !28427
  call void @llvm.lifetime.end.p0(ptr nonnull %5), !noalias !28424
  br label %bb.ad

bb.ac:                                            ; preds = %.critedge
  store i128 %i.ci, ptr %4, align 16, !tbaa !1073
  store ptr null, ptr %0, align 8, !tbaa !1939, !alias.scope !28430
  br label %bb.ad

bb.ad:                                            ; preds = %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit41, %bb.ac, %_ZN8facebook5velox6Status9UserErrorIJRA45_KcRiEEES1_DpOT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #39
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZN8facebook5velox6Status9UserErrorIJRA18_KcEEES1_DpOT_.exit35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #39
  br label %bb.af
end_hunk_3
