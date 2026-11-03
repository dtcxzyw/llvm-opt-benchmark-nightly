Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/BmpImageLoader?download=true
inline.NumInlined: 6826
inline.NumDeleted: 2585
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 54
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZN3tev4TaskINSt3__16vectorINS_9ImageDataENS1_9allocatorIS3_EEEEED2Ev:bb.a
  %.not.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit

bb.c:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !110  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !111  ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.g, %i.i
  br i1 %.not12.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 33
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %bb.d

bb.d:                                             ; preds = %.noexc1, %.lr.ph.i.i.i
  %.sroa.09.013.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.y, %.noexc1 ] ; 2 uses
  %i.n = load ptr, ptr %.sroa.09.013.i.i.i, align 8, !tbaa !114 ; 2 uses
  %i.o = load i8, ptr %i.j, align 8               ; 2 uses
  %i.p = trunc i8 %i.o to i1                      ; 2 uses
  %i.q = load ptr, ptr %i.k, align 8
  %i.r = select i1 %i.p, ptr %i.q, ptr %i.l
  %i.s = load i64, ptr %i.m, align 8
  %i.t = lshr i8 %i.o, 1
  %i.u = zext nneg i8 %i.t to i64
  %i.v = select i1 %i.p, i64 %i.s, i64 %i.u
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !81
  %i.x = load ptr, ptr %i.w, align 8
  invoke void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr %i.r, i64 %i.v, i32 noundef 8, ptr nonnull @.str.104, i64 39)
          to label %.noexc1 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

.noexc1:                                          ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.y, %i.i
  br i1 %.not.i.i.i, label %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, label %bb.d

_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit: ; preds = %.noexc1, %bb.c, %.noexc, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !91  ; 5 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = atomicrmw add ptr %i.ab, i64 -1 acq_rel, align 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.f, label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !81
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #37, !inline_history !5
  tail call void @_ZNSt3__119__shared_weak_count14__release_weakEv(ptr noundef nonnull align 8 dereferenceable(24) %i.aa) #37
  br label %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit

_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit: ; preds = %_ZN4tlog7warningENSt3__117basic_string_viewIcNS0_11char_traitsIcEEEE.exit, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !124 ; 4 uses
  %.not.i2 = icmp eq ptr %i.ai, null
  br i1 %.not.i2, label %_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = atomicrmw add ptr %i.aj, i64 -1 acq_rel, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.h, label %_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !81
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load ptr, ptr %i.an, align 8
  tail call void %i.ao(ptr noundef nonnull align 8 dereferenceable(16) %i.ai) #37, !inline_history !567
  br label %_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit

_ZNSt3__16futureINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev.exit: ; preds = %_ZNSt3__110shared_ptrIN3tev15TaskSharedStateEED2B8ne180100Ev.exit, %bb.g, %bb.h
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %bb.b
  %lpad.loopexit.split-lp8 = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %lpad.loopexit.split-lp8, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #42
  unreachable
}

declare void @_ZN3tev7Channel14joinIfNonemptyENSt3__117basic_string_viewIcNS1_11char_traitsIcEEEES5_(ptr dead_on_unwind writable sret(%"class.std::__1::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEED2B8ne180100Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129    ; 5 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !130  ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %.lr.ph.i.i.i
  %.07.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i ], [ %i.c, %bb.b ]
  %i.d = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -280 ; 3 uses
  tail call void @_ZN3tev9ImageDataD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %i.d) #37
  %.not.i.i.i = icmp eq ptr %i.a, %i.d
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i: ; preds = %.lr.ph.i.i.i
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !129
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i: ; preds = %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i, %bb.b
  %i.e = phi ptr [ %.pre1.i, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.loopexit.i ], [ %i.a, %bb.b ] ; 2 uses
  store ptr %i.a, ptr %i.b, align 8, !tbaa !130
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !146
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.j) #41
  br label %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit

_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE16__destroy_vectorclB8ne180100Ev.exit: ; preds = %bb.a, %_ZNSt3__16vectorIN3tev9ImageDataENS_9allocatorIS2_EEE7__clearB8ne180100Ev.exit.i
  ret void
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #9

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #37 ; 0 uses
  tail call void @_ZSt9terminatev() #42
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK3tev14BmpImageLoader21loadWithoutFileHeaderERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiNS1_8optionalImEEPN7nanogui5ArrayIiLm2EEEb(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr %4, i64 %5, ptr noundef nonnull align 4 dereferenceable(9) %6, i32 noundef %7, ptr nofree noundef readonly byval(%"class.std::__1::optional.73") align 8 captures(none) %8, ptr nofree noundef captures(address_is_null) %9, i1 noundef zeroext %10) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
.from.:
  %11 = alloca %"struct.fmt::v12::formatter.371", align 1 ; 4 uses
  %12 = alloca %"struct.fmt::v12::formatter.368", align 1 ; 4 uses
  %13 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %14 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 12 uses
  %15 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %16 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %17 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %18 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %23 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %24 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %i.c = alloca [3 x i32], align 8                ; 6 uses
  %26 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %i.d = alloca [4 x i32], align 16               ; 5 uses
  %27 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %28 = alloca %"class.std::__1::basic_string", align 8 ; 16 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %29 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %30 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %31 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %32 = alloca %"struct.nanogui::Array.71", align 4 ; 6 uses
  %33 = alloca %"class.std::__1::basic_string_view", align 8 ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %34 = alloca %"class.std::__1::basic_string", align 8 ; 18 uses
  %35 = alloca %"class.std::__1::basic_string_view", align 8 ; 8 uses
  %36 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %37 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.tev::HeapArray", align 8   ; 6 uses
  %40 = alloca %"class.tev::HeapArray", align 8   ; 6 uses
  %41 = alloca %"class.tev::HeapArray", align 8   ; 6 uses
  %42 = alloca %"class.tev::HeapArray", align 8   ; 6 uses
  %43 = alloca %"class.std::__1::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__1::basic_string_view", align 8 ; 3 uses
  %45 = alloca %class.anon.171, align 8           ; 5 uses
  %i.h = alloca ptr, align 8                      ; 5 uses
  %46 = alloca %"struct.nanogui::Matrix", align 4 ; 5 uses
  %47 = alloca %"struct.std::__1::array", align 4 ; 5 uses
  %48 = alloca %"struct.std::__1::array", align 4 ; 5 uses
  %49 = alloca %class.anon.189, align 8           ; 3 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(1136) ptr @_Znwm(i64 noundef 1136) #39 ; 163 uses
  store ptr @_ZNK3tev14BmpImageLoader21loadWithoutFileHeaderERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiNS1_8optionalImEEPN7nanogui5ArrayIiLm2EEEb.resume, ptr %i.i, align 8
  %destroy.addr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @_ZNK3tev14BmpImageLoader21loadWithoutFileHeaderERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiNS1_8optionalImEEPN7nanogui5ArrayIiLm2EEEb.destroy, ptr %destroy.addr, align 8
  %.reload.addr1992 = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 54 uses
  %.reload.addr1993 = getelementptr inbounds nuw i8, ptr %i.i, i64 184 ; 19 uses
  %.reload.addr1994 = getelementptr inbounds nuw i8, ptr %i.i, i64 896 ; 9 uses
  %.reload.addr1995 = getelementptr inbounds nuw i8, ptr %i.i, i64 1020 ; 6 uses
  %.reload.addr1996 = getelementptr inbounds nuw i8, ptr %i.i, i64 328 ; 9 uses
  %.reload.addr2005 = getelementptr inbounds nuw i8, ptr %i.i, i64 416 ; 2 uses
  %.reload.addr2006 = getelementptr inbounds nuw i8, ptr %i.i, i64 448 ; 2 uses
  %.reload.addr2007 = getelementptr inbounds nuw i8, ptr %i.i, i64 480 ; 2 uses
  %.reload.addr2008 = getelementptr inbounds nuw i8, ptr %i.i, i64 512 ; 2 uses
  %.reload.addr2009 = getelementptr inbounds nuw i8, ptr %i.i, i64 360 ; 2 uses
  %.reload.addr2011 = getelementptr inbounds nuw i8, ptr %i.i, i64 392 ; 7 uses
  %.reload.addr2015 = getelementptr inbounds nuw i8, ptr %i.i, i64 656
  %.reload.addr2016 = getelementptr inbounds nuw i8, ptr %i.i, i64 680
  %.reload.addr2017 = getelementptr inbounds nuw i8, ptr %i.i, i64 704 ; 11 uses
  %.reload.addr2018 = getelementptr inbounds nuw i8, ptr %i.i, i64 720 ; 6 uses
  %.reload.addr2019 = getelementptr inbounds nuw i8, ptr %i.i, i64 736 ; 2 uses
  %.reload.addr2020 = getelementptr inbounds nuw i8, ptr %i.i, i64 752 ; 9 uses
  %.reload.addr2021 = getelementptr inbounds nuw i8, ptr %i.i, i64 544 ; 2 uses
  %.reload.addr2022 = getelementptr inbounds nuw i8, ptr %i.i, i64 1056 ; 5 uses
  %.reload.addr2023 = getelementptr inbounds nuw i8, ptr %i.i, i64 1072
  %.reload.addr2024 = getelementptr inbounds nuw i8, ptr %i.i, i64 560 ; 2 uses
  %.reload.addr2025 = getelementptr inbounds nuw i8, ptr %i.i, i64 576 ; 2 uses
  %.reload.addr2026 = getelementptr inbounds nuw i8, ptr %i.i, i64 592 ; 2 uses
  %.reload.addr2027 = getelementptr inbounds nuw i8, ptr %i.i, i64 608 ; 2 uses
  %.reload.addr2028 = getelementptr inbounds nuw i8, ptr %i.i, i64 624 ; 2 uses
  %.reload.addr2029 = getelementptr inbounds nuw i8, ptr %i.i, i64 640 ; 2 uses
  %.reload.addr2031 = getelementptr inbounds nuw i8, ptr %i.i, i64 1088 ; 2 uses
  %.reload.addr2033 = getelementptr inbounds nuw i8, ptr %i.i, i64 768
  %.reload.addr2034 = getelementptr inbounds nuw i8, ptr %i.i, i64 776
  %.reload.addr2035 = getelementptr inbounds nuw i8, ptr %i.i, i64 784 ; 4 uses
  %.reload.addr2036 = getelementptr inbounds nuw i8, ptr %i.i, i64 792
  %.reload.addr2037 = getelementptr inbounds nuw i8, ptr %i.i, i64 800
  %.reload.addr2038 = getelementptr inbounds nuw i8, ptr %i.i, i64 808
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, <8 x i64> <i64 752, i64 768, i64 816, i64 808, i64 800, i64 792, i64 184, i64 1072>
  %.reload.addr2039 = getelementptr inbounds nuw i8, ptr %i.i, i64 816
  %.reload.addr2040 = getelementptr inbounds nuw i8, ptr %i.i, i64 824
  %.reload.addr2041 = getelementptr inbounds nuw i8, ptr %i.i, i64 832 ; 2 uses
  %.reload.addr2042 = getelementptr inbounds nuw i8, ptr %i.i, i64 840 ; 2 uses
  %.reload.addr2043 = getelementptr inbounds nuw i8, ptr %i.i, i64 1096 ; 2 uses
  %.reload.addr2044 = getelementptr inbounds nuw i8, ptr %i.i, i64 1115 ; 6 uses
  %.reload.addr2045 = getelementptr inbounds nuw i8, ptr %i.i, i64 1116
  %.reload.addr2046 = getelementptr inbounds nuw i8, ptr %i.i, i64 1117 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, <8 x i64> <i64 776, i64 1116, i64 896, i64 1088, i64 824, i64 720, i64 1118, i64 784>
  %.reload.addr2047 = getelementptr inbounds nuw i8, ptr %i.i, i64 1118 ; 3 uses
  %.reload.addr2048 = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 10 uses
  %.spill.addr = getelementptr inbounds nuw i8, ptr %i.i, i64 1100 ; 5 uses
  store i32 %7, ptr %.spill.addr, align 4
  %.sroa.0832.0.copyload = load i64, ptr %8, align 8 ; 3 uses
  %.sroa.7835.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.7835.0.copyload = load i8, ptr %.sroa.7835.0..sroa_idx, align 8 ; 3 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(144) ptr @_Znwm(i64 noundef 144) #38
          to label %.noexc394 unwind label %.body.from. ; 3 uses

