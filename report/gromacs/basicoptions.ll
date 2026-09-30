Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/basicoptions?download=true
inline.NumInlined: 6252
inline.NumDeleted: 2968
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN3gmx17EnumOptionStorageD2Ev:bb.a
bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.u = landingpad { ptr, i32 }
          catch ptr null
  %i.v = extractvalue { ptr, i32 } %i.u, 0
  tail call void @__clang_call_terminate(ptr %i.v) #26, !inline_history !377
  unreachable

_ZN3gmx26OptionValueConverterSimpleIiED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIiEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i1, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i.i:        ; preds = %_ZN3gmx26OptionValueConverterSimpleIiED2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 4) #29, !inline_history !378
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i.i, %_ZN3gmx26OptionValueConverterSimpleIiED2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !357  ; 3 uses
  %.not.i1.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i1.i.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit.i.i, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i.i.i: ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #27, !inline_history !8
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit.i.i: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i.i.i, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmx27OptionStorageTemplateSimpleIiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !379
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #29, !inline_history !378
  br label %_ZN3gmx27OptionStorageTemplateSimpleIiED2Ev.exit

_ZN3gmx27OptionStorageTemplateSimpleIiED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit.i.i, %bb.d
  tail call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(193) %0) #27, !inline_history !378
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx17EnumOptionStorageD0Ev(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx17EnumOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(240) dereferenceable(240) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 240) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN3gmx17EnumOptionStorage10optionInfoEv(ptr noundef nonnull align 8 dereferenceable(240) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3gmx17EnumOptionStorage10typeStringB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(240) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !48
  store i32 1836412517, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 4, ptr %i.b, align 8, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 0, ptr %i.c, align 4, !tbaa !52
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIiE16processSetValuesEPSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %1) unnamed_addr #12 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx17BooleanOptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx17IntegerOptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx25UnsignedIntegerOptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx15Int64OptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx23UnsignedInt64OptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16DoubleOptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: nounwind
declare void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx15FloatOptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16StringOptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx14EnumOptionInfoD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #11 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx10OptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #27
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #29
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #27 ; 0 uses
  tail call void @_ZSt9terminatev() #26
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIbEC2INS_13BooleanOptionEEERKNS_14OptionTemplateIbT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIbEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr null, ptr %i.a, align 8, !tbaa !364
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 0, ptr %i.b, align 8, !tbaa !375
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr null, ptr %i.c, align 8, !tbaa !364
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.d, align 8, !tbaa !375
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !365
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !887
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !888
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !889
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114
  %6 = lshr i64 %i.n, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.o = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateIbE11createStoreEPSt6vectorIbSaIbEEPbPii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr") align 8 %i.f, ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.l, i32 noundef %i.o)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  store ptr null, ptr %i.p, align 8, !tbaa !890
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !114  ; 2 uses
  %i.s = and i64 %i.r, 512
  %.not42 = icmp eq i64 %i.s, 0
  br i1 %.not42, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !891
  %.not = icmp eq ptr %i.u, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !892
  %.not26 = icmp eq ptr %i.w, null
  br i1 %.not26, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.x = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread37

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateIbEC2INS_13BooleanOptionEEERKNS_14OptionTemplateIbT_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.y, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.x, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.x, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.s unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIbEESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.p, %bb.n
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.thread:                                          ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread37:                                        ; preds = %bb.f
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.k:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.l, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread37
  %.pn.pn36.ph = phi { ptr, i32 } [ %i.ac, %.thread37 ], [ %i.ab, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %.pn.pn36 = phi { ptr, i32 } [ %i.ad, %bb.k ], [ %.pn.pn36.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.x) #27
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.ae = or i64 %i.r, 2
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !114
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !891 ; 2 uses
  %.not27 = icmp eq ptr %i.ag, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx21OptionStorageTemplateIbE15setDefaultValueERKb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ag)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !892 ; 2 uses
  %.not28 = icmp eq ptr %i.ai, null
  br i1 %.not28, label %.thread40, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateIbE20setDefaultValueIfSetERKb(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 1 dereferenceable(1) %i.ai)
          to label %.thread40 unwind label %bb.j

.thread40:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn36, %bb.l ], [ %i.ad, %bb.k ], [ %i.aa, %bb.j ] ; 2 uses
  %i.aj = load ptr, ptr %i.p, align 8, !tbaa !363 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit, label %_ZNKSt14default_deleteIbEclEPb.exit.i

_ZNKSt14default_deleteIbEclEPb.exit.i:            ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef 1) #29
  br label %_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit

_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIbEclEPb.exit.i
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !70  ; 3 uses
  %.not.i33 = icmp eq ptr %i.ak, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIbEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIbEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIbEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !64
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(8) %i.ak) #27, !inline_history !23
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIbEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIbEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIbEEEclEPS2_.exit.i, %_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.z, %bb.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIbEEEclEPS2_.exit.i ]
  %i.ao = load ptr, ptr %i.a, align 8, !tbaa !364 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIbEESt14default_deleteIS2_EED2Ev.exit
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !365 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.ao to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = ashr exact i64 %i.as, 3
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.au
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.as) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIbEESt14default_deleteIS2_EED2Ev.exit, %bb.r
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx27OptionStorageTemplateSimpleIbED2Ev(ptr noundef nonnull align 8 dead_on_return(209) dereferenceable(209) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx27OptionStorageTemplateSimpleIbEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN3gmx26OptionValueConverterSimpleIbED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN3gmx26OptionValueConverterSimpleIbED2Ev.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIbEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !363  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit.i, label %_ZNKSt14default_deleteIbEclEPb.exit.i.i

_ZNKSt14default_deleteIbEclEPb.exit.i.i:          ; preds = %_ZN3gmx26OptionValueConverterSimpleIbED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 1) #29, !inline_history !894
  br label %_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit.i

_ZNSt10unique_ptrIbSt14default_deleteIbEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIbEclEPb.exit.i.i, %_ZN3gmx26OptionValueConverterSimpleIbED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !70   ; 3 uses
  %.not.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIbEESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIbEEEclEPS2_.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN3gmx20OptionValueStoreNullIbED2Ev:bb.a
bb.c:                                             ; preds = %_ZN3gmx22OptionValueStoreVectorIbED2Ev.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !365  ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 3
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.q
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.o) #29
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %_ZN3gmx22OptionValueStoreVectorIbED2Ev.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIbED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx20OptionValueStoreNullIbEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx22OptionValueStoreVectorIbEE, i64 16), ptr %i.a, align 8, !tbaa !64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !413  ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i.i, label %_ZN3gmx22OptionValueStoreVectorIbED2Ev.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !414
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.h) #29, !inline_history !900
  br label %_ZN3gmx22OptionValueStoreVectorIbED2Ev.exit.i

_ZN3gmx22OptionValueStoreVectorIbED2Ev.exit.i:    ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !364  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZN3gmx20OptionValueStoreNullIbED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN3gmx22OptionValueStoreVectorIbED2Ev.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !365  ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n                       ; 2 uses
  %i.p = ashr exact i64 %i.o, 3
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.q
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.o) #29, !inline_history !901
  br label %_ZN3gmx20OptionValueStoreNullIbED2Ev.exit

