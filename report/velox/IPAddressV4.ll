inline.NumInlined: 743
inline.NumDeleted: 339
begin_hunk_0_@_ZNK5folly11IPAddressV410isLoopbackEv:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5folly11IPAddressV410isLoopbackEvE13loopback_addr) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly11IPAddressV4C1ENS_5RangeIPKcEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZNK5folly11IPAddressV410isLoopbackEvE13loopback_addr, ptr nonnull @.str.22, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.22, i64 9))
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5folly11IPAddressV410isLoopbackEvE13loopback_addr) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = load i32, ptr @_ZZNK5folly11IPAddressV410isLoopbackEvE13loopback_addr, align 4
  %i.f = xor i32 %i.d, %i.e
  %i.g = and i32 %i.f, 255
  %.not2 = icmp eq i32 %i.g, 0
  ret i1 %.not2

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5folly11IPAddressV410isLoopbackEvE13loopback_addr) #32
  resume { ptr, i32 } %i.h
}

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV411isLinkLocalEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5folly11IPAddressV411isLinkLocalEvE14linklocal_addr acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !50

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5folly11IPAddressV411isLinkLocalEvE14linklocal_addr) #32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly11IPAddressV4C1ENS_5RangeIPKcEE(ptr noundef nonnull align 4 dereferenceable(4) @_ZZNK5folly11IPAddressV411isLinkLocalEvE14linklocal_addr, ptr nonnull @.str.23, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.23, i64 11))
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5folly11IPAddressV411isLinkLocalEvE14linklocal_addr) #32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.d = load i32, ptr %0, align 4
  %i.e = load i32, ptr @_ZZNK5folly11IPAddressV411isLinkLocalEvE14linklocal_addr, align 4
  %i.f = xor i32 %i.d, %i.e
  %i.g = and i32 %i.f, 65535
  %.not2 = icmp eq i32 %i.g, 0
  ret i1 %.not2

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5folly11IPAddressV411isLinkLocalEvE14linklocal_addr) #32
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV413isNonroutableEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %0, align 4, !tbaa !7
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i) ; 5 uses
  %or.cond3.i = icmp sgt i32 %i.a, 2130706431
  %i.b = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.d = and <4 x i32> %i.c, <i32 -16777216, i32 -65536, i32 -1048576, i32 -65536>
  %i.e = icmp eq <4 x i32> %i.d, <i32 167772160, i32 -1442971648, i32 -1408237568, i32 -1062731776>
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp ne i4 %i.f, 0
  %op.rdx33 = or i1 %i.g, %or.cond3.i
  br i1 %op.rdx33, label %_ZNK5folly11IPAddressV49isPrivateEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.a, -4194304
  %or.cond11.i = icmp eq i32 %i.h, 1681915904
  br label %_ZNK5folly11IPAddressV49isPrivateEv.exit

_ZNK5folly11IPAddressV49isPrivateEv.exit:         ; preds = %bb.a, %bb.b
  %i.i = phi i1 [ %or.cond11.i, %bb.b ], [ true, %bb.a ]
  %i.j = icmp ult i32 %i.a, 16777216
  %i.k = and <4 x i32> %i.c, <i32 -768, i32 -131072, i32 -256, i32 -256>
  %i.l = icmp eq <4 x i32> %i.k, <i32 -1073741824, i32 -971898880, i32 -969710592, i32 -889163520>
  %i.m = icmp ugt i32 %i.a, -536870913
  %i.n = bitcast <4 x i1> %i.l to i4
  %i.o = icmp ne i4 %i.n, 0
  %op.rdx = or i1 %i.o, %i.m
  %op.rdx31 = or i1 %i.j, %i.i
  %op.rdx32 = or i1 %op.rdx, %op.rdx31
  ret i1 %op.rdx32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV49isPrivateEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %0, align 4, !tbaa !7
  %i.a = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i) ; 3 uses
  %or.cond3 = icmp sgt i32 %i.a, 2130706431
  %i.b = insertelement <4 x i32> poison, i32 %i.a, i64 0
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.d = and <4 x i32> %i.c, <i32 -16777216, i32 -65536, i32 -1048576, i32 -65536>
  %i.e = icmp eq <4 x i32> %i.d, <i32 167772160, i32 -1442971648, i32 -1408237568, i32 -1062731776>
  %i.f = bitcast <4 x i1> %i.e to i4
  %i.g = icmp ne i4 %i.f, 0
  %op.rdx = or i1 %i.g, %or.cond3
  br i1 %op.rdx, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = and i32 %i.a, -4194304
  %or.cond11 = icmp eq i32 %i.h, 1681915904
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = phi i1 [ %or.cond11, %bb.b ], [ true, %bb.a ]
  ret i1 %i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV411isMulticastEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %0, align 4, !tbaa !7
  %i.a = and i32 %.sroa.0.0.copyload.i.i.i, 240
  %i.b = icmp eq i32 %i.a, 224
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define i32 @_ZNK5folly11IPAddressV44maskEm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %0, i64 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v11::detail::format_arg_store.38", align 16 ; 5 uses
  %3 = alloca %"class.folly::IPAddressV4", align 4 ; 2 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.std::array", align 4       ; 4 uses
  %i.a = icmp ugt i64 %1, 32
  br i1 %i.a, label %bb.b, label %_ZN5folly11IPAddressV49fetchMaskEm.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #32 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !160
  store i64 %1, ptr %2, align 16, !tbaa !11, !noalias !160
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 32, ptr %i.c, align 16, !tbaa !11, !noalias !160
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.24, i64 27, i64 68, ptr nonnull %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !160
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.b, align 8, !tbaa !55
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #33
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !11
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br i1 %.0, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn12 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #32
  br label %bb.g