.noexc394:                                        ; preds = %.from.
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(108) %i.m, i8 0, i64 108, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVNSt3__113__assoc_stateINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEEE, i64 16), ptr %i.l, align 8, !tbaa !81
  store ptr %i.l, ptr %.reload.addr2048, align 8, !tbaa !84
  tail call void @llvm.experimental.noalias.scope.decl(metadata !614)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !615)
  %i.n = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #38
          to label %bb.a unwind label %.body.from.1892 ; 5 uses

.body.from.1892:                                  ; preds = %.noexc394
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt3__17promiseINS_6vectorIN3tev9ImageDataENS_9allocatorIS3_EEEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(24) %.reload.addr2048) #37
  br label %.body

.body.from.:                                      ; preds = %.from.
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.a:                                             ; preds = %.noexc394
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false), !noalias !616
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVNSt3__120__shared_ptr_emplaceIN3tev15TaskSharedStateENS_9allocatorIS2_EEEE, i64 16), ptr %i.n, align 8, !tbaa !81, !noalias !616
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !616
  store i32 2, ptr %i.t, align 8, !tbaa !86, !noalias !616
  store ptr %i.s, ptr %i.q, align 8, !tbaa !90, !alias.scope !617
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store ptr %i.n, ptr %i.u, align 8, !tbaa !91, !alias.scope !617
  tail call void @_ZN3tev11TaskPromiseINS_4TaskINSt3__16vectorINS_9ImageDataENS2_9allocatorIS4_EEEEEES7_E17get_return_objectEv(ptr dead_on_unwind writable sret(%"class.tev::Task") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %.reload.addr2048) #37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(124) %.reload.addr1994, i8 0, i64 124, i1 false)
  %i.v = invoke { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %.from.1874

bb.b:                                             ; preds = %bb.a
  %i.w = extractvalue { i64, i64 } %i.v, 1        ; 2 uses
  %i.x = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %.reload.addr1994, i64 noundef 4)
          to label %bb.c unwind label %.from.1871 ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %2, align 8, !tbaa !81
  %i.z = getelementptr i8, ptr %i.y, i64 -24
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = getelementptr inbounds i8, ptr %2, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !96
  %i.ae = and i32 %i.ad, 5
  %.not1057 = icmp eq i32 %i.ae, 0
  br i1 %.not1057, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = tail call ptr @__cxa_allocate_exception(i64 16) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #37
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2B8ne180100ILi0EEEPKc(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull @.str.19)
          to label %bb.e unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.af, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.ky unwind label %.thread2151

.from.1874:                                       ; preds = %bb.a
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  br label %.from..split1864

.from.1871:                                       ; preds = %bb.b
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  br label %.from..split1864

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread: ; preds = %bb.d
  %i.ak = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1869.sink.split

bb.g:                                             ; preds = %bb.e
  %i.al = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.am = load i8, ptr %16, align 8
  %i.an = trunc i8 %i.am to i1
  br i1 %i.an, label %.split, label %.from.1869.sink.split

.thread2151:                                      ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.ap = load i8, ptr %16, align 8
  %i.aq = trunc i8 %i.ap to i1
  br i1 %i.aq, label %.split, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1866

.split:                                           ; preds = %.thread2151, %bb.g
  %i.ar = phi { ptr, i32 } [ %i.ao, %.thread2151 ], [ %i.al, %bb.g ]
  %.02782153 = phi i1 [ false, %.thread2151 ], [ true, %bb.g ]
  %i.as = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !74
  %i.au = load i64, ptr %16, align 8
  %i.av = and i64 %i.au, -2
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.av) #41
  %.0872 = extractvalue { ptr, i32 } %i.ar, 0     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br i1 %.02782153, label %.from.1869, label %.from..split1864

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit1866: ; preds = %.thread2151
  %.02157 = extractvalue { ptr, i32 } %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %.from..split1864