_ZN3gmx20OptionValueStoreNullIbED2Ev.exit:        ; preds = %_ZN3gmx22OptionValueStoreVectorIbED2Ev.exit.i, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN3gmx20OptionValueStoreNullIbE10valueCountEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !408  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !364
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load i32, ptr %i.e, align 8, !tbaa !375
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !364
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %.tr.i = trunc i64 %i.j to i32
  %i.k = shl i32 %.tr.i, 3
  %i.l = add i32 %i.k, %i.f
  ret i32 %i.l
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN3gmx20OptionValueStoreNullIbE6valuesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  %.not.i.i = icmp eq ptr %i.b, null
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.g
  %spec.select.i.i = select i1 %.not.i.i, ptr null, ptr %i.h
  %.fca.0.insert.i.i = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %.fca.1.insert.i.i = insertvalue { ptr, ptr } %.fca.0.insert.i.i, ptr %spec.select.i.i, 1
  ret { ptr, ptr } %.fca.1.insert.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIbE5clearEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !413  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !416
  %.not.i.i.i = icmp eq ptr %i.d, %i.b
  br i1 %.not.i.i.i, label %_ZN3gmx22OptionValueStoreVectorIbE5clearEv.exit, label %_ZSt8_DestroyIPN3gmx22OptionValueStoreVectorIbE4BoolES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN3gmx22OptionValueStoreVectorIbE4BoolES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !416
  br label %_ZN3gmx22OptionValueStoreVectorIbE5clearEv.exit

_ZN3gmx22OptionValueStoreVectorIbE5clearEv.exit:  ; preds = %bb.a, %_ZSt8_DestroyIPN3gmx22OptionValueStoreVectorIbE4BoolES3_EvT_S5_RSaIT0_E.exit.i.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !408  ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !364
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.g, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIbE7reserveEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN3gmx22OptionValueStoreVectorIbE7reserveEm(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIbE6appendERKb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @_ZN3gmx22OptionValueStoreVectorIbE6appendERKb(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %1)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418
  tail call void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !419  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 40 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !902

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFbRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

declare void @_ZN3gmx12formatStringB5cxx11EPKcz(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIiEC2INS_13IntegerOptionEEERKNS_14OptionTemplateIiT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIiEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !904
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !905
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !906
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateIiE11createStoreEPSt6vectorIiSaIiEEPiS6_i(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.31") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !358
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !907
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !908
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread37

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateIiEC2INS_13IntegerOptionEEERKNS_14OptionTemplateIiT_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.s unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.p, %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.thread:                                          ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread37:                                        ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.k:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.l, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread37
  %.pn.pn36.ph = phi { ptr, i32 } [ %i.y, %.thread37 ], [ %i.x, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %.pn.pn36 = phi { ptr, i32 } [ %i.z, %bb.k ], [ %.pn.pn36.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.aa = or i64 %i.n, 2
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !907 ; 2 uses
  %.not27 = icmp eq ptr %i.ac, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx21OptionStorageTemplateIiE15setDefaultValueERKi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !908 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread40, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateIiE20setDefaultValueIfSetERKi(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae)
          to label %.thread40 unwind label %bb.j

.thread40:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn36, %bb.l ], [ %i.z, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !117 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit, label %_ZNKSt14default_deleteIiEclEPi.exit.i

_ZNKSt14default_deleteIiEclEPi.exit.i:            ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 4) #29
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIiEclEPi.exit.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !357 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ag, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #27, !inline_history !2
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i ]
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !120 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !379
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit, %bb.r
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx27OptionStorageTemplateSimpleIiED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(193) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx27OptionStorageTemplateSimpleIiEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFiRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN3gmx26OptionValueConverterSimpleIiED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN3gmx26OptionValueConverterSimpleIiED2Ev.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIiEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i, label %_ZNKSt14default_deleteIiEclEPi.exit.i.i

_ZNKSt14default_deleteIiEclEPi.exit.i.i:          ; preds = %_ZN3gmx26OptionValueConverterSimpleIiED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 4) #29, !inline_history !910
  br label %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i

_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIiEclEPi.exit.i.i, %_ZN3gmx26OptionValueConverterSimpleIiED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !357  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIiEESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIiEEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIiSt14default_deleteIiEED2Ev.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
end_hunk_1
begin_hunk_2_@_ZN3gmx20OptionValueStoreNullIiE10valueCountEv:bb.a
  ret i32 %i.j
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN3gmx20OptionValueStoreNullIiE6valuesEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.h
  %.fca.0.insert.i = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %.fca.1.insert.i = insertvalue { ptr, ptr } %.fca.0.insert.i, ptr %i.i, 1
  ret { ptr, ptr } %.fca.1.insert.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIiE5clearEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !120  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !119
  %.not.i.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i.i, label %_ZN3gmx22OptionValueStoreVectorIiE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.a
  store ptr %i.c, ptr %i.d, align 8, !tbaa !119
  br label %_ZN3gmx22OptionValueStoreVectorIiE5clearEv.exit

_ZN3gmx22OptionValueStoreVectorIiE5clearEv.exit:  ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIiE7reserveEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !120
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2
  %i.j = add i64 %i.i, %1                         ; 4 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !379
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.g
  %i.p = ashr exact i64 %i.o, 2
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i, label %_ZN3gmx22OptionValueStoreVectorIiE7reserveEm.exit

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.r = shl nuw nsw i64 %i.j, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 4 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !120  ; 4 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !119
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !379
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #29
  br label %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i

_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !120
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.h
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !119
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.j
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !379
  br label %_ZN3gmx22OptionValueStoreVectorIiE7reserveEm.exit

_ZN3gmx22OptionValueStoreVectorIiE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIiE6appendERKi(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !423  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !119  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !379
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !111
  store i32 %i.g, ptr %i.d, align 4, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.h, ptr %i.c, align 8, !tbaa !119
  br label %_ZN3gmx22OptionValueStoreVectorIiE6appendERKi.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !120  ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !111
  store i32 %i.v, ptr %i.u, align 4, !tbaa !111
  %i.w = icmp sgt i64 %i.l, 0
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !379
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !120
  store ptr %i.x, ptr %i.c, align 8, !tbaa !119
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !379
  br label %_ZN3gmx22OptionValueStoreVectorIiE6appendERKi.exit

_ZN3gmx22OptionValueStoreVectorIiE6appendERKi.exit: ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIjEC2INS_21UnsignedIntegerOptionEEERKNS_14OptionTemplateIjT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIjEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !913
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !914
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !915
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateIjE11createStoreEPSt6vectorIjSaIjEEPjPii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.65") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !916
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !917
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !918
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread37

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateIjEC2INS_21UnsignedIntegerOptionEEERKNS_14OptionTemplateIjT_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.s unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIjEESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.p, %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.thread:                                          ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread37:                                        ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.k:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.l, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread37
  %.pn.pn36.ph = phi { ptr, i32 } [ %i.y, %.thread37 ], [ %i.x, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %.pn.pn36 = phi { ptr, i32 } [ %i.z, %bb.k ], [ %.pn.pn36.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.aa = or i64 %i.n, 2
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !917 ; 2 uses
  %.not27 = icmp eq ptr %i.ac, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx21OptionStorageTemplateIjE15setDefaultValueERKj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ac)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !918 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread40, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateIjE20setDefaultValueIfSetERKj(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae)
          to label %.thread40 unwind label %bb.j

.thread40:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn36, %bb.l ], [ %i.z, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !117 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit, label %_ZNKSt14default_deleteIjEclEPj.exit.i

_ZNKSt14default_deleteIjEclEPj.exit.i:            ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 4) #29
  br label %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit

_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIjEclEPj.exit.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !382 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ag, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIjEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIjEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIjEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #27, !inline_history !25
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIjEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIjEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIjEEEclEPS2_.exit.i, %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIjEEEclEPS2_.exit.i ]
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !149 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIjEESt14default_deleteIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !383
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIjEESt14default_deleteIS2_EED2Ev.exit, %bb.r
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx27OptionStorageTemplateSimpleIjED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(193) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx27OptionStorageTemplateSimpleIjEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN3gmx26OptionValueConverterSimpleIjED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN3gmx26OptionValueConverterSimpleIjED2Ev.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIjEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit.i, label %_ZNKSt14default_deleteIjEclEPj.exit.i.i

_ZNKSt14default_deleteIjEclEPj.exit.i.i:          ; preds = %_ZN3gmx26OptionValueConverterSimpleIjED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 4) #29, !inline_history !920
  br label %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit.i

_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIjEclEPj.exit.i.i, %_ZN3gmx26OptionValueConverterSimpleIjED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !382  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIjEESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIjEEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIjEEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIjSt14default_deleteIjEED2Ev.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
end_hunk_2
begin_hunk_3_@_ZN3gmx20OptionValueStoreNullIjE5clearEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIjE7reserveEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !149
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 2
  %i.j = add i64 %i.i, %1                         ; 4 uses
  %i.k = icmp ugt i64 %i.j, 2305843009213693951
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !383
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.g
  %i.p = ashr exact i64 %i.o, 2
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i, label %_ZN3gmx22OptionValueStoreVectorIjE7reserveEm.exit

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.r = shl nuw nsw i64 %i.j, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 4 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !149  ; 4 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !148
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr align 4 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !383
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #29
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !149
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.h
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !148
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.j
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !383
  br label %_ZN3gmx22OptionValueStoreVectorIjE7reserveEm.exit

_ZN3gmx22OptionValueStoreVectorIjE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIjE6appendERKj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !431  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !148  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !383
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !111
  store i32 %i.g, ptr %i.d, align 4, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.h, ptr %i.c, align 8, !tbaa !148
  br label %_ZN3gmx22OptionValueStoreVectorIjE6appendERKj.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !149  ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775804
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 2                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 2305843009213693951)
  %i.r = select i1 %i.p, i64 2305843009213693951, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load i32, ptr %1, align 4, !tbaa !111
  store i32 %i.v, ptr %i.u, align 4, !tbaa !111
  %i.w = icmp sgt i64 %i.l, 0
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.t, ptr align 4 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !383
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !149
  store ptr %i.x, ptr %i.c, align 8, !tbaa !148
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !383
  br label %_ZN3gmx22OptionValueStoreVectorIjE6appendERKj.exit

