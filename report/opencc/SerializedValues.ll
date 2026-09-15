Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/SerializedValues?download=true
inline.NumInlined: 626
inline.NumDeleted: 284
begin_hunk_0
@_ZTIN6opencc9DictEntryE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6opencc9DictEntryE }, comdat, align 8
@_ZTSN6opencc9DictEntryE = linkonce_odr constant [20 x i8] c"N6opencc9DictEntryE\00", comdat, align 1
@.str.10 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@_ZTVN6opencc23StrSingleValueDictEntryE = linkonce_odr constant { [13 x ptr] } { [13 x ptr] [ptr null, ptr @_ZTIN6opencc23StrSingleValueDictEntryE, ptr @_ZN6opencc23StrSingleValueDictEntryD2Ev, ptr @_ZN6opencc23StrSingleValueDictEntryD0Ev, ptr @_ZNK6opencc23StrSingleValueDictEntry7KeyViewEv, ptr @_ZNK6opencc20SingleValueDictEntry14GetDefaultViewEv, ptr @_ZNK6opencc23StrSingleValueDictEntry3KeyB5cxx11Ev, ptr @_ZNK6opencc20SingleValueDictEntry6ValuesB5cxx11Ev, ptr @_ZNK6opencc23StrSingleValueDictEntry10GetDefaultB5cxx11Ev, ptr @_ZNK6opencc20SingleValueDictEntry9NumValuesEv, ptr @_ZNK6opencc20SingleValueDictEntry8ToStringB5cxx11Ev, ptr @_ZNK6opencc23StrSingleValueDictEntry5ValueB5cxx11Ev, ptr @_ZNK6opencc23StrSingleValueDictEntry9ValueViewEv] }, comdat, align 8
@_ZTIN6opencc23StrSingleValueDictEntryE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6opencc23StrSingleValueDictEntryE, ptr @_ZTIN6opencc20SingleValueDictEntryE }, comdat, align 8
@_ZTSN6opencc23StrSingleValueDictEntryE = linkonce_odr constant [35 x i8] c"N6opencc23StrSingleValueDictEntryE\00", comdat, align 1
@_ZTIN6opencc20SingleValueDictEntryE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6opencc20SingleValueDictEntryE, ptr @_ZTIN6opencc9DictEntryE }, comdat, align 8
@_ZTSN6opencc20SingleValueDictEntryE = linkonce_odr constant [32 x i8] c"N6opencc20SingleValueDictEntryE\00", comdat, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@_ZTVN6opencc22StrMultiValueDictEntryE = linkonce_odr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN6opencc22StrMultiValueDictEntryE, ptr @_ZN6opencc22StrMultiValueDictEntryD2Ev, ptr @_ZN6opencc22StrMultiValueDictEntryD0Ev, ptr @_ZNK6opencc22StrMultiValueDictEntry7KeyViewEv, ptr @_ZNK6opencc22StrMultiValueDictEntry14GetDefaultViewEv, ptr @_ZNK6opencc22StrMultiValueDictEntry3KeyB5cxx11Ev, ptr @_ZNK6opencc22StrMultiValueDictEntry6ValuesB5cxx11Ev, ptr @_ZNK6opencc22StrMultiValueDictEntry10GetDefaultB5cxx11Ev, ptr @_ZNK6opencc22StrMultiValueDictEntry9NumValuesEv, ptr @_ZNK6opencc19MultiValueDictEntry8ToStringB5cxx11Ev] }, comdat, align 8
@_ZTIN6opencc22StrMultiValueDictEntryE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6opencc22StrMultiValueDictEntryE, ptr @_ZTIN6opencc19MultiValueDictEntryE }, comdat, align 8
@_ZTSN6opencc22StrMultiValueDictEntryE = linkonce_odr constant [34 x i8] c"N6opencc22StrMultiValueDictEntryE\00", comdat, align 1
@_ZTIN6opencc19MultiValueDictEntryE = external constant ptr
@.str.15 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@_ZTIN6opencc15FileNotWritableE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN6opencc15FileNotWritableE, ptr @_ZTIN6opencc9ExceptionE }, comdat, align 8
@_ZTSN6opencc15FileNotWritableE = linkonce_odr constant [27 x i8] c"N6opencc15FileNotWritableE\00", comdat, align 1
@.str.17 = private unnamed_addr constant [15 x i8] c" not writable.\00", align 1
@_ZTVN6opencc15FileNotWritableE = linkonce_odr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN6opencc15FileNotWritableE, ptr @_ZN6opencc9ExceptionD2Ev, ptr @_ZN6opencc15FileNotWritableD0Ev, ptr @_ZNK6opencc9Exception4whatEv] }, comdat, align 8
@.str.18 = private unnamed_addr constant [32 x i8] c"Cannot write binary dictionary.\00", align 1
@_ZTVSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [69 x i8] c"St15_Sp_counted_ptrIPN6opencc7LexiconELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [52 x i8] c"St16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTISt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [47 x i8] c"St11_Mutex_baseILN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@_ZTVSt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTISt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EED0Ev, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv, ptr @_ZNSt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info] }, comdat, align 8
@_ZTISt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSSt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE, ptr @_ZTISt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE }, comdat, align 8
@_ZTSSt15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE = linkonce_odr constant [79 x i8] c"St15_Sp_counted_ptrIPN6opencc16SerializedValuesELN9__gnu_cxx12_Lock_policyE2EE\00", comdat, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_SerializedValues.cpp, ptr null }]

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !15
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.10) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.d, ptr %i.a, align 8, !tbaa !17
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !19
  %i.g = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.g, ptr %i.b, align 8, !tbaa !20
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !20
  store i8 %i.i, ptr %i.h, align 1, !tbaa !20
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !21
  %i.l = load ptr, ptr %0, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32)) unnamed_addr #2 align 2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i64 @_ZNK6opencc16SerializedValues12KeyMaxLengthEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #4 align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6opencc16SerializedValues15SerializeToFileEP8_IO_FILE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef captures(none) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::vector", align 8       ; 9 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i32 0, ptr %i.b, align 4, !tbaa !22
  invoke void @_ZNK6opencc16SerializedValues15ConstructBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorItSaItEEPj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !30
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32
  invoke fastcc void @_ZN12_GLOBAL__N_112WriteIntegerIjEEvP8_IO_FILET_(ptr noundef %1, i32 noundef %i.n)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.b, align 4, !tbaa !22   ; 2 uses
  invoke fastcc void @_ZN12_GLOBAL__N_112WriteIntegerIjEEvP8_IO_FILET_(ptr noundef %1, i32 noundef %i.o)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %4, align 8, !tbaa !19
  %i.q = zext i32 %i.o to i64
  %i.r = call i64 @fwrite(ptr noundef %i.p, i64 noundef 1, i64 noundef %i.q, ptr noundef %1) ; 0 uses
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !27   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !32   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32   ; 2 uses
  %.not37 = icmp eq ptr %i.t, %i.v
  %.pre = load ptr, ptr %5, align 8               ; 4 uses
  br i1 %.not37, label %._crit_edge42, label %.lr.ph41