.from.1869.sink.split:                            ; preds = %bb.g, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread
  %.sink2502 = phi { ptr, i32 } [ %i.ak, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit.thread ], [ %i.al, %bb.g ]
  %.0870 = extractvalue { ptr, i32 } %.sink2502, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #37
  br label %.from.1869

.from.1869:                                       ; preds = %.from.1869.sink.split, %.split
  %.0871 = phi ptr [ %.0872, %.split ], [ %.0870, %.from.1869.sink.split ]
  call void @__cxa_free_exception(ptr %i.af) #37
  br label %.from..split1864

bb.h:                                             ; preds = %bb.c
  %i.aw = load i32, ptr %.reload.addr1994, align 8, !tbaa !618 ; 5 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = add i32 %i.aw, -12                      ; 2 uses
  %i.az = tail call i32 @llvm.fshl.i32(i32 %i.ay, i32 %i.ay, i32 30)
  switch i32 %i.az, label %bb.i [
    i32 0, label %bb.m
    i32 13, label %bb.m
    i32 1, label %bb.m
    i32 7, label %bb.m
    i32 10, label %bb.m
    i32 11, label %bb.m
    i32 24, label %bb.m
    i32 28, label %bb.m
  ]

end_hunk_0
begin_hunk_1_@_ZNK3tev14BmpImageLoader21loadWithoutFileHeaderERNSt3__119basic_istringstreamIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_4__fs10filesystem4pathENS1_17basic_string_viewIcS4_EERKNS_19ImageLoaderSettingsEiNS1_8optionalImEEPN7nanogui5ArrayIiLm2EEEb:.from.
  %i.zb = zext nneg i8 %i.za to i64
  %i.zc = select i1 %i.yw, i64 %i.yz, i64 %i.zb
  %i.zd = load ptr, ptr %i.yu, align 8, !tbaa !81
  %i.ze = load ptr, ptr %i.zd, align 8
  invoke void %i.ze(ptr noundef nonnull align 8 dereferenceable(8) %i.yu, ptr %i.yy, i64 %i.zc, i32 noundef 8, ptr nonnull %i.yg, i64 %i.yh)
          to label %.noexc2088 unwind label %_ZNSt3__110unique_ptrIA_hNS_14default_deleteIS1_EEED2B8ne180100Ev.exit16.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

.noexc2088:                                       ; preds = %bb.dv
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.09.013.i.i.i2085, i64 16 ; 2 uses
  %.not.i.i.i2086 = icmp eq ptr %i.zf, %i.yp
  br i1 %.not.i.i.i2086, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from..thread957, label %bb.dv

bb.dw:                                            ; preds = %bb.dt
  %i.zg = zext i32 %i.ye to i64
  %i.zh = add i64 %i.w, %i.zg
  %i.zi = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.zh, i32 noundef 0)
          to label %bb.dx unwind label %_ZNSt3__110unique_ptrIA_hNS_14default_deleteIS1_EEED2B8ne180100Ev.exit16.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #37
  %i.zj = load i32, ptr %i.ya, align 4, !tbaa !631 ; 4 uses
  %i.zk = zext i32 %i.zj to i64                   ; 4 uses
  %i.zl = icmp ult i32 %i.zj, 23
  br i1 %i.zl, label %bb.dy, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.dx
  %i.zm = or i64 %i.zk, 7                         ; 2 uses
  %i.zn = icmp eq i64 %i.zm, 23
  %i.zo = add nuw nsw i64 %i.zm, 1
  %i.zp = select i1 %i.zn, i64 25, i64 %i.zo      ; 2 uses
  %i.zq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.zp) #38
          to label %.noexc2090 unwind label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from.1437 ; 2 uses

.noexc2090:                                       ; preds = %.thread.i.i
  %i.zr = getelementptr inbounds nuw i8, ptr %28, i64 16
  store ptr %i.zq, ptr %i.zr, align 8, !tbaa !74
  %i.zs = or i64 %i.zp, 1
  store i64 %i.zs, ptr %28, align 8
  %i.zt = getelementptr inbounds nuw i8, ptr %28, i64 8
  store i64 %i.zk, ptr %i.zt, align 8, !tbaa !74
  br label %.lr.ph.preheader.i.i.i.i.i

bb.dy:                                            ; preds = %bb.dx
  %i.zu = trunc nuw nsw i32 %i.zj to i8
  %i.zv = shl nuw nsw i8 %i.zu, 1
  store i8 %i.zv, ptr %28, align 8
  %i.zw = getelementptr inbounds nuw i8, ptr %28, i64 1 ; 2 uses
  %.not6.i.i.i.i.i2089 = icmp eq i32 %i.zj, 0
  br i1 %.not6.i.i.i.i.i2089, label %bb.dz, label %.lr.ph.preheader.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.dy, %.noexc2090
  %.017.i.i = phi ptr [ %i.zq, %.noexc2090 ], [ %i.zw, %bb.dy ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %.017.i.i, i8 0, i64 %i.zk, i1 false), !tbaa !74
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph.preheader.i.i.i.i.i, %bb.dy
  %.018.i.i = phi ptr [ %i.zw, %bb.dy ], [ %.017.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %i.zx = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 %i.zk
  store i8 0, ptr %i.zx, align 1, !tbaa !74
  %i.zy = load i8, ptr %28, align 8
  %i.zz = trunc i8 %i.zy to i1
  %i.aaa = getelementptr inbounds nuw i8, ptr %28, i64 16 ; 3 uses
  %i.aab = load ptr, ptr %i.aaa, align 8
  %i.aac = getelementptr inbounds nuw i8, ptr %28, i64 1
  %i.aad = select i1 %i.zz, ptr %i.aab, ptr %i.aac
  %i.aae = load i32, ptr %i.ya, align 4, !tbaa !631
  %i.aaf = zext i32 %i.aae to i64
  %i.aag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.aad, i64 noundef %i.aaf)
          to label %bb.ea unwind label %.from.1431 ; 0 uses