_ZN5folly11IPAddressV49fetchMaskEm.exit:          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  %i.k = ashr exact i64 -4294967296, %1
  %i.l = trunc i64 %i.k to i32
  %i.m = tail call noundef i32 @llvm.bswap.i32(i32 %i.l) ; 4 uses
  %.sroa.0.0.extract.trunc = trunc i32 %i.m to i8
  %.sroa.4.0.extract.shift = lshr i32 %i.m, 8
  %.sroa.4.0.extract.trunc = trunc i32 %.sroa.4.0.extract.shift to i8
  %.sroa.5.0.extract.shift = lshr i32 %i.m, 16
  %.sroa.5.0.extract.trunc = trunc i32 %.sroa.5.0.extract.shift to i8
  %6 = load i8, ptr %0, align 4, !tbaa !11
  %7 = and i8 %6, %.sroa.0.0.extract.trunc
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %9 = load i8, ptr %8, align 1, !tbaa !11
  %10 = and i8 %9, %.sroa.4.0.extract.trunc
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 2
  %12 = load i8, ptr %11, align 2, !tbaa !11
  %13 = and i8 %12, %.sroa.5.0.extract.trunc
  %14 = getelementptr inbounds nuw i8, ptr %0, i64 3
  %15 = load i8, ptr %14, align 1, !tbaa !11
  %16 = zext i8 %15 to i32
  %.sroa.5.0.insert.ext.i13 = shl nuw i32 %16, 24
  %.sroa.6.0.extract.shift14 = and i32 %.sroa.5.0.insert.ext.i13, %i.m
  %.sroa.4.0.insert.ext.i = zext i8 %13 to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 16
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.6.0.extract.shift14, %.sroa.4.0.insert.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %10 to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %7 to i32
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i32 %.sroa.0.0.insert.insert.i, ptr %5, align 4
  call void @_ZN5folly11IPAddressV4C1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(4) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.n = load i32, ptr %3, align 4
  ret i32 %i.n

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn11 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn12, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn11

bb.h:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5folly6detail22fastIpV4ToBufferUnsafeERK7in_addrPc(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef %1) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 4, !tbaa !11      ; 8 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %bb.a
  store i8 48, ptr %1, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %.not28.i = icmp ugt i8 %i.a, 99
  br i1 %.not28.i, label %.lr.ph.2.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %.lr.ph.preheader.i
  %.not28.1.i = icmp samesign ugt i8 %i.a, 9
  br i1 %.not28.1.i, label %.lr.ph.2.thread53.i, label %.loopexit.loopexit.i

.lr.ph.2.thread53.i:                              ; preds = %.lr.ph.1.i
  %i.c = udiv i8 %i.a, 10
  %i.d = or disjoint i8 %i.c, 48
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.d, ptr %1, align 1, !tbaa !11
  %i.f = urem i8 %i.a, 10
  br label %.loopexit.loopexit.i

