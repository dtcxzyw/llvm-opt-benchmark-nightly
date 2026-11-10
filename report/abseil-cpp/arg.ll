Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/arg?download=true
inline.NumInlined: 660
inline.NumDeleted: 254
begin_hunk_0_@_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIhEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %.06.i = phi i8 [ %0, %bb.e ], [ %i.j, %bb.f ]  ; 2 uses
  %.0.i = phi ptr [ %i.f, %bb.e ], [ %i.i, %bb.f ]
  %i.g = and i8 %.06.i, 7
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.h, ptr %i.i, align 1, !tbaa !35
  %i.j = lshr i8 %.06.i, 3                        ; 2 uses
  %.not.i = icmp eq i8 %i.j, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIhEEvT_.exit, label %bb.f, !llvm.loop !0

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIhEEvT_.exit: ; preds = %bb.f
  store ptr %i.i, ptr %5, align 8, !tbaa !41
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 58 ; 2 uses
  %i.l = zext i8 %0 to i64
  %i.m = shl nuw nsw i64 %i.l, 1
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2              ; 2 uses
  store i16 %i.o, ptr %i.k, align 2
  %i.p = and i16 %i.o, 255
  %i.q = icmp eq i16 %i.p, 48
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 59
  %spec.select.i = select i1 %i.q, ptr %i.r, ptr %i.k ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 60
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %bb.h
  %.06.i30 = phi i8 [ %0, %bb.h ], [ %i.z, %bb.i ] ; 2 uses
  %.0.i31 = phi ptr [ %i.t, %bb.h ], [ %i.y, %bb.i ]
  %i.u = and i8 %.06.i30, 15
  %i.v = zext nneg i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = getelementptr inbounds i8, ptr %.0.i31, i64 -1 ; 4 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !35
  %i.z = lshr i8 %.06.i30, 4                      ; 2 uses
  %.not.i32 = icmp eq i8 %i.z, 0
  br i1 %.not.i32, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIhEEvT_.exit, label %bb.i, !llvm.loop !1

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIhEEvT_.exit: ; preds = %bb.i
  store ptr %i.y, ptr %5, align 8, !tbaa !41
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !41
  %i.ab = zext i8 %0 to i32
  %i.ac = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %i.ab, ptr noundef nonnull %i.aa)
  br label %bb.n

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !41
  %i.ae = zext i8 %0 to i32
  %i.af = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %i.ae, ptr noundef nonnull %i.ad)
  br label %bb.n

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = uitofp i8 %0 to double
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.m:                                             ; preds = %bb.a
  unreachable

bb.n:                                             ; preds = %bb.k, %bb.j, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIhEEvT_.exit, %bb.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIhEEvT_.exit
  %.sink41 = phi ptr [ %i.af, %bb.k ], [ %i.ac, %bb.j ], [ %i.t, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIhEEvT_.exit ], [ %i.s, %bb.g ], [ %i.f, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIhEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ad, %bb.k ], [ %i.aa, %bb.j ], [ %i.y, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIhEEvT_.exit ], [ %spec.select.i, %bb.g ], [ %i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIhEEvT_.exit ] ; 2 uses
  %i.ai = ptrtoint ptr %.sink41 to i64
  %i.aj = ptrtoint ptr %.sink to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !42
  %i.am = and i64 %1, 65280
  %i.an = icmp eq i64 %i.am, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.an, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.ao = icmp eq ptr %.sink41, %.sink
  br i1 %i.ao, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = add i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i33 = icmp ult i64 %i.ak, %i.ax
  br i1 %.not.i33, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bd = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bc(ptr noundef %i.bd, i64 %i.ba, ptr nonnull %i.ay), !inline_history !2
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !46
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.be(ptr noundef %i.bf, i64 %i.ak, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.val, i64 %i.ak, i1 false)
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.n
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ak, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.r, %bb.q, %bb.o, %bb.c, %bb.d, %bb.s, %bb.l
  %.0 = phi i1 [ %i.ah, %bb.l ], [ true, %bb.d ], [ true, %bb.s ], [ %i.e, %bb.c ], [ true, %bb.o ], [ true, %bb.q ], [ true, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIwEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.219.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.l [
    i8 0, label %bb.b
    i8 4, label %bb.c
    i8 6, label %bb.e
    i8 7, label %bb.g
    i8 5, label %bb.i
    i8 2, label %bb.j
    i8 3, label %bb.j
    i8 18, label %bb.j
    i8 14, label %bb.k
    i8 10, label %bb.k
    i8 8, label %bb.k
    i8 12, label %bb.k
    i8 15, label %bb.k
    i8 11, label %bb.k
    i8 9, label %bb.k
    i8 13, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.06.i = phi i32 [ %0, %bb.c ], [ %i.h, %bb.d ] ; 2 uses
  %.0.i = phi ptr [ %i.c, %bb.c ], [ %i.g, %bb.d ]
  %i.d = trunc i32 %.06.i to i8
  %i.e = and i8 %i.d, 7
  %i.f = or disjoint i8 %i.e, 48
  %i.g = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.f, ptr %i.g, align 1, !tbaa !35
  %i.h = lshr i32 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit, label %bb.d, !llvm.loop !8

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit: ; preds = %bb.d
  store ptr %i.g, ptr %5, align 8, !tbaa !41
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.09.i = phi ptr [ %i.i, %bb.e ], [ %i.j, %bb.f ] ; 2 uses
  %.0.i24 = phi i32 [ %0, %bb.e ], [ %i.p, %bb.f ] ; 2 uses
  %i.j = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.k = shl i32 %.0.i24, 1
  %i.l = and i32 %i.k, 510
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2              ; 2 uses
  store i16 %i.o, ptr %i.j, align 2
  %i.p = lshr i32 %.0.i24, 8                      ; 2 uses
  %.not.i25 = icmp eq i32 %i.p, 0
  br i1 %.not.i25, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit, label %bb.f, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit: ; preds = %bb.f
  %i.q = and i16 %i.o, 255
  %i.r = icmp eq i16 %i.q, 48
  %i.s = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.r, ptr %i.s, ptr %i.j ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.06.i26 = phi i32 [ %0, %bb.g ], [ %i.z, %bb.h ] ; 2 uses
  %.0.i27 = phi ptr [ %i.t, %bb.g ], [ %i.y, %bb.h ]
  %i.u = and i32 %.06.i26, 15
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !35
  %i.y = getelementptr inbounds i8, ptr %.0.i27, i64 -1 ; 4 uses
  store i8 %i.x, ptr %i.y, align 1, !tbaa !35
  %i.z = lshr i32 %.06.i26, 4                     ; 2 uses
  %.not.i28 = icmp eq i32 %i.z, 0
  br i1 %.not.i28, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit, label %bb.h, !llvm.loop !10

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit: ; preds = %bb.h
  store ptr %i.y, ptr %5, align 8, !tbaa !41
  br label %bb.m

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.aa, ptr %5, align 8, !tbaa !41
  %i.ab = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr noundef nonnull %i.aa)
  br label %bb.m

bb.j:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !41
  %i.ad = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %0, ptr noundef nonnull %i.ac)
  br label %bb.m

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ae = sitofp i32 %0 to double
  %i.af = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ae, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.l:                                             ; preds = %bb.a
  unreachable

