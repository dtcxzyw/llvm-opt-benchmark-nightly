inline.NumInlined: 6229
inline.NumDeleted: 1603
begin_hunk_0_@_ZN11OpenImageIO4v3_112ImageBufAlgo18ocionamedtransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi:bb.a
  %i.di = mul nsw i64 %i.dh, 1000000000
  %i.dj = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !119
  %i.dl = add nsw i64 %i.di, %i.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  %i.dm = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !120
  %i.do = sub i64 %i.dl, %i.dn
  %i.dp = call noundef i64 @llvm.abs.i64(i64 %i.do, i1 true)
  %i.dq = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !122
  %i.ds = add nsw i64 %i.dp, %i.dr
  store i64 %i.ds, ptr %i.dq, align 8, !tbaa !122
  store i8 0, ptr %15, align 8, !tbaa !121
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.dt = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertERNS0_8ImageBufERKS2_PKNS0_14ColorProcessorEbNS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.bj, i1 noundef zeroext %3, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.an unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.an:                                            ; preds = %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.ai
  %.0 = phi i1 [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.ai ], [ %i.dt, %bb.al ]
  %i.dv = load ptr, ptr %i.ab, align 8, !tbaa !40 ; 8 uses
  %.not.i.i39 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i39, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dx = load atomic i64, ptr %i.dw acquire, align 8 ; 2 uses
  %i.dy = icmp eq i64 %i.dx, 4294967297
  %i.dz = trunc i64 %i.dx to i32                  ; 2 uses
  br i1 %i.dy, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %i.dw, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dv, i64 12
  store i32 0, ptr %i.ea, align 4, !tbaa !43
  %i.eb = load ptr, ptr %i.dv, align 8, !tbaa !44
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #38, !inline_history !107
  %i.ee = load ptr, ptr %i.dv, align 8, !tbaa !44
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #38, !inline_history !107
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

bb.aq:                                            ; preds = %bb.ao
  %i.eh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !22
  %.not.i.i.i40 = icmp eq i8 %i.eh, 0
  br i1 %.not.i.i.i40, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ei = add nsw i32 %i.dz, -1
  store i32 %i.ei, ptr %i.dw, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

bb.as:                                            ; preds = %bb.aq
  %i.ej = atomicrmw volatile add ptr %i.dw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41: ; preds = %bb.as, %bb.ar
  %.0.i.i.i.i42 = phi i32 [ %i.dz, %bb.ar ], [ %i.ej, %bb.as ]
  %i.ek = icmp eq i32 %.0.i.i.i.i42, 1
  br i1 %i.ek, label %bb.at, label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43, !prof !47

bb.at:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dv) #38
  br label %_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43

_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit43: ; preds = %bb.an, %bb.ap, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i41, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  ret i1 %.0

.body:                                            ; preds = %bb.g, %bb.f, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.ag
  %.pn20 = phi { ptr, i32 } [ %i.du, %bb.am ], [ %i.cy, %bb.ag ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ], [ %i.h, %bb.g ], [ %i.g, %bb.f ]
  call void @_ZNSt12__shared_ptrIN11OpenImageIO4v3_114ColorProcessorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %17) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #38
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  resume { ptr, i32 } %.pn20
}