.lr.ph.2.i:                                       ; preds = %.lr.ph.preheader.i
  %i.g = udiv i8 %i.a, 100
  %i.h = or disjoint i8 %i.g, 48
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %1, align 1, !tbaa !11
  %i.j = urem i8 %i.a, 100                        ; 2 uses
  %i.k = udiv i8 %i.j, 10
  %i.l = or disjoint i8 %i.k, 48
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.l, ptr %i.i, align 1, !tbaa !11
  %i.n = urem i8 %i.j, 10
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.2.i, %.lr.ph.2.thread53.i, %.lr.ph.1.i
  %.1.152.i = phi i8 [ %i.f, %.lr.ph.2.thread53.i ], [ %i.n, %.lr.ph.2.i ], [ %i.a, %.lr.ph.1.i ]
  %.127.151.i = phi ptr [ %i.e, %.lr.ph.2.thread53.i ], [ %i.m, %.lr.ph.2.i ], [ %1, %.lr.ph.1.i ] ; 2 uses
  %i.o = or disjoint i8 %.1.152.i, 48
  store i8 %i.o, ptr %.127.151.i, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit

_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit: ; preds = %bb.b, %.loopexit.loopexit.i
  %.pn.i = phi ptr [ %1, %bb.b ], [ %.127.151.i, %.loopexit.loopexit.i ] ; 5 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  %i.p = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2 ; 5 uses
  store i8 46, ptr %storemerge.i, align 1, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.r = load i8, ptr %i.q, align 1, !tbaa !11    ; 8 uses
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %bb.c, label %.lr.ph.preheader.i7

bb.c:                                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit
  store i8 48, ptr %i.p, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18

.lr.ph.preheader.i7:                              ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit
  %.not28.i8 = icmp ugt i8 %i.r, 99
  br i1 %.not28.i8, label %.lr.ph.2.i17, label %.lr.ph.1.i9

.lr.ph.1.i9:                                      ; preds = %.lr.ph.preheader.i7
  %.not28.1.i10 = icmp samesign ugt i8 %i.r, 9
  br i1 %.not28.1.i10, label %.lr.ph.2.thread53.i16, label %.loopexit.loopexit.i11

.lr.ph.2.thread53.i16:                            ; preds = %.lr.ph.1.i9
  %i.t = udiv i8 %i.r, 10
  %i.u = or disjoint i8 %i.t, 48
  %i.v = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store i8 %i.u, ptr %i.p, align 1, !tbaa !11
  %i.w = urem i8 %i.r, 10
  br label %.loopexit.loopexit.i11

.lr.ph.2.i17:                                     ; preds = %.lr.ph.preheader.i7
  %i.x = udiv i8 %i.r, 100
  %i.y = or disjoint i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store i8 %i.y, ptr %i.p, align 1, !tbaa !11
  %i.aa = urem i8 %i.r, 100                       ; 2 uses
  %i.ab = udiv i8 %i.aa, 10
  %i.ac = or disjoint i8 %i.ab, 48
  %i.ad = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  store i8 %i.ac, ptr %i.z, align 1, !tbaa !11
  %i.ae = urem i8 %i.aa, 10
  br label %.loopexit.loopexit.i11

.loopexit.loopexit.i11:                           ; preds = %.lr.ph.2.i17, %.lr.ph.2.thread53.i16, %.lr.ph.1.i9
  %.1.152.i12 = phi i8 [ %i.w, %.lr.ph.2.thread53.i16 ], [ %i.ae, %.lr.ph.2.i17 ], [ %i.r, %.lr.ph.1.i9 ]
  %.127.151.i13 = phi ptr [ %i.v, %.lr.ph.2.thread53.i16 ], [ %i.ad, %.lr.ph.2.i17 ], [ %i.p, %.lr.ph.1.i9 ] ; 2 uses
  %i.af = or disjoint i8 %.1.152.i12, 48
  store i8 %i.af, ptr %.127.151.i13, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18

_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18: ; preds = %bb.c, %.loopexit.loopexit.i11
  %.pn.i14 = phi ptr [ %i.p, %bb.c ], [ %.127.151.i13, %.loopexit.loopexit.i11 ] ; 5 uses
  %storemerge.i15 = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 2 ; 5 uses
  store i8 46, ptr %storemerge.i15, align 1, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !11  ; 8 uses
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.d, label %.lr.ph.preheader.i19

bb.d:                                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18
  store i8 48, ptr %i.ag, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30

