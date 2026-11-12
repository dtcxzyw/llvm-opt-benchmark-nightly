Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/mipmap?download=true
inline.NumInlined: 1458
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE:bb.a
bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !65
  switch i32 %i.d, label %bb.k [
    i32 0, label %bb.c
    i32 1, label %bb.f
    i32 2, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.02.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.02.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.02.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38
  %i.h = trunc i64 %i.g to i32
  %i.i = load i32, ptr %i.b, align 4, !tbaa !66
  %i.j = mul nsw i32 %i.i, %.sroa.2.0.extract.trunc.i
  %i.k = add nsw i32 %i.j, %.sroa.0.0.extract.trunc.i
  %i.l = mul nsw i32 %i.k, %i.h
  %i.m = sext i32 %i.l to i64
  %i.n = sext i32 %2 to i64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !67
  %i.q = getelementptr i8, ptr %i.p, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 %i.n     ; 3 uses
  %i.s = load i64, ptr %i.e, align 8, !tbaa !68   ; 2 uses
  %i.t = and i64 %i.s, 144115188075855871
  %i.u = inttoptr i64 %i.t to ptr                 ; 2 uses
  %i.v = lshr i64 %i.s, 57
  %i.w = trunc nuw nsw i64 %i.v to i32
  switch i32 %i.w, label %bb.e [
    i32 1, label %.lr.ph.i.i.i.i.i
    i32 2, label %bb.d
  ]

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c
  %i.x = load i8, ptr %i.r, align 1, !tbaa !69
  %i.y = uitofp i8 %i.x to float
  %i.z = fdiv float %i.y, 2.550000e+02
  store float %i.z, ptr %i.a, align 4, !tbaa !45
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZNK4pbrt17sRGBColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 1 dereferenceable(1) %i.u, ptr %i.r, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

bb.e:                                             ; preds = %bb.c
  call void @_ZNK4pbrt18GammaColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE(ptr noundef nonnull align 4 dereferenceable(5124) %i.u, ptr %i.r, i64 1, ptr nonnull %i.a, i64 1)
  br label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit: ; preds = %.lr.ph.i.i.i.i.i, %bb.d, %bb.e
  %i.aa = load float, ptr %i.a, align 4, !tbaa !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  %.sroa.01.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i9 = trunc i64 %.sroa.01.0.copyload to i32
  %.sroa.2.0.extract.shift.i10 = lshr i64 %.sroa.01.0.copyload, 32
  %.sroa.2.0.extract.trunc.i11 = trunc nuw i64 %.sroa.2.0.extract.shift.i10 to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !38
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = load i32, ptr %i.b, align 4, !tbaa !66
  %i.af = mul nsw i32 %i.ae, %.sroa.2.0.extract.trunc.i11
  %i.ag = add nsw i32 %i.af, %.sroa.0.0.extract.trunc.i9
  %i.ah = mul nsw i32 %i.ag, %i.ad
  %i.ai = sext i32 %i.ah to i64
  %i.aj = sext i32 %2 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !70
  %i.am = getelementptr [2 x i8], ptr %i.al, i64 %i.ai
  %i.an = getelementptr [2 x i8], ptr %i.am, i64 %i.aj
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !73 ; 2 uses
  %i.ap = zext i16 %i.ao to i32
  %i.aq = shl nuw nsw i32 %i.ap, 13               ; 4 uses
  %i.ar = and i32 %i.aq, 260046848                ; 2 uses
  %i.as = icmp eq i32 %i.ar, 260046848
  br i1 %i.as, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.at = or i32 %i.aq, 1879048192
  br label %_ZNK4pbrt4HalfcvfEv.exit

bb.h:                                             ; preds = %bb.f
  %i.au = and i32 %i.aq, 268427264
  %i.av = add nuw nsw i32 %i.au, 939524096
  %i.aw = icmp eq i32 %i.ar, 0
  br i1 %i.aw, label %bb.i, label %_ZNK4pbrt4HalfcvfEv.exit

bb.i:                                             ; preds = %bb.h
  %i.ax = or i32 %i.aq, 947912704
  %i.ay = bitcast i32 %i.ax to float
  %i.az = fadd float %i.ay, f0xB8800000
  %i.ba = bitcast float %i.az to i32
  br label %_ZNK4pbrt4HalfcvfEv.exit

_ZNK4pbrt4HalfcvfEv.exit:                         ; preds = %bb.g, %bb.h, %bb.i
  %.sroa.0.0.i = phi i32 [ %i.at, %bb.g ], [ %i.ba, %bb.i ], [ %i.av, %bb.h ]
  %.signext.i = sext i16 %i.ao to i32
  %i.bb = and i32 %.signext.i, -2147483648
  %i.bc = or i32 %.sroa.0.0.i, %i.bb
  %i.bd = bitcast i32 %i.bc to float
  br label %bb.l

bb.j:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i12 = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i13 = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i14 = trunc nuw i64 %.sroa.2.0.extract.shift.i13 to i32
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !38
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !66
  %i.bi = mul nsw i32 %i.bh, %.sroa.2.0.extract.trunc.i14
  %i.bj = add nsw i32 %i.bi, %.sroa.0.0.extract.trunc.i12
  %i.bk = mul nsw i32 %i.bj, %i.bg
  %i.bl = sext i32 %i.bk to i64
  %i.bm = sext i32 %2 to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !74
  %i.bp = getelementptr [4 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = getelementptr [4 x i8], ptr %i.bp, i64 %i.bm
  %i.br = load float, ptr %i.bq, align 4, !tbaa !45
  br label %bb.l

bb.k:                                             ; preds = %bb.b
  call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 273, ptr noundef nonnull @.str.25) #24
  unreachable

bb.l:                                             ; preds = %bb.a, %bb.j, %_ZNK4pbrt4HalfcvfEv.exit, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit
  %.0 = phi float [ %i.aa, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit ], [ %i.bd, %_ZNK4pbrt4HalfcvfEv.exit ], [ %i.br, %bb.j ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA2_KcRA27_S1_S3_RiS5_S6_EEEvNS_8LogLevelEPS1_iS8_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(27) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(27) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !76, !alias.scope !181
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !78, !alias.scope !181
  store i8 0, ptr %i.a, align 8, !tbaa !69, !alias.scope !181
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA2_KcJRA27_S2_S4_RiS6_S7_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(2) %4, ptr noundef nonnull align 1 dereferenceable(27) %5, ptr noundef nonnull align 1 dereferenceable(2) %6, ptr noundef nonnull align 4 dereferenceable(4) %7, ptr noundef nonnull align 1 dereferenceable(27) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA2_KcRA27_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !79, !alias.scope !181 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !69, !alias.scope !181
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #26
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA2_KcRA27_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !79
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #24
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA2_KcRA27_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA2_KcRA27_S1_S3_RiS5_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !79    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !69
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4pbrt6MIPMap14CreateFromFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_19MIPMapFilterOptionsENS_8WrapModeENS_13ColorEncodingEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(8) %3, ptr %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.pstd::pmr::polymorphic_allocator.3", align 8 ; 3 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  %6 = alloca %"struct.pbrt::ImageAndMetadata", align 8 ; 38 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.pbrt::ColorEncoding", align 8 ; 2 uses
  %9 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 11 uses
  %10 = alloca [4 x %"class.std::__cxx11::basic_string"], align 8 ; 36 uses
  %11 = alloca %"struct.pbrt::ImageChannelDesc", align 8 ; 12 uses
  %12 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 28 uses
  %13 = alloca %"struct.pbrt::ImageChannelValues", align 8 ; 9 uses
  %14 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %15 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %16 = alloca %"class.pbrt::Image", align 8      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  store ptr %4, ptr %5, align 8
  store i32 %2, ptr %i.b, align 4, !tbaa !101
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  store ptr %i.d, ptr %7, align 8, !tbaa !76
  %i.e = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !78   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.g, ptr %i.a, align 8, !tbaa !84
  %i.h = icmp ugt i64 %i.g, 15
  br i1 %i.h, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.i, ptr %7, align 8, !tbaa !79
  %i.j = load i64, ptr %i.a, align 8, !tbaa !84
  store i64 %i.j, ptr %i.d, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.k = phi ptr [ %i.i, %.noexc.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.g, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.l = load i8, ptr %i.e, align 1, !tbaa !69
  store i8 %i.l, ptr %i.k, align 1, !tbaa !69
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.e, i64 %i.g, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !84   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.m, ptr %i.n, align 8, !tbaa !78
  %i.o = load ptr, ptr %7, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store i8 0, ptr %i.p, align 1, !tbaa !69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.q = load i64, ptr %3, align 8, !tbaa !68
  store i64 %i.q, ptr %8, align 8, !tbaa !68
  invoke void @_ZN4pbrt5Image4ReadENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4pstd3pmr21polymorphic_allocatorISt4byteEENS_13ColorEncodingE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageAndMetadata") align 8 %6, ptr nofree noundef nonnull align 8 dereferenceable(32) %7, ptr %4, ptr nofree noundef nonnull align 8 dead_on_return dereferenceable(8) %8)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.r = load ptr, ptr %7, align 8, !tbaa !79     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.t = load i64, ptr %i.d, align 8, !tbaa !69
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !38
  %i.x = and i64 %i.w, 4294967295
  %.not73 = icmp eq i64 %i.x, 1
  br i1 %.not73, label %bb.ao, label %._crit_edge.i.i95

._crit_edge.i.i95:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store ptr %i.y, ptr %10, align 8, !tbaa !76
  store i8 82, ptr %i.y, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 1, ptr %i.z, align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 17
  store i8 0, ptr %i.aa, align 1, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !76
  store i8 71, ptr %i.ac, align 8, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 1, ptr %i.ad, align 8, !tbaa !78
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 49
  store i8 0, ptr %i.ae, align 1, !tbaa !69
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  store ptr %i.ag, ptr %i.af, align 8, !tbaa !76
  store i8 66, ptr %i.ag, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 72
  store i64 1, ptr %i.ah, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 81
  store i8 0, ptr %i.ai, align 1, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !76
  store i8 65, ptr %i.ak, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 104
  store i64 1, ptr %i.al, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 113
  store i8 0, ptr %i.am, align 1, !tbaa !69
  invoke void @_ZNK4pbrt5Image14GetChannelDescEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelDesc") align 8 %9, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr nonnull %10, i64 4)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %._crit_edge.i.i95
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !79 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109: ; preds = %bb.e
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !69
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !79 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !69
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.1
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !79 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.1
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.2
  %i.bf = load ptr, ptr %10, align 8, !tbaa !79   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.2
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !69
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.3
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.bk = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  store ptr %i.bk, ptr %12, align 8, !tbaa !76
  store i8 82, ptr %i.bk, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 1, ptr %i.bl, align 8, !tbaa !78
  %i.bm = getelementptr inbounds nuw i8, ptr %12, i64 17
  store i8 0, ptr %i.bm, align 1, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.bo = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  store ptr %i.bo, ptr %i.bn, align 8, !tbaa !76
  store i8 71, ptr %i.bo, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %12, i64 40
  store i64 1, ptr %i.bp, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %12, i64 49
  store i8 0, ptr %i.bq, align 1, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.bs = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !76
  store i8 66, ptr %i.bs, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %12, i64 72
  store i64 1, ptr %i.bt, align 8, !tbaa !78
  %i.bu = getelementptr inbounds nuw i8, ptr %12, i64 81
  store i8 0, ptr %i.bu, align 1, !tbaa !69
  invoke void @_ZNK4pbrt5Image14GetChannelDescEN4pstd4spanIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelDesc") align 8 %11, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr nonnull %12, i64 3)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.3
  %i.bv = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !79 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.by = icmp eq ptr %i.bw, %i.bx
  br i1 %i.by, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124: ; preds = %bb.f
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !69
  %i.ca = add i64 %i.bz, 1
  call void @_ZdlPvm(ptr noundef %i.bw, i64 noundef %i.ca) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124
  %i.cb = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !79 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.ce = icmp eq ptr %i.cc, %i.cd
  br i1 %i.ce, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126
  %i.cf = load i64, ptr %i.cd, align 8, !tbaa !69
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %i.cc, i64 noundef %i.cg) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.1
  %i.ch = load ptr, ptr %12, align 8, !tbaa !79   ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.1
  %i.ck = load i64, ptr %i.ci, align 8, !tbaa !69
  %i.cl = add i64 %i.ck, 1
  call void @_ZdlPvm(ptr noundef %i.ch, i64 noundef %i.cl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i124.2
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.cm = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !105
  %.not = icmp eq i64 %i.cn, 0
  br i1 %.not, label %bb.y, label %.preheader188

.preheader188:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit126.2
  %i.co = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %.sroa.0.0.copyload.i197 = load i64, ptr %i.co, align 4 ; 2 uses
  %.sroa.3.0.extract.shift198 = lshr i64 %.sroa.0.0.copyload.i197, 32
  %.sroa.3.0.extract.trunc199 = trunc nuw i64 %.sroa.3.0.extract.shift198 to i32
  %i.cp = icmp sgt i32 %.sroa.3.0.extract.trunc199, 0
  br i1 %i.cp, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %.preheader188
  %i.cq = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %13, i64 28
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %13, i64 32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %.sroa.0.0.copyload.i207 = phi i64 [ %.sroa.0.0.copyload.i197, %.preheader.lr.ph ], [ %.sroa.0.0.copyload.i, %._crit_edge ] ; 2 uses
  %indvars.iv204 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next205, %._crit_edge ] ; 2 uses
  %.070200 = phi i1 [ true, %.preheader.lr.ph ], [ %.171.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.07.0.extract.trunc194 = trunc i64 %.sroa.0.0.copyload.i207 to i32
  %i.ct = icmp sgt i32 %.sroa.07.0.extract.trunc194, 0
  br i1 %i.ct, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2162.0.insert.shift = shl nuw nsw i64 %indvars.iv204, 32
  br label %bb.k

._crit_edge202:                                   ; preds = %._crit_edge
  br i1 %.171.lcssa, label %.critedge, label %bb.t

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = load ptr, ptr %7, align 8, !tbaa !79    ; 2 uses
  %i.cw = icmp eq ptr %i.cv, %i.d
  br i1 %i.cw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i127: ; preds = %bb.g
  %i.cx = load i64, ptr %i.d, align 8, !tbaa !69
  %i.cy = add i64 %i.cx, 1
  call void @_ZdlPvm(ptr noundef %i.cv, i64 noundef %i.cy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit129

bb.h:                                             ; preds = %._crit_edge.i.i95
  %i.cz = landingpad { ptr, i32 }
          cleanup
  %i.da = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !79 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.h
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !69
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  %i.dg = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !79 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.dk = load i64, ptr %i.di, align 8, !tbaa !69
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.1
  %i.dm = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !79 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  %i.dp = icmp eq ptr %i.dn, %i.do
  br i1 %i.dp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1
  %i.dq = load i64, ptr %i.do, align 8, !tbaa !69
  %i.dr = add i64 %i.dq, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dr) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.2
  %i.ds = load ptr, ptr %10, align 8, !tbaa !79   ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.du = icmp eq ptr %i.ds, %i.dt
  br i1 %i.du, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2
  %i.dv = load i64, ptr %i.dt, align 8, !tbaa !69
  %i.dw = add i64 %i.dv, 1
  call void @_ZdlPvm(ptr noundef %i.ds, i64 noundef %i.dw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.3
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.an

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit111.3
  %i.dx = landingpad { ptr, i32 }
          cleanup
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !79 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136: ; preds = %bb.i
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !69
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !79 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !69
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.1
  %i.ek = load ptr, ptr %12, align 8, !tbaa !79   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.em = icmp eq ptr %i.ek, %i.el
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.1
  %i.en = load i64, ptr %i.el, align 8, !tbaa !69
  %i.eo = add i64 %i.en, 1
  call void @_ZdlPvm(ptr noundef %i.ek, i64 noundef %i.eo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i136.2
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.am

bb.j:                                             ; preds = %bb.ae
  %i.ep = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

._crit_edge:                                      ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, %.preheader
  %.sroa.0.0.copyload.i = phi i64 [ %.sroa.0.0.copyload.i207, %.preheader ], [ %.sroa.0.0.copyload.i142, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %.171.lcssa = phi i1 [ %.070200, %.preheader ], [ %spec.select, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %indvars.iv.next205 = add nuw nsw i64 %indvars.iv204, 1 ; 2 uses
  %i.eq = ashr i64 %.sroa.0.0.copyload.i, 32
  %i.er = icmp slt i64 %indvars.iv.next205, %i.eq
  br i1 %i.er, label %.preheader, label %._crit_edge202, !llvm.loop !182

bb.k:                                             ; preds = %.lr.ph, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ] ; 2 uses
  %.171195 = phi i1 [ %.070200, %.lr.ph ], [ %spec.select, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %.sroa.0161.0.insert.insert = or disjoint i64 %.sroa.2162.0.insert.shift, %indvars.iv
  invoke void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind nonnull writable sret(%"struct.pbrt::ImageChannelValues") align 8 %13, ptr noundef nonnull align 8 dereferenceable(152) %6, i64 %.sroa.0161.0.insert.insert, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 4294967297)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.es = load ptr, ptr %i.cq, align 8, !tbaa !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.es, null             ; 2 uses
  %.sroa.gep163 = getelementptr inbounds nuw i8, ptr %i.es, i64 12
  %.sroa.sel = select i1 %.not.i.i, ptr %.sroa.gep, ptr %.sroa.gep163
  %i.et = load float, ptr %.sroa.sel, align 4, !tbaa !45
  %i.eu = fcmp oeq float %i.et, 1.000000e+00
  store i64 0, ptr %i.cr, align 8, !tbaa !43
  br i1 %.not.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ev = load i64, ptr %i.cs, align 8, !tbaa !48
  %i.ew = shl i64 %i.ev, 2
  %i.ex = load ptr, ptr %13, align 8, !tbaa !49   ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  invoke void %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.ex, ptr noundef nonnull %i.es, i64 noundef %i.ew, i64 noundef 4)
          to label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit unwind label %bb.n, !inline_history !0

bb.n:                                             ; preds = %bb.m
  %i.fb = landingpad { ptr, i32 }
          catch ptr null
  %i.fc = extractvalue { ptr, i32 } %i.fb, 0
  call void @__clang_call_terminate(ptr %i.fc) #25
  unreachable

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  %spec.select = select i1 %i.eu, i1 %.171195, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.sroa.0.0.copyload.i142 = load i64, ptr %i.co, align 4 ; 2 uses
  %i.fd = shl i64 %.sroa.0.0.copyload.i142, 32
  %i.fe = ashr exact i64 %i.fd, 32
  %i.ff = icmp slt i64 %indvars.iv.next, %i.fe
  br i1 %i.ff, label %bb.k, label %._crit_edge, !llvm.loop !183

bb.o:                                             ; preds = %bb.k
  %i.fg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.al

.critedge:                                        ; preds = %.preheader188, %._crit_edge202
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  invoke void @_ZNK4pbrt5Image14SelectChannelsERKNS_16ImageChannelDescEN4pstd3pmr21polymorphic_allocatorISt4byteEE(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Image") align 8 %14, ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(48) %11, ptr %4)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.critedge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %6, ptr noundef nonnull align 8 dereferenceable(152) %14, i64 12, i1 false)
  %i.fh = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %14, i64 16
end_hunk_0