bb.m:                                             ; preds = %bb.j, %bb.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit
  %.sink43 = phi ptr [ %i.ad, %bb.j ], [ %i.ab, %bb.i ], [ %i.t, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit ], [ %i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit ], [ %i.c, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ac, %bb.j ], [ %i.aa, %bb.i ], [ %i.y, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit ], [ %i.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit ] ; 2 uses
  %i.ag = ptrtoint ptr %.sink43 to i64
  %i.ah = ptrtoint ptr %.sink to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !42
  %i.ak = and i64 %1, 65280
  %i.al = icmp eq i64 %i.ak, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.al, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.am = icmp eq ptr %.sink43, %.sink
  br i1 %i.am, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !45
  %i.ap = add i64 %i.ao, %i.ai
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64               ; 2 uses
  %i.av = sub i64 %i.at, %i.au
  %.not.i29 = icmp ult i64 %i.ai, %i.av
  br i1 %.not.i29, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = sub i64 %i.au, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bb = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.ba(ptr noundef %i.bb, i64 %i.ay, ptr nonnull %i.aw), !inline_history !2
  store ptr %i.aw, ptr %i.ar, align 8, !tbaa !46
  %i.bc = load ptr, ptr %i.az, align 8, !tbaa !47
  %i.bd = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bc(ptr noundef %i.bd, i64 %i.ai, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr align 1 %.val, i64 %i.ai, i1 false)
  %i.be = load ptr, ptr %i.ar, align 8, !tbaa !46
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.ai
  store ptr %i.bf, ptr %i.ar, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.r:                                             ; preds = %bb.m
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ai, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.q, %bb.p, %bb.n, %bb.r, %bb.k, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ %i.af, %bb.k ], [ true, %bb.r ], [ true, %bb.n ], [ true, %bb.p ], [ true, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIsEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = sext i16 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i16 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i16 [ %0, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i16 %.06.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = lshr i16 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit, label %bb.f, !llvm.loop !11

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i30 = phi i16 [ %0, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.o = shl i16 %.0.i30, 1
  %i.p = and i16 %i.o, 510
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  store i16 %i.s, ptr %i.n, align 2
  %i.t = lshr i16 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i16 %i.t, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit, label %bb.h, !llvm.loop !12

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit: ; preds = %bb.h
  %i.u = and i16 %i.s, 255
  %i.v = icmp eq i16 %i.u, 48
  %i.w = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.v, ptr %i.w, ptr %i.n ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i16 [ %0, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.x, %bb.i ], [ %i.ac, %bb.j ]
  %i.y = and i16 %.06.i32, 15
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35
  %i.ad = lshr i16 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i16 %i.ad, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit, label %bb.j, !llvm.loop !13

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit: ; preds = %bb.j
  store ptr %i.ac, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !41
  %i.af = zext i16 %0 to i32
  %i.ag = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %i.af, ptr noundef nonnull %i.ae)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !41
  %i.ai = sext i16 %0 to i32
  %i.aj = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %i.ai, ptr noundef nonnull %i.ah)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ak = sitofp i16 %0 to double
  %i.al = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit
  %.sink49 = phi ptr [ %i.aj, %bb.l ], [ %i.ag, %bb.k ], [ %i.x, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit ], [ %i.m, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit ], [ %i.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ah, %bb.l ], [ %i.ae, %bb.k ], [ %i.ac, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit ] ; 2 uses
  %i.am = ptrtoint ptr %.sink49 to i64
  %i.an = ptrtoint ptr %.sink to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !42
  %i.aq = and i64 %1, 65280
  %i.ar = icmp eq i64 %i.aq, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.as = icmp eq ptr %.sink49, %.sink
  br i1 %i.as, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !45
  %i.av = add i64 %i.au, %i.ao
  store i64 %i.av, ptr %i.at, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %.not.i35 = icmp ult i64 %i.ao, %i.bb
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bg(ptr noundef %i.bh, i64 %i.be, ptr nonnull %i.bc), !inline_history !2
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !46
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bj = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bi(ptr noundef %i.bj, i64 %i.ao, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %.val, i64 %i.ao, i1 false)
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ao
  store ptr %i.bl, ptr %i.ax, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ao, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.al, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.e, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgItEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i16 noundef zeroext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = zext i16 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i16 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i16 [ %0, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i16 %.06.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = lshr i16 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i16 %i.l, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit, label %bb.f, !llvm.loop !11

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i30 = phi i16 [ %0, %bb.g ], [ %i.t, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.o = shl i16 %.0.i30, 1
  %i.p = and i16 %i.o, 510
  %i.q = zext nneg i16 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2              ; 2 uses
  store i16 %i.s, ptr %i.n, align 2
  %i.t = lshr i16 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i16 %i.t, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit, label %bb.h, !llvm.loop !12

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit: ; preds = %bb.h
  %i.u = and i16 %i.s, 255
  %i.v = icmp eq i16 %i.u, 48
  %i.w = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.v, ptr %i.w, ptr %i.n ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i16 [ %0, %bb.i ], [ %i.ad, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.x, %bb.i ], [ %i.ac, %bb.j ]
  %i.y = and i16 %.06.i32, 15
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !35
  %i.ac = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !35
  %i.ad = lshr i16 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i16 %i.ad, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit, label %bb.j, !llvm.loop !13

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit: ; preds = %bb.j
  store ptr %i.ac, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !41
  %i.af = zext i16 %0 to i32
  %i.ag = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %i.af, ptr noundef nonnull %i.ae)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ah, ptr %5, align 8, !tbaa !41
  %i.ai = zext i16 %0 to i32
  %i.aj = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %i.ai, ptr noundef nonnull %i.ah)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ak = uitofp i16 %0 to double
  %i.al = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ak, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit
  %.sink49 = phi ptr [ %i.aj, %bb.l ], [ %i.ag, %bb.k ], [ %i.x, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit ], [ %i.m, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit ], [ %i.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ah, %bb.l ], [ %i.ae, %bb.k ], [ %i.ac, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperItEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerItEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctItEEvT_.exit ] ; 2 uses
  %i.am = ptrtoint ptr %.sink49 to i64
  %i.an = ptrtoint ptr %.sink to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !42
  %i.aq = and i64 %1, 65280
  %i.ar = icmp eq i64 %i.aq, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.ar, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.as = icmp eq ptr %.sink49, %.sink
  br i1 %i.as, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !45
  %i.av = add i64 %i.au, %i.ao
  store i64 %i.av, ptr %i.at, align 8, !tbaa !45
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !46 ; 2 uses
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %.not.i35 = icmp ult i64 %i.ao, %i.bb
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.ba, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bh = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bg(ptr noundef %i.bh, i64 %i.be, ptr nonnull %i.bc), !inline_history !2
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !46
  %i.bi = load ptr, ptr %i.bf, align 8, !tbaa !47
  %i.bj = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bi(ptr noundef %i.bj, i64 %i.ao, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 1 %.val, i64 %i.ao, i1 false)
  %i.bk = load ptr, ptr %i.ax, align 8, !tbaa !46
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ao
  store ptr %i.bl, ptr %i.ax, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ao, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.al, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.e, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIiEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = trunc i32 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.e, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i32 [ %0, %bb.e ], [ %i.k, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.f, %bb.e ], [ %i.j, %bb.f ]
  %i.g = trunc i32 %.06.i to i8
  %i.h = and i8 %i.g, 7
  %i.i = or disjoint i8 %i.h, 48
  %i.j = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.k = lshr i32 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit, label %bb.f, !llvm.loop !8

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit: ; preds = %bb.f
  store ptr %i.j, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.l, %bb.g ], [ %i.m, %bb.h ] ; 2 uses
  %.0.i30 = phi i32 [ %0, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.n = shl i32 %.0.i30, 1
  %i.o = and i32 %i.n, 510
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  store i16 %i.r, ptr %i.m, align 2
  %i.s = lshr i32 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i32 %i.s, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit, label %bb.h, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit: ; preds = %bb.h
  %i.t = and i16 %i.r, 255
  %i.u = icmp eq i16 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.u, ptr %i.v, ptr %i.m ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i32 [ %0, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.w, %bb.i ], [ %i.ab, %bb.j ]
  %i.x = and i32 %.06.i32, 15
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !35
  %i.ac = lshr i32 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i32 %i.ac, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit, label %bb.j, !llvm.loop !10

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit: ; preds = %bb.j
  store ptr %i.ab, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !41
  %i.ae = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr noundef nonnull %i.ad)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !41
  %i.ag = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEiPc(i32 noundef %0, ptr noundef nonnull %i.af)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ah = sitofp i32 %0 to double
  %i.ai = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit
  %.sink49 = phi ptr [ %i.ag, %bb.l ], [ %i.ae, %bb.k ], [ %i.w, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit ], [ %i.l, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit ], [ %i.f, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.k ], [ %i.ab, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit ], [ %i.j, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit ] ; 2 uses
  %i.aj = ptrtoint ptr %.sink49 to i64
  %i.ak = ptrtoint ptr %.sink to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !42
  %i.an = and i64 %1, 65280
  %i.ao = icmp eq i64 %i.an, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.ao, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp eq ptr %.sink49, %.sink
  br i1 %i.ap, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = add i64 %i.ar, %i.al
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %.not.i35 = icmp ult i64 %i.al, %i.ay
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bd(ptr noundef %i.be, i64 %i.bb, ptr nonnull %i.az), !inline_history !2
  store ptr %i.az, ptr %i.au, align 8, !tbaa !46
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.bg = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bf(ptr noundef %i.bg, i64 %i.al, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.val, i64 %i.al, i1 false)
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.al
  store ptr %i.bi, ptr %i.au, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.al, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.ai, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.d, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIjEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.e = trunc i32 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.e, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i32 [ %0, %bb.e ], [ %i.k, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.f, %bb.e ], [ %i.j, %bb.f ]
  %i.g = trunc i32 %.06.i to i8
  %i.h = and i8 %i.g, 7
  %i.i = or disjoint i8 %i.h, 48
  %i.j = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.i, ptr %i.j, align 1, !tbaa !35
  %i.k = lshr i32 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit, label %bb.f, !llvm.loop !8

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit: ; preds = %bb.f
  store ptr %i.j, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.l, %bb.g ], [ %i.m, %bb.h ] ; 2 uses
  %.0.i30 = phi i32 [ %0, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.n = shl i32 %.0.i30, 1
  %i.o = and i32 %i.n, 510
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  store i16 %i.r, ptr %i.m, align 2
  %i.s = lshr i32 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i32 %i.s, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit, label %bb.h, !llvm.loop !9

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit: ; preds = %bb.h
  %i.t = and i16 %i.r, 255
  %i.u = icmp eq i16 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.u, ptr %i.v, ptr %i.m ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i32 [ %0, %bb.i ], [ %i.ac, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.w, %bb.i ], [ %i.ab, %bb.j ]
  %i.x = and i32 %.06.i32, 15
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !35
  %i.ab = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !35
  %i.ac = lshr i32 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i32 %i.ac, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit, label %bb.j, !llvm.loop !10

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit: ; preds = %bb.j
  store ptr %i.ab, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ad, ptr %5, align 8, !tbaa !41
  %i.ae = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr noundef nonnull %i.ad)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.af, ptr %5, align 8, !tbaa !41
  %i.ag = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEjPc(i32 noundef %0, ptr noundef nonnull %i.af)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ah = uitofp i32 %0 to double
  %i.ai = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit
  %.sink49 = phi ptr [ %i.ag, %bb.l ], [ %i.ae, %bb.k ], [ %i.w, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit ], [ %i.l, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit ], [ %i.f, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.k ], [ %i.ab, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIjEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIjEEvT_.exit ], [ %i.j, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIjEEvT_.exit ] ; 2 uses
  %i.aj = ptrtoint ptr %.sink49 to i64
  %i.ak = ptrtoint ptr %.sink to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.al, ptr %i.am, align 8, !tbaa !42
  %i.an = and i64 %1, 65280
  %i.ao = icmp eq i64 %i.an, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.ao, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp eq ptr %.sink49, %.sink
  br i1 %i.ap, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !45
  %i.as = add i64 %i.ar, %i.al
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !45
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !46 ; 2 uses
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %i.av to i64               ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %.not.i35 = icmp ult i64 %i.al, %i.ay
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = sub i64 %i.ax, %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.be = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bd(ptr noundef %i.be, i64 %i.bb, ptr nonnull %i.az), !inline_history !2
  store ptr %i.az, ptr %i.au, align 8, !tbaa !46
  %i.bf = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.bg = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bf(ptr noundef %i.bg, i64 %i.al, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.av, ptr align 1 %.val, i64 %i.al, i1 false)
  %i.bh = load ptr, ptr %i.au, align 8, !tbaa !46
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.al
  store ptr %i.bi, ptr %i.au, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.al, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.ai, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.d, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIlEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i64 [ %0, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i64 %.06.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = lshr i64 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit, label %bb.f, !llvm.loop !14

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i30 = phi i64 [ %0, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.o = shl i64 %.0.i30, 1
  %i.p = and i64 %i.o, 510
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  store i16 %i.r, ptr %i.n, align 2
  %i.s = lshr i64 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i64 %i.s, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit, label %bb.h, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit: ; preds = %bb.h
  %i.t = and i16 %i.r, 255
  %i.u = icmp eq i16 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.u, ptr %i.v, ptr %i.n ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i64 [ %0, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.w, %bb.i ], [ %i.aa, %bb.j ]
  %i.x = and i64 %.06.i32, 15
  %i.y = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !35
  %i.ab = lshr i64 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i64 %i.ab, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit, label %bb.j, !llvm.loop !16

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit: ; preds = %bb.j
  store ptr %i.aa, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !41
  %i.ad = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr noundef nonnull %i.ac)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !41
  %i.af = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr noundef nonnull %i.ae)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = sitofp i64 %0 to double
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit
  %.sink49 = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.k ], [ %i.w, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit ], [ %i.m, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit ], [ %i.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ae, %bb.l ], [ %i.ac, %bb.k ], [ %i.aa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit ] ; 2 uses
  %i.ai = ptrtoint ptr %.sink49 to i64
  %i.aj = ptrtoint ptr %.sink to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !42
  %i.am = and i64 %1, 65280
  %i.an = icmp eq i64 %i.am, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.an, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp eq ptr %.sink49, %.sink
  br i1 %i.ao, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = add i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i35 = icmp ult i64 %i.ak, %i.ax
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bd = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bc(ptr noundef %i.bd, i64 %i.ba, ptr nonnull %i.ay), !inline_history !2
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !46
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.be(ptr noundef %i.bf, i64 %i.ak, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.val, i64 %i.ak, i1 false)
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ak, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.ah, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.e, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgImEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i64 [ %0, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i64 %.06.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = lshr i64 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit, label %bb.f, !llvm.loop !14

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i30 = phi i64 [ %0, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.o = shl i64 %.0.i30, 1
  %i.p = and i64 %i.o, 510
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  store i16 %i.r, ptr %i.n, align 2
  %i.s = lshr i64 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i64 %i.s, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit, label %bb.h, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit: ; preds = %bb.h
  %i.t = and i16 %i.r, 255
  %i.u = icmp eq i16 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.u, ptr %i.v, ptr %i.n ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i64 [ %0, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.w, %bb.i ], [ %i.aa, %bb.j ]
  %i.x = and i64 %.06.i32, 15
  %i.y = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !35
  %i.ab = lshr i64 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i64 %i.ab, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit, label %bb.j, !llvm.loop !16

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit: ; preds = %bb.j
  store ptr %i.aa, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !41
  %i.ad = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr noundef nonnull %i.ac)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !41
  %i.af = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr noundef nonnull %i.ae)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = uitofp i64 %0 to double
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit
  %.sink49 = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.k ], [ %i.w, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit ], [ %i.m, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit ], [ %i.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ae, %bb.l ], [ %i.ac, %bb.k ], [ %i.aa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperImEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctImEEvT_.exit ] ; 2 uses
  %i.ai = ptrtoint ptr %.sink49 to i64
  %i.aj = ptrtoint ptr %.sink to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !42
  %i.am = and i64 %1, 65280
  %i.an = icmp eq i64 %i.am, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.an, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp eq ptr %.sink49, %.sink
  br i1 %i.ao, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = add i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i35 = icmp ult i64 %i.ak, %i.ax
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bd = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bc(ptr noundef %i.bd, i64 %i.ba, ptr nonnull %i.ay), !inline_history !2
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !46
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.be(ptr noundef %i.bf, i64 %i.ak, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.val, i64 %i.ak, i1 false)
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ak, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.ah, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.e, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIxEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i64 [ %0, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i64 %.06.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = lshr i64 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit, label %bb.f, !llvm.loop !17

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i30 = phi i64 [ %0, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.o = shl i64 %.0.i30, 1
  %i.p = and i64 %i.o, 510
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  store i16 %i.r, ptr %i.n, align 2
  %i.s = lshr i64 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i64 %i.s, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit, label %bb.h, !llvm.loop !18

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit: ; preds = %bb.h
  %i.t = and i16 %i.r, 255
  %i.u = icmp eq i16 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.u, ptr %i.v, ptr %i.n ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i64 [ %0, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.w, %bb.i ], [ %i.aa, %bb.j ]
  %i.x = and i64 %.06.i32, 15
  %i.y = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !35
  %i.ab = lshr i64 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i64 %i.ab, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit, label %bb.j, !llvm.loop !19

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit: ; preds = %bb.j
  store ptr %i.aa, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !41
  %i.ad = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr noundef nonnull %i.ac)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !41
  %i.af = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferElPc(i64 noundef %0, ptr noundef nonnull %i.ae)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = sitofp i64 %0 to double
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit
  %.sink49 = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.k ], [ %i.w, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit ], [ %i.m, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit ], [ %i.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ae, %bb.l ], [ %i.ac, %bb.k ], [ %i.aa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit ] ; 2 uses
  %i.ai = ptrtoint ptr %.sink49 to i64
  %i.aj = ptrtoint ptr %.sink to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !42
  %i.am = and i64 %1, 65280
  %i.an = icmp eq i64 %i.am, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.an, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp eq ptr %.sink49, %.sink
  br i1 %i.ao, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = add i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i35 = icmp ult i64 %i.ak, %i.ax
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bd = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bc(ptr noundef %i.bd, i64 %i.ba, ptr nonnull %i.ay), !inline_history !2
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !46
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.be(ptr noundef %i.bf, i64 %i.ak, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.val, i64 %i.ak, i1 false)
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ak, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.ah, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.e, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIyEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 14 uses
  store i64 %1, ptr %4, align 8
  %.sroa.225.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.225.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.n [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.l
    i8 3, label %bb.l
    i8 18, label %bb.l
    i8 14, label %bb.m
    i8 10, label %bb.m
    i8 8, label %bb.m
    i8 12, label %bb.m
    i8 15, label %bb.m
    i8 11, label %bb.m
    i8 9, label %bb.m
    i8 13, label %bb.m
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.06.i = phi i64 [ %0, %bb.e ], [ %i.l, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i64 %.06.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 4 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = lshr i64 %.06.i, 3                       ; 2 uses
  %.not.i = icmp eq i64 %i.l, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit, label %bb.f, !llvm.loop !17

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.g:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.09.i = phi ptr [ %i.m, %bb.g ], [ %i.n, %bb.h ] ; 2 uses
  %.0.i30 = phi i64 [ %0, %bb.g ], [ %i.s, %bb.h ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.o = shl i64 %.0.i30, 1
  %i.p = and i64 %i.o, 510
  %i.q = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2              ; 2 uses
  store i16 %i.r, ptr %i.n, align 2
  %i.s = lshr i64 %.0.i30, 8                      ; 2 uses
  %.not.i31 = icmp eq i64 %i.s, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit, label %bb.h, !llvm.loop !18

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit: ; preds = %bb.h
  %i.t = and i16 %i.r, 255
  %i.u = icmp eq i16 %i.t, 48
  %i.v = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.u, ptr %i.v, ptr %i.n ; 2 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.06.i32 = phi i64 [ %0, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.0.i33 = phi ptr [ %i.w, %bb.i ], [ %i.aa, %bb.j ]
  %i.x = and i64 %.06.i32, 15
  %i.y = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !35
  %i.aa = getelementptr inbounds i8, ptr %.0.i33, i64 -1 ; 4 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !35
  %i.ab = lshr i64 %.06.i32, 4                    ; 2 uses
  %.not.i34 = icmp eq i64 %i.ab, 0
  br i1 %.not.i34, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit, label %bb.j, !llvm.loop !19

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit: ; preds = %bb.j
  store ptr %i.aa, ptr %5, align 8, !tbaa !41
  br label %bb.o

bb.k:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ac, ptr %5, align 8, !tbaa !41
  %i.ad = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr noundef nonnull %i.ac)
  br label %bb.o

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.ae, ptr %5, align 8, !tbaa !41
  %i.af = call noundef ptr @_ZN4absl12lts_2026052616numbers_internal15FastIntToBufferEmPc(i64 noundef %0, ptr noundef nonnull %i.ae)
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ag = uitofp i64 %0 to double
  %i.ah = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.l, %bb.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit
  %.sink49 = phi ptr [ %i.af, %bb.l ], [ %i.ad, %bb.k ], [ %i.w, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit ], [ %i.m, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit ], [ %i.g, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit ] ; 2 uses
  %.sink = phi ptr [ %i.ae, %bb.l ], [ %i.ac, %bb.k ], [ %i.aa, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperIyEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerIyEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctIyEEvT_.exit ] ; 2 uses
  %i.ai = ptrtoint ptr %.sink49 to i64
  %i.aj = ptrtoint ptr %.sink to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !42
  %i.am = and i64 %1, 65280
  %i.an = icmp eq i64 %i.am, 0
  %.val = load ptr, ptr %5, align 8               ; 3 uses
  br i1 %i.an, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ao = icmp eq ptr %.sink49, %.sink
  br i1 %i.ao, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !45
  %i.ar = add i64 %i.aq, %i.ak
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !45
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !46 ; 2 uses
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.ax = sub i64 %i.av, %i.aw
  %.not.i35 = icmp ult i64 %i.ak, %i.ax
  br i1 %.not.i35, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = sub i64 %i.aw, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bd = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.bc(ptr noundef %i.bd, i64 %i.ba, ptr nonnull %i.ay), !inline_history !2
  store ptr %i.ay, ptr %i.at, align 8, !tbaa !46
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.be(ptr noundef %i.bf, i64 %i.ak, ptr %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.au, ptr align 1 %.val, i64 %i.ak, i1 false)
  %i.bg = load ptr, ptr %i.at, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ak
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.t:                                             ; preds = %bb.o
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr %.val, i64 %i.ak, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.s, %bb.r, %bb.p, %bb.c, %bb.d, %bb.t, %bb.m
  %.0 = phi i1 [ %i.ah, %bb.m ], [ true, %bb.d ], [ true, %bb.t ], [ %i.e, %bb.c ], [ true, %bb.p ], [ true, %bb.r ], [ true, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINS1_7VoidPtrEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 5 uses
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 17                     ; 2 uses
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, !prof !74

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = add i64 %i.d, 5
  store i64 %i.e, ptr %i.c, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i = icmp ugt i64 %i.k, 5
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !20
  store ptr %i.l, ptr %i.g, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !21
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.u, ptr %i.g, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.09.i.i = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i.i = phi i64 [ %i.v, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.09.i.i, i64 -2 ; 3 uses
  %i.y = shl i64 %.0.i.i, 1
  %i.z = and i64 %i.y, 510
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  store i16 %i.ab, ptr %i.x, align 2
  %i.ac = lshr i64 %.0.i.i, 8                     ; 2 uses
  %.not.i12.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i12.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, label %bb.g, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i: ; preds = %bb.g
  %i.ad = and i16 %i.ab, 255
  %i.ae = icmp eq i16 %i.ad, 48
  %i.af = getelementptr inbounds i8, ptr %.09.i.i, i64 -1
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.x ; 3 uses
  store ptr %spec.select.i.i, ptr %4, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = ptrtoint ptr %spec.select.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !42
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %spec.select.i.i, i64 %i.ai, i64 %1, i32 %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, %bb.e, %bb.d, %bb.a
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 5 uses
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !45
  %i.c = add i64 %i.b, 5
  store i64 %i.c, ptr %i.a, align 8, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !46   ; 2 uses
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %.not.i = icmp ugt i64 %i.i, 5
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.o = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.n(ptr noundef %i.o, i64 %i.l, ptr nonnull %i.j), !inline_history !2
  store ptr %i.j, ptr %i.e, align 8, !tbaa !46
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 5, ptr nonnull @.str.2), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  store ptr %i.s, ptr %i.e, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.09.i = phi ptr [ %i.t, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %.0.i = phi i64 [ %0, %bb.e ], [ %i.z, %bb.f ]  ; 2 uses
  %i.u = getelementptr inbounds i8, ptr %.09.i, i64 -2 ; 3 uses
  %i.v = shl i64 %.0.i, 1
  %i.w = and i64 %i.v, 510
  %i.x = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.w
  %i.y = load i16, ptr %i.x, align 2              ; 2 uses
  store i16 %i.y, ptr %i.u, align 2
  %i.z = lshr i64 %.0.i, 8                        ; 2 uses
  %.not.i12 = icmp eq i64 %i.z, 0
  br i1 %.not.i12, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit, label %bb.f, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit: ; preds = %bb.f
  %i.aa = and i16 %i.y, 255
  %i.ab = icmp eq i16 %i.aa, 48
  %i.ac = getelementptr inbounds i8, ptr %.09.i, i64 -1
  %spec.select.i = select i1 %i.ab, ptr %i.ac, ptr %i.u ; 3 uses
  store ptr %spec.select.i, ptr %4, align 8, !tbaa !41
  %i.ad = ptrtoint ptr %i.t to i64
  %i.ae = ptrtoint ptr %spec.select.i to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !42
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %spec.select.i, i64 %i.af, i64 %1, i32 %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit
  ret i8 1
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIbEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %i.d = trunc i64 %i.c to i32
  %i.e = and i32 %i.d, 1
  store i32 %i.e, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.f = shl nuw i64 2, %i.a
  %i.g = and i64 %i.f, 655354
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %0 to i64
  %i.i = trunc i64 %i.h to i1
  %i.j = tail call i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplIbTnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEiE4typeELi0EEENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE655355EEES4_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i1 noundef zeroext %i.i, i64 %1, i32 %2, ptr noundef %3)
  %i.k = trunc i8 %i.j to i1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.k, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplIbTnNSt9enable_ifIXsr3std7is_sameIT_bEE5valueEiE4typeELi0EEENS1_16ArgConvertResultILNS0_23FormatConversionCharSetE655355EEES4_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i1 noundef zeroext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 18
  br i1 %i.b, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  br i1 %0, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.h = add i64 %i.d, 4
  store i64 %i.h, ptr %i.c, align 8, !tbaa !45
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = sub i64 %i.g, %i.j
  %.not.i.i = icmp ugt i64 %i.k, 4
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !75
  store ptr %i.l, ptr %i.f, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 4, ptr nonnull @.str), !inline_history !76
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  store i32 1702195828, ptr %i.i, align 1
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.u, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.b
  %i.v = add i64 %i.d, 5
  store i64 %i.v, ptr %i.c, align 8, !tbaa !45
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !46   ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64                 ; 2 uses
  %i.y = sub i64 %i.g, %i.x
  %.not.i2.i = icmp ugt i64 %i.y, 5
  br i1 %.not.i2.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.x, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ae = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.ad(ptr noundef %i.ae, i64 %i.ab, ptr nonnull %i.z), !inline_history !75
  store ptr %i.z, ptr %i.f, align 8, !tbaa !46
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !47
  %i.ag = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.af(ptr noundef %i.ag, i64 5, ptr nonnull @.str.1), !inline_history !76
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.w, ptr noundef nonnull align 1 dereferenceable(5) @.str.1, i64 5, i1 false)
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 5
  store ptr %i.ai, ptr %i.f, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = zext i1 %0 to i32
  %i.ak = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIiEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef %i.aj, i64 %1, i32 %2, ptr noundef %3)
  %i.al = zext i1 %i.ak to i8
  br label %_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal14ConvertBoolArgEbPNS1_14FormatSinkImplE.exit: ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %bb.i
  %.sroa.07.0 = phi i8 [ %i.al, %bb.i ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ]
  ret i8 %.sroa.07.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i8
  %i.d = sext i8 %.sroa.0.0.extract.trunc.i.i to i32
  store i32 %i.d, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i64 2, %i.a
  %i.f = and i64 %i.e, 131066
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

bb.d:                                             ; preds = %bb.c
  %i.g = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.g to i8
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIcEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %.sroa.0.0.extract.trunc.i, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ %i.h, %bb.d ], [ false, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIcEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIaEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.b, label %bb.c, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %0 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.c to i8
  %i.d = sext i8 %.sroa.0.0.extract.trunc.i.i to i32
  store i32 %i.d, ptr %3, align 4, !tbaa !55
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = shl nuw i64 2, %i.a
  %i.f = and i64 %i.e, 655354
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !54

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIdEEbNS2_4DataENS1_24FormatConversionSpecImplEPv:bb.a
bb.f:                                             ; preds = %bb.a, %bb.b, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %.0 = phi i1 [ false, %bb.b ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEdNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.a = trunc i64 %1 to i8                       ; 2 uses
  %i.b = icmp eq i8 %i.a, 18
  br i1 %i.b, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, -8
  %or.cond13.i.i = icmp eq i8 %i.c, 8
  br i1 %or.cond13.i.i, label %bb.c, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIdEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  %i.e = zext i1 %i.d to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIdEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIdEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i8 [ 0, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIeEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.f, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 654848
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.f, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = load x86_fp80, ptr %0, align 16, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i.i, align 8
  %i.f = trunc i64 %1 to i8                       ; 2 uses
  %i.g = icmp eq i8 %i.f, 18
  br i1 %i.g, label %.thread.i.i, label %bb.d

.thread.i.i:                                      ; preds = %bb.c
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = and i8 %i.f, -8
  %or.cond13.i.i.i = icmp eq i8 %i.h, 8
  br i1 %or.cond13.i.i.i, label %bb.e, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEeNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.d, %.thread.i.i
  %i.i = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEeNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEeNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.d, %bb.e
  %i.j = phi i1 [ false, %bb.d ], [ %i.i, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.b, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEeNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %.0 = phi i1 [ false, %bb.b ], [ %i.j, %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEeNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEeNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %1, ptr %4, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.2.0..sroa_idx.i, align 8
  %i.a = trunc i64 %1 to i8                       ; 2 uses
  %i.b = icmp eq i8 %i.a, 18
  br i1 %i.b, label %.thread.i, label %bb.b

.thread.i:                                        ; preds = %bb.a
  store i8 12, ptr %4, align 8, !tbaa !61
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i8 %i.a, -8
  %or.cond13.i.i = icmp eq i8 %i.c, 8
  br i1 %or.cond13.i.i, label %bb.c, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIeEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.c:                                             ; preds = %bb.b, %.thread.i
  %i.d = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEeRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(x86_fp80 noundef %0, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  %i.e = zext i1 %i.d to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIeEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertFloatArgIeEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.b, %bb.c
  %i.f = phi i8 [ 0, %bb.b ], [ %i.e, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret i8 %i.f
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIPKcEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 262148
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.f, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 5 uses
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 17
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = add i64 %i.d, 5
  store i64 %i.e, ptr %i.c, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i = icmp ugt i64 %i.k, 5
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !20
  store ptr %i.l, ptr %i.g, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !21
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.u, ptr %i.g, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.09.i.i = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i.i = phi i64 [ %i.v, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.09.i.i, i64 -2 ; 3 uses
  %i.y = shl i64 %.0.i.i, 1
  %i.z = and i64 %i.y, 510
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  store i16 %i.ab, ptr %i.x, align 2
  %i.ac = lshr i64 %.0.i.i, 8                     ; 2 uses
  %.not.i12.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i12.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, label %bb.g, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i: ; preds = %bb.g
  %i.ad = and i16 %i.ab, 255
  %i.ae = icmp eq i16 %i.ad, 48
  %i.af = getelementptr inbounds i8, ptr %.09.i.i, i64 -1
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.x ; 3 uses
  store ptr %spec.select.i.i, ptr %4, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = ptrtoint ptr %spec.select.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !42
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %spec.select.i.i, i64 %i.ai, i64 %1, i32 %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp slt i32 %2, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.am = zext nneg i32 %2 to i64                 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am ; 2 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.aq = lshr i64 %i.am, 2                       ; 2 uses
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.ar = and i64 %i.am, 2147483644
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.ar ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i ], [ %i.be, %bb.p ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.bd, %bb.p ] ; 9 uses
  %i.as = load i8, ptr %.02946.i.i.i, align 1, !tbaa !35
  %i.at = icmp eq i8 %i.as, 0
  br i1 %i.at, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !35
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit65, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !35
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit67, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.be = add nsw i64 %.047.i.i.i, -1
  %i.bf = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.bf, label %bb.l, label %._crit_edge.loopexit.i.i.i, !llvm.loop !81

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.p
  %.pre54.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.k
  %.pre-phi.i.i.i = phi i64 [ %.pre54.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.ap, %bb.k ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.k ] ; 5 uses
  %i.bg = sub i64 %i.ao, %.pre-phi.i.i.i
  switch i64 %i.bg, label %bb.t [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bh = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !35
  %i.bi = icmp eq i8 %i.bh, 0
  br i1 %i.bi, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.r
  %.1.i.i.i = phi ptr [ %i.bj, %bb.r ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bk = load i8, ptr %.1.i.i.i, align 1, !tbaa !35
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.s
  %.2.i.i.i = phi ptr [ %i.bm, %bb.s ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bn = load i8, ptr %.2.i.i.i, align 1, !tbaa !35
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %_ZSt4findIPKccET_S2_S2_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit65: ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit67: ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKccET_S2_S2_RKT0_.exit

_ZSt4findIPKccET_S2_S2_RKT0_.exit:                ; preds = %bb.l, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit65, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit67, %bb.q, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.t
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.an, %bb.t ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.q ], [ %i.br, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit67 ], [ %i.bq, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit65 ], [ %i.bp, %_ZSt4findIPKccET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.l ]
  %i.bs = ptrtoint ptr %.028.i.i.i to i64
  %i.bt = sub i64 %i.bs, %i.ap
  br label %bb.u

bb.u:                                             ; preds = %bb.j, %_ZSt4findIPKccET_S2_S2_RKT0_.exit
  %.0 = phi i64 [ %i.bt, %_ZSt4findIPKccET_S2_S2_RKT0_.exit ], [ %i.al, %bb.j ] ; 7 uses
  %i.bu = and i64 %1, 65280
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %bb.v, label %bb.z

.thread:                                          ; preds = %bb.h
  %i.bw = and i64 %1, 65280
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.by = icmp eq i64 %.0, 0
  br i1 %i.by, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !45
  %i.cb = add i64 %i.ca, %.0
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !45
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !46 ; 2 uses
  %i.cf = ptrtoint ptr %i.cc to i64
  %i.cg = ptrtoint ptr %i.ce to i64               ; 2 uses
  %i.ch = sub i64 %i.cf, %i.cg
  %.not.i.i20 = icmp ult i64 %.0, %i.ch
  br i1 %.not.i.i20, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.cj = ptrtoint ptr %i.ci to i64
  %i.ck = sub i64 %i.cg, %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !47
  %i.cn = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.cm(ptr noundef %i.cn, i64 %i.ck, ptr nonnull %i.ci), !inline_history !4
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !46
  %i.co = load ptr, ptr %i.cl, align 8, !tbaa !47
  %i.cp = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.co(ptr noundef %i.cp, i64 %.0, ptr nonnull %0), !inline_history !5
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ce, ptr nonnull align 1 %0, i64 %.0, i1 false)
  %i.cq = load ptr, ptr %i.cd, align 8, !tbaa !46
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.0
  store ptr %i.cr, ptr %i.cd, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.z:                                             ; preds = %.thread, %bb.u
  %.060 = phi i64 [ 0, %.thread ], [ %.0, %bb.u ]
  %.sroa.310.0.extract.shift.i = lshr i64 %1, 32
  %.sroa.310.0.extract.trunc.i = trunc nuw i64 %.sroa.310.0.extract.shift.i to i32
  %i.cs = and i64 %1, 256
  %i.ct = icmp ne i64 %i.cs, 0
  %i.cu = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %3, i64 %.060, ptr %0, i32 noundef %.sroa.310.0.extract.trunc.i, i32 noundef %2, i1 noundef zeroext %i.ct)
  %i.cv = zext i1 %i.cu to i8
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %.thread, %bb.z, %bb.y, %bb.x, %bb.v, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, %bb.e, %bb.d
  %.sroa.018.0 = phi i8 [ 1, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i ], [ 1, %bb.d ], [ 1, %bb.e ], [ %i.cv, %bb.z ], [ 1, %bb.v ], [ 1, %bb.x ], [ 1, %bb.y ], [ 1, %.thread ]
  ret i8 %.sroa.018.0
}

end_hunk_1
begin_hunk_2_@_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv:bb.a
  %i.e = and i64 %1, 65280
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq i64 %.sroa.04.0.copyload, 0
  br i1 %i.g, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !45
  %i.j = add i64 %i.i, %.sroa.04.0.copyload
  store i64 %i.j, ptr %i.h, align 8, !tbaa !45
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !46   ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64                 ; 2 uses
  %i.p = sub i64 %i.n, %i.o
  %.not.i.i.i = icmp ult i64 %.sroa.04.0.copyload, %i.p
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = sub i64 %i.o, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.v = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.u(ptr noundef %i.v, i64 %i.s, ptr nonnull %i.q), !inline_history !84
  store ptr %i.q, ptr %i.l, align 8, !tbaa !46
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !47
  %i.x = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.w(ptr noundef %i.x, i64 %.sroa.04.0.copyload, ptr %.sroa.25.0.copyload), !inline_history !85
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %.sroa.25.0.copyload, i64 %.sroa.04.0.copyload, i1 false)
  %i.y = load ptr, ptr %i.l, align 8, !tbaa !46
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.04.0.copyload
  store ptr %i.z, ptr %i.l, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.c
  %.sroa.310.0.extract.shift.i.i = lshr i64 %1, 32
  %.sroa.310.0.extract.trunc.i.i = trunc nuw i64 %.sroa.310.0.extract.shift.i.i to i32
  %i.aa = and i64 %1, 256
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %3, i64 %.sroa.04.0.copyload, ptr %.sroa.25.0.copyload, i32 noundef %.sroa.310.0.extract.trunc.i.i, i32 noundef %2, i1 noundef zeroext %i.ab)
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.h, %bb.g, %bb.f, %bb.d, %bb.a, %bb.b
  %.0 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.h ], [ true, %bb.d ], [ true, %bb.f ], [ true, %bb.g ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %0, ptr %1, i64 %2, i32 %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = and i64 %2, 65280
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  br i1 %i.c, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = add i64 %i.e, %0
  store i64 %i.f, ptr %i.d, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 1056
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %.not.i.i = icmp ult i64 %0, %i.l
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.k, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.r = load ptr, ptr %4, align 8, !tbaa !48
  tail call void %i.q(ptr noundef %i.r, i64 %i.o, ptr nonnull %i.m), !inline_history !4
  store ptr %i.m, ptr %i.h, align 8, !tbaa !46
  %i.s = load ptr, ptr %i.p, align 8, !tbaa !47
  %i.t = load ptr, ptr %4, align 8, !tbaa !48
  tail call void %i.s(ptr noundef %i.t, i64 %0, ptr %1), !inline_history !5
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %1, i64 %0, i1 false)
  %i.u = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %0
  store ptr %i.v, ptr %i.h, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.a
  %.sroa.310.0.extract.shift.i = lshr i64 %2, 32
  %.sroa.310.0.extract.trunc.i = trunc nuw i64 %.sroa.310.0.extract.shift.i to i32
  %i.w = and i64 %2, 256
  %i.x = icmp ne i64 %i.w, 0
  %i.y = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %4, i64 %0, ptr %1, i32 noundef %.sroa.310.0.extract.trunc.i, i32 noundef %3, i1 noundef zeroext %i.x)
  %i.z = zext i1 %i.y to i8
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.b, %bb.d, %bb.e, %bb.f
  %.0.i = phi i8 [ %i.z, %bb.f ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.e ]
  ret i8 %.0.i
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchIPKwEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 262148
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %0, i64 %1, i32 %2, ptr noundef %3)
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.f, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 5 uses
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 17
  %.not.i = icmp eq ptr %0, null                  ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = add i64 %i.d, 5
  store i64 %i.e, ptr %i.c, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i = icmp ugt i64 %i.k, 5
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !20
  store ptr %i.l, ptr %i.g, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !21
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.u, ptr %i.g, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.f:                                             ; preds = %bb.b
  %i.v = ptrtoint ptr %0 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 60 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.09.i.i = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ] ; 2 uses
  %.0.i.i = phi i64 [ %i.v, %bb.f ], [ %i.ac, %bb.g ] ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %.09.i.i, i64 -2 ; 3 uses
  %i.y = shl i64 %.0.i.i, 1
  %i.z = and i64 %i.y, 510
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  store i16 %i.ab, ptr %i.x, align 2
  %i.ac = lshr i64 %.0.i.i, 8                     ; 2 uses
  %.not.i12.i = icmp eq i64 %i.ac, 0
  br i1 %.not.i12.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, label %bb.g, !llvm.loop !15

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i: ; preds = %bb.g
  %i.ad = and i16 %i.ab, 255
  %i.ae = icmp eq i16 %i.ad, 48
  %i.af = getelementptr inbounds i8, ptr %.09.i.i, i64 -1
  %spec.select.i.i = select i1 %i.ae, ptr %i.af, ptr %i.x ; 3 uses
  store ptr %spec.select.i.i, ptr %4, align 8, !tbaa !41
  %i.ag = ptrtoint ptr %i.w to i64
  %i.ah = ptrtoint ptr %spec.select.i.i to i64
  %i.ai = sub i64 %i.ag, %i.ah                    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !42
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %spec.select.i.i, i64 %i.ai, i64 %1, i32 %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.h:                                             ; preds = %bb.a
  br i1 %.not.i, label %bb.u, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp slt i32 %2, 0
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.al = tail call i64 @wcslen(ptr noundef nonnull dereferenceable(4) %0) #11
  br label %bb.u