; Function Attrs: mustprogress uwtable
define void @_ZN11OpenImageIO4v3_112ImageBufAlgo18ocionamedtransformERKNS0_8ImageBufENS0_17basic_string_viewIcSt11char_traitsIcEEEbbS8_S8_PKNS0_11ColorConfigENS0_3ROIEi(ptr dead_on_unwind noalias nonnull writable sret(%"class.OpenImageIO::v3_1::ImageBuf") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef readonly captures(none) dead_on_return %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef readonly captures(none) dead_on_return %5, ptr noundef readonly captures(none) dead_on_return %6, ptr noundef readonly captures(address_is_null) %7, ptr noundef readonly byval(%"struct.OpenImageIO::v3_1::ROI") align 8 captures(none) %8, i32 noundef %9) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  tail call void @_ZN11OpenImageIO4v3_18ImageBufC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.a = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %i.a, ptr %10, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !13
  store i64 %i.d, ptr %i.b, align 8, !tbaa !13
  %i.e = load ptr, ptr %5, align 8, !tbaa !8
  store ptr %i.e, ptr %11, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !13
  store i64 %i.h, ptr %i.f, align 8, !tbaa !13
  %i.i = load ptr, ptr %6, align 8, !tbaa !8
  store ptr %i.i, ptr %12, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !13
  store i64 %i.l, ptr %i.j, align 8, !tbaa !13
  %i.m = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo18ocionamedtransformERNS0_8ImageBufERKS2_NS0_17basic_string_viewIcSt11char_traitsIcEEEbbS9_S9_PKNS0_11ColorConfigENS0_3ROIEi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull dead_on_return %10, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12, ptr noundef %7, ptr noundef nonnull byval(%"struct.OpenImageIO::v3_1::ROI") align 8 %8, i32 noundef %9)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.m, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef zeroext i1 @_ZNK11OpenImageIO4v3_18ImageBuf9has_errorEv(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.n, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA41_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(41) @.str.94)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11OpenImageIO4v3_18ImageBufD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #38
  resume { ptr, i32 } %i.o

bb.g:                                             ; preds = %bb.b, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_18ImageBuf8errorfmtIA41_cJEEEvRKT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(41) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.91", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = tail call i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %1) #38, !noalias !498
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38, !noalias !498
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull align 1 dereferenceable(41) %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38, !noalias !498
  %i.b = load ptr, ptr %4, align 8, !tbaa !18
  store ptr %i.b, ptr %3, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  store i64 %i.e, ptr %i.c, align 8, !tbaa !13
  invoke void @_ZNK11OpenImageIO4v3_18ImageBuf5errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !22
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !18     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !22
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  resume { ptr, i32 } %i.k
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_112ImageBufAlgo12colorconvertENS0_4spanIfLm18446744073709551615EEEPKNS0_14ColorProcessorEb(ptr captures(none) %0, i64 %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 14 uses
  %.not = icmp ne ptr %2, null                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %2, align 8, !tbaa !44
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br i1 %i.e, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.f = trunc i64 %1 to i32                      ; 2 uses
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 4)
  %i.g = sext i32 %.sroa.speculated to i64
  %i.h = shl nsw i64 %i.g, 2                      ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 4 %0, i64 %i.h, i1 false)
  %i.i = icmp sgt i32 %i.f, 3
  %or.cond = and i1 %i.i, %3
  br i1 %or.cond, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !69 ; 3 uses
  %i.l = fcmp ogt float %i.k, f0x00800000
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %4 = load <2 x float>, ptr %i.a, align 16, !tbaa !69
  %5 = insertelement <2 x float> poison, float %i.k, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x float> %4, %6
  store <2 x float> %7, ptr %i.a, align 16, !tbaa !69
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %9 = load float, ptr %8, align 8, !tbaa !69
  %10 = fdiv float %9, %i.k
  store float %10, ptr %8, align 8, !tbaa !69
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = load ptr, ptr %2, align 8, !tbaa !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1, i32 noundef 4, i64 noundef 4, i64 noundef 16, i64 noundef 16)
  %i.p = load float, ptr %i.j, align 4, !tbaa !69 ; 3 uses
  %i.q = fcmp ogt float %i.p, f0x00800000
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %11 = load <2 x float>, ptr %i.a, align 16, !tbaa !69
  %12 = insertelement <2 x float> poison, float %i.p, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer
  %14 = fmul <2 x float> %13, %11
  store <2 x float> %14, ptr %i.a, align 16, !tbaa !69
  %15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %16 = load float, ptr %15, align 8, !tbaa !69
  %17 = fmul float %i.p, %16
  store float %17, ptr %15, align 8, !tbaa !69
  br label %bb.h