._crit_edge42:                                    ; preds = %._crit_edge, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %.not.i.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge42
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !35
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %.pre to i64
  %i.aa = sub i64 %i.y, %i.z
  call void @_ZdlPvm(ptr noundef nonnull %.pre, i64 noundef %i.aa) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %._crit_edge42, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.ab = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.c
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.ad = load i64, ptr %i.c, align 8, !tbaa !20
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret void

bb.f:                                             ; preds = %bb.a
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.c, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph41:                                         ; preds = %bb.d, %._crit_edge
  %.01739 = phi i64 [ %.1.lcssa, %._crit_edge ], [ 0, %bb.d ] ; 2 uses
  %.sroa.031.038 = phi ptr [ %i.an, %._crit_edge ], [ %i.t, %bb.d ] ; 2 uses
  %i.ah = load ptr, ptr %.sroa.031.038, align 8, !tbaa !37 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !39
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = invoke noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %i.ah)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %.lr.ph41
  %i.am = trunc i64 %i.al to i16
  invoke fastcc void @_ZN12_GLOBAL__N_112WriteIntegerItEEvP8_IO_FILET_(ptr noundef %1, i16 noundef zeroext %i.am)
          to label %.preheader.a unwind label %bb.i

.preheader.a:                                     ; preds = %bb.h
  %6 = trunc i64 %i.al to i32
  %7 = and i32 %6, 65535                          ; 2 uses
  %.not43 = icmp eq i32 %7, 0
  br i1 %.not43, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.p, %.preheader.a
  %.1.lcssa = phi i64 [ %.01739, %.preheader.a ], [ %i.ba, %bb.p ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.031.038, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.an, %i.v
  br i1 %.not, label %._crit_edge42, label %.lr.ph41

bb.i:                                             ; preds = %bb.h, %.lr.ph41
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph:                                           ; preds = %.preheader.a, %bb.p
  %indvars.iv = phi i32 [ %indvars.iv.next, %bb.p ], [ 0, %.preheader.a ]
  %.135 = phi i64 [ %i.ba, %bb.p ], [ %.01739, %.preheader.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %.135
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i16 %i.aq, ptr %i.a, align 2, !tbaa !41
  %i.ar = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1, ptr noundef %1)
  %.not.i = icmp eq i64 %i.ar, 1
  br i1 %.not.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %.lr.ph
  %i.as = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.18, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.k unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6opencc13InvalidFormatC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.as, ptr nonnull @_ZTIN6opencc13InvalidFormatE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #23
          to label %bb.o unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.j
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %.0.i = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.m
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !20
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i, label %bb.n, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br i1 %.0.i, label %bb.n, label %.body

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn10.i = phi { ptr, i32 } [ %i.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.as) #24
  br label %.body

bb.o:                                             ; preds = %bb.l
  unreachable

bb.p:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = add i64 %.135, 1                        ; 2 uses
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %7
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !62

.body:                                            ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.n, %bb.g, %bb.f
  %.pn.pn.pn = phi { ptr, i32 } [ %i.af, %bb.f ], [ %i.ag, %bb.g ], [ %i.ao, %bb.i ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.pn10.i, %bb.n ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  %i.bb = load ptr, ptr %5, align 8, !tbaa !43    ; 3 uses
  %.not.i.i.i26 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i26, label %_ZNSt6vectorItSaItEED2Ev.exit27, label %bb.q

bb.q:                                             ; preds = %.body
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !35
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = ptrtoint ptr %i.bb to i64
  %i.bg = sub i64 %i.be, %i.bf
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.bg) #25
  br label %_ZNSt6vectorItSaItEED2Ev.exit27

_ZNSt6vectorItSaItEED2Ev.exit27:                  ; preds = %.body, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bh = load ptr, ptr %4, align 8, !tbaa !19    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.c
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit27
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !20
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %_ZNSt6vectorItSaItEED2Ev.exit27, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6opencc16SerializedValues15ConstructBufferEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorItSaItEEPj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) initializes((0, 4)) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::vector.13", align 8    ; 7 uses
  %5 = alloca %"class.std::vector.13", align 8    ; 10 uses
  store i32 0, ptr %3, align 4, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 2 uses
  %.not60 = icmp eq ptr %i.c, %i.e
  br i1 %.not60, label %._crit_edge64, label %.lr.ph63

