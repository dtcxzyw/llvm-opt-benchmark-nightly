Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IPAddressV6?download=true
inline.NumInlined: 1256
inline.NumDeleted: 592
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5folly6detail16throw_exception_INS_17BadExpectedAccessIvEEJEEEvDpT0_:bb.a

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_17BadExpectedAccessIvEEEEvOT_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly17BadExpectedAccessIvEE, i64 16), ptr %i.a, align 8, !tbaa !31
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly17BadExpectedAccessIvEE, ptr nonnull @_ZNSt9exceptionD2Ev) #36
  unreachable
}

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly11IPAddressV6C2ERK8in6_addr(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(18) initializes((0, 18)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.a, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly11IPAddressV6C2ERK12sockaddr_in6(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(18) initializes((0, 18)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(28) %1) unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i32, ptr %i.c, align 4, !tbaa !160
  %i.e = trunc i32 %i.d to i16
  store i16 %i.e, ptr %i.b, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5folly11IPAddressV6C2ERKSt5arrayIhLm16EE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(18) initializes((0, 18)) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1) unnamed_addr #25 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !53
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.a, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11IPAddressV6C2ENS0_12LinkLocalTagENS_10MacAddressE(ptr noundef nonnull align 4 dereferenceable(18) %0, i32 %1, i64 %2) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN5folly11IPAddressV614AddressStorageC1ENS_10MacAddressE(ptr noundef nonnull align 4 dereferenceable(16) %0, i64 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 0, ptr %i.a, align 4, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly11IPAddressV614AddressStorageC2ENS_10MacAddressE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 %1) unnamed_addr #21 align 2 {
bb.a:
  %.sroa.1.0.extract.shift = lshr i64 %1, 16
  %.sroa.1.0.extract.trunc = trunc i64 %.sroa.1.0.extract.shift to i8
  %.sroa.4.0.extract.shift = lshr i64 %1, 40
  %.sroa.4.0.extract.trunc = trunc i64 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i64 %1, 48
  %.sroa.5.0.extract.trunc = trunc i64 %.sroa.5.0.extract.shift to i8
  %.sroa.6.0.extract.shift = lshr i64 %1, 56
  %.sroa.6.0.extract.trunc = trunc nuw i64 %.sroa.6.0.extract.shift to i8
  store i64 33022, ptr %0, align 4
  %i.a = xor i8 %.sroa.1.0.extract.trunc, 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.a, ptr %i.b, align 4, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.d = lshr i64 %1, 24
  %i.e = trunc i64 %i.d to i16
  store i16 %i.e, ptr %i.c, align 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 -1, ptr %i.f, align 1, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 -2, ptr %i.g, align 4, !tbaa !28
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 %.sroa.4.0.extract.trunc, ptr %i.h, align 1, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %.sroa.5.0.extract.trunc, ptr %i.i, align 2, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %.sroa.6.0.extract.trunc, ptr %i.j, align 1, !tbaa !28
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV626getMacAddressFromLinkLocalEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional") align 1 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::MacAddress", align 8 ; 5 uses
  %3 = alloca %"struct.std::array.15", align 1    ; 7 uses
  %4 = alloca %"struct.std::array", align 8       ; 5 uses
  %5 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33, !noalias !165
  %i.a = load i8, ptr %1, align 4, !tbaa !28, !noalias !165
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !28, !noalias !165
  %i.d = and i8 %i.c, -64
  %.sroa.0.sroa.3.0.insert.ext.i.i.i = zext i8 %i.d to i64
  %.sroa.0.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i.i.i, 8
  %.sroa.0.sroa.0.0.insert.ext.i.i.i = zext i8 %i.a to i64
  %.sroa.0.sroa.0.0.insert.mask.i.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.sroa.0.0.insert.mask.i.i.i, ptr %4, align 8, !noalias !165
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8, !noalias !165
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(16) %4) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33, !noalias !165
  %rhsv = load i16, ptr %5, align 4
  %.not = icmp eq i16 %rhsv, -32514
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.f, align 1, !tbaa !55
  br label %_ZNK5folly11IPAddressV622getMacAddressFromEUI64Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !166)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28, !noalias !166
  %i.i = icmp eq i8 %i.h, -1
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.k = load i8, ptr %i.j, align 4, !noalias !166
  %i.l = icmp eq i8 %i.k, -2
  %or.cond.i = select i1 %i.i, i1 %i.l, i1 false
  br i1 %or.cond.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !28, !alias.scope !166
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 1, !tbaa !55, !alias.scope !166
  br label %_ZNK5folly11IPAddressV622getMacAddressFromEUI64Ev.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !166
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i8, ptr %i.n, align 4, !tbaa !28, !noalias !166
  %i.p = xor i8 %i.o, 2
  store i8 %i.p, ptr %3, align 1, !tbaa !28, !noalias !166
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.t = load <2 x i8>, ptr %i.q, align 1, !tbaa !28, !noalias !166
  %i.u = load <2 x i8>, ptr %i.s, align 1, !tbaa !28, !noalias !166
  %i.v = shufflevector <2 x i8> %i.t, <2 x i8> %i.u, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %i.v, ptr %i.r, align 1, !tbaa !28, !noalias !166
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.x = load i8, ptr %i.w, align 1, !tbaa !28, !noalias !166
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.x, ptr %i.y, align 1, !tbaa !28, !noalias !166
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !166
  store i64 0, ptr %2, align 8, !noalias !166
  call void @_ZN5folly10MacAddress13setFromBinaryENS_5RangeIPKhEE(ptr noundef nonnull align 1 dereferenceable(8) %2, ptr nonnull %3, ptr nonnull %i.z), !noalias !166
  %i.aa = load i64, ptr %2, align 8, !noalias !166
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !166
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %0, align 1, !tbaa !28, !alias.scope !166
  store i8 1, ptr %i.ab, align 1, !tbaa !57, !alias.scope !166
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !166
  br label %_ZNK5folly11IPAddressV622getMacAddressFromEUI64Ev.exit