bb.k:                                             ; preds = %bb.i
  %i.am = zext nneg i32 %2 to i64                 ; 4 uses
  %.idx40 = shl nuw nsw i64 %i.am, 2              ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %.idx40
  %i.ao = ptrtoint ptr %0 to i64
  %i.ap = lshr i64 %i.am, 2                       ; 2 uses
  %.not = icmp eq i64 %i.ap, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.k
  %i.aq = and i64 %.idx40, 8589934576
  %scevgep.i.i.i = getelementptr i8, ptr %0, i64 %i.aq
  br label %bb.l

bb.l:                                             ; preds = %bb.p, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.ap, %.lr.ph.i.i.i ], [ %i.bd, %bb.p ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %0, %.lr.ph.i.i.i ], [ %i.bc, %bb.p ] ; 9 uses
  %i.ar = load i32, ptr %.02946.i.i.i, align 4, !tbaa !67
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !67
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !67
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !67
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  %i.bd = add nsw i64 %.047.i.i.i, -1
  %i.be = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.be, label %bb.l, label %._crit_edge.loopexit.i.i.i, !llvm.loop !87

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.p
  %i.bf = and i64 %i.am, 3
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.k
  %.pre-phi56.i.i.i = phi i64 [ %i.bf, %._crit_edge.loopexit.i.i.i ], [ %i.am, %bb.k ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %0, %bb.k ] ; 5 uses
  switch i64 %.pre-phi56.i.i.i, label %bb.t [
    i64 3, label %bb.q
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i
  %i.bg = load i32, ptr %.029.lcssa.i.i.i, align 4, !tbaa !67
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bi = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.r
  %.1.i.i.i = phi ptr [ %i.bi, %bb.r ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bj = load i32, ptr %.1.i.i.i, align 4, !tbaa !67
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.s
  %.2.i.i.i = phi ptr [ %i.bl, %bb.s ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.bm = load i32, ptr %.2.i.i.i, align 4, !tbaa !67
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.m
  %i.bo = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59: ; preds = %bb.n
  %i.bp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61: ; preds = %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  br label %_ZSt4findIPKwwET_S2_S2_RKT0_.exit

_ZSt4findIPKwwET_S2_S2_RKT0_.exit:                ; preds = %bb.l, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61, %bb.q, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i, %bb.t
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %i.an, %bb.t ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %.029.lcssa.i.i.i, %bb.q ], [ %i.bq, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit61 ], [ %i.bp, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit59 ], [ %i.bo, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %.02946.i.i.i, %bb.l ]
  %i.br = ptrtoint ptr %.028.i.i.i to i64
  %i.bs = sub i64 %i.br, %i.ao
  %i.bt = ashr exact i64 %i.bs, 2
  br label %bb.u

bb.u:                                             ; preds = %bb.h, %bb.j, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit
  %.0 = phi i64 [ %i.bt, %_ZSt4findIPKwwET_S2_S2_RKT0_.exit ], [ %i.al, %bb.j ], [ 0, %bb.h ]
  %i.bu = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %0, i64 noundef %.0, i64 %1, i32 %2, ptr noundef %3)
  %i.bv = zext i1 %i.bu to i8
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplENS1_7VoidPtrENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i, %bb.e, %bb.d, %bb.u
  %.sroa.018.0 = phi i8 [ %i.bv, %bb.u ], [ 1, %bb.d ], [ 1, %bb.e ], [ 1, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerImEEvT_.exit.i ]
  ret i8 %.sroa.018.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchINSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 524292
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !72
  %i.h = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %i.e, i64 noundef %i.g, i64 %1, i32 %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i1 [ false, %bb.b ], [ %i.h, %bb.c ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !71
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72
  %i.d = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef %i.a, i64 noundef %i.c, i64 %1, i32 %2, ptr noundef %3)
  %i.e = zext i1 %i.d to i8
  ret i8 %i.e
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIwSt11char_traitsIwEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = and i64 %1, 255                          ; 2 uses
  %i.b = icmp eq i64 %i.a, 19
  br i1 %i.b, label %bb.d, label %bb.b, !prof !54

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw i64 2, %i.a
  %i.d = and i64 %i.c, 524292
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !54

bb.c:                                             ; preds = %bb.b
  %.sroa.04.0.copyload = load i64, ptr %0, align 8, !tbaa !56
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.25.0.copyload = load ptr, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !88
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr noundef readonly %.sroa.25.0.copyload, i64 noundef %.sroa.04.0.copyload, i64 %1, i32 %2, ptr noundef %3)
end_hunk_2
begin_hunk_3_@_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgEPKwmNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE:bb.a
  %i.ar = icmp ult i64 %i.aq, 257
  br i1 %i.ar, label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !97
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aq) #14
  br label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.d, %._crit_edge.thread, %bb.i, %bb.f, %.noexc38, %bb.j
  %.3 = phi i1 [ %i.ap, %bb.j ], [ true, %.noexc38 ], [ true, %bb.f ], [ true, %bb.i ], [ true, %._crit_edge.thread ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.at = load i64, ptr %i.b, align 8, !tbaa !56  ; 2 uses
  %i.au = icmp ult i64 %i.at, 257
  br i1 %i.au, label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41, label %bb.l

bb.l:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !97
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.at) #14
  br label %_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41

