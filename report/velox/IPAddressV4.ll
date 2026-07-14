inline.NumInlined: 744
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK5folly11IPAddressV413isNonroutableEv:bb.a
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
  %i.n = load i8, ptr %0, align 4, !tbaa !11
  %i.o = and i8 %i.n, %.sroa.0.0.extract.trunc
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !11
  %i.r = and i8 %i.q, %.sroa.4.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.t = load i8, ptr %i.s, align 2, !tbaa !11
  %i.u = and i8 %i.t, %.sroa.5.0.extract.trunc
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.w = load i8, ptr %i.v, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i32
  %.sroa.5.0.insert.ext.i13 = shl nuw i32 %i.x, 24
  %.sroa.6.0.extract.shift14 = and i32 %.sroa.5.0.insert.ext.i13, %i.m
  %.sroa.4.0.insert.ext.i = zext i8 %i.u to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 16
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.6.0.extract.shift14, %.sroa.4.0.insert.shift.i
  %.sroa.3.0.insert.ext.i = zext i8 %i.r to i32
  %.sroa.3.0.insert.shift.i = shl nuw nsw i32 %.sroa.3.0.insert.ext.i, 8
  %.sroa.3.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i8 %i.o to i32
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.3.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i32 %.sroa.0.0.insert.insert.i, ptr %5, align 4
  call void @_ZN5folly11IPAddressV4C1ERKSt5arrayIhLm4EE(ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 1 dereferenceable(4) %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  %i.y = load i32, ptr %3, align 4
  ret i32 %i.y

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
  %2 = udiv i8 %i.a, 100
  %3 = or disjoint i8 %2, 48
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %3, ptr %1, align 1, !tbaa !11
  %i.h = urem i8 %i.a, 100                        ; 2 uses
  %i.i = udiv i8 %i.h, 10
  %i.j = or disjoint i8 %i.i, 48
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.j, ptr %i.g, align 1, !tbaa !11
  %i.l = urem i8 %i.h, 10
  br label %.loopexit.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.2.i, %.lr.ph.2.thread53.i, %.lr.ph.1.i
  %.1.152.i = phi i8 [ %i.f, %.lr.ph.2.thread53.i ], [ %i.l, %.lr.ph.2.i ], [ %i.a, %.lr.ph.1.i ]
  %.127.151.i = phi ptr [ %i.e, %.lr.ph.2.thread53.i ], [ %i.k, %.lr.ph.2.i ], [ %1, %.lr.ph.1.i ] ; 2 uses
  %i.m = or disjoint i8 %.1.152.i, 48
  store i8 %i.m, ptr %.127.151.i, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit

_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit: ; preds = %bb.b, %.loopexit.loopexit.i
  %.pn.i = phi ptr [ %1, %bb.b ], [ %.127.151.i, %.loopexit.loopexit.i ] ; 5 uses
  %storemerge.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 1
  %i.n = getelementptr inbounds nuw i8, ptr %.pn.i, i64 2 ; 5 uses
  store i8 46, ptr %storemerge.i, align 1, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11    ; 8 uses
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %bb.c, label %.lr.ph.preheader.i7

bb.c:                                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit
  store i8 48, ptr %i.n, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18

.lr.ph.preheader.i7:                              ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit
  %.not28.i8 = icmp ugt i8 %i.p, 99
  br i1 %.not28.i8, label %.lr.ph.2.i17, label %.lr.ph.1.i9

.lr.ph.1.i9:                                      ; preds = %.lr.ph.preheader.i7
  %.not28.1.i10 = icmp samesign ugt i8 %i.p, 9
  br i1 %.not28.1.i10, label %.lr.ph.2.thread53.i16, label %.loopexit.loopexit.i11

.lr.ph.2.thread53.i16:                            ; preds = %.lr.ph.1.i9
  %i.r = udiv i8 %i.p, 10
  %i.s = or disjoint i8 %i.r, 48
  %i.t = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store i8 %i.s, ptr %i.n, align 1, !tbaa !11
  %i.u = urem i8 %i.p, 10
  br label %.loopexit.loopexit.i11

.lr.ph.2.i17:                                     ; preds = %.lr.ph.preheader.i7
  %4 = udiv i8 %i.p, 100
  %5 = or disjoint i8 %4, 48
  %i.v = getelementptr inbounds nuw i8, ptr %.pn.i, i64 3
  store i8 %5, ptr %i.n, align 1, !tbaa !11
  %i.w = urem i8 %i.p, 100                        ; 2 uses
  %i.x = udiv i8 %i.w, 10
  %i.y = or disjoint i8 %i.x, 48
  %i.z = getelementptr inbounds nuw i8, ptr %.pn.i, i64 4
  store i8 %i.y, ptr %i.v, align 1, !tbaa !11
  %i.aa = urem i8 %i.w, 10
  br label %.loopexit.loopexit.i11

.loopexit.loopexit.i11:                           ; preds = %.lr.ph.2.i17, %.lr.ph.2.thread53.i16, %.lr.ph.1.i9
  %.1.152.i12 = phi i8 [ %i.u, %.lr.ph.2.thread53.i16 ], [ %i.aa, %.lr.ph.2.i17 ], [ %i.p, %.lr.ph.1.i9 ]
  %.127.151.i13 = phi ptr [ %i.t, %.lr.ph.2.thread53.i16 ], [ %i.z, %.lr.ph.2.i17 ], [ %i.n, %.lr.ph.1.i9 ] ; 2 uses
  %i.ab = or disjoint i8 %.1.152.i12, 48
  store i8 %i.ab, ptr %.127.151.i13, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18

_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18: ; preds = %bb.c, %.loopexit.loopexit.i11
  %.pn.i14 = phi ptr [ %i.n, %bb.c ], [ %.127.151.i13, %.loopexit.loopexit.i11 ] ; 5 uses
  %storemerge.i15 = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 2 ; 5 uses
  store i8 46, ptr %storemerge.i15, align 1, !tbaa !11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ae = load i8, ptr %i.ad, align 2, !tbaa !11  ; 8 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.d, label %.lr.ph.preheader.i19

bb.d:                                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18
  store i8 48, ptr %i.ac, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30

.lr.ph.preheader.i19:                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit18
  %.not28.i20 = icmp ugt i8 %i.ae, 99
  br i1 %.not28.i20, label %.lr.ph.2.i29, label %.lr.ph.1.i21

.lr.ph.1.i21:                                     ; preds = %.lr.ph.preheader.i19
  %.not28.1.i22 = icmp samesign ugt i8 %i.ae, 9
  br i1 %.not28.1.i22, label %.lr.ph.2.thread53.i28, label %.loopexit.loopexit.i23

.lr.ph.2.thread53.i28:                            ; preds = %.lr.ph.1.i21
  %i.ag = udiv i8 %i.ae, 10
  %i.ah = or disjoint i8 %i.ag, 48
  %i.ai = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 3
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !11
  %i.aj = urem i8 %i.ae, 10
  br label %.loopexit.loopexit.i23

.lr.ph.2.i29:                                     ; preds = %.lr.ph.preheader.i19
  %6 = udiv i8 %i.ae, 100
  %7 = or disjoint i8 %6, 48
  %i.ak = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 3
  store i8 %7, ptr %i.ac, align 1, !tbaa !11
  %i.al = urem i8 %i.ae, 100                      ; 2 uses
  %i.am = udiv i8 %i.al, 10
  %i.an = or disjoint i8 %i.am, 48
  %i.ao = getelementptr inbounds nuw i8, ptr %.pn.i14, i64 4
  store i8 %i.an, ptr %i.ak, align 1, !tbaa !11
  %i.ap = urem i8 %i.al, 10
  br label %.loopexit.loopexit.i23

.loopexit.loopexit.i23:                           ; preds = %.lr.ph.2.i29, %.lr.ph.2.thread53.i28, %.lr.ph.1.i21
  %.1.152.i24 = phi i8 [ %i.aj, %.lr.ph.2.thread53.i28 ], [ %i.ap, %.lr.ph.2.i29 ], [ %i.ae, %.lr.ph.1.i21 ]
  %.127.151.i25 = phi ptr [ %i.ai, %.lr.ph.2.thread53.i28 ], [ %i.ao, %.lr.ph.2.i29 ], [ %i.ac, %.lr.ph.1.i21 ] ; 2 uses
  %i.aq = or disjoint i8 %.1.152.i24, 48
  store i8 %i.aq, ptr %.127.151.i25, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30

_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30: ; preds = %bb.d, %.loopexit.loopexit.i23
  %.pn.i26 = phi ptr [ %i.ac, %bb.d ], [ %.127.151.i25, %.loopexit.loopexit.i23 ] ; 5 uses
  %storemerge.i27 = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 2 ; 5 uses
  store i8 46, ptr %storemerge.i27, align 1, !tbaa !11
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.at = load i8, ptr %i.as, align 1, !tbaa !11  ; 8 uses
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %.lr.ph.preheader.i31

bb.e:                                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30
  store i8 48, ptr %i.ar, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit42

.lr.ph.preheader.i31:                             ; preds = %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit30
  %.not28.i32 = icmp ugt i8 %i.at, 99
  br i1 %.not28.i32, label %.lr.ph.2.i41, label %.lr.ph.1.i33

.lr.ph.1.i33:                                     ; preds = %.lr.ph.preheader.i31
  %.not28.1.i34 = icmp samesign ugt i8 %i.at, 9
  br i1 %.not28.1.i34, label %.lr.ph.2.thread53.i40, label %.loopexit.loopexit.i35

.lr.ph.2.thread53.i40:                            ; preds = %.lr.ph.1.i33
  %i.av = udiv i8 %i.at, 10
  %i.aw = or disjoint i8 %i.av, 48
  %i.ax = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 3
  store i8 %i.aw, ptr %i.ar, align 1, !tbaa !11
  %i.ay = urem i8 %i.at, 10
  br label %.loopexit.loopexit.i35

.lr.ph.2.i41:                                     ; preds = %.lr.ph.preheader.i31
  %8 = udiv i8 %i.at, 100
  %9 = or disjoint i8 %8, 48
  %i.az = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 3
  store i8 %9, ptr %i.ar, align 1, !tbaa !11
  %i.ba = urem i8 %i.at, 100                      ; 2 uses
  %i.bb = udiv i8 %i.ba, 10
  %i.bc = or disjoint i8 %i.bb, 48
  %i.bd = getelementptr inbounds nuw i8, ptr %.pn.i26, i64 4
  store i8 %i.bc, ptr %i.az, align 1, !tbaa !11
  %i.be = urem i8 %i.ba, 10
  br label %.loopexit.loopexit.i35

.loopexit.loopexit.i35:                           ; preds = %.lr.ph.2.i41, %.lr.ph.2.thread53.i40, %.lr.ph.1.i33
  %.1.152.i36 = phi i8 [ %i.ay, %.lr.ph.2.thread53.i40 ], [ %i.be, %.lr.ph.2.i41 ], [ %i.at, %.lr.ph.1.i33 ]
  %.127.151.i37 = phi ptr [ %i.ax, %.lr.ph.2.thread53.i40 ], [ %i.bd, %.lr.ph.2.i41 ], [ %i.ar, %.lr.ph.1.i33 ] ; 2 uses
  %i.bf = or disjoint i8 %.1.152.i36, 48
  store i8 %i.bf, ptr %.127.151.i37, align 1, !tbaa !11
  br label %_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit42

_ZN5folly6detail18writeIntegerStringIhTnT_Lh3ETnS2_Lh10ELb0EbEEvS2_PPc.exit42: ; preds = %bb.e, %.loopexit.loopexit.i35
  %.pn.i38 = phi ptr [ %i.ar, %bb.e ], [ %.127.151.i37, %.loopexit.loopexit.i35 ]
  %storemerge.i39 = getelementptr inbounds nuw i8, ptr %.pn.i38, i64 1
  %i.bg = ptrtoint ptr %storemerge.i39 to i64
  %i.bh = ptrtoint ptr %1 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  ret i64 %i.bi
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV422toFullyQualifiedAppendERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  %i.b = call noundef i64 @_ZN5folly6detail22fastIpV4ToBufferUnsafeERK7in_addrPc(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 5 uses
  %i.e = sub i64 9223372036854775807, %i.d
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i

bb.b:                                             ; preds = %bb.a
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #33
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i: ; preds = %bb.a
  %i.g = add i64 %i.d, %i.b                       ; 3 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.k = icmp ult i64 %i.d, 16
  call void @llvm.assume(i1 %i.k)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i
  %i.l = load i64, ptr %i.i, align 8, !tbaa !11
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.m = phi i64 [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %i.g, %i.m
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %.not8.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not8.i.i.i, label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.d ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.b, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.a, align 16, !tbaa !11
  store i8 %i.o, ptr %i.n, align 1, !tbaa !11
  br label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 16 %i.a, i64 %i.b, i1 false)
  br label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.d, i64 noundef 0, ptr noundef nonnull %i.a, i64 noundef %i.b)
  br label %_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN5folly6detail22fastIpv4AppendToStringERK7in_addrRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  store i64 %i.g, ptr %i.c, align 8, !tbaa !27
  %i.p = load ptr, ptr %1, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.g
  store i8 0, ptr %i.q, align 1, !tbaa !11
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
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !163
  %i.d = load i8, ptr %i.a, align 1, !tbaa !11, !noalias !163
  %i.e = zext i8 %i.d to i32
  store i32 %i.e, ptr %2, align 16, !tbaa !11, !noalias !163
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load i8, ptr %i.b, align 2, !tbaa !11, !noalias !163
  %i.h = zext i8 %i.g to i32
  store i32 %i.h, ptr %i.f, align 16, !tbaa !11, !noalias !163
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load i8, ptr %i.c, align 1, !tbaa !11, !noalias !163
  %i.k = zext i8 %i.j to i32
  store i32 %i.k, ptr %i.i, align 16, !tbaa !11, !noalias !163
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load i8, ptr %1, align 4, !tbaa !11, !noalias !163
  %i.n = zext i8 %i.m to i32
  store i32 %i.n, ptr %i.l, align 16, !tbaa !11, !noalias !163
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nonnull @.str.25, i64 24, i64 8738, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !163
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
  store ptr %i.c, ptr %4, align 8, !tbaa !19, !alias.scope !166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.27, i64 7, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 7, ptr %i.d, align 8, !tbaa !27, !alias.scope !166
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 23
  store i8 0, ptr %i.e, align 1, !tbaa !11, !alias.scope !166
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32, !noalias !169
  store i64 3, ptr %2, align 16, !tbaa !11, !noalias !169
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.c, ptr %i.f, align 16, !tbaa !11
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 7, ptr %i.g, align 8, !tbaa !11
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.26, i64 50, i64 212, ptr nonnull %2)
          to label %bb.b unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.b:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32, !noalias !169
  invoke void @_ZNSt16invalid_argumentC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #33
          to label %bb.h unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i1 [ false, %bb.c ], [ true, %bb.b ]  ; 2 uses
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.i = load ptr, ptr %3, align 8, !tbaa !24     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !11
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.n = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.c
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !24     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.s = load i64, ptr %i.c, align 8, !tbaa !11
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #35
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.c, align 8, !tbaa !11
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.v) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br i1 %.0, label %bb.e, label %bb.f
end_hunk_0
