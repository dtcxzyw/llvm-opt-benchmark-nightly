Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/OlympusDecompressor?download=true
inline.NumInlined: 353
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed19OlympusDecompressorC2ENS_8RawImageE(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef align 8 captures(none) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !109
  store ptr null, ptr %i.b, align 8, !tbaa !16
  store <2 x ptr> %i.c, ptr %0, align 8, !tbaa !109
  store ptr null, ptr %1, align 8, !tbaa !19
  %i.d = load ptr, ptr %0, align 8, !tbaa !19     ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 592
  %i.f = load i32, ptr %i.e, align 8, !tbaa !90
  %.not = icmp eq i32 %i.f, 1
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 553
  %i.h = load i8, ptr %i.g, align 1, !tbaa !110
  %.not2 = icmp eq i8 %i.h, 0
  br i1 %.not2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 596
  %i.j = load i32, ptr %i.i, align 4, !tbaa !111
  %.not3 = icmp eq i32 %i.j, 2
  br i1 %.not3, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19OlympusDecompressorC2ENS_8RawImageE) #14
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.i, %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #19
  resume { ptr, i32 } %i.k

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.m = load i32, ptr %i.l, align 8, !tbaa !112  ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.p = load i32, ptr %i.o, align 4              ; 4 uses
  %i.q = icmp sgt i32 %i.p, 0
  %i.r = select i1 %i.n, i1 %i.q, i1 false
  %i.s = and i32 %i.m, 1
  %.not4 = icmp eq i32 %i.s, 0
  %or.cond7 = and i1 %.not4, %i.r
  br i1 %or.cond7, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.not5 = trunc i32 %i.p to i1
  %i.t = icmp samesign ugt i32 %i.m, 10400
  %or.cond = or i1 %i.t, %.not5
  %i.u = icmp samesign ugt i32 %i.p, 7792
  %or.cond6 = or i1 %i.u, %or.cond
  br i1 %or.cond6, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed19OlympusDecompressorC2ENS_8RawImageE, i32 noundef %i.m, i32 noundef %i.p) #14
          to label %bb.j unwind label %bb.f

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.h
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr hidden void @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef %0, ...) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.va_start.p0(ptr nonnull %1)
  %i.a = call align 1 ptr @llvm.threadlocal.address.p0(ptr align 1 @_ZZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKczE3buf) ; 3 uses
  %i.b = call i32 @vsnprintf(ptr noundef nonnull %i.a, i64 noundef 8192, ptr noundef %0, ptr noundef nonnull %1) #19 ; 0 uses
  call void @llvm.va_end.p0(ptr nonnull %1)
  call void (i32, ptr, ...) @_ZN8rawspeed8writeLogENS_10DEBUG_PRIOEPKcz(i32 noundef 65536, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a)
  %i.c = call ptr @__cxa_allocate_exception(i64 16) #19 ; 3 uses
  invoke void @_ZN8rawspeed19RawDecoderExceptionCI2NS_17RawspeedExceptionEEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN8rawspeed19RawDecoderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #20
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !92
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !93
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !call_target !100, !inline_history !113
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !95
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19, !call_target !102, !inline_history !113
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !105

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #19
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK8rawspeed19OlympusDecompressor10decompressERKNS_10ByteStreamE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.i.i38.i.i = alloca i32, align 4        ; 10 uses
  %.sroa.0.i.i.i.i = alloca i32, align 4          ; 10 uses
  %2 = alloca %"class.rawspeed::(anonymous namespace)::OlympusDecompressorImpl", align 8 ; 11 uses
  %3 = alloca %"class.rawspeed::RawImage", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.a = load ptr, ptr %0, align 8, !tbaa !19     ; 3 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 4 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !16
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !104
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !104
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load ptr, ptr %3, align 8, !tbaa !19
  %.pre21 = load ptr, ptr %i.b, align 8, !tbaa !16
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %bb.a, %bb.c, %bb.d
  %i.j = phi ptr [ null, %bb.a ], [ %i.d, %bb.c ], [ %.pre21, %bb.d ]
  %i.k = phi ptr [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %.pre, %bb.d ]
  store ptr %i.k, ptr %2, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !16
  store ptr %i.j, ptr %i.l, align 8, !tbaa !16
  store ptr null, ptr %3, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, i8 0, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.p = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znwm(i64 noundef 4096) #21
          to label %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i: ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  store ptr %i.p, ptr %i.m, align 8, !tbaa !107
  store ptr %i.p, ptr %i.o, align 8, !tbaa !122
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4096 ; 2 uses
  store ptr %i.q, ptr %i.n, align 8, !tbaa !108
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i
  %.val.val.i.i.i = phi ptr [ %i.p, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ], [ %.val5, %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i ] ; 6 uses
  %i.r = phi ptr [ %i.q, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ], [ %i.am, %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i ] ; 4 uses
  %.val.val3.i.i.i = phi ptr [ %i.p, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ], [ %i.an, %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i ] ; 3 uses
  %.06.i.i.i = phi i32 [ 4096, %_ZNSt12_Vector_baseIaSaIaEE13_M_deallocateEPam.exit.i.i.i ], [ %i.ao, %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i ]
  %i.s = ptrtoint ptr %.val.val3.i.i.i to i64
  %i.t = ptrtoint ptr %.val.val.i.i.i to i64      ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 false)
  %i.w = trunc nuw nsw i64 %i.v to i8
  %i.x = add nsw i8 %i.w, -52                     ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %.val.val3.i.i.i, %i.r
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.x, ptr %.val.val3.i.i.i, align 1, !tbaa !103
  %i.y = load ptr, ptr %i.o, align 8, !tbaa !122
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.z, ptr %i.o, align 8, !tbaa !122
  %.pre7.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !108
  %.val.val.i.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !107
  br label %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.aa, %i.t                     ; 8 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775807
  br i1 %i.ac, label %bb.h, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #20
          to label %.noexc4.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp

.noexc4.i.i:                                      ; preds = %bb.h
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 1)
  %i.ad = add i64 %.sroa.speculated.i.i.i.i.i.i.i.i, %i.ab ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 9223372036854775807)
  %i.ag = select i1 %i.ae, i64 9223372036854775807, i64 %i.af ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i)
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #21
          to label %.noexc5.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit ; 5 uses

.noexc5.i.i:                                      ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab ; 2 uses
  store i8 %i.x, ptr %i.ai, align 1, !tbaa !103
  %i.aj = icmp sgt i64 %i.ab, 0
  br i1 %i.aj, label %bb.i, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i

bb.i:                                             ; preds = %.noexc5.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %.val.val.i.i.i, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i: ; preds = %bb.i, %.noexc5.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1 ; 2 uses
  %.not.i17.i.i.i.i.i.i.i = icmp eq ptr %.val.val.i.i.i, null
  br i1 %.not.i17.i.i.i.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.val.i.i.i, i64 noundef %i.ab) #22
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i: ; preds = %bb.j, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i.i.i
  store ptr %i.ah, ptr %i.m, align 8, !tbaa !107
  store ptr %i.ak, ptr %i.o, align 8, !tbaa !122
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag ; 2 uses
  store ptr %i.al, ptr %i.n, align 8, !tbaa !108
  br label %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i