.critedge:                                        ; preds = %bb.c
  %i.r = load ptr, ptr %2, align 8, !tbaa !44
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %i.a, i32 noundef 1, i32 noundef 1, i32 noundef 4, i64 noundef 4, i64 noundef 16, i64 noundef 16)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr nonnull align 16 %i.a, i64 %i.h, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef readonly captures(none) dead_on_return %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr @.str.88, ptr %4, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 15, ptr %i.a, align 8, !tbaa !13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %3, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !13   ; 4 uses
  %.not = icmp ne i64 %i.c, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !13 ; 3 uses
  %i.d = icmp eq i64 %i.c, %.pre
  %or.cond = select i1 %.not, i1 %i.d, i1 false
  br i1 %or.cond, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !8
  %i.f = load ptr, ptr %3, align 8, !tbaa !8
  %bcmp.i = call i32 @bcmp(ptr %i.f, ptr %i.e, i64 %i.c)
  %.not.i.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.c

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = icmp eq i64 %.pre, 0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  store ptr @.str.88, ptr %6, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 15, ptr %i.j, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %6, i64 256, i1 noundef zeroext false)
  br label %bb.d

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread
  %i.k = phi ptr [ %i.g, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread ], [ %i.h, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ]
  %i.l = phi i64 [ %i.c, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread.thread ], [ %.pre, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit.thread ]
  store ptr @.str.88, ptr %7, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 15, ptr %i.m, align 8, !tbaa !13
  %i.n = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %i.n, ptr %8, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.l, ptr %i.o, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi ptr [ %i.k, %bb.c ], [ %i.h, %bb.b ]
  %i.q = load ptr, ptr %2, align 8, !tbaa !8
  store ptr %i.q, ptr %9, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.s = load i64, ptr %i.p, align 8, !tbaa !13
  store i64 %i.s, ptr %i.r, align 8, !tbaa !13
  store ptr @.str.18, ptr %10, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 17, ptr %i.t, align 8, !tbaa !13
  %i.u = call noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ColorConfig10equivalentENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr @.str.95, ptr %11, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 15, ptr %i.v, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %11, i64 256, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr @.str.96, ptr %12, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 15, ptr %i.w, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %12, i64 256, i1 noundef zeroext false)
  store ptr @.str.97, ptr %13, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 30, ptr %i.x, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %13, i64 256, i1 noundef zeroext false)
  store ptr @.str.98, ptr %14, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 10, ptr %i.y, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %14, i64 256, i1 noundef zeroext false)
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  ret void
}

declare void @_ZN11OpenImageIO4v3_19ImageSpec15erase_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEb(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, i64, i1 noundef zeroext) local_unnamed_addr #0

declare void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160), ptr noundef dead_on_return, ptr noundef dead_on_return) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define void @_ZNK11OpenImageIO4v3_111ColorConfig27set_colorspace_rec709_gammaERNS0_9ImageSpecEf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, float noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca float, align 4                    ; 4 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.263", align 16 ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %6 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %7 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 5 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %10 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.e = fmul float %2, 1.000000e+02
  %i.f = tail call noundef float @llvm.round.f32(float %i.e)
  %i.g = fdiv float %i.f, 1.000000e+02            ; 5 uses
  %i.h = fadd float %i.g, -1.000000e+00
  %i.i = tail call float @llvm.fabs.f32(float %i.h)
  %i.j = fcmp ugt float %i.i, f0x3C23D70A
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.15, ptr %8, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 16, ptr %i.k, align 8, !tbaa !13
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %8)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.l = fadd float %i.g, -1.800000e+00
  %i.m = tail call float @llvm.fabs.f32(float %i.l)
  %i.n = fcmp ugt float %i.m, f0x3C23D70A
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr @.str.99, ptr %9, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 16, ptr %i.o, align 8, !tbaa !13
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store float 1.800000e+00, ptr %i.d, align 4, !tbaa !69
  store ptr @.str.98, ptr %7, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 10, ptr %i.p, align 8, !tbaa !13
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEENS0_8TypeDescEPKv(ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %7, i64 267, ptr noundef nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.q = fadd float %i.g, -2.200000e+00
  %i.r = tail call float @llvm.fabs.f32(float %i.q)
  %i.s = fcmp ugt float %i.r, f0x3C23D70A
  br i1 %i.s, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @.str.100, ptr %10, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 16, ptr %i.t, align 8, !tbaa !13
  call void @_ZNK11OpenImageIO4v3_111ColorConfig14set_colorspaceERNS0_9ImageSpecENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, ptr noundef nonnull dead_on_return %10)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  store float 2.200000e+00, ptr %i.c, align 4, !tbaa !69
  store ptr @.str.98, ptr %6, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 10, ptr %i.u, align 8, !tbaa !13
end_hunk_0
