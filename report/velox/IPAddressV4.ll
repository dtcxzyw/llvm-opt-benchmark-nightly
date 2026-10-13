Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/IPAddressV4?download=true
inline.NumInlined: 744
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5folly11IPAddressV422toFullyQualifiedAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.a, i64 %i.b, i1 false)
  br label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.b)
  br label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !21
  %i.p = load ptr, ptr %1, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV417toInverseArpaNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.40", align 16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !165
  %i.d = load i8, ptr %i.a, align 1, !tbaa !12, !noalias !165
  %i.e = zext i8 %i.d to i32
  store i32 %i.e, ptr %2, align 16, !tbaa !12, !noalias !165
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i8, ptr %i.b, align 2, !tbaa !12, !noalias !165
  %i.h = zext i8 %i.g to i32
  store i32 %i.h, ptr %i.f, align 16, !tbaa !12, !noalias !165
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i8, ptr %i.c, align 1, !tbaa !12, !noalias !165
  %i.k = zext i8 %i.j to i32
  store i32 %i.k, ptr %i.i, align 16, !tbaa !12, !noalias !165
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load i8, ptr %1, align 4, !tbaa !12, !noalias !165
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %i.l, align 16, !tbaa !12, !noalias !165
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.25, i64 24, i64 8738, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !165
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i8 @_ZNK5folly11IPAddressV412getNthMSByteEm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.42", align 16 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp ugt i64 %1, 3
  br i1 %i.a, label %.noexc, label %bb.g

.noexc:                                           ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.c, ptr %4, align 8, !tbaa !16, !alias.scope !170
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.27, i64 7, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.d, align 8, !tbaa !21, !alias.scope !170
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.e, align 1, !tbaa !12, !alias.scope !170
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !171
  store i64 3, ptr %2, align 16, !tbaa !12, !noalias !171
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %i.f, align 16, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 7, ptr %i.g, align 8, !tbaa !12
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.26, i64 50, i64 212, ptr nonnull %2)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !171
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !12
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.s = load i64, ptr %i.c, align 8, !tbaa !12
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.c, align 8, !tbaa !12
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.v) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0, label %bb.e, label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0, label %bb.e, label %bb.f

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn19 = phi { ptr, i32 } [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.p, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15
  %.pn.pn18 = phi { ptr, i32 } [ %.pn.pn19, %bb.e ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15 ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ]
  resume { ptr, i32 } %.pn.pn18

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  ret i8 %i.x

bb.h:                                             ; preds = %bb.c
  unreachable
}

declare void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt16invalid_argumentD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5folly24IPAddressFormatExceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #17

; Function Attrs: mustprogress uwtable
define range(i64 0, 1099511627776) i64 @_ZN5folly11IPAddressV419longestCommonPrefixERKSt4pairIS0_hES4_(ptr noundef nonnull align 4 dereferenceable(5) %0, ptr noundef nonnull align 4 dereferenceable(5) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.46", align 8     ; 5 uses
  %3 = alloca %"class.folly::IPAddressV4", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !174
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.d = load i8, ptr %i.c, align 4, !tbaa !174
  %i.e = tail call i40 @_ZN5folly6detail5Bytes19longestCommonPrefixILm4EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_h(ptr noundef nonnull align 1 dereferenceable(4) %0, i8 noundef zeroext %i.b, ptr noundef nonnull align 1 dereferenceable(4) %1, i8 noundef zeroext %i.d)
  store i40 %i.e, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  call void @_ZN5folly11IPAddressV4C1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(4) %2) #32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %3, align 4, !tbaa !12
  %i.h = load i8, ptr %i.f, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %.sroa.2.0.insert.ext = zext i8 %i.h to i64
  %.sroa.2.0.insert.shift = shl nuw nsw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.g to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr i40 @_ZN5folly6detail5Bytes19longestCommonPrefixILm4EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_h(ptr noundef nonnull align 1 dereferenceable(4) %0, i8 noundef zeroext %1, ptr noundef nonnull align 1 dereferenceable(4) %2, i8 noundef zeroext %3) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.50", align 16 ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"struct.std::array", align 4       ; 6 uses
  %i.a = icmp ugt i8 %1, 32
  %i.b = icmp ugt i8 %3, 32
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32, !noalias !179
  %.sroa.speculated47 = tail call i8 @llvm.umax.i8(i8 %1, i8 %3)
  %i.d = zext i8 %.sroa.speculated47 to i32
  store i32 %i.d, ptr %4, align 16, !tbaa !12, !noalias !179
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 32, ptr %i.e, align 16, !tbaa !12, !noalias !179
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull @.str.32, i64 50, i64 66, ptr nonnull %4)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32, !noalias !179
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.030 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.h = load ptr, ptr %5, align 8, !tbaa !20     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.k = load i64, ptr %i.i, align 8, !tbaa !12
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.030, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  br i1 %.030, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn60 = phi { ptr, i32 } [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.c) #32
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.sroa.speculated44 = tail call i8 @llvm.umin.i8(i8 %3, i8 %1) ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  store i32 0, ptr %6, align 4
  %7 = zext nneg i8 %.sroa.speculated44 to i32
  %.not = icmp eq i8 %.sroa.speculated44, 0
  br i1 %.not, label %.critedge4, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.m = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.n = load i8, ptr %2, align 1, !tbaa !12
  %i.o = icmp eq i8 %i.m, %i.n
  br i1 %i.o, label %.lr.ph80.a, label %.critedge