_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit41: ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_116ConvertStringArgESt17basic_string_viewIcSt11char_traitsIcEENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.3

_ZN4absl12lts_2026052610FixedArrayIcLm18446744073709551615ESaIcEED2Ev.exit: ; preds = %bb.k, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %lpad.loopexit.split-lp59
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @wcslen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEDnNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nofree readnone captures(none) %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = and i64 %1, 255
  %i.b = icmp eq i64 %i.a, 17
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !45
  %i.e = add i64 %i.d, 5
  store i64 %i.e, ptr %i.c, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.k = sub i64 %i.i, %i.j
  %.not.i.i.i = icmp ugt i64 %i.k, 5
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.j, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.q = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.p(ptr noundef %i.q, i64 %i.n, ptr nonnull %i.l), !inline_history !98
  store ptr %i.l, ptr %i.g, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !47
  %i.s = load ptr, ptr %3, align 8, !tbaa !48
  tail call void %i.r(ptr noundef %i.s, i64 5, ptr nonnull @.str.2), !inline_history !99
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.h, ptr noundef nonnull align 1 dereferenceable(5) @.str.2, i64 5, i1 false)
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !46
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  store ptr %i.u, ptr %i.g, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

bb.e:                                             ; preds = %bb.a
  %i.v = and i64 %1, 65280
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.310.0.extract.shift.i.i = lshr i64 %1, 32
  %.sroa.310.0.extract.trunc.i.i = trunc nuw i64 %.sroa.310.0.extract.shift.i.i to i32
  %i.x = and i64 %1, 256
  %i.y = icmp ne i64 %i.x, 0
  %i.z = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl15PutPaddedStringESt17basic_string_viewIcSt11char_traitsIcEEiib(ptr noundef nonnull align 8 dereferenceable(1056) %3, i64 0, ptr null, i32 noundef %.sroa.310.0.extract.trunc.i.i, i32 noundef %2, i1 noundef zeroext %i.y)
  %i.aa = zext i1 %i.z to i8
  br label %_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit

_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEPKcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %.sroa.018.0.i = phi i8 [ 1, %bb.e ], [ 1, %bb.c ], [ 1, %bb.d ], [ %i.aa, %bb.f ]
  ret i8 %.sroa.018.0.i
}

; Function Attrs: mustprogress uwtable
define dso_local noundef range(i8 0, 2) i8 @_ZN4absl12lts_2026052619str_format_internal17FormatConvertImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgIwEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %0, i64 %1, i32 %2, ptr noundef %3)
  %i.b = zext i1 %i.a to i8
  ret i8 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgINS0_6int128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i128 %0, i64 %1, i32 %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 17 uses
  store i64 %1, ptr %4, align 8
  %.sroa.223.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 %2, ptr %.sroa.223.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.a = trunc i64 %1 to i8
  switch i8 %i.a, label %bb.r [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.m
    i8 3, label %bb.m
    i8 18, label %bb.m
    i8 14, label %bb.q
    i8 10, label %bb.q
    i8 8, label %bb.q
    i8 12, label %bb.q
    i8 15, label %bb.q
    i8 11, label %bb.q
    i8 9, label %bb.q
    i8 13, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %1, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i128 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i128 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %1, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = trunc i128 %0 to i64
  %i.h = lshr i128 %0, 64
  %i.i = trunc nuw i128 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.5.0.i = phi i64 [ %i.i, %bb.e ], [ %i.u, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %i.g, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.j, %bb.e ], [ %i.n, %bb.f ]
  %i.k = trunc i64 %.sroa.0.0.i to i8
  %i.l = and i8 %i.k, 7
  %i.m = or disjoint i8 %i.l, 48
  %i.n = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  store i8 %i.m, ptr %i.n, align 1, !tbaa !35
  %i.o = zext i64 %.sroa.5.0.i to i128
  %i.p = shl nuw i128 %i.o, 64
  %i.q = zext i64 %.sroa.0.0.i to i128
  %i.r = or disjoint i128 %i.p, %i.q
  %i.s = lshr i128 %i.r, 3
  %i.t = trunc i128 %i.s to i64                   ; 2 uses
  %i.u = lshr i64 %.sroa.5.0.i, 3                 ; 2 uses
  %i.v = or i64 %i.u, %i.t
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit, label %bb.f, !llvm.loop !22

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit: ; preds = %bb.f
  store ptr %i.n, ptr %5, align 8, !tbaa !41
  %i.w = ptrtoint ptr %i.j to i64
  %i.x = ptrtoint ptr %i.n to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !42
  br label %bb.s

bb.g:                                             ; preds = %bb.a
  %i.aa = trunc i128 %0 to i64
  %i.ab = lshr i128 %0, 64
  %i.ac = trunc nuw i128 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i28 = phi i64 [ %i.ac, %bb.g ], [ %i.ap, %bb.h ] ; 2 uses
  %.sroa.0.0.i29 = phi i64 [ %i.aa, %bb.g ], [ %i.ao, %bb.h ] ; 2 uses
  %.0.i30 = phi ptr [ %i.ad, %bb.g ], [ %i.ae, %bb.h ] ; 2 uses
  %i.ae = getelementptr inbounds i8, ptr %.0.i30, i64 -2 ; 3 uses
  %i.af = shl i64 %.sroa.0.0.i29, 1
  %i.ag = and i64 %i.af, 510
  %i.ah = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2            ; 2 uses
  store i16 %i.ai, ptr %i.ae, align 2
  %i.aj = zext i64 %.sroa.5.0.i28 to i128
  %i.ak = shl nuw i128 %i.aj, 64
  %i.al = zext i64 %.sroa.0.0.i29 to i128
  %i.am = or disjoint i128 %i.ak, %i.al
  %i.an = lshr i128 %i.am, 8
  %i.ao = trunc i128 %i.an to i64                 ; 2 uses
  %i.ap = lshr i64 %.sroa.5.0.i28, 8              ; 2 uses
  %i.aq = or i64 %i.ap, %i.ao
  %.not.i31 = icmp eq i64 %i.aq, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, label %bb.h, !llvm.loop !23

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit: ; preds = %bb.h
  %i.ar = and i16 %i.ai, 255
  %i.as = icmp eq i16 %i.ar, 48
  %i.at = getelementptr inbounds i8, ptr %.0.i30, i64 -1
  %spec.select.i = select i1 %i.as, ptr %i.at, ptr %i.ae ; 3 uses
  store ptr %spec.select.i, ptr %5, align 8, !tbaa !41
  %i.au = ptrtoint ptr %i.ad to i64
  %i.av = ptrtoint ptr %spec.select.i to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !42
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.ay = trunc i128 %0 to i64
  %i.az = lshr i128 %0, 64
  %i.ba = trunc nuw i128 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.5.0.i32 = phi i64 [ %i.ba, %bb.i ], [ %i.bm, %bb.j ] ; 2 uses
  %.sroa.0.0.i33 = phi i64 [ %i.ay, %bb.i ], [ %i.bl, %bb.j ] ; 2 uses
  %.0.i34 = phi ptr [ %i.bb, %bb.i ], [ %i.bf, %bb.j ]
  %i.bc = and i64 %.sroa.0.0.i33, 15
  %i.bd = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !35
  %i.bf = getelementptr inbounds i8, ptr %.0.i34, i64 -1 ; 5 uses
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !35
  %i.bg = zext i64 %.sroa.5.0.i32 to i128
  %i.bh = shl nuw i128 %i.bg, 64
  %i.bi = zext i64 %.sroa.0.0.i33 to i128
  %i.bj = or disjoint i128 %i.bh, %i.bi
  %i.bk = lshr i128 %i.bj, 4
  %i.bl = trunc i128 %i.bk to i64                 ; 2 uses
  %i.bm = lshr i64 %.sroa.5.0.i32, 4              ; 2 uses
  %i.bn = or i64 %i.bm, %i.bl
  %.not.i35 = icmp eq i64 %i.bn, 0
  br i1 %.not.i35, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, label %bb.j, !llvm.loop !24

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit: ; preds = %bb.j
  store ptr %i.bf, ptr %5, align 8, !tbaa !41
  %i.bo = ptrtoint ptr %i.bb to i64
  %i.bp = ptrtoint ptr %i.bf to i64
  %i.bq = sub i64 %i.bo, %i.bp                    ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.bq, ptr %i.br, align 8, !tbaa !42
  br label %bb.s

bb.k:                                             ; preds = %bb.a
  %i.bs = trunc i128 %0 to i64
  %i.bt = lshr i128 %0, 64
  %i.bu = trunc nuw i128 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i = phi i64 [ %i.bs, %bb.k ], [ %i.ce, %bb.l ]
  %.sroa.5.0.i36 = phi i64 [ %i.bu, %bb.k ], [ %i.cg, %bb.l ]
  %.0.i37 = phi ptr [ %i.bv, %bb.k ], [ %i.bw, %bb.l ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %.0.i37, i64 -2 ; 4 uses
  %i.bx = zext i64 %.sroa.5.0.i36 to i128
  %i.by = shl nuw i128 %i.bx, 64
  %i.bz = zext i64 %.sroa.011.0.i to i128
  %i.ca = or disjoint i128 %i.by, %i.bz
  %.frozen = freeze i128 %i.ca                    ; 2 uses
  %i.cb = udiv i128 %.frozen, 100                 ; 3 uses
  %i.cc = mul i128 %i.cb, 100
  %.decomposed = sub i128 %.frozen, %i.cc
  %i.cd = trunc nuw nsw i128 %.decomposed to i32
  call void @_ZN4absl12lts_2026052616numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.cd, ptr noundef nonnull %i.bw)
  %i.ce = trunc i128 %i.cb to i64                 ; 2 uses
  %i.cf = lshr i128 %i.cb, 64                     ; 2 uses
  %i.cg = trunc nuw nsw i128 %i.cf to i64
  %.not.i.i = icmp ne i64 %i.ce, 0
  %i.ch = icmp ne i128 %i.cf, 0
  %i.ci = or i1 %.not.i.i, %i.ch
  br i1 %i.ci, label %bb.l, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, !llvm.loop !25

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit: ; preds = %bb.l
  %i.cj = load i8, ptr %i.bw, align 1, !tbaa !35
  %i.ck = icmp eq i8 %i.cj, 48
  %i.cl = getelementptr inbounds i8, ptr %.0.i37, i64 -1
  %spec.select.i38 = select i1 %i.ck, ptr %i.cl, ptr %i.bw ; 3 uses
  %i.cm = ptrtoint ptr %i.bv to i64
  %i.cn = ptrtoint ptr %spec.select.i38 to i64
  %i.co = sub i64 %i.cm, %i.cn                    ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !42
  store ptr %spec.select.i38, ptr %5, align 8, !tbaa !41
  br label %bb.s

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.cq = lshr i128 %0, 64
  %i.cr = trunc nuw i128 %i.cq to i64             ; 2 uses
  %i.cs = icmp slt i128 %0, 0                     ; 3 uses
  %i.ct = and i128 %0, 18446744073709551615
  %i.cu = sub nsw i128 0, %i.ct                   ; 2 uses
  %i.cv = lshr i128 %i.cu, 64
  %.tr.i.i = trunc nuw i128 %i.cv to i64
  %.narrow.i.i = sub i64 %.tr.i.i, %i.cr
  %.sroa.010.0.v.i = select i1 %i.cs, i128 %i.cu, i128 %0
  %.sroa.010.0.i = trunc i128 %.sroa.010.0.v.i to i64
  %.sroa.6.0.i = select i1 %i.cs, i64 %.narrow.i.i, i64 %i.cr
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 60 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.0.i.i = phi i64 [ %.sroa.010.0.i, %bb.m ], [ %i.df, %bb.n ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.6.0.i, %bb.m ], [ %i.dh, %bb.n ]
  %.0.i.i = phi ptr [ %i.cw, %bb.m ], [ %i.cx, %bb.n ] ; 3 uses
  %i.cx = getelementptr inbounds i8, ptr %.0.i.i, i64 -2 ; 5 uses
  %i.cy = zext i64 %.sroa.5.0.i.i to i128
  %i.cz = shl nuw i128 %i.cy, 64
  %i.da = zext i64 %.sroa.011.0.i.i to i128
  %i.db = or disjoint i128 %i.cz, %i.da
  %.frozen88 = freeze i128 %i.db                  ; 2 uses
  %i.dc = udiv i128 %.frozen88, 100               ; 3 uses
  %i.dd = mul i128 %i.dc, 100
  %.decomposed89 = sub i128 %.frozen88, %i.dd
  %i.de = trunc nuw nsw i128 %.decomposed89 to i32
  call void @_ZN4absl12lts_2026052616numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.de, ptr noundef nonnull %i.cx)
  %i.df = trunc i128 %i.dc to i64                 ; 2 uses
  %i.dg = lshr i128 %i.dc, 64                     ; 2 uses
  %i.dh = trunc nuw nsw i128 %i.dg to i64
  %.not.i.i.i = icmp ne i64 %i.df, 0
  %i.di = icmp ne i128 %i.dg, 0
  %i.dj = or i1 %.not.i.i.i, %i.di
  br i1 %i.dj, label %bb.n, label %bb.o, !llvm.loop !25