bb.ea:                                            ; preds = %bb.dz
  %i.aah = load ptr, ptr %2, align 8, !tbaa !81
  %i.aai = getelementptr i8, ptr %i.aah, i64 -24
  %i.aaj = load i64, ptr %i.aai, align 8
  %i.aak = getelementptr inbounds i8, ptr %2, i64 %i.aaj
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 32
  %i.aam = load i32, ptr %i.aal, align 8, !tbaa !96
  %i.aan = and i32 %i.aam, 5
  %.not1064 = icmp eq i32 %i.aan, 0
  br i1 %.not1064, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #37
  %i.aao = getelementptr inbounds nuw i8, ptr %i.i, i64 712
  %i.aap = load i64, ptr %i.aao, align 8, !tbaa !73
  store i64 %i.aap, ptr %i.f, align 8, !tbaa !117
  %i.aaq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc2091 unwind label %.from.1428

.noexc2091:                                       ; preds = %bb.eb
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !98
  invoke void @_ZN4tlog6Logger3logIJmEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.aar, i32 noundef 8, ptr nonnull @.str.38, i64 42, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %_ZN4tlog7warningIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit2093 unwind label %.from.1428

_ZN4tlog7warningIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit2093: ; preds = %.noexc2091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br label %_ZN4tlog7warningIJRNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSC_.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from.1437: ; preds = %.thread.i.i
  %i.aas = landingpad { ptr, i32 }
          catch ptr null
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492

.from.1431:                                       ; preds = %bb.dz, %bb.ec, %.noexc2094
  %i.aat = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ee

.from.1428:                                       ; preds = %bb.eb, %.noexc2091
  %i.aau = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #37
  br label %bb.ee

bb.ec:                                            ; preds = %bb.ea
  %i.aav = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc2094 unwind label %.from.1431

.noexc2094:                                       ; preds = %bb.ec
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !98
  invoke void @_ZN4tlog6Logger3logIJRNSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOSE_(ptr noundef nonnull align 8 dereferenceable(56) %i.aaw, i32 noundef 8, ptr nonnull @.str.39, i64 97, ptr noundef nonnull align 8 dereferenceable(24) %28)
          to label %_ZN4tlog7warningIJRNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSC_.exit unwind label %.from.1431

_ZN4tlog7warningIJRNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSC_.exit: ; preds = %.noexc2094, %_ZN4tlog7warningIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit2093
  %i.aax = load i8, ptr %28, align 8
  %i.aay = trunc i8 %i.aax to i1
  br i1 %i.aay, label %bb.ed, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit491

bb.ed:                                            ; preds = %_ZN4tlog7warningIJRNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSC_.exit
  %i.aaz = load ptr, ptr %i.aaa, align 8, !tbaa !74
  %i.aba = load i64, ptr %28, align 8
  %i.abb = and i64 %i.aba, -2
  call void @_ZdlPvm(ptr noundef %i.aaz, i64 noundef %i.abb) #41
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit491

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit491: ; preds = %_ZN4tlog7warningIJRNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEEvN3fmt3v127fstringIJDpT_EE1tEDpOSC_.exit, %bb.ed
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from..thread957

bb.ee:                                            ; preds = %.from.1428, %.from.1431
  %.pn337 = phi { ptr, i32 } [ %i.aau, %.from.1428 ], [ %i.aat, %.from.1431 ] ; 2 uses
  %i.abc = load i8, ptr %28, align 8
  %i.abd = trunc i8 %i.abc to i1
  br i1 %i.abd, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from., label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from.: ; preds = %bb.ee
  %i.abe = load ptr, ptr %i.aaa, align 8, !tbaa !74
  %i.abf = load i64, ptr %28, align 8
  %i.abg = and i64 %i.abf, -2
  call void @_ZdlPvm(ptr noundef %i.abe, i64 noundef %i.abg) #41
  br label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492: ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from.1437, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from., %bb.ee
  %.pn337.pn = phi { ptr, i32 } [ %i.aas, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from.1437 ], [ %.pn337, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit492.from. ], [ %.pn337, %bb.ee ]
  %.19 = extractvalue { ptr, i32 } %.pn337.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #37
  br label %.from.1796