.lr.ph.a:                                         ; preds = %.lr.ph80.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  %i.s = load i8, ptr %i.r, align 1, !tbaa !12
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %.lr.ph80.a, label %.critedge, !llvm.loop !177

.lr.ph80.a:                                       ; preds = %.lr.ph.preheader, %.lr.ph.a
  %8 = phi i8 [ %i.q, %.lr.ph.a ], [ %i.m, %.lr.ph.preheader ]
  %indvars.iv79 = phi i64 [ %indvars.iv.next, %.lr.ph.a ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 %indvars.iv79
  store i8 %8, ptr %i.u, align 1, !tbaa !12
  %indvars.iv.next = add nuw i64 %indvars.iv79, 1 ; 4 uses
  %9 = trunc nuw i64 %indvars.iv.next to i32
  %10 = shl nuw nsw i32 %9, 3                     ; 3 uses
  %11 = icmp samesign ult i32 %10, %7
  br i1 %11, label %.lr.ph.a, label %..critedge_crit_edge, !llvm.loop !177

..critedge_crit_edge:                             ; preds = %.lr.ph80.a
  br label %.critedge, !llvm.loop !177

.critedge:                                        ; preds = %.lr.ph.a, %..critedge_crit_edge, %.lr.ph.preheader
  %.lcssa.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %10, %..critedge_crit_edge ], [ %10, %.lr.ph.a ]
  %12 = trunc i32 %.lcssa.ph to i8                ; 2 uses
  %.sroa.speculated = tail call i8 @llvm.umin.i8(i8 %.sroa.speculated44, i8 %12) ; 2 uses
  %i.v = icmp ugt i8 %.sroa.speculated44, %12
  br i1 %i.v, label %.lr.ph65, label %.critedge4

.lr.ph65:                                         ; preds = %.critedge, %bb.h
  %.028.in64 = phi i8 [ %i.ai, %bb.h ], [ %.sroa.speculated, %.critedge ] ; 4 uses
  %.027 = and i8 %.028.in64, 7
  %.028 = lshr i8 %.028.in64, 3
  %i.w = zext nneg i8 %.028 to i64                ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !12
  %i.z = zext nneg i8 %.027 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @_ZZN5folly6detail5Bytes19longestCommonPrefixILm4EEESt4pairISt5arrayIhXT_EEhERKS5_hS8_hE6kMasks, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !12  ; 2 uses
  %i.ac = and i8 %i.ab, %i.y                      ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 %i.w
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !12
  %i.af = and i8 %i.ae, %i.ab
  %i.ag = icmp eq i8 %i.ac, %i.af
  br i1 %i.ag, label %bb.h, label %.critedge4

bb.h:                                             ; preds = %.lr.ph65
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 %i.w
  store i8 %i.ac, ptr %i.ah, align 1, !tbaa !12
  %i.ai = add i8 %.028.in64, 1                    ; 2 uses
  %exitcond.not = icmp eq i8 %i.ai, %.sroa.speculated44
  br i1 %exitcond.not, label %.critedge4, label %.lr.ph65, !llvm.loop !178