_ZNK5folly11IPAddressV622getMacAddressFromEUI64Ev.exit: ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV611isLinkLocalEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 5 uses
  %2 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33, !noalias !169
  %i.a = load i8, ptr %0, align 4, !tbaa !28, !noalias !169
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !28, !noalias !169
  %i.d = and i8 %i.c, -64
  %.sroa.0.sroa.3.0.insert.ext.i.i = zext i8 %i.d to i64
  %.sroa.0.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i.i, 8
  %.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %i.a to i64
  %.sroa.0.sroa.0.0.insert.mask.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i
  store i64 %.sroa.0.sroa.0.0.insert.mask.i.i, ptr %1, align 8, !noalias !169
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8, !noalias !169
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %2, ptr noundef nonnull align 1 dereferenceable(16) %1) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33, !noalias !169
  %rhsv = load i16, ptr %2, align 4
  %.not = icmp eq i16 %rhsv, -32514
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  ret i1 %.not
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV622getMacAddressFromEUI64Ev(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Optional") align 1 captures(none) initializes((0, 1), (8, 9)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.folly::MacAddress", align 8 ; 5 uses
  %3 = alloca %"struct.std::array.15", align 1    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.b = load i8, ptr %i.a, align 1, !tbaa !28
  %i.c = icmp eq i8 %i.b, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i8, ptr %i.d, align 4
  %i.f = icmp eq i8 %i.e, -2
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 1, !tbaa !28
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.g, align 1, !tbaa !55
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load i8, ptr %i.h, align 4, !tbaa !28
  %i.j = xor i8 %i.i, 2
  store i8 %i.j, ptr %3, align 1, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 13
  %4 = load <2 x i8>, ptr %i.k, align 1, !tbaa !28
  %5 = load <2 x i8>, ptr %i.m, align 1, !tbaa !28
  %6 = shufflevector <2 x i8> %4, <2 x i8> %5, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i8> %6, ptr %i.l, align 1, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.o = load i8, ptr %i.n, align 1, !tbaa !28
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 5
  store i8 %i.o, ptr %i.p, align 1, !tbaa !28
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 0, ptr %2, align 8
  call void @_ZN5folly10MacAddress13setFromBinaryENS_5RangeIPKhEE(ptr noundef nonnull align 1 dereferenceable(8) %2, ptr nonnull %3, ptr nonnull %i.q)
  %i.r = load i64, ptr %2, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %0, align 1, !tbaa !28
  store i8 1, ptr %i.s, align 1, !tbaa !57
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN5folly10MacAddress13setFromBinaryENS_5RangeIPKhEE(ptr noundef nonnull align 1 dereferenceable(8), ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN5folly11IPAddressV610fromBinaryENS_5RangeIPKhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::IPAddressV6") align 4 captures(none) %0, ptr %1, ptr %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::IPAddressV6", align 4 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33, !noalias !172
  invoke void @_ZN5folly11IPAddressV6C1Ev(ptr noundef nonnull align 4 dereferenceable(18) %3)
          to label %bb.b unwind label %bb.c, !noalias !172

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  %i.c = ptrtoint ptr %1 to i64
  %i.d = sub i64 %i.b, %i.c                       ; 2 uses
  %.not.i.i = icmp eq i64 %i.d, 16
  br i1 %.not.i.i, label %_ZNR5folly8ExpectedINS_11IPAddressV6ENS_20IPAddressFormatErrorEE5valueEv.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #39, !noalias !172
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !172
  %i.g = call ptr @__cxa_allocate_exception(i64 16) #33 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.d, ptr %i.a, align 8, !tbaa !21
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA56_cmETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(56) @.str.12, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.e unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.g, align 8, !tbaa !31
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #36
          to label %bb.j unwind label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.f
  %.0 = phi i1 [ false, %bb.f ], [ true, %bb.e ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.j = load ptr, ptr %4, align 8, !tbaa !26     ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.m = load i64, ptr %i.k, align 8, !tbaa !28
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.0, label %bb.h, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br i1 %.0, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn15 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.g) #33
  br label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %.pn15, %bb.h ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn14

_ZNR5folly8ExpectedINS_11IPAddressV6ENS_20IPAddressFormatErrorEE5valueEv.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false), !noalias !172
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 0, ptr %i.o, align 4, !tbaa !34, !noalias !172
  %.sroa.0.0.copyload = load i32, ptr %3, align 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx6, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.7.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33, !noalias !172
  store i32 %.sroa.0.0.copyload, ptr %0, align 4
  ret void

bb.j:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly11IPAddressV613tryFromBinaryENS_5RangeIPKhEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::Expected") align 4 captures(none) %0, ptr %1, ptr %2) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.folly::IPAddressV6", align 4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  invoke void @_ZN5folly11IPAddressV6C1Ev(ptr noundef nonnull align 4 dereferenceable(18) %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %.not.i = icmp eq i64 %i.c, 16
  br i1 %.not.i, label %bb.c, label %_ZNR5folly8ExpectedINS_4UnitENS_20IPAddressFormatErrorEE5errorEv.exit

_ZNR5folly8ExpectedINS_4UnitENS_20IPAddressFormatErrorEE5errorEv.exit: ; preds = %bb.b
  store i32 0, ptr %0, align 4, !tbaa !28
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(16) %1, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i16 0, ptr %i.d, align 4, !tbaa !34
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !50
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNR5folly8ExpectedINS_4UnitENS_20IPAddressFormatErrorEE5errorEv.exit
  %.sink = phi i8 [ 1, %bb.c ], [ 2, %_ZNR5folly8ExpectedINS_4UnitENS_20IPAddressFormatErrorEE5errorEv.exit ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sink, ptr %i.e, align 4, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  ret void

bb.e:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #39
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA56_cmETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 1 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.c, align 8, !tbaa !27
  store i8 0, ptr %i.b, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr %0, ptr %i.a, align 8, !tbaa !52
  invoke void @_ZN5folly11toAppendFitIJA56_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.e = load ptr, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.b
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.g = load i64, ptr %i.b, align 8, !tbaa !28
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly11toAppendFitIJA56_cmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEETnNSt9enable_ifIXsr12IsSomeStringINSt14remove_pointerI19__type_pack_elementIXmisPDpT_ELi1EEJSD_EEE4typeEEE5valueEiE4typeELi0EEEvDpRKSC_(ptr noundef nonnull align 1 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !52
  %i.b = load i64, ptr %1, align 8, !tbaa !21     ; 3 uses
end_hunk_0
