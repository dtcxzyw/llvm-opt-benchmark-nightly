Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/configurable?download=true
inline.NumInlined: 1237
inline.NumDeleted: 446
begin_hunk_0
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"Cannot find option: \00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@_ZN7rocksdb14kNullptrStringB5cxx11E = external local_unnamed_addr global %"class.std::__cxx11::basic_string", align 8
@_ZTVN7rocksdb12ConfigurableE = unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr null, ptr @_ZN7rocksdb12ConfigurableD2Ev, ptr @_ZN7rocksdb12ConfigurableD0Ev, ptr @_ZNK7rocksdb12Configurable9GetOptionERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS9_, ptr @_ZNK7rocksdb12Configurable13AreEquivalentERKNS_13ConfigOptionsEPKS0_PNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable19GetPrintableOptionsB5cxx11Ev, ptr @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE, ptr @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE, ptr @_ZNK7rocksdb12Configurable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable18ParseStringOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZN7rocksdb12Configurable16ConfigureOptionsERKNS_13ConfigOptionsERKSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SA_EEEPSJ_, ptr @_ZN7rocksdb12Configurable11ParseOptionERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESE_Pv, ptr @_ZNK7rocksdb12Configurable15OptionsAreEqualERKNS_13ConfigOptionsERKNS_14OptionTypeInfoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKvSG_PSC_, ptr @_ZNK7rocksdb12Configurable16SerializeOptionsERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr @_ZNK7rocksdb12Configurable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE] }, align 8
@.str.12 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"basic_string::_M_replace\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c".id\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb12Configurable15RegisterOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPvPKSt13unordered_mapIS6_NS_14OptionTypeInfoESt4hashIS6_ESt8equal_toIS6_ESaISt4pairIS7_SB_EEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.rocksdb::Configurable::RegisteredOptions", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !20
  store i8 0, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %3, ptr %i.c, align 8, !tbaa !24
  %i.d = ptrtoint ptr %2 to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub nsw i64 %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 %i.f, ptr %i.g, align 8, !tbaa !25
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %4)
          to label %bb.b unwind label %bb.c       ; 0 uses

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.j = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZN7rocksdb12Configurable17RegisteredOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8, !tbaa !21
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #22
  br label %_ZN7rocksdb12Configurable17RegisteredOptionsD2Ev.exit

_ZN7rocksdb12Configurable17RegisteredOptionsD2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret void

bb.c:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %_ZN7rocksdb12Configurable17RegisteredOptionsD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8, !tbaa !21
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #22
  br label %_ZN7rocksdb12Configurable17RegisteredOptionsD2Ev.exit7

_ZN7rocksdb12Configurable17RegisteredOptionsD2Ev.exit7: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(48) ptr @_ZNSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE12emplace_backIJRS2_EEES6_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !30
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !17
  %i.f = load ptr, ptr %1, align 8, !tbaa !26     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !20   ; 8 uses
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %bb.c, label %._crit_edge.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.j = icmp slt i64 %i.h, 0
  br i1 %i.j, label %.noexc.i.i.i, label %bb.d

.noexc.i.i.i:                                     ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.k = add nuw i64 %i.h, 1                      ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !31

.noexc6.i.i.i:                                    ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.d
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #24 ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !26
  store i64 %i.h, ptr %i.e, align 8, !tbaa !21
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, %bb.b
  %i.n = phi ptr [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i ], [ %i.e, %bb.b ] ; 3 uses
  switch i64 %i.h, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZSt12construct_atIN7rocksdb12Configurable17RegisteredOptionsEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.o = load i8, ptr %i.f, align 1, !tbaa !21
  store i8 %i.o, ptr %i.n, align 1, !tbaa !21
  br label %_ZSt12construct_atIN7rocksdb12Configurable17RegisteredOptionsEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.n, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %_ZSt12construct_atIN7rocksdb12Configurable17RegisteredOptionsEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit

_ZSt12construct_atIN7rocksdb12Configurable17RegisteredOptionsEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.p, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.h
  store i8 0, ptr %i.q, align 1, !tbaa !21
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !29
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 48 ; 2 uses
  store ptr %i.u, ptr %i.a, align 8, !tbaa !29
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIN7rocksdb12Configurable17RegisteredOptionsESaIS2_EE17_M_realloc_insertIJRS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZSt12construct_atIN7rocksdb12Configurable17RegisteredOptionsEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit
  %i.v = phi ptr [ %.pre, %bb.g ], [ %i.u, %_ZSt12construct_atIN7rocksdb12Configurable17RegisteredOptionsEJRS2_EEDTgsnwcvPvLi0E_T_pispclsr3stdE7declvalIT0_EEEEPS5_DpOS6_.exit ]
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -48
  ret ptr %i.w
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN7rocksdb12Configurable14PrepareOptionsERKNS_13ConfigOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.rocksdb::Status", align 8   ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !34, !alias.scope !130
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false), !alias.scope !130
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit58, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not.i33 = icmp eq ptr %0, %3
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br i1 %.not.i33, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75, %.loopexit.us
  %.sroa.044.074.us = phi ptr [ %4, %.loopexit.us ], [ %i.c, %.lr.ph75 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.044.074.us, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not.us = icmp eq ptr %i.o, null
  br i1 %.not.us, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph75.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.040.065.us = load ptr, ptr %i.p, align 8, !tbaa !37 ; 2 uses
  %i.q = icmp eq ptr %.sroa.040.065.us, null
  br i1 %i.q, label %.loopexit.us, label %.lr.ph.split.us.us.split.us.preheader

.loopexit.us:                                     ; preds = %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us, %bb.b, %.lr.ph75.split.us
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.044.074.us, i64 48 ; 2 uses
  %5 = icmp eq ptr %4, %i.e
  br i1 %5, label %.loopexit58.sink.split, label %.lr.ph75.split.us

.lr.ph.split.us.us.split.us.preheader:            ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.044.074.us, i64 32
  br label %.lr.ph.split.us.us.split.us

.lr.ph.split.us.us.split.us:                      ; preds = %.lr.ph.split.us.us.split.us.preheader, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us
  %.sroa.040.066.us.us.us = phi ptr [ %.sroa.040.0.us.us.us, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us ], [ %.sroa.040.065.us, %.lr.ph.split.us.us.split.us.preheader ] ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 212
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48
  %i.w = and i32 %i.v, -2
  %switch.i.us.us.us = icmp eq i32 %i.w, 4
  br i1 %switch.i.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.us.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 216
  %i.y = load i32, ptr %i.x, align 4, !tbaa !49
  %i.z = and i32 %i.y, 16384
  %.not.i.us.us.us = icmp eq i32 %i.z, 0
  br i1 %.not.i.us.us.us, label %bb.d, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us

bb.d:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 160
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !50
  %.not.i.i.not.i.i.us.us.us = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.not.i.i.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48.us.us.us

_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.us.us.us: ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 208
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !51
  %i.ae = and i32 %i.ad, -2
  %spec.select.i.i.us.us.us = icmp eq i32 %i.ae, 22
  br i1 %spec.select.i.i.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us

_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48.us.us.us: ; preds = %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.us.us.us, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.af = load i64, ptr %i.r, align 8, !tbaa !25
  %i.ag = add nsw i64 %i.af, %i.g
  %i.ah = inttoptr i64 %i.ag to ptr
  invoke void @_ZNK7rocksdb14OptionTypeInfo7PrepareERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(180) %i.t, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %i.ah)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us unwind label %.split.us.thread

_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us:          ; preds = %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48.us.us.us
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.us.us.us = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.us.us.us, label %bb.e, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us.us

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us.us: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us
  call void @_ZdaPv(ptr noundef nonnull %i.ai) #22
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us.us, %_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us