_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i: ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i, %bb.f
  %.val5 = phi ptr [ %.val.val.i.pre.i.i, %bb.f ], [ %i.ah, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i ] ; 7 uses
  %i.am = phi ptr [ %.pre7.i.i.i, %bb.f ], [ %i.al, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i ] ; 2 uses
  %i.an = phi ptr [ %i.z, %bb.f ], [ %i.ak, %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i.i.i ]
  %i.ao = add nsw i32 %.06.i.i.i, -1              ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i.i.i, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit, label %bb.e, !llvm.loop !114

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit: ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %_ZN8rawspeed8RawImageC2ERKS0_.exit
  %i.ap = phi ptr [ %i.r, %bb.h ], [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ]
  %i.aq = phi ptr [ %.val.val.i.i.i, %bb.h ], [ null, %_ZN8rawspeed8RawImageC2ERKS0_.exit ]
  %lpad.loopexit.split-lp19 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit
  %i.ar = phi ptr [ %i.r, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ %i.ap, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %i.as = phi ptr [ %.val.val.i.i.i, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ %i.aq, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ] ; 3 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp19, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp ]
  %.not.i.i.i.i.i6 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i.i6, label %.body.i, label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.av) #22
  br label %.body.i

.body.i:                                          ; preds = %bb.k, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(40) %2) #19
  br label %.body

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit: ; preds = %_ZNSt20back_insert_iteratorISt6vectorIaSaIaEEEaSEOa.exit.i.i.i
  %.sroa.015.0.copyload = load ptr, ptr %1, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i32, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.416.0.copyload = load i32, ptr %.sroa.416.0..sroa_idx, align 8 ; 3 uses
  %.val.a = load ptr, ptr %2, align 8, !tbaa !19  ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.a, i64 44
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !124 ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  tail call void @llvm.assume(i1 %i.ay)
  %i.az = icmp uge i32 %.sroa.2.0.copyload, %.sroa.416.0.copyload
  tail call void @llvm.assume(i1 %i.az)
  %i.ba = icmp sgt i32 %.sroa.2.0.copyload, -1
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = zext i32 %.sroa.416.0.copyload to i64
  %i.bc = sub nuw nsw i32 %.sroa.2.0.copyload, %.sroa.416.0.copyload ; 14 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.015.0.copyload, i64 %i.bb ; 8 uses
  %i.be = icmp samesign ult i32 %i.bc, 4
  br i1 %i.be, label %.invoke, label %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i

_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.a, i64 568
  %i.bg = getelementptr inbounds nuw i8, ptr %.val.a, i64 592
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !90, !noalias !125
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.a, i64 608
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !126, !noalias !125
  %i.bk = mul nsw i32 %i.bj, %i.bh                ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.val.a, i64 612
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !127, !noalias !125
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.a, i64 48
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !128, !noalias !125
  %i.bp = ashr i32 %i.bo, 1                       ; 3 uses
  %i.bq = icmp sge i32 %i.bp, %i.bk
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = icmp sgt i32 %i.bk, 0
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = and i32 %i.bk, 1
  %i.bt = icmp eq i32 %i.bs, 0
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = lshr exact i32 %i.bk, 1
  %i.bv = load ptr, ptr %i.bf, align 8, !tbaa !129, !noalias !130 ; 2 uses
  %i.bw = add nuw nsw i32 %i.bc, 8                ; 4 uses
  %i.bx = zext nneg i32 %i.bk to i64              ; 4 uses
  %.not235.i.i = icmp eq i32 %i.bk, 2
  %i.by = zext nneg i32 %i.bu to i64
  %i.bz = zext i32 %i.bp to i64
  %i.ca = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.cb = sext i32 %i.bp to i64
  %wide.trip.count.i = zext nneg i32 %i.ax to i64
  br label %bb.l

bb.l:                                             ; preds = %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i
  %indvars.iv.i = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %indvars.iv.next.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 5 uses
  %.sroa.4011.016.i = phi i32 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.4011.6.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 6 uses
  %.sroa.02.015.i = phi i64 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.02.2.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 2 uses
  %.sroa.19.014.i = phi i32 [ 0, %_ZN8rawspeed14BitStreamerMSBCI2NS_11BitStreamerIS0_NS_39BitStreamerForwardSequentialReplenisherIS0_EEEEENS_10Array1DRefIKSt4byteEE.exit.preheader.i ], [ %.sroa.19.1.i, %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i ] ; 5 uses
  %i.cc = icmp samesign ult i64 %indvars.iv.i, 2  ; 4 uses
  %i.cd = add nsw i64 %indvars.iv.i, -2           ; 2 uses
  %i.ce = icmp samesign ult i64 %i.cd, %i.ca      ; 4 uses
  %i.cf = mul nuw nsw i64 %i.cd, %i.cb
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.cf ; 6 uses
  %i.ch = icmp samesign ult i64 %indvars.iv.i, %i.ca
  %i.ci = mul nuw nsw i64 %indvars.iv.i, %i.bz
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.bv, i64 %i.ci ; 7 uses
  %i.ck = icmp samesign ult i32 %.sroa.19.014.i, 65
  tail call void @llvm.assume(i1 %i.ck)
  %i.cl = icmp sgt i32 %.sroa.4011.016.i, -1
  tail call void @llvm.assume(i1 %i.cl)
  %.not.i30.i.i = icmp samesign ult i32 %.sroa.19.014.i, 32
  br i1 %.not.i30.i.i, label %bb.m, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.cm = add nuw nsw i32 %.sroa.4011.016.i, 4    ; 2 uses
  %.not.i.i.i.i7 = icmp samesign ugt i32 %i.cm, %i.bc
  br i1 %.not.i.i.i.i7, label %bb.o, label %bb.n, !prof !105