_ZN3gmx22OptionValueStoreVectorIjE6appendERKj.exit: ; preds = %bb.b, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418
  tail call void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !419  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 40 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !925

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFjRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIlEC2INS_11Int64OptionEEERKNS_14OptionTemplateIlT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIlEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !927
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !928
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !929
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateIlE11createStoreEPSt6vectorIlSaIlEEPlPii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.99") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !930
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !931
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !932
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread37

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateIlEC2INS_11Int64OptionEEERKNS_14OptionTemplateIlT_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.s unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIlEESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.p, %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.thread:                                          ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread37:                                        ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.k:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.l, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread37
  %.pn.pn36.ph = phi { ptr, i32 } [ %i.y, %.thread37 ], [ %i.x, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %.pn.pn36 = phi { ptr, i32 } [ %i.z, %bb.k ], [ %.pn.pn36.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.aa = or i64 %i.n, 2
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !931 ; 2 uses
  %.not27 = icmp eq ptr %i.ac, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx21OptionStorageTemplateIlE15setDefaultValueERKl(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !932 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread40, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateIlE20setDefaultValueIfSetERKl(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.thread40 unwind label %bb.j

.thread40:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn36, %bb.l ], [ %i.z, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !176 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit, label %_ZNKSt14default_deleteIlEclEPl.exit.i

_ZNKSt14default_deleteIlEclEPl.exit.i:            ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit

_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIlEclEPl.exit.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !386 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ag, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIlEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIlEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIlEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #27, !inline_history !26
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIlEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIlEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIlEEEclEPS2_.exit.i, %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIlEEEclEPS2_.exit.i ]
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !179 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIlEESt14default_deleteIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !387
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIlEESt14default_deleteIS2_EED2Ev.exit, %bb.r
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx27OptionStorageTemplateSimpleIlED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(193) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx27OptionStorageTemplateSimpleIlEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN3gmx26OptionValueConverterSimpleIlED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN3gmx26OptionValueConverterSimpleIlED2Ev.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIlEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit.i, label %_ZNKSt14default_deleteIlEclEPl.exit.i.i

_ZNKSt14default_deleteIlEclEPl.exit.i.i:          ; preds = %_ZN3gmx26OptionValueConverterSimpleIlED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 8) #29, !inline_history !934
  br label %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit.i

_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIlEclEPl.exit.i.i, %_ZN3gmx26OptionValueConverterSimpleIlED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !386  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIlEESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIlEEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIlEEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrIlSt14default_deleteIlEED2Ev.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
end_hunk_3
begin_hunk_4_@_ZN3gmx20OptionValueStoreNullIlE5clearEv:bb.a
; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIlE7reserveEm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !179
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 2 uses
  %i.i = ashr exact i64 %i.h, 3
  %i.j = add i64 %i.i, %1                         ; 4 uses
  %i.k = icmp ugt i64 %i.j, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #30
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !387
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = sub i64 %i.n, %i.g
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ult i64 %i.p, %i.j
  br i1 %i.q, label %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i, label %_ZN3gmx22OptionValueStoreVectorIlE7reserveEm.exit

_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.r = shl nuw nsw i64 %i.j, 3
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #28 ; 4 uses
  %i.t = load ptr, ptr %i.b, align 8, !tbaa !179  ; 4 uses
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !178
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = icmp sgt i64 %i.x, 0
  br i1 %i.y, label %bb.d, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i.i

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr align 8 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i.i: ; preds = %bb.d, %_ZNSt12_Vector_baseIlSaIlEE11_M_allocateEm.exit.i.i
  %.not.i8.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i8.i.i, label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i.i
  %i.z = load ptr, ptr %i.l, align 8, !tbaa !387
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.ab) #29
  br label %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.i

_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit.i.i
  store ptr %i.s, ptr %i.b, align 8, !tbaa !179
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.h
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !178
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.j
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !387
  br label %_ZN3gmx22OptionValueStoreVectorIlE7reserveEm.exit

_ZN3gmx22OptionValueStoreVectorIlE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIlSaIlEE13_M_deallocateEPlm.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20OptionValueStoreNullIlE6appendERKl(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !439  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !178  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !387
  %.not.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %1, align 8, !tbaa !173
  store i64 %i.g, ptr %i.d, align 8, !tbaa !173
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.h, ptr %i.c, align 8, !tbaa !178
  br label %_ZN3gmx22OptionValueStoreVectorIlE6appendERKl.exit

bb.c:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !179  ; 4 uses
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = icmp eq i64 %i.l, 9223372036854775800
  br i1 %i.m, label %bb.d, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #30
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.n = ashr exact i64 %i.l, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.n, i64 1)
  %i.o = add nsw i64 %.sroa.speculated.i.i.i.i, %i.n ; 2 uses
  %i.p = icmp ult i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.o, i64 1152921504606846975)
  %i.r = select i1 %i.p, i64 1152921504606846975, i64 %i.q ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #28 ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 %i.l ; 2 uses
  %i.v = load i64, ptr %1, align 8, !tbaa !173
  store i64 %i.v, ptr %i.u, align 8, !tbaa !173
  %i.w = icmp sgt i64 %i.l, 0
  br i1 %i.w, label %bb.e, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr align 8 %i.i, i64 %i.l, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !387
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.aa) #29
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.t, ptr %i.b, align 8, !tbaa !179
  store ptr %i.x, ptr %i.c, align 8, !tbaa !178
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.r
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !387
  br label %_ZN3gmx22OptionValueStoreVectorIlE6appendERKl.exit