_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread.us.us.us: ; preds = %bb.e, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.us.us.us, %bb.c, %.lr.ph.split.us.us.split.us
  %.sroa.040.0.us.us.us = load ptr, ptr %.sroa.040.066.us.us.us, align 8, !tbaa !37 ; 2 uses
  %i.aj = icmp eq ptr %.sroa.040.0.us.us.us, null
  br i1 %i.aj, label %.loopexit.us, label %.lr.ph.split.us.us.split.us

.split.us.thread:                                 ; preds = %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48.us.us.us
  %i.ak = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %0, align 8
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN7rocksdb6StatusD2Ev.exit36

.lr.ph75.split:                                   ; preds = %.lr.ph75, %bb.k
  %.promoted61 = phi ptr [ %.promoted61117, %bb.k ], [ null, %.lr.ph75 ] ; 3 uses
  %.sroa.044.074 = phi ptr [ %i.bp, %bb.k ], [ %i.c, %.lr.ph75 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 40
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %bb.k, label %bb.f

bb.f:                                             ; preds = %.lr.ph75.split
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.040.065 = load ptr, ptr %i.an, align 8, !tbaa !37 ; 2 uses
  %i.ao = icmp eq ptr %.sroa.040.065, null
  br i1 %i.ao, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread
  %.sroa.040.066 = phi ptr [ %.sroa.040.065, %.lr.ph ], [ %.sroa.040.0, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread ] ; 7 uses
  %i.aq = phi ptr [ %.promoted61, %.lr.ph ], [ %i.bn, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread ] ; 8 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 40
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 212
  %i.au = load i32, ptr %i.at, align 4, !tbaa !48
  %i.av = and i32 %i.au, -2
  %switch.i = icmp eq i32 %i.av, 4
  br i1 %switch.i, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 216
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !49
  %i.ay = and i32 %i.ax, 16384
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %bb.i, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 160
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !50
  %.not.i.i.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.not.i.i, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48

_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit: ; preds = %bb.i
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 208
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !51
  %i.bd = and i32 %i.bc, -2
  %spec.select.i.i = icmp eq i32 %i.bd, 22
  br i1 %spec.select.i.i, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread

_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48: ; preds = %bb.i, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.be = load i64, ptr %i.ap, align 8, !tbaa !25
  %i.bf = add nsw i64 %i.be, %i.g
  %i.bg = inttoptr i64 %i.bf to ptr
  invoke void @_ZNK7rocksdb14OptionTypeInfo7PrepareERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %3, ptr noundef nonnull align 8 dereferenceable(180) %i.as, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef %i.bg)
          to label %bb.j unwind label %.split.us

bb.j:                                             ; preds = %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48
  %i.bh = load i8, ptr %3, align 8, !tbaa !54     ; 2 uses
  %i.bi = load <4 x i8>, ptr %i.h, align 1, !tbaa !21
  store <4 x i8> zeroinitializer, ptr %3, align 8, !tbaa !21
  store <4 x i8> %i.bi, ptr %i.i, align 1, !tbaa !21
  store i8 0, ptr %i.j, align 4, !tbaa !64
  %i.bj = load i8, ptr %i.k, align 1, !tbaa !21
  store i8 %i.bj, ptr %i.l, align 1, !tbaa !65
  store i8 0, ptr %i.k, align 1, !tbaa !65
  %i.bk = load ptr, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !52
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #22
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.j, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.bl = icmp eq i8 %i.bh, 0
  br i1 %i.bl, label %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread, label %.loopexit58.sink.split

.split.us:                                        ; preds = %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread48
  %i.bm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i8 0, ptr %0, align 8
  store ptr %i.aq, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %.not.i.i34 = icmp eq ptr %i.aq, null
  br i1 %.not.i.i34, label %_ZN7rocksdb6StatusD2Ev.exit36, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35