.lr.ph.preheader.i19:                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18
  %.not28.i20 = icmp ugt i8 %i.ai, 99
  br i1 %.not28.i20, label %.lr.ph.2.i29, label %.lr.ph.1.i21

.lr.ph.1.i21:                                     ; preds = %.lr.ph.preheader.i19
  %.not28.1.i22 = icmp samesign ugt i8 %i.ai, 9
  br i1 %.not28.1.i22, label %.lr.ph.2.thread53.i28, label %.loopexit.loopexit.i23

.lr.ph.2.thread53.i28:                            ; preds = %.lr.ph.1.i21
  %i.ak = udiv i8 %i.ai, 10
  %i.al = or disjoint i8 %i.ak, 48
  %i.am = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 3
  store i8 %i.al, ptr %i.ag, align 1, !tbaa !11
  %i.an = urem i8 %i.ai, 10
  br label %.loopexit.loopexit.i23

.lr.ph.2.i29:                                     ; preds = %.lr.ph.preheader.i19
  %i.ao = udiv i8 %i.ai, 100
  %i.ap = or disjoint i8 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 3
  store i8 %i.ap, ptr %i.ag, align 1, !tbaa !11
  %i.ar = urem i8 %i.ai, 100                      ; 2 uses
  %i.as = udiv i8 %i.ar, 10
  %i.at = or disjoint i8 %i.as, 48
  %i.au = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 4
  store i8 %i.at, ptr %i.aq, align 1, !tbaa !11
  %i.av = urem i8 %i.ar, 10
  br label %.loopexit.loopexit.i23

.loopexit.loopexit.i23:                           ; preds = %.lr.ph.2.i29, %.lr.ph.2.thread53.i28, %.lr.ph.1.i21
  %.1.152.i24 = phi i8 [ %i.an, %.lr.ph.2.thread53.i28 ], [ %i.av, %.lr.ph.2.i29 ], [ %i.ai, %.lr.ph.1.i21 ]
  %.127.151.i25 = phi ptr [ %i.am, %.lr.ph.2.thread53.i28 ], [ %i.au, %.lr.ph.2.i29 ], [ %i.ag, %.lr.ph.1.i21 ] ; 2 uses
  %i.aw = or disjoint i8 %.1.152.i24, 48
  store i8 %i.aw, ptr %.127.151.i25, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30

_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30: ; preds = %bb.d, %.loopexit.loopexit.i23
  %.pn.i26 = phi ptr [ %i.ag, %bb.d ], [ %.127.151.i25, %.loopexit.loopexit.i23 ] ; 5 uses
  %storemerge.i27 = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 1
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 2 ; 5 uses
  store i8 46, ptr %storemerge.i27, align 1, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11  ; 8 uses
  %i.ba = icmp eq i8 %i.az, 0
  br i1 %i.ba, label %bb.e, label %.lr.ph.preheader.i31

bb.e:                                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30
  store i8 48, ptr %i.ax, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit42

.lr.ph.preheader.i31:                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30
  %.not28.i32 = icmp ugt i8 %i.az, 99
  br i1 %.not28.i32, label %.lr.ph.2.i41, label %.lr.ph.1.i33

.lr.ph.1.i33:                                     ; preds = %.lr.ph.preheader.i31
  %.not28.1.i34 = icmp samesign ugt i8 %i.az, 9
  br i1 %.not28.1.i34, label %.lr.ph.2.thread53.i40, label %.loopexit.loopexit.i35

.lr.ph.2.thread53.i40:                            ; preds = %.lr.ph.1.i33
  %i.bb = udiv i8 %i.az, 10
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 3
  store i8 %i.bc, ptr %i.ax, align 1, !tbaa !11
  %i.be = urem i8 %i.az, 10
  br label %.loopexit.loopexit.i35

.lr.ph.2.i41:                                     ; preds = %.lr.ph.preheader.i31
  %i.bf = udiv i8 %i.az, 100
  %i.bg = or disjoint i8 %i.bf, 48
  %i.bh = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 3
  store i8 %i.bg, ptr %i.ax, align 1, !tbaa !11
  %i.bi = urem i8 %i.az, 100                      ; 2 uses
  %i.bj = udiv i8 %i.bi, 10
  %i.bk = or disjoint i8 %i.bj, 48
  %i.bl = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 4
  store i8 %i.bk, ptr %i.bh, align 1, !tbaa !11
end_hunk_0