_ZN3gmx22OptionValueStoreVectorIlE6appendERKl.exit: ; preds = %bb.b, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit
  %.07 = phi ptr [ %i.d, %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit ], [ %1, %bb.a ] ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !418
  tail call void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !419  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.07, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !57   ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %.07, i64 40 ; 2 uses
  %i.h = invoke noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i32 noundef 3)
          to label %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #26
  unreachable

_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit: ; preds = %.lr.ph, %bb.b
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 72) #29
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !939

._crit_edge:                                      ; preds = %_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFlRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISA_E.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateImEC2INS_19UnsignedInt64OptionEEERKNS_14OptionTemplateImT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateImEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !941
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !942
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !943
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateImE11createStoreEPSt6vectorImSaImEEPmPii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.130") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !944
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !945
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !946
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread37

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateImEC2INS_19UnsignedInt64OptionEEERKNS_14OptionTemplateImT_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.s unwind label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreImEESt14default_deleteIS2_EED2Ev.exit

bb.j:                                             ; preds = %bb.p, %bb.n
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.thread:                                          ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread37:                                        ; preds = %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.k:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.l, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread37
  %.pn.pn36.ph = phi { ptr, i32 } [ %i.y, %.thread37 ], [ %i.x, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.k
  %.pn.pn36 = phi { ptr, i32 } [ %i.z, %bb.k ], [ %.pn.pn36.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.m:                                             ; preds = %bb.b
  %i.aa = or i64 %i.n, 2
  store i64 %i.aa, ptr %i.m, align 8, !tbaa !114
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !945 ; 2 uses
  %.not27 = icmp eq ptr %i.ac, null
  br i1 %.not27, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN3gmx21OptionStorageTemplateImE15setDefaultValueERKm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ac)
          to label %bb.o unwind label %bb.j

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !946 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread40, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateImE20setDefaultValueIfSetERKm(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.thread40 unwind label %bb.j

.thread40:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn36, %bb.l ], [ %i.z, %bb.k ], [ %i.w, %bb.j ] ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !176 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit, label %_ZNKSt14default_deleteImEclEPm.exit.i

_ZNKSt14default_deleteImEclEPm.exit.i:            ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit

_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteImEclEPm.exit.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !390 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ag, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreImEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreImEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreImEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #27, !inline_history !27
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreImEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreImEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreImEEEclEPS2_.exit.i, %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreImEEEclEPS2_.exit.i ]
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !207 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreImEESt14default_deleteIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !391
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreImEESt14default_deleteIS2_EED2Ev.exit, %bb.r
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx27OptionStorageTemplateSimpleImED2Ev(ptr noundef nonnull align 8 dead_on_return(193) dereferenceable(193) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTVN3gmx27OptionStorageTemplateSimpleImEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !76
  invoke void @_ZNSt8_Rb_treeISt10type_indexSt4pairIKS0_St8functionIFmRKN3gmx3AnyEEEESt10_Select1stISA_ESt4lessIS0_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %i.c)
          to label %_ZN3gmx26OptionValueConverterSimpleImED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          catch ptr null
  %i.e = extractvalue { ptr, i32 } %i.d, 0
  tail call void @__clang_call_terminate(ptr %i.e) #26
  unreachable

_ZN3gmx26OptionValueConverterSimpleImED2Ev.exit:  ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateImEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !176  ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit.i, label %_ZNKSt14default_deleteImEclEPm.exit.i.i

_ZNKSt14default_deleteImEclEPm.exit.i.i:          ; preds = %_ZN3gmx26OptionValueConverterSimpleImED2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 8) #29, !inline_history !948
  br label %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit.i

_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteImEclEPm.exit.i.i, %_ZN3gmx26OptionValueConverterSimpleImED2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !390  ; 3 uses
  %.not.i1.i = icmp eq ptr %i.i, null
  br i1 %.not.i1.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreImEESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreImEEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreImEEEclEPS2_.exit.i.i: ; preds = %_ZNSt10unique_ptrImSt14default_deleteImEED2Ev.exit.i
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
end_hunk_4
begin_hunk_5_@_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm:bb.a

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check135, %vec.epilog.iter.check137, %vec.epilog.middle.block147
  %.06.i.i.i72.ph = phi ptr [ %1, %iter.check135 ], [ %i.ca, %vec.epilog.iter.check137 ], [ %i.ch, %vec.epilog.middle.block147 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.ck, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store i64 %i.i, ptr %.06.i.i.i72, align 8, !tbaa !173
  %i.ck = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ck, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPmmEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1066

bb.o:                                             ; preds = %bb.b
  %i.cl = load ptr, ptr %0, align 8, !tbaa !207   ; 5 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = sub i64 %i.f, %i.cm
  %i.co = ashr exact i64 %i.cn, 3                 ; 4 uses
  %i.cp = sub nsw i64 1152921504606846975, %i.co
  %i.cq = icmp ult i64 %i.cp, %2
  br i1 %i.cq, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %2)
  %i.cr = add nsw i64 %.sroa.speculated.i, %i.co  ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.co
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %i.cv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cw = sub i64 %i.cv, %i.cm                    ; 4 uses
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %iter.check193, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cx = shl nuw nsw i64 %i.cu, 3
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #28
  br label %iter.check193

iter.check193:                                    ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit
  %i.cz = phi ptr [ %i.cy, %bb.q ], [ null, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cw ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i.i.i.i75
  %i.dc = load i64, ptr %3, align 8, !tbaa !173   ; 3 uses
  %i.dd = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 3 uses
  %i.de = lshr exact i64 %i.dd, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 5 uses
  %min.iters.check179 = icmp ult i64 %i.dd, 24
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check193
  %min.iters.check181 = icmp ult i64 %i.dd, 120
  br i1 %min.iters.check181, label %vec.epilog.ph197, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.dg = and i64 %i.df, 12
  %n.vec183 = and i64 %i.df, 4611686018427387888  ; 4 uses
  %i.dh = shl i64 %n.vec183, 3
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh
  %broadcast.splatinsert184 = insertelement <4 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat185 = shufflevector <4 x i64> %broadcast.splatinsert184, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.ph182, %vector.body186
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body186 ] ; 2 uses
  %i.dj = shl i64 %index187, 3
  %next.gep188 = getelementptr i8, ptr %i.da, i64 %i.dj ; 4 uses
  %i.dk = getelementptr i8, ptr %next.gep188, i64 32
  %i.dl = getelementptr i8, ptr %next.gep188, i64 64
  %i.dm = getelementptr i8, ptr %next.gep188, i64 96
  store <4 x i64> %broadcast.splat185, ptr %next.gep188, align 8, !tbaa !173
  store <4 x i64> %broadcast.splat185, ptr %i.dk, align 8, !tbaa !173
  store <4 x i64> %broadcast.splat185, ptr %i.dl, align 8, !tbaa !173
  store <4 x i64> %broadcast.splat185, ptr %i.dm, align 8, !tbaa !173
  %index.next189 = add nuw i64 %index187, 16      ; 2 uses
  %i.dn = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.dn, label %middle.block190, label %vector.body186, !llvm.loop !1067