_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread: ; preds = %bb.g, %bb.h, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit, %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.bn = phi ptr [ %i.aq, %bb.g ], [ %i.aq, %bb.h ], [ %i.aq, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit ], [ %i.bk, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ] ; 2 uses
  %.sroa.040.0 = load ptr, ptr %.sroa.040.066, align 8, !tbaa !37 ; 2 uses
  %i.bo = icmp eq ptr %.sroa.040.0, null
  br i1 %i.bo, label %.loopexit, label %bb.g

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35: ; preds = %.split.us
  call void @_ZdaPv(ptr noundef nonnull %i.aq) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit36

_ZN7rocksdb6StatusD2Ev.exit36:                    ; preds = %.split.us.thread, %.split.us, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35
  %.us-phi69136 = phi { ptr, i32 } [ %i.ak, %.split.us.thread ], [ %i.bm, %.split.us ], [ %i.bm, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35 ]
  resume { ptr, i32 } %.us-phi69136

.loopexit:                                        ; preds = %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread, %bb.f
  %.lcssa62 = phi ptr [ %.promoted61, %bb.f ], [ %i.bn, %_ZNK7rocksdb14OptionTypeInfo13ShouldPrepareEv.exit.thread ] ; 2 uses
  store i8 0, ptr %0, align 8
  store ptr %.lcssa62, ptr %i.a, align 8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit, %.lr.ph75.split
  %.promoted61117 = phi ptr [ %.lcssa62, %.loopexit ], [ %.promoted61, %.lr.ph75.split ]
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 48 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.e
  br i1 %i.bq, label %.loopexit58, label %.lr.ph75.split