.critedge4:                                       ; preds = %.lr.ph65, %bb.h, %bb.g, %.critedge
  %.028.in.lcssa = phi i8 [ %.sroa.speculated, %.critedge ], [ 0, %bb.g ], [ %.028.in64, %.lr.ph65 ], [ %.sroa.speculated44, %bb.h ]
  %i.aj = load i32, ptr %6, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %.sroa.2.0.insert.ext = zext i8 %.028.in.lcssa to i40
  %.sroa.2.0.insert.shift = shl nuw i40 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.aj to i40
  %.sroa.0.0.insert.insert = or disjoint i40 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  ret i40 %.sroa.0.0.insert.insert

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn59 = phi { ptr, i32 } [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn60, %bb.f ], [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn59

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { cold mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { cold noreturn }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #20 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #21 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #22 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #26 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #30 = { mustprogress noinline uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { builtin nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { cold nounwind }
attributes #38 = { nounwind allocsize(0) }
attributes #39 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!8, !8, i64 0}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"p1 omnipotent char", !13, i64 0}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !14, i64 0}
!16 = !{!15, !14, i64 0}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"long", !8, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !18, i64 8, !8, i64 16}
!20 = !{!19, !14, i64 0}
!21 = !{!19, !18, i64 8}
!22 = !{!"_ZTSN5folly13fbstring_coreIcE11MediumLargeE", !14, i64 0, !18, i64 8, !18, i64 16}
!23 = !{!22, !18, i64 16}
!24 = !{!18, !18, i64 0}
!25 = !{!"branch_weights", i32 1, i32 1048575}
!26 = !{!"bool", !8, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{}
!30 = !{!"vtable pointer", !7, i64 0}
!31 = !{!30, !30, i64 0}
!32 = !{!14, !14, i64 0}
!33 = !{!9, !9, i64 0}
!34 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !13, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"branch_weights", i32 4001, i32 4000000}
!37 = !{!"short", !8, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"p1 _ZTSN5folly5RangeIPKcEE", !13, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIN5folly5RangeIPKcEESaIS4_EE17_Vector_impl_dataE", !40, i64 0, !40, i64 8, !40, i64 16}
!42 = !{!41, !40, i64 8}
!43 = !{!41, !40, i64 0}
!44 = !{!40, !40, i64 0}
!45 = !{!41, !40, i64 16}
!46 = !{!"_ZTSN5folly5RangeIPKcEE", !14, i64 0, !14, i64 8}
!47 = !{!46, !14, i64 8}
!48 = !{!46, !14, i64 0}
!49 = !{!"_ZTSN5folly9IPAddressE", !8, i64 0, !37, i64 20}
!50 = !{!49, !37, i64 20}
!51 = distinct !{!51, i1 false, !"_ZNK5folly11IPAddressV43strB5cxx11Ev"}
!52 = distinct !{!52, !51, !"_ZNK5folly11IPAddressV43strB5cxx11Ev: argument 0"}
!53 = distinct !{!53, i1 false, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr"}
!54 = distinct !{!54, !53, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr: argument 0"}
!55 = !{!52}
!56 = !{!54}
!57 = !{!54, !52}
!58 = distinct !{!58, i1 false, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr"}
!59 = distinct !{!59, !58, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr: argument 0"}
!60 = !{!59}
!61 = distinct !{!61, i1 false, !"_ZNK5folly11IPAddressV43strB5cxx11Ev"}
!62 = distinct !{!62, !61, !"_ZNK5folly11IPAddressV43strB5cxx11Ev: argument 0"}
!63 = distinct !{!63, i1 false, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr"}
!64 = distinct !{!64, !63, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr: argument 0"}
!65 = !{!62}
!66 = !{!64}
!67 = !{!64, !62}
!68 = distinct !{!68, i1 false, !"_ZNK5folly11IPAddressV43strB5cxx11Ev"}
!69 = distinct !{!69, !68, !"_ZNK5folly11IPAddressV43strB5cxx11Ev: argument 0"}
!70 = distinct !{!70, i1 false, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr"}
!71 = distinct !{!71, !70, !"_ZN5folly6detail16fastIpv4ToStringB5cxx11ERK7in_addr: argument 0"}
!72 = !{!69}
!73 = !{!71}
!74 = !{!71, !69}
!75 = !{!"branch_weights", i32 2002, i32 2000}
!76 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!77 = !{i64 0, i64 8, !32, i64 8, i64 8, !24, i64 16, i64 8, !24}
!78 = distinct !{!78, i1 false, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!79 = distinct !{!79, !78, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!80 = distinct !{!80, i1 false, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!81 = distinct !{!81, !80, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!82 = !{!81, !79}
!83 = distinct !{!83, i1 false, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev"}
!84 = distinct !{!84, !83, !"_ZNK5folly5RangeIPKcE3strB5cxx11Ev: argument 0"}
!85 = distinct !{!85, i1 false, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_"}
!86 = distinct !{!86, !85, !"_ZNK5folly5RangeIPKcE2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEENSt9enable_ifIXsr3std16is_constructibleIT_RKS2_mEE5valueESC_E4typeEDpOT0_: argument 0"}
!87 = distinct !{!87, i1 false, !"_ZN3fmt3v116formatIJRN5folly5RangeIPKcEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_"}
!88 = distinct !{!88, !87, !"_ZN3fmt3v116formatIJRN5folly5RangeIPKcEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_7fstringIJDpT_EE1tEDpOSF_: argument 0"}
!89 = !{!86, !84}
!90 = !{!88}
!91 = !{!"_ZTS7in_addr", !9, i64 0}
!92 = !{!91, !9, i64 0}
end_hunk_0