middle.block190:                                  ; preds = %vector.body186
  %cmp.n191 = icmp eq i64 %i.df, %n.vec183
  br i1 %cmp.n191, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block190
  %min.epilog.iters.check196 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check196, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph197, !prof !273

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check195
  %vec.epilog.resume.val192 = phi i64 [ %n.vec183, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec198 = and i64 %i.df, 4611686018427387900  ; 3 uses
  %i.do = shl i64 %n.vec198, 3
  %i.dp = getelementptr i8, ptr %i.da, i64 %i.do
  %broadcast.splatinsert199 = insertelement <4 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat200 = shufflevector <4 x i64> %broadcast.splatinsert199, <4 x i64> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph197
  %index202 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph197 ], [ %index.next204, %vec.epilog.vector.body201 ] ; 2 uses
  %i.dq = shl i64 %index202, 3
  %next.gep203 = getelementptr i8, ptr %i.da, i64 %i.dq
  store <4 x i64> %broadcast.splat200, ptr %next.gep203, align 8, !tbaa !173
  %index.next204 = add nuw i64 %index202, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next204, %n.vec198
  br i1 %i.dr, label %vec.epilog.middle.block205, label %vec.epilog.vector.body201, !llvm.loop !1068

vec.epilog.middle.block205:                       ; preds = %vec.epilog.vector.body201
  %cmp.n206 = icmp eq i64 %i.df, %n.vec198
  br i1 %cmp.n206, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block205
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.da, %iter.check193 ], [ %i.di, %vec.epilog.iter.check195 ], [ %i.dp, %vec.epilog.middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i64 %i.dc, ptr %.06.i.i.i.i.i.i.i77, align 8, !tbaa !173
  %i.ds = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ds, %i.db
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1069

_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block205, %middle.block190
  %i.dt = icmp sgt i64 %i.cw, 8
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !417

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %i.cl, i64 %i.cw, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPmmmmET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.du = icmp eq i64 %i.cw, 8
  br i1 %i.du, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load i64, ptr %i.cl, align 8, !tbaa !173
  store i64 %i.dv, ptr %i.cz, align 8, !tbaa !173
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %2 ; 3 uses
  %i.dx = sub i64 %i.f, %i.cv                     ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 8
  br i1 %i.dy, label %bb.u, label %bb.v, !prof !417

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr align 8 %1, i64 %i.dx, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.dz = icmp eq i64 %i.dx, 8
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = load i64, ptr %1, align 8, !tbaa !173
  store i64 %i.ea, ptr %i.dw, align 8, !tbaa !173
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !391
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ee) #29
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !207
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !206
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !391
  br label %_ZSt4fillIPmmEvT_S1_RKT0_.exit

_ZSt4fillIPmmEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIdEC2INS_12DoubleOptionEEERKNS_14OptionTemplateIdT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIdEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1070
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1071
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1072
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateIdE11createStoreEPSt6vectorIdSaIdEEPdPii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.155") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !1073
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1074
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1075
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread37

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateIdEC2INS_12DoubleOptionEEERKNS_14OptionTemplateIdT_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.s unwind label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIdEESt14default_deleteIS2_EED2Ev.exit

.thread:                                          ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread37:                                        ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.j:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.k, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread37
  %.pn.pn36.ph = phi { ptr, i32 } [ %i.x, %.thread37 ], [ %i.w, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.pn.pn36 = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn.pn36.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.z = or i64 %i.n, 2
  store i64 %i.z, ptr %i.m, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1074 ; 2 uses
  %.not27 = icmp eq ptr %i.ab, null
  br i1 %.not27, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3gmx21OptionStorageTemplateIdE15setDefaultValueERKd(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1075 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread40, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateIdE20setDefaultValueIfSetERKd(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.ae)
          to label %.thread40 unwind label %bb.n

.thread40:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.j, %bb.k, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn36, %bb.k ], [ %i.y, %bb.j ], [ %i.ac, %bb.n ] ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !267 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIdSt14default_deleteIdEED2Ev.exit, label %_ZNKSt14default_deleteIdEclEPd.exit.i

_ZNKSt14default_deleteIdEclEPd.exit.i:            ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 8) #29
  br label %_ZNSt10unique_ptrIdSt14default_deleteIdEED2Ev.exit

_ZNSt10unique_ptrIdSt14default_deleteIdEED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIdEclEPd.exit.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !270 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ag, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIdEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIdEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIdEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIdSt14default_deleteIdEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #27, !inline_history !28
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIdEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIdEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIdEEEclEPS2_.exit.i, %_ZNSt10unique_ptrIdSt14default_deleteIdEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIdSt14default_deleteIdEED2Ev.exit ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIdEEEclEPS2_.exit.i ]
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !269 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIdEESt14default_deleteIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !394
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIdEESt14default_deleteIS2_EED2Ev.exit, %bb.r
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIdE11createStoreEPSt6vectorIdSaIdEEPdPii(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.155") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %7 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %9 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %10 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %11 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %.not = icmp eq ptr %2, null
  %.not29 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %4, null
  %or.cond = and i1 %.not29, %i.a
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx21OptionStorageTemplateIdE11createStoreEPSt6vectorIdSaIdEEPdPiiENKUlvE_clEv, ptr noundef nonnull @.str.14, i32 noundef 429) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx22OptionValueStoreVectorIdEE, i64 16), ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !480
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  br i1 %.not29, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
end_hunk_5
begin_hunk_6_@_ZNSt6vectorIdSaIdEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPdS1_EEmRKd:bb.a

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check135, %vec.epilog.iter.check137, %vec.epilog.middle.block147
  %.07.i.i.i72.ph = phi ptr [ %1, %iter.check135 ], [ %i.ca, %vec.epilog.iter.check137 ], [ %i.ch, %vec.epilog.middle.block147 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.ck, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store double %i.i, ptr %.07.i.i.i72, align 8, !tbaa !264
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 8 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ck, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPddEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1098

bb.o:                                             ; preds = %bb.b
  %i.cl = load ptr, ptr %0, align 8, !tbaa !269   ; 5 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = sub i64 %i.f, %i.cm
  %i.co = ashr exact i64 %i.cn, 3                 ; 4 uses
  %i.cp = sub nsw i64 1152921504606846975, %i.co
  %i.cq = icmp ult i64 %i.cp, %2
  br i1 %i.cq, label %bb.p, label %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %2)
  %i.cr = add nsw i64 %.sroa.speculated.i, %i.co  ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.co
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 1152921504606846975)
  %i.cu = select i1 %i.cs, i64 1152921504606846975, i64 %i.ct ; 3 uses
  %i.cv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cw = sub i64 %i.cv, %i.cm                    ; 4 uses
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %iter.check193, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.cx = shl nuw nsw i64 %i.cu, 3
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #28
  br label %iter.check193