bb.o:                                             ; preds = %bb.n
  %i.dk = load i8, ptr %i.cx, align 1, !tbaa !35
  %i.dl = icmp eq i8 %i.dk, 48                    ; 2 uses
  %i.dm = getelementptr inbounds i8, ptr %.0.i.i, i64 -1
  %spec.select.i.i = select i1 %i.dl, ptr %i.dm, ptr %i.cx
  br i1 %i.cs, label %bb.p, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit

bb.p:                                             ; preds = %bb.o
  %.sroa.gep65 = getelementptr inbounds i8, ptr %.0.i.i, i64 -3
  %spec.select.i.i.sroa.sel.v.sroa.sel = select i1 %i.dl, ptr %i.cx, ptr %.sroa.gep65 ; 2 uses
  store i8 45, ptr %spec.select.i.i.sroa.sel.v.sroa.sel, align 1, !tbaa !35
  br label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit: ; preds = %bb.o, %bb.p
  %.2.i.i = phi ptr [ %spec.select.i.i.sroa.sel.v.sroa.sel, %bb.p ], [ %spec.select.i.i, %bb.o ] ; 3 uses
  %i.dn = ptrtoint ptr %i.cw to i64
  %i.do = ptrtoint ptr %.2.i.i to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !42
  store ptr %.2.i.i, ptr %5, align 8, !tbaa !41
  br label %bb.s