bb.n:                                             ; preds = %bb.m
  %i.cn = zext nneg i32 %.sroa.4011.016.i to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.cn
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.cp = icmp samesign ugt i32 %.sroa.4011.016.i, %i.bw
  br i1 %i.cp, label %.invoke, label %bb.p, !prof !105

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %.sroa.4011.016.i) ; 3 uses
  %i.cq = add nuw nsw i32 %.sroa.speculated27.i.i.i.i.i, 4
  %.sroa.speculated.i.i.i.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.cq)
  %i.cr = sub nsw i32 %.sroa.speculated.i.i.i.i.i, %.sroa.speculated27.i.i.i.i.i ; 2 uses
  %i.cs = icmp samesign ult i32 %i.cr, 5
  tail call void @llvm.assume(i1 %i.cs)
  %i.ct = zext nneg i32 %.sroa.speculated27.i.i.i.i.i to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ct
  %i.cv = zext nneg i32 %i.cr to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.cu, i64 %i.cv, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i: ; preds = %bb.p, %bb.n
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.p ], [ %i.co, %bb.n ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.cw = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.i.i)
  %i.cx = zext i32 %i.cw to i64
  %i.cy = or disjoint i32 %.sroa.19.014.i, 32
  %i.cz = sub nuw nsw i32 32, %.sroa.19.014.i
  %i.da = zext nneg i32 %i.cz to i64
  %i.db = shl nuw i64 %i.cx, %i.da
  %i.dc = or i64 %i.db, %.sroa.02.015.i
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i, %bb.l
  %.sroa.4011.1.i = phi i32 [ %i.cm, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.4011.016.i, %bb.l ] ; 5 uses
  %i.dd = phi i64 [ %i.dc, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.02.015.i, %bb.l ] ; 3 uses
  %i.de = phi i32 [ %i.cy, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.i.i ], [ %.sroa.19.014.i, %bb.l ] ; 3 uses
  %i.df = lshr i64 %i.dd, 49                      ; 2 uses
  %i.dg = trunc nuw nsw i64 %i.df to i32          ; 2 uses
  %i.dh = lshr i32 %i.dg, 14
  %i.di = sub nsw i32 0, %i.dh
  %i.dj = and i64 %i.df, 4095
  %i.dk = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.dj
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !103 ; 3 uses
  %.not.i13.i.i = icmp eq i8 %i.dl, 12
  br i1 %.not.i13.i.i, label %bb.r, label %bb.q, !prof !105

bb.q:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.dm = sext i8 %i.dl to i32                    ; 2 uses
  %i.dn = add nsw i32 %i.dm, 4                    ; 3 uses
  %i.do = icmp slt i8 %i.dl, 29
  tail call void @llvm.assume(i1 %i.do)
  %i.dp = icmp samesign ule i32 %i.dn, %i.de
  tail call void @llvm.assume(i1 %i.dp)
  %i.dq = sub nuw nsw i32 %i.de, %i.dn
  %i.dr = zext nneg i32 %i.dn to i64
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i

bb.r:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.i.i
  %i.ds = lshr i64 %i.dd, 38
  %i.dt = trunc nuw nsw i64 %i.ds to i32
  %i.du = and i32 %i.dt, 2047
  %i.dv = add nsw i32 %i.de, -27
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i: ; preds = %bb.r, %bb.q
  %.sink.i.i = phi i32 [ %i.dv, %bb.r ], [ %i.dq, %bb.q ] ; 4 uses
  %.pn.i.i = phi i64 [ 27, %bb.r ], [ %i.dr, %bb.q ]
  %.0.i14.i.i = phi i32 [ %i.du, %bb.r ], [ %i.dm, %bb.q ]
  %storemerge.i.i = shl i64 %i.dd, %.pn.i.i       ; 2 uses
  %i.dw = shl nsw i32 %.0.i14.i.i, 4
  %i.dx = icmp samesign ugt i32 %.sink.i.i, 3
  tail call void @llvm.assume(i1 %i.dx)
  %i.dy = lshr i64 %storemerge.i.i, 60
  %i.dz = trunc nuw nsw i64 %i.dy to i32
  %i.ea = add nsw i32 %.sink.i.i, -4              ; 2 uses
  %i.eb = shl i64 %storemerge.i.i, 4              ; 2 uses
  %i.ec = or disjoint i32 %i.dw, %i.dz            ; 3 uses
  %i.ed = xor i32 %i.ec, %i.di                    ; 2 uses
  %i.ee = mul nsw i32 %i.ed, 3
  %i.ef = icmp slt i32 %i.ec, 17
  %spec.select.i.i = zext i1 %i.ef to i32
  %i.eg = lshr i32 %i.dg, 12
  %i.eh = and i32 %i.eg, 3
  %i.ei = shl nsw i32 %i.ed, 2
  %i.ej = or disjoint i32 %i.ei, %i.eh
  br i1 %i.cc, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i, label %bb.s

bb.s:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.ek = load i16, ptr %i.cg, align 2, !tbaa !132
  %i.el = zext i16 %i.ek to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i: ; preds = %bb.s, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i
  %.1.i.i.i = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.i.i ], [ %i.el, %bb.s ]
  %i.em = add nsw i32 %i.ej, %.1.i.i.i
  %i.en = trunc i32 %i.em to i16
  tail call void @llvm.assume(i1 %i.ch)
  store i16 %i.en, ptr %i.cj, align 2, !tbaa !132
  %.not.i30.1.i.i = icmp samesign ult i32 %.sink.i.i, 36
  br i1 %.not.i30.1.i.i, label %bb.t, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i

bb.t:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.eo = add nuw nsw i32 %.sroa.4011.1.i, 4      ; 2 uses
  %.not.i.i.1.i.i = icmp samesign ugt i32 %i.eo, %i.bc
  br i1 %.not.i.i.1.i.i, label %bb.v, label %bb.u, !prof !105

bb.u:                                             ; preds = %bb.t
  %i.ep = zext nneg i32 %.sroa.4011.1.i to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ep
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i