iter.check193:                                    ; preds = %bb.q, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit
  %i.cz = phi ptr [ %i.cy, %bb.q ], [ null, %_ZNKSt6vectorIdSaIdEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cw ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 3       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i.i.i.i75
  %i.dc = load double, ptr %3, align 8, !tbaa !264 ; 3 uses
  %i.dd = add nsw i64 %.idx.i.i.i.i.i75, -8       ; 3 uses
  %i.de = lshr exact i64 %i.dd, 3
  %i.df = add nuw nsw i64 %i.de, 1                ; 5 uses
  %min.iters.check179 = icmp ult i64 %i.dd, 24
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check193
  %min.iters.check181 = icmp ult i64 %i.dd, 120
  br i1 %min.iters.check181, label %vec.epilog.ph197, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.dg = and i64 %i.df, 12
  %n.vec183 = and i64 %i.df, 4611686018427387888  ; 4 uses
  %i.dh = shl i64 %n.vec183, 3
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh
  %broadcast.splatinsert184 = insertelement <4 x double> poison, double %i.dc, i64 0
  %broadcast.splat185 = shufflevector <4 x double> %broadcast.splatinsert184, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.ph182, %vector.body186
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body186 ] ; 2 uses
  %i.dj = shl i64 %index187, 3
  %next.gep188 = getelementptr i8, ptr %i.da, i64 %i.dj ; 4 uses
  %i.dk = getelementptr i8, ptr %next.gep188, i64 32
  %i.dl = getelementptr i8, ptr %next.gep188, i64 64
  %i.dm = getelementptr i8, ptr %next.gep188, i64 96
  store <4 x double> %broadcast.splat185, ptr %next.gep188, align 8, !tbaa !264
  store <4 x double> %broadcast.splat185, ptr %i.dk, align 8, !tbaa !264
  store <4 x double> %broadcast.splat185, ptr %i.dl, align 8, !tbaa !264
  store <4 x double> %broadcast.splat185, ptr %i.dm, align 8, !tbaa !264
  %index.next189 = add nuw i64 %index187, 16      ; 2 uses
  %i.dn = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.dn, label %middle.block190, label %vector.body186, !llvm.loop !1099

middle.block190:                                  ; preds = %vector.body186
  %cmp.n191 = icmp eq i64 %i.df, %n.vec183
  br i1 %cmp.n191, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block190
  %min.epilog.iters.check196 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check196, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph197, !prof !273

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check195
  %vec.epilog.resume.val192 = phi i64 [ %n.vec183, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec198 = and i64 %i.df, 4611686018427387900  ; 3 uses
  %i.do = shl i64 %n.vec198, 3
  %i.dp = getelementptr i8, ptr %i.da, i64 %i.do
  %broadcast.splatinsert199 = insertelement <4 x double> poison, double %i.dc, i64 0
  %broadcast.splat200 = shufflevector <4 x double> %broadcast.splatinsert199, <4 x double> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph197
  %index202 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph197 ], [ %index.next204, %vec.epilog.vector.body201 ] ; 2 uses
  %i.dq = shl i64 %index202, 3
  %next.gep203 = getelementptr i8, ptr %i.da, i64 %i.dq
  store <4 x double> %broadcast.splat200, ptr %next.gep203, align 8, !tbaa !264
  %index.next204 = add nuw i64 %index202, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next204, %n.vec198
  br i1 %i.dr, label %vec.epilog.middle.block205, label %vec.epilog.vector.body201, !llvm.loop !1100

vec.epilog.middle.block205:                       ; preds = %vec.epilog.vector.body201
  %cmp.n206 = icmp eq i64 %i.df, %n.vec198
  br i1 %cmp.n206, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block205
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.da, %iter.check193 ], [ %i.di, %vec.epilog.iter.check195 ], [ %i.dp, %vec.epilog.middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store double %i.dc, ptr %.07.i.i.i.i.i.i.i77, align 8, !tbaa !264
  %i.ds = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ds, %i.db
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1101

_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block205, %middle.block190
  %i.dt = icmp sgt i64 %i.cw, 8
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !417

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.cz, ptr align 8 %i.cl, i64 %i.cw, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPdmddET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.du = icmp eq i64 %i.cw, 8
  br i1 %i.du, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load double, ptr %i.cl, align 8, !tbaa !264
  store double %i.dv, ptr %i.cz, align 8, !tbaa !264
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %2 ; 3 uses
  %i.dx = sub i64 %i.f, %i.cv                     ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 8
  br i1 %i.dy, label %bb.u, label %bb.v, !prof !417

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr align 8 %1, i64 %i.dx, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit
  %i.dz = icmp eq i64 %i.dx, 8
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = load double, ptr %1, align 8, !tbaa !264
  store double %i.ea, ptr %i.dw, align 8, !tbaa !264
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !394
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ee) #29
  br label %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit

_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !269
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !268
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !394
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit

_ZSt4fillIPddEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPdS0_SaIdEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIfEC2INS_11FloatOptionEEERKNS_14OptionTemplateIfT_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateIfEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1102
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1103
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1104
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateIfE11createStoreEPSt6vectorIfSaIfEEPfPii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.189") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !1105
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not42 = icmp eq i64 %i.o, 0
  br i1 %.not42, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1106
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1107
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread40, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread37

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateIfEC2INS_11FloatOptionEEERKNS_14OptionTemplateIfT_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.s unwind label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIfEESt14default_deleteIS2_EED2Ev.exit

.thread:                                          ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread37:                                        ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.j:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.k, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread37
  %.pn.pn36.ph = phi { ptr, i32 } [ %i.x, %.thread37 ], [ %i.w, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.pn.pn36 = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn.pn36.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.z = or i64 %i.n, 2
  store i64 %i.z, ptr %i.m, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1106 ; 2 uses
  %.not27 = icmp eq ptr %i.ab, null
  br i1 %.not27, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3gmx21OptionStorageTemplateIfE15setDefaultValueERKf(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ab)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1107 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread40, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateIfE20setDefaultValueIfSetERKf(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae)
          to label %.thread40 unwind label %bb.n

.thread40:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.j, %bb.k, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn36, %bb.k ], [ %i.y, %bb.j ], [ %i.ac, %bb.n ] ; 2 uses
  %i.af = load ptr, ptr %i.l, align 8, !tbaa !309 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIfSt14default_deleteIfEED2Ev.exit, label %_ZNKSt14default_deleteIfEclEPf.exit.i

_ZNKSt14default_deleteIfEclEPf.exit.i:            ; preds = %bb.q
  call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef 4) #29
  br label %_ZNSt10unique_ptrIfSt14default_deleteIfEED2Ev.exit

_ZNSt10unique_ptrIfSt14default_deleteIfEED2Ev.exit: ; preds = %bb.q, %_ZNKSt14default_deleteIfEclEPf.exit.i
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !312 ; 3 uses
  %.not.i33 = icmp eq ptr %i.ag, null
  br i1 %.not.i33, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIfEESt14default_deleteIS2_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIfEEEclEPS2_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIfEEEclEPS2_.exit.i: ; preds = %_ZNSt10unique_ptrIfSt14default_deleteIfEED2Ev.exit
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #27, !inline_history !29
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIfEESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIfEESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIfEEEclEPS2_.exit.i, %_ZNSt10unique_ptrIfSt14default_deleteIfEED2Ev.exit, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %_ZNSt10unique_ptrIfSt14default_deleteIfEED2Ev.exit ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreIfEEEclEPS2_.exit.i ]
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !311 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIfEESt14default_deleteIS2_EED2Ev.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !397
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreIfEESt14default_deleteIS2_EED2Ev.exit, %bb.r
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.s:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateIfE11createStoreEPSt6vectorIfSaIfEEPfPii(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.189") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %7 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %9 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %10 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %11 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %.not = icmp eq ptr %2, null
  %.not29 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %4, null
  %or.cond = and i1 %.not29, %i.a
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx21OptionStorageTemplateIfE11createStoreEPSt6vectorIfSaIfEEPfPiiENKUlvE_clEv, ptr noundef nonnull @.str.14, i32 noundef 429) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx22OptionValueStoreVectorIfEE, i64 16), ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !491
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  br i1 %.not29, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
end_hunk_6
begin_hunk_7_@_ZNSt6vectorIfSaIfEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPfS1_EEmRKf:bb.a