.lr.ph63:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.b

._crit_edge64.loopexit:                           ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.pre = load i32, ptr %3, align 4, !tbaa !22
  %i.h = zext i32 %.pre to i64
  br label %._crit_edge64

._crit_edge64:                                    ; preds = %._crit_edge64.loopexit, %bb.a
  %i.i = phi i64 [ %i.h, %._crit_edge64.loopexit ], [ 0, %bb.a ]
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.i, i8 noundef signext 0)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !32   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32   ; 2 uses
  %.not5371 = icmp eq ptr %i.k, %i.m
  br i1 %.not5371, label %._crit_edge76, label %.lr.ph75

.lr.ph75:                                         ; preds = %._crit_edge64
  %i.n = load ptr, ptr %1, align 8, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.e

bb.b:                                             ; preds = %.lr.ph63, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %.sroa.050.061 = phi ptr [ %i.c, %.lr.ph63 ], [ %i.aj, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.s = load ptr, ptr %.sroa.050.061, align 8, !tbaa !37 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.s)
  %i.w = load ptr, ptr %4, align 8, !tbaa !45     ; 4 uses
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !45   ; 3 uses
  %.not5558 = icmp eq ptr %i.w, %i.x
  br i1 %.not5558, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.promoted = load i32, ptr %3, align 4, !tbaa !22
  br label %bb.d

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  store i32 %i.ap, ptr %3, align 4, !tbaa !22
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ad, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.w, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.y = load ptr, ptr %.05.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ab = load i64, ptr %i.z, align 8, !tbaa !20
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ad, %i.x
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %bb.b, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i
  %i.ae = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.w, %bb.b ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !48
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ae to i64
  %i.ai = sub i64 %i.ag, %i.ah
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ai) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.050.061, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aj, %i.e
  br i1 %.not, label %._crit_edge64.loopexit, label %bb.b

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %i.ak = phi i32 [ %.promoted, %.lr.ph ], [ %i.ap, %bb.d ]
  %.sroa.046.059 = phi ptr [ %i.w, %.lr.ph ], [ %i.aq, %bb.d ] ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.046.059, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = trunc i64 %i.am to i32
  %i.ao = add i32 %i.an, 1
  %i.ap = add i32 %i.ao, %i.ak                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.046.059, i64 32 ; 2 uses
  %.not55 = icmp eq ptr %i.aq, %i.x
  br i1 %.not55, label %.lr.ph.i.i.i.preheader, label %bb.d