bb.v:                                             ; preds = %bb.t
  %i.er = icmp samesign ugt i32 %.sroa.4011.1.i, %i.bw
  br i1 %i.er, label %.invoke, label %bb.w, !prof !105

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %.sroa.0.i.i.i.i, align 4
  %.sroa.speculated27.i.i.i.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %.sroa.4011.1.i) ; 3 uses
  %i.es = add nuw nsw i32 %.sroa.speculated27.i.i.i.1.i.i, 4
  %.sroa.speculated.i.i.i.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.es)
  %i.et = sub nsw i32 %.sroa.speculated.i.i.i.1.i.i, %.sroa.speculated27.i.i.i.1.i.i ; 2 uses
  %i.eu = icmp samesign ult i32 %i.et, 5
  tail call void @llvm.assume(i1 %i.eu)
  %i.ev = zext nneg i32 %.sroa.speculated27.i.i.i.1.i.i to i64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ev
  %i.ex = zext nneg i32 %i.et to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i.i.i, ptr align 1 %i.ew, i64 %i.ex, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i: ; preds = %bb.w, %bb.u
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.1.i.i = phi ptr [ %.sroa.0.i.i.i.i, %bb.w ], [ %i.eq, %bb.u ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.1.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i.1.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i)
  %i.ey = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i.1.i.i)
  %i.ez = zext i32 %i.ey to i64
  %i.fa = or disjoint i32 %i.ea, 32
  %i.fb = sub nuw nsw i32 36, %.sink.i.i
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = shl nuw i64 %i.ez, %i.fc
  %i.fe = or i64 %i.fd, %i.eb
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i
  %.sroa.4011.2.i = phi i32 [ %i.eo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %.sroa.4011.1.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.ff = phi i64 [ %i.fe, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %i.eb, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.fg = phi i32 [ %i.fa, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i.1.i.i ], [ %i.ea, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.i.i ] ; 3 uses
  %i.fh = lshr i64 %i.ff, 49                      ; 2 uses
  %i.fi = trunc nuw nsw i64 %i.fh to i32          ; 2 uses
  %i.fj = lshr i32 %i.fi, 14
  %i.fk = sub nsw i32 0, %i.fj
  %i.fl = and i64 %i.fh, 4095
  %i.fm = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !103 ; 3 uses
  %.not.i13.1.i.i = icmp eq i8 %i.fn, 12
  br i1 %.not.i13.1.i.i, label %bb.y, label %bb.x, !prof !105

bb.x:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i
  %i.fo = sext i8 %i.fn to i32                    ; 2 uses
  %i.fp = add nsw i32 %i.fo, 4                    ; 3 uses
  %i.fq = icmp slt i8 %i.fn, 29
  tail call void @llvm.assume(i1 %i.fq)
  %i.fr = icmp samesign ule i32 %i.fp, %i.fg
  tail call void @llvm.assume(i1 %i.fr)
  %i.fs = sub nuw nsw i32 %i.fg, %i.fp
  %i.ft = zext nneg i32 %i.fp to i64
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i

bb.y:                                             ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit.1.i.i
  %i.fu = lshr i64 %i.ff, 38
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %i.fw = and i32 %i.fv, 2047
  %i.fx = add nsw i32 %i.fg, -27
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i: ; preds = %bb.y, %bb.x
  %.sink256.i.i = phi i32 [ %i.fx, %bb.y ], [ %i.fs, %bb.x ] ; 2 uses
  %.pn278.i.i = phi i64 [ 27, %bb.y ], [ %i.ft, %bb.x ]
  %.0.i14.1.i.i = phi i32 [ %i.fw, %bb.y ], [ %i.fo, %bb.x ]
  %storemerge.1.i.i = shl i64 %i.ff, %.pn278.i.i  ; 2 uses
  %i.fy = shl nsw i32 %.0.i14.1.i.i, 4
  %i.fz = icmp samesign ugt i32 %.sink256.i.i, 3
  tail call void @llvm.assume(i1 %i.fz)
  %i.ga = lshr i64 %storemerge.1.i.i, 60
  %i.gb = trunc nuw nsw i64 %i.ga to i32
  %i.gc = add nsw i32 %.sink256.i.i, -4           ; 2 uses
  %i.gd = shl i64 %storemerge.1.i.i, 4            ; 2 uses
  %i.ge = or disjoint i32 %i.fy, %i.gb            ; 3 uses
  %i.gf = xor i32 %i.ge, %i.fk                    ; 2 uses
  %i.gg = mul nsw i32 %i.gf, 3
  %i.gh = icmp slt i32 %i.ge, 17
  %spec.select.1.i.i = zext i1 %i.gh to i32
  %i.gi = lshr i32 %i.fi, 12
  %i.gj = and i32 %i.gi, 3
  %i.gk = shl nsw i32 %i.gf, 2
  %i.gl = or disjoint i32 %i.gk, %i.gj
  br i1 %i.cc, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i, label %bb.z

bb.z:                                             ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i
  tail call void @llvm.assume(i1 %i.ce)
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cg, i64 2
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !132
  %i.go = zext i16 %i.gn to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i: ; preds = %bb.z, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i
  %.1.i.1.i.i = phi i32 [ 0, %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit.1.i.i ], [ %i.go, %bb.z ]
  %i.gp = add nsw i32 %i.gl, %.1.i.1.i.i
  %i.gq = trunc i32 %i.gp to i16
  %i.gr = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  store i16 %i.gq, ptr %i.gr, align 2, !tbaa !132
  br i1 %.not235.i.i, label %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i
  %.sroa.02.1.i = phi i64 [ %i.nc, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.gd, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %.sroa.4011.3.i = phi i32 [ %.sroa.4011.5.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %.sroa.4011.2.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %i.gs = phi i32 [ %i.lq, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %.sroa.4011.2.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 5 uses
  %i.gt = phi i32 [ %i.na, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.gc, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 4 uses
  %.sroa.21.0.i.i = phi i32 [ %i.nd, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.ge, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.26.0.in.i.i = phi i32 [ %i.nh, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.gg, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.10.0.in.i.i = phi i32 [ %i.jg, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.ee, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.30.0.i.i = phi i32 [ %spec.select226.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %spec.select.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %.sroa.5.0.i.i = phi i32 [ %i.jc, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %i.ec, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ]
  %.sroa.14.0.i.i = phi i32 [ %spec.select226.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ %spec.select.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ], [ 1, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ] ; 2 uses
  %.sroa.10.0.i.i = ashr i32 %.sroa.10.0.in.i.i, 5 ; 2 uses
  %.sroa.26.0.i.i = ashr i32 %.sroa.26.0.in.i.i, 5 ; 2 uses
  %i.gu = shl nuw nsw i64 %indvars.iv.i.i, 1      ; 8 uses
  %.not.i39.i.i = icmp samesign ult i32 %i.gt, 32
  br i1 %.not.i39.i.i, label %bb.aa, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i

bb.aa:                                            ; preds = %.preheader.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  %i.gv = add nuw nsw i32 %i.gs, 4                ; 3 uses
  %.not.i.i40.i.i = icmp samesign ugt i32 %i.gv, %i.bc
  br i1 %.not.i.i40.i.i, label %bb.ac, label %bb.ab, !prof !105

bb.ab:                                            ; preds = %bb.aa
  %i.gw = zext nneg i32 %i.gs to i64
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.gw
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.gy = icmp samesign ugt i32 %i.gs, %i.bw
  br i1 %i.gy, label %.invoke, label %bb.ad, !prof !105

.invoke:                                          ; preds = %bb.o, %bb.v, %bb.ac, %bb.ao, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit
  %i.gz = phi ptr [ @.str.8, %bb.ac ], [ @.str.7, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit ], [ @.str.8, %bb.ao ], [ @.str.8, %bb.v ], [ @.str.8, %bb.o ]
  %i.ha = phi ptr [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ac ], [ @__PRETTY_FUNCTION__._ZN8rawspeed26BitStreamerReplenisherBaseINS_14BitStreamerMSBEEC2ENS_10Array1DRefIKSt4byteEE, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplC2ENS_8RawImageE.exit ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.ao ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.v ], [ @__PRETTY_FUNCTION__._ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv, %bb.o ]
  invoke void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull %i.gz, ptr noundef nonnull %i.ha) #14
          to label %.cont unwind label %bb.bk

.cont:                                            ; preds = %.invoke
  unreachable

bb.ad:                                            ; preds = %bb.ac
  store i32 0, ptr %.sroa.0.i.i38.i.i, align 4
  %.sroa.speculated27.i.i.i47.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.gs) ; 3 uses
  %i.hb = add nuw nsw i32 %.sroa.speculated27.i.i.i47.i.i, 4
  %.sroa.speculated.i.i.i48.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.hb)
  %i.hc = sub nsw i32 %.sroa.speculated.i.i.i48.i.i, %.sroa.speculated27.i.i.i47.i.i ; 2 uses
  %i.hd = icmp samesign ult i32 %i.hc, 5
  tail call void @llvm.assume(i1 %i.hd)
  %i.he = zext nneg i32 %.sroa.speculated27.i.i.i47.i.i to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.he
  %i.hg = zext nneg i32 %i.hc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i38.i.i, ptr align 1 %i.hf, i64 %i.hg, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i: ; preds = %bb.ad, %bb.ab
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i43.i.i = phi ptr [ %.sroa.0.i.i38.i.i, %bb.ad ], [ %i.gx, %bb.ab ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i44.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i43.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  %i.hh = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i44.i.i)
  %i.hi = zext i32 %i.hh to i64
  %i.hj = or disjoint i32 %i.gt, 32
  %i.hk = sub nuw nsw i32 32, %i.gt
  %i.hl = zext nneg i32 %i.hk to i64
  %i.hm = shl nuw i64 %i.hi, %i.hl
  %i.hn = or i64 %i.hm, %.sroa.02.1.i
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i, %.preheader.i.i
  %.sroa.4011.4.i = phi i32 [ %i.gv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %.sroa.4011.3.i, %.preheader.i.i ]
  %i.ho = phi i32 [ %i.gv, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %i.gs, %.preheader.i.i ] ; 5 uses
  %i.hp = phi i64 [ %i.hn, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %.sroa.02.1.i, %.preheader.i.i ] ; 3 uses
  %i.hq = phi i32 [ %i.hj, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.i.i ], [ %i.gt, %.preheader.i.i ] ; 3 uses
  %.inv.i15.i.i = icmp sgt i32 %.sroa.14.0.i.i, 2 ; 2 uses
  %i.hr = and i32 %.sroa.5.0.i.i, 65535
  %i.hs = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.hr, i1 false)
  %.neg232.i.i = select i1 %.inv.i15.i.i, i32 32, i32 30
  %i.ht = sub nsw i32 %.neg232.i.i, %i.hs         ; 3 uses
  %i.hu = select i1 %.inv.i15.i.i, i32 2, i32 4
  %.sroa.speculated115.i.i = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 %i.hu) ; 8 uses
  %i.hv = lshr i64 %i.hp, 49                      ; 2 uses
  %i.hw = trunc nuw nsw i64 %i.hv to i32          ; 2 uses
  %i.hx = lshr i32 %i.hw, 14
  %i.hy = sub nsw i32 0, %i.hx
  %i.hz = and i64 %i.hv, 4095
  %i.ia = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !103 ; 3 uses
  %.not.i16.i.i = icmp eq i8 %i.ib, 12
  br i1 %.not.i16.i.i, label %bb.af, label %bb.ae, !prof !105

bb.ae:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i
  %i.ic = sext i8 %i.ib to i32                    ; 2 uses
  %i.id = add nsw i32 %i.ic, 4                    ; 3 uses
  %i.ie = icmp slt i8 %i.ib, 29
  tail call void @llvm.assume(i1 %i.ie)
  %i.if = icmp samesign ule i32 %i.id, %i.hq
  tail call void @llvm.assume(i1 %i.if)
  %i.ig = sub nuw nsw i32 %i.hq, %i.id
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i

bb.af:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.i.i
  %i.ih = shl i64 %i.hp, 15                       ; 2 uses
  %i.ii = icmp slt i32 %i.ht, 16
  tail call void @llvm.assume(i1 %i.ii)
  %i.ij = icmp ne i32 %i.ht, 15
  tail call void @llvm.assume(i1 %i.ij)
  %i.ik = add nuw nsw i32 %.sroa.speculated115.i.i, 49
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = lshr i64 %i.ih, %i.il
  %i.in = trunc nuw nsw i64 %i.im to i32
  %i.io = sub nuw nsw i32 16, %.sroa.speculated115.i.i
  %i.ip = add nuw nsw i32 %.sroa.speculated115.i.i, -31
  %i.iq = add i32 %i.ip, %i.hq
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i: ; preds = %bb.af, %bb.ae
  %.sink281.i.i = phi i32 [ %i.io, %bb.af ], [ %i.id, %bb.ae ]
  %.sink279.i.i = phi i64 [ %i.ih, %bb.af ], [ %i.hp, %bb.ae ]
  %.sink257.i.i = phi i32 [ %i.iq, %bb.af ], [ %i.ig, %bb.ae ] ; 2 uses
  %.0.i17.i.i = phi i32 [ %i.in, %bb.af ], [ %i.ic, %bb.ae ]
  %i.ir = zext nneg i32 %.sink281.i.i to i64
  %i.is = shl i64 %.sink279.i.i, %i.ir            ; 2 uses
  %i.it = shl nsw i32 %.0.i17.i.i, %.sroa.speculated115.i.i
  %i.iu = icmp samesign ule i32 %.sroa.speculated115.i.i, %.sink257.i.i
  tail call void @llvm.assume(i1 %i.iu)
  %i.iv = sub nuw nsw i32 64, %.sroa.speculated115.i.i
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = lshr i64 %i.is, %i.iw
  %i.iy = trunc nuw nsw i64 %i.ix to i32
  %i.iz = sub nuw nsw i32 %.sink257.i.i, %.sroa.speculated115.i.i ; 4 uses
  %i.ja = zext nneg i32 %.sroa.speculated115.i.i to i64
  %i.jb = shl i64 %i.is, %i.ja                    ; 2 uses
  %i.jc = or i32 %i.it, %i.iy                     ; 3 uses
  %i.jd = xor i32 %i.jc, %i.hy
  %i.je = add nsw i32 %i.jd, %.sroa.10.0.i.i      ; 2 uses
  %i.jf = mul nsw i32 %i.je, 3
  %i.jg = add nsw i32 %i.jf, %.sroa.10.0.i.i
  %i.jh = icmp sgt i32 %i.jc, 16
  %i.ji = add nsw i32 %.sroa.14.0.i.i, 1
  %spec.select226.i.i = select i1 %i.jh, i32 0, i32 %i.ji
  %i.jj = lshr i32 %i.hw, 12
  %i.jk = and i32 %i.jj, 3
  %i.jl = shl nsw i32 %i.je, 2
  %i.jm = or disjoint i32 %i.jl, %i.jk
  br i1 %i.cc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i
  %i.jn = getelementptr [2 x i8], ptr %i.cj, i64 %i.gu
  %i.jo = getelementptr i8, ptr %i.jn, i64 -4
  %i.jp = load i16, ptr %i.jo, align 2, !tbaa !132
  %i.jq = zext i16 %i.jp to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i

bb.ah:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.i.i
  %i.jr = add nsw i64 %i.gu, -2                   ; 2 uses
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !132 ; 2 uses
  %i.ju = zext i16 %i.jt to i32                   ; 4 uses
  %i.jv = icmp samesign ult i64 %i.gu, %i.bx
  tail call void @llvm.assume(i1 %i.jv)
  tail call void @llvm.assume(i1 %i.ce)
  %i.jw = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.gu
  %i.jx = load i16, ptr %i.jw, align 2, !tbaa !132 ; 2 uses
  %i.jy = zext i16 %i.jx to i32                   ; 3 uses
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.jr
  %i.ka = load i16, ptr %i.jz, align 2, !tbaa !132 ; 3 uses
  %i.kb = zext i16 %i.ka to i32                   ; 2 uses
  %i.kc = sub nsw i32 %i.ju, %i.kb                ; 3 uses
  %i.kd = sub nsw i32 %i.jy, %i.kb                ; 4 uses
  %i.ke = xor i32 %i.kc, %i.kd
  %i.kf = icmp slt i32 %i.ke, 0
  %i.kg = icmp ne i16 %i.jt, %i.ka
  %or.cond3.i20.i.i = and i1 %i.kg, %i.kf
  %i.kh = icmp ne i16 %i.jx, %i.ka
  %or.cond5.i21.i.i = and i1 %i.kh, %or.cond3.i20.i.i
  br i1 %or.cond5.i21.i.i, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.ki = add nsw i32 %i.kc, -33
  %i.kj = icmp ult i32 %i.ki, -65
  %i.kk = add nsw i32 %i.kd, -33
  %i.kl = icmp ult i32 %i.kk, -65
  %or.cond27.i23.i.i = select i1 %i.kj, i1 true, i1 %i.kl
  br i1 %or.cond27.i23.i.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.km = add nsw i32 %i.kd, %i.ju
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.kn = add nuw nsw i32 %i.jy, %i.ju
  %i.ko = lshr i32 %i.kn, 1
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i

bb.al:                                            ; preds = %bb.ah
  %i.kp = tail call i32 @llvm.abs.i32(i32 %i.kc, i1 true)
  %i.kq = tail call i32 @llvm.abs.i32(i32 %i.kd, i1 true)
  %i.kr = icmp samesign ugt i32 %i.kp, %i.kq
  %i.ks = select i1 %i.kr, i32 %i.ju, i32 %i.jy
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i: ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ag
  %.1.i22.i.i = phi i32 [ %i.ks, %bb.al ], [ %i.jq, %bb.ag ], [ %i.ko, %bb.ak ], [ %i.km, %bb.aj ]
  %i.kt = add nsw i32 %i.jm, %.1.i22.i.i
  %i.ku = trunc i32 %i.kt to i16
  %i.kv = icmp samesign ult i64 %i.gu, %i.bx
  tail call void @llvm.assume(i1 %i.kv)
  %i.kw = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.gu ; 2 uses
  store i16 %i.ku, ptr %i.kw, align 2, !tbaa !132
  %i.kx = or disjoint i64 %i.gu, 1                ; 4 uses
  %.not.i39.1.i.i = icmp samesign ult i32 %i.iz, 32
  br i1 %.not.i39.1.i.i, label %bb.am, label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.1.i.i

bb.am:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  %i.ky = add nuw nsw i32 %i.ho, 4                ; 3 uses
  %.not.i.i40.1.i.i = icmp samesign ugt i32 %i.ky, %i.bc
  br i1 %.not.i.i40.1.i.i, label %bb.ao, label %bb.an, !prof !105

bb.an:                                            ; preds = %bb.am
  %i.kz = zext nneg i32 %i.ho to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.kz
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i

bb.ao:                                            ; preds = %bb.am
  %i.lb = icmp samesign ugt i32 %i.ho, %i.bw
  br i1 %i.lb, label %.invoke, label %bb.ap, !prof !105

bb.ap:                                            ; preds = %bb.ao
  store i32 0, ptr %.sroa.0.i.i38.i.i, align 4
  %.sroa.speculated27.i.i.i47.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.ho) ; 3 uses
  %i.lc = add nuw nsw i32 %.sroa.speculated27.i.i.i47.1.i.i, 4
  %.sroa.speculated.i.i.i48.1.i.i = tail call i32 @llvm.umin.i32(i32 %i.bc, i32 %i.lc)
  %i.ld = sub nsw i32 %.sroa.speculated.i.i.i48.1.i.i, %.sroa.speculated27.i.i.i47.1.i.i ; 2 uses
  %i.le = icmp samesign ult i32 %i.ld, 5
  tail call void @llvm.assume(i1 %i.le)
  %i.lf = zext nneg i32 %.sroa.speculated27.i.i.i47.1.i.i to i64
  %i.lg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.lf
  %i.lh = zext nneg i32 %i.ld to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.0.i.i38.i.i, ptr align 1 %i.lg, i64 %i.lh, i1 false)
  br label %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i

_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i: ; preds = %bb.ap, %bb.an
  %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i43.1.i.i = phi ptr [ %.sroa.0.i.i38.i.i, %bb.ap ], [ %i.la, %bb.an ]
  %.sroa.0.0..sroa.0.0..sroa.0.0..i.i44.1.i.i = load i32, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..in.i.i43.1.i.i, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i38.i.i)
  %i.li = tail call i32 @llvm.bswap.i32(i32 %.sroa.0.0..sroa.0.0..sroa.0.0..i.i44.1.i.i)
  %i.lj = zext i32 %i.li to i64
  %i.lk = or disjoint i32 %i.iz, 32
  %i.ll = sub nuw nsw i32 32, %i.iz
  %i.lm = zext nneg i32 %i.ll to i64
  %i.ln = shl nuw i64 %i.lj, %i.lm
  %i.lo = or i64 %i.ln, %i.jb
  br label %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.1.i.i

_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.1.i.i: ; preds = %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i
  %.sroa.4011.5.i = phi i32 [ %i.ky, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i ], [ %.sroa.4011.4.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i ] ; 2 uses
  %i.lp = phi i64 [ %i.lo, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i ], [ %i.jb, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i ] ; 3 uses
  %i.lq = phi i32 [ %i.ky, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i ], [ %i.ho, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i ]
  %i.lr = phi i32 [ %i.lk, %_ZN8rawspeed39BitStreamerForwardSequentialReplenisherINS_14BitStreamerMSBEE8getInputEv.exit.i42.1.i.i ], [ %i.iz, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.i.i ] ; 3 uses
  %.inv.i15.1.i.i = icmp sgt i32 %.sroa.30.0.i.i, 2 ; 2 uses
  %i.ls = and i32 %.sroa.21.0.i.i, 65535
  %i.lt = tail call noundef range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ls, i1 false)
  %.neg232.1.i.i = select i1 %.inv.i15.1.i.i, i32 32, i32 30
  %i.lu = sub nsw i32 %.neg232.1.i.i, %i.lt       ; 3 uses
  %i.lv = select i1 %.inv.i15.1.i.i, i32 2, i32 4
  %.sroa.speculated115.1.i.i = tail call i32 @llvm.smax.i32(i32 %i.lu, i32 %i.lv) ; 8 uses
  %i.lw = lshr i64 %i.lp, 49                      ; 2 uses
  %i.lx = trunc nuw nsw i64 %i.lw to i32          ; 2 uses
  %i.ly = lshr i32 %i.lx, 14
  %i.lz = sub nsw i32 0, %i.ly
  %i.ma = and i64 %i.lw, 4095
  %i.mb = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !103 ; 3 uses
  %.not.i16.1.i.i = icmp eq i8 %i.mc, 12
  br i1 %.not.i16.1.i.i, label %bb.ar, label %bb.aq, !prof !105

bb.aq:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.1.i.i
  %i.md = sext i8 %i.mc to i32                    ; 2 uses
  %i.me = add nsw i32 %i.md, 4                    ; 3 uses
  %i.mf = icmp slt i8 %i.mc, 29
  tail call void @llvm.assume(i1 %i.mf)
  %i.mg = icmp samesign ule i32 %i.me, %i.lr
  tail call void @llvm.assume(i1 %i.mg)
  %i.mh = sub nuw nsw i32 %i.lr, %i.me
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.1.i.i

bb.ar:                                            ; preds = %_ZN8rawspeed11BitStreamerINS_14BitStreamerMSBENS_39BitStreamerForwardSequentialReplenisherIS1_EEE4fillEi.exit49.1.i.i
  %i.mi = shl i64 %i.lp, 15                       ; 2 uses
  %i.mj = icmp slt i32 %i.lu, 16
  tail call void @llvm.assume(i1 %i.mj)
  %i.mk = icmp ne i32 %i.lu, 15
  tail call void @llvm.assume(i1 %i.mk)
  %i.ml = add nuw nsw i32 %.sroa.speculated115.1.i.i, 49
  %i.mm = zext nneg i32 %i.ml to i64
  %i.mn = lshr i64 %i.mi, %i.mm
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = sub nuw nsw i32 16, %.sroa.speculated115.1.i.i
  %i.mq = add nuw nsw i32 %.sroa.speculated115.1.i.i, -31
  %i.mr = add i32 %i.mq, %i.lr
  br label %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.1.i.i

_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.1.i.i: ; preds = %bb.ar, %bb.aq
  %.sink284.i.i = phi i32 [ %i.mp, %bb.ar ], [ %i.me, %bb.aq ]
  %.sink282.i.i = phi i64 [ %i.mi, %bb.ar ], [ %i.lp, %bb.aq ]
  %.sink258.i.i = phi i32 [ %i.mr, %bb.ar ], [ %i.mh, %bb.aq ] ; 2 uses
  %.0.i17.1.i.i = phi i32 [ %i.mo, %bb.ar ], [ %i.md, %bb.aq ]
  %i.ms = zext nneg i32 %.sink284.i.i to i64
  %i.mt = shl i64 %.sink282.i.i, %i.ms            ; 2 uses
  %i.mu = shl nsw i32 %.0.i17.1.i.i, %.sroa.speculated115.1.i.i
  %i.mv = icmp samesign ule i32 %.sroa.speculated115.1.i.i, %.sink258.i.i
  tail call void @llvm.assume(i1 %i.mv)
  %i.mw = sub nuw nsw i32 64, %.sroa.speculated115.1.i.i
  %i.mx = zext nneg i32 %i.mw to i64
  %i.my = lshr i64 %i.mt, %i.mx
  %i.mz = trunc nuw nsw i64 %i.my to i32
  %i.na = sub nuw nsw i32 %.sink258.i.i, %.sroa.speculated115.1.i.i ; 2 uses
  %i.nb = zext nneg i32 %.sroa.speculated115.1.i.i to i64
  %i.nc = shl i64 %i.mt, %i.nb                    ; 2 uses
  %i.nd = or i32 %i.mu, %i.mz                     ; 3 uses
  %i.ne = xor i32 %i.nd, %i.lz
  %i.nf = add nsw i32 %i.ne, %.sroa.26.0.i.i      ; 2 uses
  %i.ng = mul nsw i32 %i.nf, 3
  %i.nh = add nsw i32 %i.ng, %.sroa.26.0.i.i
  %i.ni = icmp sgt i32 %i.nd, 16
  %i.nj = add nsw i32 %.sroa.30.0.i.i, 1
  %spec.select226.1.i.i = select i1 %i.ni, i32 0, i32 %i.nj
  %i.nk = lshr i32 %i.lx, 12
  %i.nl = and i32 %i.nk, 3
  %i.nm = shl nsw i32 %i.nf, 2
  %i.nn = or disjoint i32 %i.nm, %i.nl
  br i1 %i.cc, label %bb.ax, label %bb.as

bb.as:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.1.i.i
  %i.no = add nsw i64 %i.gu, -1                   ; 2 uses
  %i.np = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.no
  %i.nq = load i16, ptr %i.np, align 2, !tbaa !132 ; 2 uses
  %i.nr = zext i16 %i.nq to i32                   ; 4 uses
  %i.ns = icmp samesign ult i64 %i.kx, %i.bx
  tail call void @llvm.assume(i1 %i.ns)
  tail call void @llvm.assume(i1 %i.ce)
  %i.nt = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.kx
  %i.nu = load i16, ptr %i.nt, align 2, !tbaa !132 ; 2 uses
  %i.nv = zext i16 %i.nu to i32                   ; 3 uses
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr %i.cg, i64 %i.no
  %i.nx = load i16, ptr %i.nw, align 2, !tbaa !132 ; 3 uses
  %i.ny = zext i16 %i.nx to i32                   ; 2 uses
  %i.nz = sub nsw i32 %i.nr, %i.ny                ; 3 uses
  %i.oa = sub nsw i32 %i.nv, %i.ny                ; 4 uses
  %i.ob = xor i32 %i.nz, %i.oa
  %i.oc = icmp slt i32 %i.ob, 0
  %i.od = icmp ne i16 %i.nq, %i.nx
  %or.cond3.i20.1.i.i = and i1 %i.od, %i.oc
  %i.oe = icmp ne i16 %i.nu, %i.nx
  %or.cond5.i21.1.i.i = and i1 %i.oe, %or.cond3.i20.1.i.i
  br i1 %or.cond5.i21.1.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.of = tail call i32 @llvm.abs.i32(i32 %i.nz, i1 true)
  %i.og = tail call i32 @llvm.abs.i32(i32 %i.oa, i1 true)
  %i.oh = icmp samesign ugt i32 %i.of, %i.og
  %i.oi = select i1 %i.oh, i32 %i.nr, i32 %i.nv
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i

bb.au:                                            ; preds = %bb.as
  %i.oj = add nsw i32 %i.nz, -33
  %i.ok = icmp ult i32 %i.oj, -65
  %i.ol = add nsw i32 %i.oa, -33
  %i.om = icmp ult i32 %i.ol, -65
  %or.cond27.i23.1.i.i = select i1 %i.ok, i1 true, i1 %i.om
  br i1 %or.cond27.i23.1.i.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.on = add nuw nsw i32 %i.nv, %i.nr
  %i.oo = lshr i32 %i.on, 1
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i

bb.aw:                                            ; preds = %bb.au
  %i.op = add nsw i32 %i.oa, %i.nr
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i

bb.ax:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_124OlympusDifferenceDecoder7getDiffERNS_14BitStreamerMSBE.exit18.1.i.i
  %i.oq = getelementptr i8, ptr %i.kw, i64 -2
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !132
  %i.os = zext i16 %i.or to i32
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i: ; preds = %bb.ax, %bb.aw, %bb.av, %bb.at
  %.1.i22.1.i.i = phi i32 [ %i.oi, %bb.at ], [ %i.os, %bb.ax ], [ %i.oo, %bb.av ], [ %i.op, %bb.aw ]
  %i.ot = add nsw i32 %i.nn, %.1.i22.1.i.i
  %i.ou = trunc i32 %i.ot to i16
  %i.ov = icmp samesign ult i64 %i.kx, %i.bx
  tail call void @llvm.assume(i1 %i.ov)
  %i.ow = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.kx
  store i16 %i.ou, ptr %i.ow, align 2, !tbaa !132
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.by
  br i1 %.not.i.i, label %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i, label %.preheader.i.i, !llvm.loop !119

_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i: ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i
  %.sroa.19.1.i = phi i32 [ %i.gc, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ], [ %i.na, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ]
  %.sroa.02.2.i = phi i64 [ %i.gd, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ], [ %i.nc, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ]
  %.sroa.4011.6.i = phi i32 [ %.sroa.4011.2.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit.1.i.i ], [ %.sroa.4011.5.i, %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl7getPredENS_10Array2DRefItEEii.exit24.1.i.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit.i, label %bb.l, !llvm.loop !120

_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit.i:        ; preds = %_ZNK8rawspeed12_GLOBAL__N_123OlympusDecompressorImpl13decompressRowERNS_14BitStreamerMSBEi.exit.i
  %i.ox = ptrtoint ptr %i.am to i64
  %i.oy = ptrtoint ptr %.val5 to i64
  %i.oz = sub i64 %i.ox, %i.oy
  tail call void @_ZdlPvm(ptr noundef nonnull %.val5, i64 noundef %i.oz) #22
  %i.pa = load ptr, ptr %i.l, align 8, !tbaa !16  ; 8 uses
  %.not.i.i.i.i11 = icmp eq ptr %i.pa, null
  br i1 %.not.i.i.i.i11, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev.exit, label %bb.ay

bb.ay:                                            ; preds = %_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit.i
  %i.pb = getelementptr inbounds nuw i8, ptr %i.pa, i64 8 ; 4 uses
  %i.pc = load atomic i64, ptr %i.pb acquire, align 8 ; 2 uses
  %i.pd = icmp eq i64 %i.pc, 4294967297
  %i.pe = trunc i64 %i.pc to i32                  ; 2 uses
  br i1 %i.pd, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store i32 0, ptr %i.pb, align 8, !tbaa !92
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pa, i64 12
  store i32 0, ptr %i.pf, align 4, !tbaa !93
  %i.pg = load ptr, ptr %i.pa, align 8, !tbaa !95
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  %i.pi = load ptr, ptr %i.ph, align 8
  tail call void %i.pi(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #19, !call_target !100, !inline_history !121
  %i.pj = load ptr, ptr %i.pa, align 8, !tbaa !95
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pj, i64 24
  %i.pl = load ptr, ptr %i.pk, align 8
  tail call void %i.pl(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #19, !call_target !102, !inline_history !121
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev.exit

bb.ba:                                            ; preds = %bb.ay
  %i.pm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i1.i = icmp eq i8 %i.pm, 0
  br i1 %.not.i.i.i.i1.i, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.pn = add nsw i32 %i.pe, -1
  store i32 %i.pn, ptr %i.pb, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.bc:                                            ; preds = %bb.ba
  %i.po = atomicrmw volatile add ptr %i.pb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.bc, %bb.bb
  %.0.i.i.i.i.i.i = phi i32 [ %i.pe, %bb.bb ], [ %i.po, %bb.bc ]
  %i.pp = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.pp, label %bb.bd, label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev.exit, !prof !105

bb.bd:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pa) #19
  br label %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev.exit

_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev.exit: ; preds = %_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit.i, %bb.az, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.bd
  %i.pq = load ptr, ptr %i.b, align 8, !tbaa !16  ; 8 uses
  %.not.i.i.i12 = icmp eq ptr %i.pq, null
  br i1 %.not.i.i.i12, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.be

bb.be:                                            ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev.exit
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8 ; 4 uses
  %i.ps = load atomic i64, ptr %i.pr acquire, align 8 ; 2 uses
  %i.pt = icmp eq i64 %i.ps, 4294967297
  %i.pu = trunc i64 %i.ps to i32                  ; 2 uses
  br i1 %i.pt, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  store i32 0, ptr %i.pr, align 8, !tbaa !92
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  store i32 0, ptr %i.pv, align 4, !tbaa !93
  %i.pw = load ptr, ptr %i.pq, align 8, !tbaa !95
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %i.py = load ptr, ptr %i.px, align 8
  tail call void %i.py(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #19, !call_target !100, !inline_history !1
  %i.pz = load ptr, ptr %i.pq, align 8, !tbaa !95
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pz, i64 24
  %i.qb = load ptr, ptr %i.qa, align 8
  tail call void %i.qb(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #19, !call_target !102, !inline_history !1
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.bg:                                            ; preds = %bb.be
  %i.qc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i13 = icmp eq i8 %i.qc, 0
  br i1 %.not.i.i.i.i13, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.qd = add nsw i32 %i.pu, -1
  store i32 %i.qd, ptr %i.pr, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.qe = atomicrmw volatile add ptr %i.pr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.bi, %bb.bh
  %.0.i.i.i.i.i = phi i32 [ %i.pu, %bb.bh ], [ %i.qe, %bb.bi ]
  %i.qf = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.qf, label %bb.bj, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !105

bb.bj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pq) #19
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev.exit, %bb.bf, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.bk:                                            ; preds = %.invoke
  %i.qg = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %2) #19
  br label %.body

.body:                                            ; preds = %.body.i, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.qg, %bb.bk ], [ %lpad.phi, %.body.i ]
  call void @_ZN8rawspeed8RawImageD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal fastcc void @_ZN8rawspeed12_GLOBAL__N_123OlympusDecompressorImplD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(40) dereferenceable(40) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !107  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #22
  br label %_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit

_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit:          ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !92
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !93
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #19, !call_target !100, !inline_history !1
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !95
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #19, !call_target !102, !inline_history !1
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !103
  %.not.i.i.i.i1 = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i.i1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !104
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !105

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #19
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %_ZN8rawspeed9SimpleLUTIaLi12EED2Ev.exit, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.h
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !95
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
end_hunk_0