bb.q:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.dr = sitofp i128 %0 to double
  %i.ds = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.dr, ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.r:                                             ; preds = %bb.a
  unreachable

bb.s:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit
  %.val25 = phi i64 [ %i.dp, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit ], [ %i.co, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.bq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %i.aw, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.y, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 7 uses
  %.val = phi ptr [ %.2.i.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_6int128E.exit ], [ %spec.select.i38, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.bf, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.n, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 3 uses
  %i.dt = and i64 %1, 65280
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.dv = icmp eq i64 %.val25, 0
  br i1 %i.dv, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !45
  %i.dy = add i64 %i.dx, %.val25
  store i64 %i.dy, ptr %i.dw, align 8, !tbaa !45
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 1056
  %i.ea = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !46 ; 2 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64               ; 2 uses
  %i.ee = sub i64 %i.ec, %i.ed
  %.not.i39 = icmp ult i64 %.val25, %i.ee
  br i1 %.not.i39, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.eg = ptrtoint ptr %i.ef to i64
  %i.eh = sub i64 %i.ed, %i.eg
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !47
  %i.ek = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.ej(ptr noundef %i.ek, i64 %i.eh, ptr nonnull %i.ef), !inline_history !2
  store ptr %i.ef, ptr %i.ea, align 8, !tbaa !46
  %i.el = load ptr, ptr %i.ei, align 8, !tbaa !47
  %i.em = load ptr, ptr %3, align 8, !tbaa !48
  call void %i.el(ptr noundef %i.em, i64 %.val25, ptr nonnull %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eb, ptr nonnull align 1 %.val, i64 %.val25, i1 false)
  %i.en = load ptr, ptr %i.ea, align 8, !tbaa !46
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 %.val25
  store ptr %i.eo, ptr %i.ea, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.x:                                             ; preds = %bb.s
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %.val, i64 %.val25, i64 %1, i32 %2, ptr noundef %3)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.w, %bb.v, %bb.t, %bb.c, %bb.d, %bb.x, %bb.q
  %.0 = phi i1 [ %i.ds, %bb.q ], [ true, %bb.d ], [ true, %bb.x ], [ %i.e, %bb.c ], [ true, %bb.t ], [ true, %bb.v ], [ true, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal13ConvertIntArgINS0_7uint128EEEbT_NS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i64 %0, i64 %1, i64 %2, i32 %3, ptr noundef %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.absl::lts_20260526::str_format_internal::FormatConversionSpecImpl", align 8 ; 3 uses
  %6 = alloca %"class.absl::lts_20260526::str_format_internal::(anonymous namespace)::IntDigits", align 8 ; 17 uses
  store i64 %2, ptr %5, align 8
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %3, ptr %.sroa.228.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.a = trunc i64 %2 to i8
  switch i8 %i.a, label %bb.p [
    i8 0, label %bb.b
    i8 4, label %bb.e
    i8 6, label %bb.g
    i8 7, label %bb.i
    i8 5, label %bb.k
    i8 2, label %bb.m
    i8 3, label %bb.m
    i8 18, label %bb.m
    i8 14, label %bb.o
    i8 10, label %bb.o
    i8 8, label %bb.o
    i8 12, label %bb.o
    i8 15, label %bb.o
    i8 11, label %bb.o
    i8 9, label %bb.o
    i8 13, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 16711680
  %i.c = icmp eq i64 %i.b, 131072
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = trunc i64 %0 to i32
  %i.e = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_117ConvertWCharTImplEwNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i32 noundef signext %i.d, i64 %2, i32 %3, ptr noundef %4)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.d:                                             ; preds = %bb.b
  %i.f = trunc i64 %0 to i8
  tail call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_115ConvertCharImplEcNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(i8 noundef signext %i.f, i64 %2, ptr noundef %4)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.e:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.5.0.i = phi i64 [ %1, %bb.e ], [ %i.r, %bb.f ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %0, %bb.e ], [ %i.q, %bb.f ] ; 2 uses
  %.0.i = phi ptr [ %i.g, %bb.e ], [ %i.k, %bb.f ]
  %i.h = trunc i64 %.sroa.0.0.i to i8
  %i.i = and i8 %i.h, 7
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds i8, ptr %.0.i, i64 -1 ; 5 uses
  store i8 %i.j, ptr %i.k, align 1, !tbaa !35
  %i.l = zext i64 %.sroa.5.0.i to i128
  %i.m = shl nuw i128 %i.l, 64
  %i.n = zext i64 %.sroa.0.0.i to i128
  %i.o = or disjoint i128 %i.m, %i.n
  %i.p = lshr i128 %i.o, 3
  %i.q = trunc i128 %i.p to i64                   ; 2 uses
  %i.r = lshr i64 %.sroa.5.0.i, 3                 ; 2 uses
  %i.s = or i64 %i.r, %i.q
  %.not.i = icmp eq i64 %i.s, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit, label %bb.f, !llvm.loop !22

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit: ; preds = %bb.f
  store ptr %i.k, ptr %6, align 8, !tbaa !41
  %i.t = ptrtoint ptr %i.g to i64
  %i.u = ptrtoint ptr %i.k to i64
  %i.v = sub i64 %i.t, %i.u                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.v, ptr %i.w, align 8, !tbaa !42
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %.sroa.5.0.i33 = phi i64 [ %1, %bb.g ], [ %i.aj, %bb.h ] ; 2 uses
  %.sroa.0.0.i34 = phi i64 [ %0, %bb.g ], [ %i.ai, %bb.h ] ; 2 uses
  %.0.i35 = phi ptr [ %i.x, %bb.g ], [ %i.y, %bb.h ] ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %.0.i35, i64 -2 ; 3 uses
  %i.z = shl i64 %.sroa.0.0.i34, 1
  %i.aa = and i64 %i.z, 510
  %i.ab = getelementptr inbounds nuw i8, ptr @_ZN4absl12lts_2026052616numbers_internal9kHexTableE, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2            ; 2 uses
  store i16 %i.ac, ptr %i.y, align 2
  %i.ad = zext i64 %.sroa.5.0.i33 to i128
  %i.ae = shl nuw i128 %i.ad, 64
  %i.af = zext i64 %.sroa.0.0.i34 to i128
  %i.ag = or disjoint i128 %i.ae, %i.af
  %i.ah = lshr i128 %i.ag, 8
  %i.ai = trunc i128 %i.ah to i64                 ; 2 uses
  %i.aj = lshr i64 %.sroa.5.0.i33, 8              ; 2 uses
  %i.ak = or i64 %i.aj, %i.ai
  %.not.i36 = icmp eq i64 %i.ak, 0
  br i1 %.not.i36, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, label %bb.h, !llvm.loop !23

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit: ; preds = %bb.h
  %i.al = and i16 %i.ac, 255
  %i.am = icmp eq i16 %i.al, 48
  %i.an = getelementptr inbounds i8, ptr %.0.i35, i64 -1
  %spec.select.i = select i1 %i.am, ptr %i.an, ptr %i.y ; 3 uses
  store ptr %spec.select.i, ptr %6, align 8, !tbaa !41
  %i.ao = ptrtoint ptr %i.x to i64
  %i.ap = ptrtoint ptr %spec.select.i to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !42
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.5.0.i37 = phi i64 [ %1, %bb.i ], [ %i.bd, %bb.j ] ; 2 uses
  %.sroa.0.0.i38 = phi i64 [ %0, %bb.i ], [ %i.bc, %bb.j ] ; 2 uses
  %.0.i39 = phi ptr [ %i.as, %bb.i ], [ %i.aw, %bb.j ]
  %i.at = and i64 %.sroa.0.0.i38, 15
  %i.au = getelementptr inbounds nuw i8, ptr @.str.8, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !35
  %i.aw = getelementptr inbounds i8, ptr %.0.i39, i64 -1 ; 5 uses
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !35
  %i.ax = zext i64 %.sroa.5.0.i37 to i128
  %i.ay = shl nuw i128 %i.ax, 64
  %i.az = zext i64 %.sroa.0.0.i38 to i128
  %i.ba = or disjoint i128 %i.ay, %i.az
  %i.bb = lshr i128 %i.ba, 4
  %i.bc = trunc i128 %i.bb to i64                 ; 2 uses
  %i.bd = lshr i64 %.sroa.5.0.i37, 4              ; 2 uses
  %i.be = or i64 %i.bd, %i.bc
  %.not.i40 = icmp eq i64 %i.be, 0
  br i1 %.not.i40, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, label %bb.j, !llvm.loop !24

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit: ; preds = %bb.j
  store ptr %i.aw, ptr %6, align 8, !tbaa !41
  %i.bf = ptrtoint ptr %i.as to i64
  %i.bg = ptrtoint ptr %i.aw to i64
  %i.bh = sub i64 %i.bf, %i.bg                    ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.bh, ptr %i.bi, align 8, !tbaa !42
  br label %bb.q

bb.k:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.sroa.011.0.i = phi i64 [ %0, %bb.k ], [ %i.bs, %bb.l ]
  %.sroa.5.0.i41 = phi i64 [ %1, %bb.k ], [ %i.bu, %bb.l ]
  %.0.i42 = phi ptr [ %i.bj, %bb.k ], [ %i.bk, %bb.l ] ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %.0.i42, i64 -2 ; 4 uses
  %i.bl = zext i64 %.sroa.5.0.i41 to i128
  %i.bm = shl nuw i128 %i.bl, 64
  %i.bn = zext i64 %.sroa.011.0.i to i128
  %i.bo = or disjoint i128 %i.bm, %i.bn
  %.frozen = freeze i128 %i.bo                    ; 2 uses
  %i.bp = udiv i128 %.frozen, 100                 ; 3 uses
  %i.bq = mul i128 %i.bp, 100
  %.decomposed = sub i128 %.frozen, %i.bq
  %i.br = trunc nuw nsw i128 %.decomposed to i32
  call void @_ZN4absl12lts_2026052616numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.br, ptr noundef nonnull %i.bk)
  %i.bs = trunc i128 %i.bp to i64                 ; 2 uses
  %i.bt = lshr i128 %i.bp, 64                     ; 2 uses
  %i.bu = trunc nuw nsw i128 %i.bt to i64
  %.not.i.i = icmp ne i64 %i.bs, 0
  %i.bv = icmp ne i128 %i.bt, 0
  %i.bw = or i1 %.not.i.i, %i.bv
  br i1 %i.bw, label %bb.l, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, !llvm.loop !25

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit: ; preds = %bb.l
  %i.bx = load i8, ptr %i.bk, align 1, !tbaa !35
  %i.by = icmp eq i8 %i.bx, 48
  %i.bz = getelementptr inbounds i8, ptr %.0.i42, i64 -1
  %spec.select.i43 = select i1 %i.by, ptr %i.bz, ptr %i.bk ; 3 uses
  %i.ca = ptrtoint ptr %i.bj to i64
  %i.cb = ptrtoint ptr %spec.select.i43 to i64
  %i.cc = sub i64 %i.ca, %i.cb                    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cc, ptr %i.cd, align 8, !tbaa !42
  store ptr %spec.select.i43, ptr %6, align 8, !tbaa !41
  br label %bb.q

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 60 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.sroa.011.0.i44 = phi i64 [ %0, %bb.m ], [ %i.cn, %bb.n ]
  %.sroa.5.0.i45 = phi i64 [ %1, %bb.m ], [ %i.cp, %bb.n ]
  %.0.i46 = phi ptr [ %i.ce, %bb.m ], [ %i.cf, %bb.n ] ; 2 uses
  %i.cf = getelementptr inbounds i8, ptr %.0.i46, i64 -2 ; 4 uses
  %i.cg = zext i64 %.sroa.5.0.i45 to i128
  %i.ch = shl nuw i128 %i.cg, 64
  %i.ci = zext i64 %.sroa.011.0.i44 to i128
  %i.cj = or disjoint i128 %i.ch, %i.ci
  %.frozen95 = freeze i128 %i.cj                  ; 2 uses
  %i.ck = udiv i128 %.frozen95, 100               ; 3 uses
  %i.cl = mul i128 %i.ck, 100
  %.decomposed96 = sub i128 %.frozen95, %i.cl
  %i.cm = trunc nuw nsw i128 %.decomposed96 to i32
  call void @_ZN4absl12lts_2026052616numbers_internal12PutTwoDigitsEjPc(i32 noundef %i.cm, ptr noundef nonnull %i.cf)
  %i.cn = trunc i128 %i.ck to i64                 ; 2 uses
  %i.co = lshr i128 %i.ck, 64                     ; 2 uses
  %i.cp = trunc nuw nsw i128 %i.co to i64
  %.not.i.i47 = icmp ne i64 %i.cn, 0
  %i.cq = icmp ne i128 %i.co, 0
  %i.cr = or i1 %.not.i.i47, %i.cq
  br i1 %i.cr, label %bb.n, label %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49, !llvm.loop !25

_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49: ; preds = %bb.n
  %i.cs = load i8, ptr %i.cf, align 1, !tbaa !35
  %i.ct = icmp eq i8 %i.cs, 48
  %i.cu = getelementptr inbounds i8, ptr %.0.i46, i64 -1
  %spec.select.i48 = select i1 %i.ct, ptr %i.cu, ptr %i.cf ; 3 uses
  %i.cv = ptrtoint ptr %i.ce to i64
  %i.cw = ptrtoint ptr %spec.select.i48 to i64
  %i.cx = sub i64 %i.cv, %i.cw                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !42
  store ptr %spec.select.i48, ptr %6, align 8, !tbaa !41
  br label %bb.q

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.cz = uitofp i64 %0 to double
  %i.da = uitofp i64 %1 to double
  %i.db = tail call noundef double @llvm.fmuladd.f64(double %i.da, double f0x43F0000000000000, double %i.cz)
  %i.dc = call noundef zeroext i1 @_ZN4absl12lts_2026052619str_format_internal16ConvertFloatImplEdRKNS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(double noundef %i.db, ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef %4)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.p:                                             ; preds = %bb.a
  unreachable

bb.q:                                             ; preds = %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit
  %.val30 = phi i64 [ %i.cx, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49 ], [ %i.cc, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.bh, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %i.aq, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.v, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 7 uses
  %.val = phi ptr [ %spec.select.i48, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit49 ], [ %spec.select.i43, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsDecENS0_7uint128Eb.exit ], [ %i.aw, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexUpperINS0_7uint128EEEvT_.exit ], [ %spec.select.i, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits15PrintAsHexLowerINS0_7uint128EEEvT_.exit ], [ %i.k, %_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_19IntDigits10PrintAsOctINS0_7uint128EEEvT_.exit ] ; 3 uses
  %i.dd = and i64 %2, 65280
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.r, label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.df = icmp eq i64 %.val30, 0
  br i1 %i.df, label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !45
  %i.di = add i64 %i.dh, %.val30
  store i64 %i.di, ptr %i.dg, align 8, !tbaa !45
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 1056
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !46 ; 2 uses
  %i.dm = ptrtoint ptr %i.dj to i64
  %i.dn = ptrtoint ptr %i.dl to i64               ; 2 uses
  %i.do = sub i64 %i.dm, %i.dn
  %.not.i50 = icmp ult i64 %.val30, %i.do
  br i1 %.not.i50, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = sub i64 %i.dn, %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !47
  %i.du = load ptr, ptr %4, align 8, !tbaa !48
  call void %i.dt(ptr noundef %i.du, i64 %i.dr, ptr nonnull %i.dp), !inline_history !2
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !46
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !47
  %i.dw = load ptr, ptr %4, align 8, !tbaa !48
  call void %i.dv(ptr noundef %i.dw, i64 %.val30, ptr nonnull %.val), !inline_history !3
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.dl, ptr nonnull align 1 %.val, i64 %.val30, i1 false)
  %i.dx = load ptr, ptr %i.dk, align 8, !tbaa !46
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 %.val30
  store ptr %i.dy, ptr %i.dk, align 8, !tbaa !46
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

bb.v:                                             ; preds = %bb.q
  call fastcc void @_ZN4absl12lts_2026052619str_format_internal12_GLOBAL__N_123ConvertIntImplInnerSlowERKNS2_9IntDigitsENS1_24FormatConversionSpecImplEPNS1_14FormatSinkImplE(ptr nonnull %.val, i64 %.val30, i64 %2, i32 %3, ptr noundef %4)
  br label %_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit

_ZN4absl12lts_2026052619str_format_internal14FormatSinkImpl6AppendESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %bb.u, %bb.t, %bb.r, %bb.c, %bb.d, %bb.v, %bb.o
  %.0 = phi i1 [ %i.dc, %bb.o ], [ true, %bb.d ], [ true, %bb.v ], [ %i.e, %bb.c ], [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
end_hunk_3