bb.ef:                                            ; preds = %.from..thread955
  %i.abh = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc2096 unwind label %_ZNSt3__110unique_ptrIA_hNS_14default_deleteIS1_EEED2B8ne180100Ev.exit16.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc2096:                                       ; preds = %bb.ef
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !98
  invoke void @_ZN4tlog6Logger3logIJRjEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.abi, i32 noundef 8, ptr nonnull @.str.40, i64 54, ptr noundef nonnull align 4 dereferenceable(4) %i.wu)
          to label %_ZN4tlog7warningIJRjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit unwind label %_ZNSt3__110unique_ptrIA_hNS_14default_deleteIS1_EEED2B8ne180100Ev.exit16.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from..thread957: ; preds = %.noexc2088, %_ZN4tlog7warningIJmEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS4_.exit, %bb.dr, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit491, %.noexc2087, %bb.du
  store i8 0, ptr %.reload.addr2022, align 8, !tbaa !74
  %i.abj = getelementptr inbounds nuw i8, ptr %i.i, i64 1068 ; 2 uses
  store i8 0, ptr %i.abj, align 4, !tbaa !171
  store i8 0, ptr %.reload.addr1995, align 4, !tbaa !74
  %i.abk = getelementptr inbounds nuw i8, ptr %i.i, i64 1052 ; 2 uses
  store i8 0, ptr %i.abk, align 4, !tbaa !173
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

_ZN4tlog7warningIJRjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit: ; preds = %.noexc2096, %.from..thread955, %.from..thread955, %.from..thread955
  store i8 0, ptr %.reload.addr2022, align 8, !tbaa !74
  %i.abl = getelementptr inbounds nuw i8, ptr %i.i, i64 1068 ; 6 uses
  store i8 0, ptr %i.abl, align 4, !tbaa !171
  store i8 0, ptr %.reload.addr1995, align 4, !tbaa !74
  %i.abm = getelementptr inbounds nuw i8, ptr %i.i, i64 1052 ; 7 uses
  store i8 0, ptr %i.abm, align 4, !tbaa !173
  %i.abn = icmp eq i32 %i.wv, 0
  br i1 %i.abn, label %bb.eg, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

bb.eg:                                            ; preds = %_ZN4tlog7warningIJRjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit
  %i.abo = getelementptr inbounds nuw i8, ptr %i.i, i64 992
  %i.abp = getelementptr inbounds nuw i8, ptr %i.i, i64 1000
  %i.abq = load i32, ptr %i.abp, align 8, !tbaa !633
  %i.abr = uitofp i32 %i.abq to float
  %i.abs = fmul nnan float %i.abr, f0x37800000
  %i.abt = load <2 x i32>, ptr %i.abo, align 8, !tbaa !120
  %i.abu = uitofp <2 x i32> %i.abt to <2 x float>
  %i.abv = fmul nnan <2 x float> %i.abu, splat (float f0x37800000)
  store <2 x float> %i.abv, ptr %.reload.addr2022, align 8
  %.sroa.6798.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1064
  store float %i.abs, ptr %.sroa.6798.0..sroa_idx, align 8
  store i8 1, ptr %i.abl, align 4, !tbaa !171
  %i.abw = getelementptr inbounds nuw i8, ptr %i.i, i64 956
  %i.abx = getelementptr inbounds nuw i8, ptr %i.i, i64 980
  %i.aby = load <2 x i32>, ptr %i.abx, align 4, !tbaa !120
  %i.abz = uitofp <2 x i32> %i.aby to <2 x float>
  %i.aca = fmul nnan <2 x float> %i.abz, splat (float f0x30800000) ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %i.i, i64 988
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !634
  %i.acd = uitofp i32 %i.acc to float
  %i.ace = fmul nnan float %i.acd, f0x30800000
  %50 = load <8 x i32>, ptr %i.abw, align 4       ; 2 uses
  %i.acf = shufflevector <8 x i32> %50, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 4>
  %i.acg = uitofp <4 x i32> %i.acf to <4 x float>
  %i.ach = fmul nnan <4 x float> %i.acg, splat (float f0x30800000) ; 3 uses
  %i.aci = shufflevector <8 x i32> %50, <8 x i32> poison, <2 x i32> <i32 2, i32 5>
  %i.acj = uitofp <2 x i32> %i.aci to <2 x float>
  %i.ack = fmul nnan <2 x float> %i.acj, splat (float f0x30800000)
  %i.acl = shufflevector <4 x float> %i.ach, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.acm = shufflevector <4 x float> %i.ach, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.acn = fadd <2 x float> %i.acl, %i.acm
  %i.aco = fadd <2 x float> %i.acn, %i.ack        ; 3 uses
  %i.acp = shufflevector <2 x float> %i.aco, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %shift = shufflevector <2 x float> %i.aca, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.aca, %shift
  %i.acq = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.acr = fadd float %i.acq, %i.ace              ; 2 uses
  %i.acs = extractelement <2 x float> %i.aco, i64 0
  %i.act = fcmp ogt float %i.acs, 0.000000e+00
  %i.acu = extractelement <2 x float> %i.aco, i64 1
  %i.acv = fcmp ogt float %i.acu, 0.000000e+00
  %or.cond38 = select i1 %i.act, i1 %i.acv, i1 false
  %i.acw = fcmp ogt float %i.acr, 0.000000e+00
  %or.cond40 = select i1 %or.cond38, i1 %i.acw, i1 false
  br i1 %or.cond40, label %bb.eh, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

bb.eh:                                            ; preds = %bb.eg
  %i.acx = invoke <2 x float> @_ZN3tev8whiteD65Ev()
          to label %bb.ei unwind label %.from.1793