.lr.ph.i.i.i71.preheader:                         ; preds = %iter.check135, %vec.epilog.iter.check137, %vec.epilog.middle.block147
  %.07.i.i.i72.ph = phi ptr [ %1, %iter.check135 ], [ %i.ca, %vec.epilog.iter.check137 ], [ %i.ch, %vec.epilog.middle.block147 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader, %.lr.ph.i.i.i71
  %.07.i.i.i72 = phi ptr [ %i.ck, %.lr.ph.i.i.i71 ], [ %.07.i.i.i72.ph, %.lr.ph.i.i.i71.preheader ] ; 2 uses
  store float %i.i, ptr %.07.i.i.i72, align 4, !tbaa !306
  %i.ck = getelementptr inbounds nuw i8, ptr %.07.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.ck, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPffEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !1130

bb.o:                                             ; preds = %bb.b
  %i.cl = load ptr, ptr %0, align 8, !tbaa !311   ; 5 uses
  %i.cm = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cn = sub i64 %i.f, %i.cm
  %i.co = ashr exact i64 %i.cn, 2                 ; 4 uses
  %i.cp = sub nsw i64 2305843009213693951, %i.co
  %i.cq = icmp ult i64 %i.cp, %2
  br i1 %i.cq, label %bb.p, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.47) #30
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit:    ; preds = %bb.o
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.co, i64 %2)
  %i.cr = add nsw i64 %.sroa.speculated.i, %i.co  ; 2 uses
  %i.cs = icmp ult i64 %i.cr, %i.co
  %i.ct = tail call i64 @llvm.umin.i64(i64 %i.cr, i64 2305843009213693951)
  %i.cu = select i1 %i.cs, i64 2305843009213693951, i64 %i.ct ; 3 uses
  %i.cv = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cw = sub i64 %i.cv, %i.cm                    ; 4 uses
  %.not.i = icmp eq i64 %i.cu, 0
  br i1 %.not.i, label %iter.check193, label %bb.q

bb.q:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.cx = shl nuw nsw i64 %i.cu, 2
  %i.cy = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cx) #28
  br label %iter.check193

iter.check193:                                    ; preds = %bb.q, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit
  %i.cz = phi ptr [ %i.cy, %bb.q ], [ null, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.cw ; 7 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx.i.i.i.i.i75
  %i.dc = load float, ptr %3, align 4, !tbaa !306 ; 3 uses
  %i.dd = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 3 uses
  %i.de = lshr exact i64 %i.dd, 2
  %i.df = add nuw nsw i64 %i.de, 1                ; 5 uses
  %min.iters.check179 = icmp ult i64 %i.dd, 28
  br i1 %min.iters.check179, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.main.loop.iter.check180

vector.main.loop.iter.check180:                   ; preds = %iter.check193
  %min.iters.check181 = icmp ult i64 %i.dd, 124
  br i1 %min.iters.check181, label %vec.epilog.ph197, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check180
  %i.dg = and i64 %i.df, 24
  %n.vec183 = and i64 %i.df, 9223372036854775776  ; 4 uses
  %i.dh = shl i64 %n.vec183, 2
  %i.di = getelementptr i8, ptr %i.da, i64 %i.dh
  %broadcast.splatinsert184 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat185 = shufflevector <8 x float> %broadcast.splatinsert184, <8 x float> poison, <8 x i32> zeroinitializer ; 4 uses
  br label %vector.body186

vector.body186:                                   ; preds = %vector.ph182, %vector.body186
  %index187 = phi i64 [ 0, %vector.ph182 ], [ %index.next189, %vector.body186 ] ; 2 uses
  %i.dj = shl i64 %index187, 2
  %next.gep188 = getelementptr i8, ptr %i.da, i64 %i.dj ; 4 uses
  %i.dk = getelementptr i8, ptr %next.gep188, i64 32
  %i.dl = getelementptr i8, ptr %next.gep188, i64 64
  %i.dm = getelementptr i8, ptr %next.gep188, i64 96
  store <8 x float> %broadcast.splat185, ptr %next.gep188, align 4, !tbaa !306
  store <8 x float> %broadcast.splat185, ptr %i.dk, align 4, !tbaa !306
  store <8 x float> %broadcast.splat185, ptr %i.dl, align 4, !tbaa !306
  store <8 x float> %broadcast.splat185, ptr %i.dm, align 4, !tbaa !306
  %index.next189 = add nuw i64 %index187, 32      ; 2 uses
  %i.dn = icmp eq i64 %index.next189, %n.vec183
  br i1 %i.dn, label %middle.block190, label %vector.body186, !llvm.loop !1131

middle.block190:                                  ; preds = %vector.body186
  %cmp.n191 = icmp eq i64 %i.df, %n.vec183
  br i1 %cmp.n191, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %vec.epilog.iter.check195

vec.epilog.iter.check195:                         ; preds = %middle.block190
  %min.epilog.iters.check196 = icmp eq i64 %i.dg, 0
  br i1 %min.epilog.iters.check196, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vec.epilog.ph197, !prof !313

vec.epilog.ph197:                                 ; preds = %vector.main.loop.iter.check180, %vec.epilog.iter.check195
  %vec.epilog.resume.val192 = phi i64 [ %n.vec183, %vec.epilog.iter.check195 ], [ 0, %vector.main.loop.iter.check180 ]
  %n.vec198 = and i64 %i.df, 9223372036854775800  ; 3 uses
  %i.do = shl i64 %n.vec198, 2
  %i.dp = getelementptr i8, ptr %i.da, i64 %i.do
  %broadcast.splatinsert199 = insertelement <8 x float> poison, float %i.dc, i64 0
  %broadcast.splat200 = shufflevector <8 x float> %broadcast.splatinsert199, <8 x float> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body201

vec.epilog.vector.body201:                        ; preds = %vec.epilog.vector.body201, %vec.epilog.ph197
  %index202 = phi i64 [ %vec.epilog.resume.val192, %vec.epilog.ph197 ], [ %index.next204, %vec.epilog.vector.body201 ] ; 2 uses
  %i.dq = shl i64 %index202, 2
  %next.gep203 = getelementptr i8, ptr %i.da, i64 %i.dq
  store <8 x float> %broadcast.splat200, ptr %next.gep203, align 4, !tbaa !306
  %index.next204 = add nuw i64 %index202, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next204, %n.vec198
  br i1 %i.dr, label %vec.epilog.middle.block205, label %vec.epilog.vector.body201, !llvm.loop !1132

vec.epilog.middle.block205:                       ; preds = %vec.epilog.vector.body201
  %cmp.n206 = icmp eq i64 %i.df, %n.vec198
  br i1 %cmp.n206, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %iter.check193, %vec.epilog.iter.check195, %vec.epilog.middle.block205
  %.07.i.i.i.i.i.i.i77.ph = phi ptr [ %i.da, %iter.check193 ], [ %i.di, %vec.epilog.iter.check195 ], [ %i.dp, %vec.epilog.middle.block205 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.07.i.i.i.i.i.i.i77 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.07.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store float %i.dc, ptr %.07.i.i.i.i.i.i.i77, align 4, !tbaa !306
  %i.ds = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.ds, %i.db
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !1133

_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %vec.epilog.middle.block205, %middle.block190
  %i.dt = icmp sgt i64 %i.cw, 4
  br i1 %i.dt, label %bb.r, label %bb.s, !prof !417

bb.r:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cz, ptr align 4 %i.cl, i64 %i.cw, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.s:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPfmffET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.du = icmp eq i64 %i.cw, 4
  br i1 %i.du, label %bb.t, label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

bb.t:                                             ; preds = %bb.s
  %i.dv = load float, ptr %i.cl, align 4, !tbaa !306
  store float %i.dv, ptr %i.cz, align 4, !tbaa !306
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit: ; preds = %bb.t, %bb.s, %bb.r
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %2 ; 3 uses
  %i.dx = sub i64 %i.f, %i.cv                     ; 4 uses
  %i.dy = icmp sgt i64 %i.dx, 4
  br i1 %i.dy, label %bb.u, label %bb.v, !prof !417

bb.u:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dw, ptr align 4 %1, i64 %i.dx, i1 false)
  br label %bb.x

bb.v:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit
  %i.dz = icmp eq i64 %i.dx, 4
  br i1 %i.dz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ea = load float, ptr %1, align 4, !tbaa !306
  store float %i.ea, ptr %i.dw, align 4, !tbaa !306
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  %i.eb = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %.not.i82 = icmp eq ptr %i.cl, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ec = load ptr, ptr %i.a, align 8, !tbaa !397
  %i.ed = ptrtoint ptr %i.ec to i64
  %i.ee = sub i64 %i.ed, %i.cm
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ee) #29
  br label %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit

_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit: ; preds = %bb.x, %bb.y
  store ptr %i.cz, ptr %0, align 8, !tbaa !311
  store ptr %i.eb, ptr %i.c, align 8, !tbaa !310
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.cu
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !397
  br label %_ZSt4fillIPffEvT_S1_RKT0_.exit

_ZSt4fillIPffEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block132, %vec.epilog.middle.block147, %middle.block161, %vec.epilog.middle.block176, %_ZSt22__uninitialized_move_aIPfS0_SaIfEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIfSaIfEE13_M_deallocateEPfm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS_12StringOptionEEERKNS_14OptionTemplateIS6_T_EENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %4 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %5 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  tail call void @_ZN3gmx21AbstractOptionStorageC2ERKNS_14AbstractOptionENS_13FlagsTemplateINS_10OptionFlagEEE(ptr noundef nonnull align 8 dereferenceable(98) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 %2)
  store ptr getelementptr inbounds nuw inrange(-16, 120) (i8, ptr @_ZTVN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %0, align 8, !tbaa !64
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1134
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1135
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1136
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !114
  %6 = lshr i64 %i.j, 6
  %7 = and i64 %6, 4
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 %7
  %.in = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.k = load i32, ptr %.in, align 4, !tbaa !111
  invoke void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11createStoreEPSt6vectorIS6_SaIS6_EEPS6_Pii(ptr dead_on_unwind nonnull writable sret(%"class.std::unique_ptr.228") align 8 %i.b, ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef %i.d, ptr noundef %i.f, ptr noundef %i.h, i32 noundef %i.k)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  store ptr null, ptr %i.l, align 8, !tbaa !1137
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !114  ; 2 uses
  %i.o = and i64 %i.n, 512
  %.not41 = icmp eq i64 %i.o, 0
  br i1 %.not41, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !342
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1138
  %.not26 = icmp eq ptr %i.s, null
  br i1 %.not26, label %.thread39, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.13)
          to label %bb.f unwind label %.thread

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %bb.g unwind label %.thread36

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %3, align 8, !tbaa !64
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEE, i64 16), ptr %5, align 8, !tbaa !64
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr @__PRETTY_FUNCTION__._ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2INS_12StringOptionEEERKNS_14OptionTemplateIS6_T_EENS_13FlagsTemplateINS_10OptionFlagEEE, ptr %i.u, align 8, !tbaa !121
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr @.str.14, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !121
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i32 396, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !111
  invoke void @_ZN3gmxlsINS_8APIErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE(ptr dead_on_unwind writable sret(%"class.gmx::APIError") align 8 %i.t, ptr noundef nonnull align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr %i.t, ptr nonnull @_ZTIN3gmx8APIErrorE, ptr nonnull @_ZN3gmx16GromacsExceptionD2Ev) #30
          to label %bb.r unwind label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit

.thread:                                          ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread36:                                        ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  br label %.sink.split

bb.j:                                             ; preds = %bb.g, %bb.h
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.g ]
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #27
  call void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br i1 %.0, label %bb.k, label %bb.q

.sink.split:                                      ; preds = %.thread, %.thread36
  %.pn.pn35.ph = phi { ptr, i32 } [ %i.x, %.thread36 ], [ %i.w, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.j
  %.pn.pn35 = phi { ptr, i32 } [ %i.y, %bb.j ], [ %.pn.pn35.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.t) #27
  br label %bb.q

bb.l:                                             ; preds = %bb.b
  %i.z = or i64 %i.n, 2
  store i64 %i.z, ptr %i.m, align 8, !tbaa !114
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !342 ; 2 uses
  %.not27 = icmp eq ptr %i.ab, null
  br i1 %.not27, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE15setDefaultValueERKS6_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ab)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !1138 ; 2 uses
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %.thread39, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE20setDefaultValueIfSetERKS6_(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.thread39 unwind label %bb.n

.thread39:                                        ; preds = %bb.d, %bb.o, %bb.p
  ret void

bb.q:                                             ; preds = %bb.j, %bb.k, %bb.n
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn35, %bb.k ], [ %i.y, %bb.j ], [ %i.ac, %bb.n ] ; 2 uses
  call void @_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.l) #27
  %i.af = load ptr, ptr %i.b, align 8, !tbaa !356 ; 3 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit, label %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i

_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i: ; preds = %bb.q
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %i.af) #27, !inline_history !30
  br label %_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit

_ZNSt10unique_ptrIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt14default_deleteIS8_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i, %bb.q, %bb.i
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.v, %bb.i ], [ %.pn.pn.pn, %bb.q ], [ %.pn.pn.pn, %_ZNKSt14default_deleteIN3gmx17IOptionValueStoreINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEclEPS8_.exit.i ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.a) #27
  call void @_ZN3gmx21AbstractOptionStorageD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %0) #27
  resume { ptr, i32 } %.pn.pn.pn.pn

bb.r:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11createStoreEPSt6vectorIS6_SaIS6_EEPS6_Pii(ptr dead_on_unwind noalias writable sret(%"class.std::unique_ptr.228") align 8 %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %7 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %8 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %9 = alloca %"class.gmx::APIError", align 8     ; 4 uses
  %10 = alloca %"class.gmx::ExceptionInitializer", align 8 ; 7 uses
  %11 = alloca %"class.gmx::ExceptionInfo", align 8 ; 8 uses
  %.not = icmp eq ptr %2, null
  %.not29 = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %4, null
  %or.cond = and i1 %.not29, %i.a
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx21OptionStorageTemplateINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11createStoreEPSt6vectorIS6_SaIS6_EEPS6_PiiENKUlvE_clEv, ptr noundef nonnull @.str.14, i32 noundef 429) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.b = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN3gmx22OptionValueStoreVectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE, i64 16), ptr %i.b, align 8, !tbaa !64
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.c, align 8, !tbaa !502
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  br i1 %.not29, label %bb.t, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.e = load i32, ptr %i.d, align 4, !tbaa !115  ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = load i64, ptr %i.g, align 8, !tbaa !114  ; 3 uses
  %i.i = and i64 %i.h, 32
  %.not61 = icmp eq i64 %i.i, 0
  br i1 %.not61, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.j = tail call ptr @__cxa_allocate_exception(i64 24) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  invoke void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull @.str.15)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(56) %7)
          to label %bb.j unwind label %.thread47

bb.j:                                             ; preds = %bb.i
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx8APIErrorE, i64 16), ptr %6, align 8, !tbaa !64
end_hunk_7