.loopexit58.sink.split:                           ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %.loopexit.us
  %.sink142 = phi i8 [ 0, %.loopexit.us ], [ %i.bh, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  %.sink = phi ptr [ null, %.loopexit.us ], [ %i.bk, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  store i8 %.sink142, ptr %0, align 8
  store ptr %.sink, ptr %i.a, align 8
  br label %.loopexit58

.loopexit58:                                      ; preds = %bb.k, %.loopexit58.sink.split, %bb.a
  ret void
}

declare void @_ZNK7rocksdb14OptionTypeInfo7PrepareERKNS_13ConfigOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(180), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN7rocksdb6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load <4 x i8>, ptr %1, align 8, !tbaa !21
  store <4 x i8> %i.a, ptr %0, align 8, !tbaa !21
  store <4 x i8> zeroinitializer, ptr %1, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i8, ptr %i.b, align 4, !tbaa !66, !range !67, !noundef !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.c, ptr %i.d, align 4, !tbaa !64
  store i8 0, ptr %i.b, align 4, !tbaa !64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.f, ptr %i.g, align 1, !tbaa !65
  store i8 0, ptr %i.e, align 1, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !52
  store ptr null, ptr %i.h, align 8, !tbaa !52
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !52   ; 2 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !52
  %.not.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i: ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  br label %_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIA_KcSt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.i.i, %bb.b, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb12Configurable15ValidateOptionsERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.rocksdb::Status") align 8 captures(address) initializes((0, 6), (8, 16)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(753) %2, ptr noundef nonnull align 8 dereferenceable(976) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.rocksdb::Status", align 8   ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 6, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !32   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !32   ; 3 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %.loopexit58, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.a
  %i.g = ptrtoint ptr %1 to i64                   ; 2 uses
  %.not.i = icmp eq ptr %0, %4
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 5
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  br i1 %.not.i, label %.lr.ph75.split.us, label %.lr.ph75.split

.lr.ph75.split.us:                                ; preds = %.lr.ph75, %.loopexit.us
  %.sroa.044.074.us = phi ptr [ %5, %.loopexit.us ], [ %i.c, %.lr.ph75 ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.044.074.us, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !24   ; 2 uses
  %.not.us = icmp eq ptr %i.o, null
  br i1 %.not.us, label %.loopexit.us, label %bb.b

bb.b:                                             ; preds = %.lr.ph75.split.us
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.040.065.us = load ptr, ptr %i.p, align 8, !tbaa !37 ; 2 uses
  %i.q = icmp eq ptr %.sroa.040.065.us, null
  br i1 %i.q, label %.loopexit.us, label %.lr.ph.split.us.us.split.us.preheader

.loopexit.us:                                     ; preds = %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48.us.us.us, %bb.b, %.lr.ph75.split.us
  %5 = getelementptr inbounds nuw i8, ptr %.sroa.044.074.us, i64 48 ; 2 uses
  %6 = icmp eq ptr %5, %i.e
  br i1 %6, label %.loopexit58.sink.split, label %.lr.ph75.split.us

.lr.ph.split.us.us.split.us.preheader:            ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.044.074.us, i64 32
  br label %.lr.ph.split.us.us.split.us

.lr.ph.split.us.us.split.us:                      ; preds = %.lr.ph.split.us.us.split.us.preheader, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48.us.us.us
  %.sroa.040.066.us.us.us = phi ptr [ %.sroa.040.0.us.us.us, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48.us.us.us ], [ %.sroa.040.065.us, %.lr.ph.split.us.us.split.us.preheader ] ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 212
  %i.v = load i32, ptr %i.u, align 4, !tbaa !48
  %i.w = and i32 %i.v, -2
  %switch.i.us.us.us = icmp eq i32 %i.w, 4
  br i1 %switch.i.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48.us.us.us, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.us.us.split.us
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 192
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %.not.i.i.not.i.i.us.us.us = icmp eq ptr %i.y, null
  br i1 %.not.i.i.not.i.i.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread.us.us.us

_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.us.us.us: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.040.066.us.us.us, i64 208
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !51
  %i.ab = and i32 %i.aa, -2
  %spec.select.i.i.us.us.us = icmp eq i32 %i.ab, 22
  br i1 %spec.select.i.i.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread.us.us.us, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48.us.us.us

_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread.us.us.us: ; preds = %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.us.us.us, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !25
  %i.ad = add nsw i64 %i.ac, %i.g
  %i.ae = inttoptr i64 %i.ad to ptr
  invoke void @_ZNK7rocksdb14OptionTypeInfo8ValidateERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(180) %i.t, ptr noundef nonnull align 8 dereferenceable(753) %2, ptr noundef nonnull align 8 dereferenceable(976) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef %i.ae)
          to label %_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us unwind label %.split.us.thread

_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us:          ; preds = %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread.us.us.us
  %i.af = load ptr, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  %.not.i.i.us.us.us = icmp eq ptr %i.af, null
  br i1 %.not.i.i.us.us.us, label %bb.d, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us.us

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us.us: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us
  call void @_ZdaPv(ptr noundef nonnull %i.af) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i.us.us.us, %_ZN7rocksdb6StatusaSEOS0_.exit.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48.us.us.us

_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48.us.us.us: ; preds = %bb.d, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.us.us.us, %.lr.ph.split.us.us.split.us
  %.sroa.040.0.us.us.us = load ptr, ptr %.sroa.040.066.us.us.us, align 8, !tbaa !37 ; 2 uses
  %i.ag = icmp eq ptr %.sroa.040.0.us.us.us, null
  br i1 %i.ag, label %.loopexit.us, label %.lr.ph.split.us.us.split.us

.split.us.thread:                                 ; preds = %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread.us.us.us
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store i8 0, ptr %0, align 8
  store ptr null, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %_ZN7rocksdb6StatusD2Ev.exit36

.lr.ph75.split:                                   ; preds = %.lr.ph75, %bb.i
  %.promoted61 = phi ptr [ %.promoted61117, %bb.i ], [ null, %.lr.ph75 ] ; 3 uses
  %.sroa.044.074 = phi ptr [ %i.bj, %bb.i ], [ %i.c, %.lr.ph75 ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !24 ; 2 uses
  %.not = icmp eq ptr %i.aj, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph75.split
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.040.065 = load ptr, ptr %i.ak, align 8, !tbaa !37 ; 2 uses
  %i.al = icmp eq ptr %.sroa.040.065, null
  br i1 %i.al, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48
  %.sroa.040.066 = phi ptr [ %.sroa.040.065, %.lr.ph ], [ %.sroa.040.0, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48 ] ; 6 uses
  %i.an = phi ptr [ %.promoted61, %.lr.ph ], [ %i.bh, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48 ] ; 7 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 212
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !48
  %i.as = and i32 %i.ar, -2
  %switch.i = icmp eq i32 %i.as, 4
  br i1 %switch.i, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 192
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50
  %.not.i.i.not.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.not.i.i, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread

_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit: ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.040.066, i64 208
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !51
  %i.ax = and i32 %i.aw, -2
  %spec.select.i.i = icmp eq i32 %i.ax, 22
  br i1 %spec.select.i.i, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48

_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread: ; preds = %bb.g, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ay = load i64, ptr %i.am, align 8, !tbaa !25
  %i.az = add nsw i64 %i.ay, %i.g
  %i.ba = inttoptr i64 %i.az to ptr
  invoke void @_ZNK7rocksdb14OptionTypeInfo8ValidateERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKv(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(180) %i.ap, ptr noundef nonnull align 8 dereferenceable(753) %2, ptr noundef nonnull align 8 dereferenceable(976) %3, ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef %i.ba)
          to label %bb.h unwind label %.split.us

bb.h:                                             ; preds = %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread
  %i.bb = load i8, ptr %4, align 8, !tbaa !54     ; 2 uses
  %i.bc = load <4 x i8>, ptr %i.h, align 1, !tbaa !21
  store <4 x i8> zeroinitializer, ptr %4, align 8, !tbaa !21
  store <4 x i8> %i.bc, ptr %i.i, align 1, !tbaa !21
  store i8 0, ptr %i.j, align 4, !tbaa !64
  %i.bd = load i8, ptr %i.k, align 1, !tbaa !21
  store i8 %i.bd, ptr %i.l, align 1, !tbaa !65
  store i8 0, ptr %i.k, align 1, !tbaa !65
  %i.be = load ptr, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  store ptr null, ptr %i.m, align 8, !tbaa !52
  %.not.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZN7rocksdb6StatusaSEOS0_.exit

_ZN7rocksdb6StatusaSEOS0_.exit:                   ; preds = %bb.h
  call void @_ZdaPv(ptr noundef nonnull %i.an) #22
  %.pre = load ptr, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN7rocksdb6StatusaSEOS0_.exit.thread, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i: ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @_ZdaPv(ptr noundef nonnull %.pre) #22
  br label %_ZN7rocksdb6StatusaSEOS0_.exit.thread

_ZN7rocksdb6StatusaSEOS0_.exit.thread:            ; preds = %bb.h, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i, %_ZN7rocksdb6StatusaSEOS0_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.bf = icmp eq i8 %i.bb, 0
  br i1 %i.bf, label %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48, label %.loopexit58.sink.split

.split.us:                                        ; preds = %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store i8 0, ptr %0, align 8
  store ptr %i.an, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not.i.i34 = icmp eq ptr %i.an, null
  br i1 %.not.i.i34, label %_ZN7rocksdb6StatusD2Ev.exit36, label %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35

_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48: ; preds = %bb.f, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit, %_ZN7rocksdb6StatusaSEOS0_.exit.thread
  %i.bh = phi ptr [ %i.an, %bb.f ], [ %i.an, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit ], [ %i.be, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ] ; 2 uses
  %.sroa.040.0 = load ptr, ptr %.sroa.040.066, align 8, !tbaa !37 ; 2 uses
  %i.bi = icmp eq ptr %.sroa.040.0, null
  br i1 %i.bi, label %.loopexit, label %bb.f

_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35: ; preds = %.split.us
  call void @_ZdaPv(ptr noundef nonnull %i.an) #22
  br label %_ZN7rocksdb6StatusD2Ev.exit36

_ZN7rocksdb6StatusD2Ev.exit36:                    ; preds = %.split.us.thread, %.split.us, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35
  %.us-phi69136 = phi { ptr, i32 } [ %i.ah, %.split.us.thread ], [ %i.bg, %.split.us ], [ %i.bg, %_ZNKSt14default_deleteIA_KcEclIS0_EENSt9enable_ifIXsr14is_convertibleIPA_T_PS1_EE5valueEvE4typeEPS5_.exit.i.i35 ]
  resume { ptr, i32 } %.us-phi69136

.loopexit:                                        ; preds = %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48, %bb.e
  %.lcssa62 = phi ptr [ %.promoted61, %bb.e ], [ %i.bh, %_ZNK7rocksdb14OptionTypeInfo14ShouldValidateEv.exit.thread48 ] ; 2 uses
  store i8 0, ptr %0, align 8
  store ptr %.lcssa62, ptr %i.a, align 8
  br label %bb.i

bb.i:                                             ; preds = %.loopexit, %.lr.ph75.split
  %.promoted61117 = phi ptr [ %.lcssa62, %.loopexit ], [ %.promoted61, %.lr.ph75.split ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.044.074, i64 48 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.e
  br i1 %i.bk, label %.loopexit58, label %.lr.ph75.split

.loopexit58.sink.split:                           ; preds = %_ZN7rocksdb6StatusaSEOS0_.exit.thread, %.loopexit.us
  %.sink142 = phi i8 [ 0, %.loopexit.us ], [ %i.bb, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  %.sink = phi ptr [ null, %.loopexit.us ], [ %i.be, %_ZN7rocksdb6StatusaSEOS0_.exit.thread ]
  store i8 %.sink142, ptr %0, align 8
  store ptr %.sink, ptr %i.a, align 8
  br label %.loopexit58

.loopexit58:                                      ; preds = %bb.i, %.loopexit58.sink.split, %bb.a
  ret void
}

declare void @_ZNK7rocksdb14OptionTypeInfo8ValidateERKNS_9DBOptionsERKNS_19ColumnFamilyOptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKv(ptr dead_on_unwind writable sret(%"class.rocksdb::Status") align 8, ptr noundef nonnull align 8 dereferenceable(180), ptr noundef nonnull align 8 dereferenceable(753), ptr noundef nonnull align 8 dereferenceable(976), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK7rocksdb12Configurable13GetOptionsPtrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !20   ; 3 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = icmp eq i64 %i.g, 0
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13
  %.sroa.010.020 = phi ptr [ %i.b, %.lr.ph ], [ %i.o, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13 ] ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20
  %i.l = icmp eq i64 %i.k, %i.g
  br i1 %i.l, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13

bb.c:                                             ; preds = %bb.b
  br i1 %i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.c
  %i.m = load ptr, ptr %.sroa.010.020, align 8, !tbaa !26
  %bcmp.i = tail call i32 @bcmp(ptr %i.m, ptr %i.h, i64 %i.g)
  %i.n = icmp eq i32 %bcmp.i, 0
  br i1 %i.n, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 48 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.d
  br i1 %i.p, label %.loopexit, label %bb.b

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.c, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.010.020, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !25
  %i.s = ptrtoint ptr %0 to i64
  %i.t = add nsw i64 %i.r, %i.s
  %i.u = inttoptr i64 %i.t to ptr
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13, %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %i.v = phi ptr [ %i.u, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ null, %bb.a ], [ null, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread13 ]
  ret ptr %i.v
}

; Function Attrs: mustprogress uwtable
define void @_ZNK7rocksdb12Configurable13GetOptionNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !20   ; 8 uses
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.d, 0
  br i1 %i.f, label %.noexc.i, label %bb.c

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #23
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %i.d, 1                      ; 2 uses
  %i.h = icmp slt i64 %i.g, 0
end_hunk_0