bb.ei:                                            ; preds = %bb.eh
  %i.acy = insertelement <2 x float> poison, float %i.acr, i64 0
  %i.acz = shufflevector <2 x float> %i.acy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ada = fdiv <2 x float> %i.aca, %i.acz
  %i.adb = fdiv <4 x float> %i.ach, %i.acp
  %i.adc = load i8, ptr %i.abm, align 4, !tbaa !173, !range !174, !noundef !175
  %i.add = trunc nuw i8 %i.adc to i1
  store <4 x float> %i.adb, ptr %.reload.addr1995, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1036
  store <2 x float> %i.ada, ptr %.sroa.8.0..sroa_idx, align 4
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 1044
  store <2 x float> %i.acx, ptr %.sroa.10.0..sroa_idx, align 4
  br i1 %i.add, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit, label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from.1440

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from.1440: ; preds = %bb.ei
  store i8 1, ptr %i.abm, align 4, !tbaa !173
  br label %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

.from.1793:                                       ; preds = %bb.eh
  %i.ade = landingpad { ptr, i32 }
          catch ptr null
  %i.adf = extractvalue { ptr, i32 } %i.ade, 0
  br label %.from.1796

_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit: ; preds = %bb.ei, %bb.eg, %_ZN4tlog7warningIJRjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from.1440, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from..thread957
  %i.adg = phi ptr [ %i.abk, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from..thread957 ], [ %i.abm, %bb.eg ], [ %i.abm, %_ZN4tlog7warningIJRjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit ], [ %i.abm, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from.1440 ], [ %i.abm, %bb.ei ] ; 2 uses
  %i.adh = phi ptr [ %i.abj, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from..thread957 ], [ %i.abl, %bb.eg ], [ %i.abl, %_ZN4tlog7warningIJRjEEEvN3fmt3v127fstringIJDpT_EE1tEDpOS5_.exit ], [ %i.abl, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit.from.1440 ], [ %i.abl, %bb.ei ] ; 2 uses
  %.spill.addr1907 = getelementptr inbounds nuw i8, ptr %i.i, i64 856 ; 2 uses
  store ptr %i.adh, ptr %.spill.addr1907, align 8
  %.spill.addr1904 = getelementptr inbounds nuw i8, ptr %i.i, i64 848 ; 2 uses
  store ptr %i.adg, ptr %.spill.addr1904, align 8
  %i.adi = getelementptr inbounds nuw i8, ptr %i.i, i64 1004
  %i.adj = load i32, ptr %i.adi, align 4, !tbaa !635 ; 2 uses
  store i32 %i.adj, ptr %.reload.addr2043, align 8, !tbaa !120
  switch i32 %i.adj, label %bb.ej [
    i32 0, label %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
    i32 1, label %.from.1464
    i32 2, label %.from.1460
    i32 4, label %.from.1456
    i32 8, label %.from.1452
  ]

.from.1464:                                       ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  br label %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

.from.1460:                                       ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  br label %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

.from.1456:                                       ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  br label %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

.from.1452:                                       ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  br label %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit

bb.ej:                                            ; preds = %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.adk = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4tlog6Logger6globalEv()
          to label %.noexc493 unwind label %.from.1788

.noexc493:                                        ; preds = %bb.ej
  %i.adl = load ptr, ptr %i.adk, align 8, !tbaa !98
  invoke void @_ZN4tlog6Logger3logIJRjEEEvNS_9ESeverityEN3fmt3v127fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(56) %i.adl, i32 noundef 8, ptr nonnull @.str.102, i64 63, ptr noundef nonnull align 4 dereferenceable(4) %.reload.addr2043)
          to label %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit unwind label %.from.1788

.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit: ; preds = %.noexc493, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit, %.from.1452, %.from.1456, %.from.1460, %.from.1464
  %.not1068 = phi i1 [ true, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit ], [ false, %.from.1452 ], [ false, %.from.1464 ], [ false, %.from.1460 ], [ false, %.from.1456 ], [ true, %.noexc493 ] ; 2 uses
  %.sroa.7.0.i = phi i64 [ 0, %_ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit ], [ 4294967299, %.from.1452 ], [ 4294967298, %.from.1464 ], [ 4294967297, %.from.1460 ], [ 4294967296, %.from.1456 ], [ 0, %.noexc493 ] ; 2 uses
  %.sroa.7.0.i.spill.addr = getelementptr inbounds nuw i8, ptr %i.i, i64 864 ; 4 uses
  store i64 %.sroa.7.0.i, ptr %.sroa.7.0.i.spill.addr, align 8
  %.not1068.spill.addr = getelementptr inbounds nuw i8, ptr %i.i, i64 1119 ; 3 uses
  store i1 %.not1068, ptr %.not1068.spill.addr, align 1
  %i.adm = getelementptr inbounds nuw i8, ptr %i.i, i64 904 ; 10 uses
  %i.adn = load i32, ptr %i.adm, align 8, !tbaa !162 ; 3 uses
  %i.ado = icmp sgt i32 %i.adn, 0
  %i.adp = zext i1 %i.ado to i8
  store i8 %i.adp, ptr %.reload.addr2045, align 4, !tbaa !165
  %i.adq = call i32 @llvm.abs.i32(i32 %i.adn, i1 true) ; 2 uses
  store i32 %i.adq, ptr %i.adm, align 8, !tbaa !162
  %i.adr = icmp eq i32 %i.adn, 0
  %i.ads = getelementptr inbounds nuw i8, ptr %i.i, i64 900 ; 9 uses
  %i.adt = load i32, ptr %i.ads, align 4          ; 2 uses
  %i.adu = icmp slt i32 %i.adt, 1
  %or.cond43 = select i1 %i.adr, i1 true, i1 %i.adu
  br i1 %or.cond43, label %bb.ek, label %bb.eo