._crit_edge76:                                    ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35, %._crit_edge64
  ret void

bb.e:                                             ; preds = %.lr.ph75, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35
  %.073 = phi ptr [ %i.n, %.lr.ph75 ], [ %.1.lcssa110, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35 ] ; 2 uses
  %.sroa.042.072 = phi ptr [ %i.k, %.lr.ph75 ], [ %i.bi, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit35 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ar = load ptr, ptr %.sroa.042.072, align 8, !tbaa !37 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !39
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.13") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.ar)
  %i.av = load ptr, ptr %5, align 8, !tbaa !45    ; 3 uses
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !45  ; 2 uses
  %.not5465 = icmp eq ptr %i.av, %i.aw
  br i1 %.not5465, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32, label %.lr.ph69

._crit_edge70:                                    ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit
  %.pre79 = load ptr, ptr %5, align 8, !tbaa !47  ; 3 uses
  %.pre80 = load ptr, ptr %i.o, align 8, !tbaa !49 ; 2 uses
  %.not4.i.i.i24 = icmp eq ptr %.pre79, %.pre80
  br i1 %.not4.i.i.i24, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32, label %.lr.ph.i.i.i25

.lr.ph.i.i.i25:                                   ; preds = %._crit_edge70, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28
  %.05.i.i.i26 = phi ptr [ %i.bc, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28 ], [ %.pre79, %._crit_edge70 ] ; 3 uses
  %i.ax = load ptr, ptr %.05.i.i.i26, align 8, !tbaa !19 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i26, i64 16 ; 2 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27: ; preds = %.lr.ph.i.i.i25
  %i.ba = load i64, ptr %i.ay, align 8, !tbaa !20
  %i.bb = add i64 %i.ba, 1
  call void @_ZdlPvm(ptr noundef %i.ax, i64 noundef %i.bb) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28: ; preds = %.lr.ph.i.i.i25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i27
  %i.bc = getelementptr inbounds nuw i8, ptr %.05.i.i.i26, i64 32 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.bc, %.pre80
  br i1 %.not.i.i.i29, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30, label %.lr.ph.i.i.i25, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i28
  %.pr.i31 = load ptr, ptr %5, align 8, !tbaa !47
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i32: ; preds = %bb.e, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30, %._crit_edge70
  %.1.lcssa110 = phi ptr [ %i.ck, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30 ], [ %i.ck, %._crit_edge70 ], [ %.073, %bb.e ]
  %i.bd = phi ptr [ %.pr.i31, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i30 ], [ %.pre79, %._crit_edge70 ], [ %i.av, %bb.e ] ; 3 uses
  %.not.i.i1.i33 = icmp eq ptr %i.bd, null
end_hunk_0