bb.ek:                                            ; preds = %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  %i.adv = call ptr @__cxa_allocate_exception(i64 16) #37 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #37
  %i.adw = load i32, ptr %i.ads, align 4, !tbaa !120, !noalias !636
  store i32 %i.adw, ptr %.reload.addr2005, align 16, !tbaa !74, !noalias !636
  %i.adx = getelementptr inbounds nuw i8, ptr %i.i, i64 432
  %i.ady = load i32, ptr %i.adm, align 8, !tbaa !120, !noalias !636
  store i32 %i.ady, ptr %i.adx, align 16, !tbaa !74, !noalias !636
  invoke void @_ZN3fmt3v127vformatENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__1::basic_string") align 8 %29, ptr nonnull @.str.41, i64 35, i64 17, ptr nonnull %.reload.addr2005)
          to label %bb.el unwind label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit497.thread

bb.el:                                            ; preds = %bb.ek
  invoke void @_ZNSt13runtime_errorC2ERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.adv, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.em unwind label %bb.en

bb.em:                                            ; preds = %bb.el
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN3tev14ImageLoadErrorE, i64 16), ptr %i.adv, align 8, !tbaa !81
  invoke void @__cxa_throw(ptr nonnull %i.adv, ptr nonnull @_ZTIN3tev14ImageLoadErrorE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #40
          to label %bb.ky unwind label %.thread2248

.from.1788:                                       ; preds = %bb.ej, %.noexc493
  %i.adz = landingpad { ptr, i32 }
          catch ptr null
  %i.aea = extractvalue { ptr, i32 } %i.adz, 0
  br label %.from.1796

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit497.thread: ; preds = %bb.ek
  %i.aeb = landingpad { ptr, i32 }
          catch ptr null
  br label %.from.1786.sink.split

bb.en:                                            ; preds = %bb.el
  %i.aec = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.aed = load i8, ptr %29, align 8
  %i.aee = trunc i8 %i.aed to i1
  br i1 %i.aee, label %.split962, label %.from.1786.sink.split

.thread2248:                                      ; preds = %bb.em
  %i.aef = landingpad { ptr, i32 }
          catch ptr null                          ; 2 uses
  %i.aeg = load i8, ptr %29, align 8
  %i.aeh = trunc i8 %i.aeg to i1
  br i1 %i.aeh, label %.split962, label %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4971783

.split962:                                        ; preds = %.thread2248, %bb.en
  %i.aei = phi { ptr, i32 } [ %i.aef, %.thread2248 ], [ %i.aec, %bb.en ]
  %.03122250 = phi i1 [ false, %.thread2248 ], [ true, %bb.en ]
  %i.aej = getelementptr inbounds nuw i8, ptr %29, i64 16
  %i.aek = load ptr, ptr %i.aej, align 8, !tbaa !74
  %i.ael = load i64, ptr %29, align 8
  %i.aem = and i64 %i.ael, -2
  call void @_ZdlPvm(ptr noundef %i.aek, i64 noundef %i.aem) #41
  %.20963 = extractvalue { ptr, i32 } %i.aei, 0   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br i1 %.03122250, label %.from.1786, label %.from.1796

.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit4971783: ; preds = %.thread2248
  %.202254 = extractvalue { ptr, i32 } %i.aef, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %.from.1796

.from.1786.sink.split:                            ; preds = %bb.en, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit497.thread
  %.sink2512 = phi { ptr, i32 } [ %i.aeb, %.from._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED2Ev.exit497.thread ], [ %i.aec, %bb.en ]
  %.20960 = extractvalue { ptr, i32 } %.sink2512, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #37
  br label %.from.1786

.from.1786:                                       ; preds = %.from.1786.sink.split, %.split962
  %.20961 = phi ptr [ %.20963, %.split962 ], [ %.20960, %.from.1786.sink.split ]
  call void @__cxa_free_exception(ptr %i.adv) #37
  br label %.from.1796

bb.eo:                                            ; preds = %.from._ZNSt3__18optionalINS_5arrayIN7nanogui5ArrayIfLm2EEELm4EEEEaSB8ne180100IS5_vEERS6_OT_.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.reload.addr2020, i8 0, i64 16, i1 false)
  %i.aen = select i1 %i.bo, i64 3, i64 4          ; 2 uses
  store i64 %i.aen, ptr %.reload.addr2035, align 8, !tbaa !117
  %i.aeo = load i8, ptr %.reload.addr2047, align 2, !tbaa !165, !range !174, !noundef !175
  %i.aep = trunc nuw i8 %i.aeo to i1
  br i1 %i.aep, label %bb.ep, label %.from.1500

bb.ep:                                            ; preds = %bb.eo
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.i, i64 928
  %i.aer = load i32, ptr %i.aeq, align 8, !tbaa !637 ; 2 uses
  %.not338 = icmp eq i32 %i.aer, 0
  %i.aes = load i16, ptr %i.pq, align 2
  %i.aet = zext nneg i16 %i.aes to i32
  %i.aeu = shl nuw i32 1, %i.aet
  %i.aev = select i1 %.not338, i32 %i.aeu, i32 %i.aer
  %i.aew = zext i32 %i.aev to i64                 ; 2 uses
  %i.aex = mul nuw nsw i64 %i.aen, %i.aew         ; 3 uses
  %i.aey = getelementptr inbounds nuw i8, ptr %i.i, i64 760 ; 2 uses
end_hunk_1
