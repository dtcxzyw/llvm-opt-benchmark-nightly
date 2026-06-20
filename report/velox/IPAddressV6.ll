inline.NumInlined: 844
inline.NumDeleted: 405
begin_hunk_0_@_ZNK5folly11IPAddressV68inSubnetENS_5RangeIPKcEE:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.n = load i64, ptr %i.l, align 8, !tbaa !19
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.o) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.p = load ptr, ptr %7, align 8, !tbaa !13     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %7, align 8, !tbaa !13     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %i.w = load i64, ptr %i.u, align 8, !tbaa !19
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #35
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.y = load i64, ptr %i.q, align 8, !tbaa !19
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.z) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.0, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br i1 %.0, label %bb.f, label %bb.g

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread
  %.pn.pn21.ph = phi { ptr, i32 } [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn.pn21 = phi { ptr, i32 } [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %.pn.pn21.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.d) #34
  br label %bb.g

common.resume:                                    ; preds = %bb.j, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn20, %bb.g ], [ %i.ae, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  %.pn.pn20 = phi { ptr, i32 } [ %.pn.pn21, %bb.f ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %common.resume

_ZNK5folly9IPAddress4asV6Ev.exit:                 ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ab = load i8, ptr %i.aa, align 4, !tbaa !127 ; 4 uses
  %i.ac = icmp ugt i8 %i.ab, -128
  br i1 %i.ac, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit
  %i.ad = call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN5folly24IPAddressFormatExceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull @.str.39)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_throw(ptr nonnull %i.ad, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ae = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ad) #34
  br label %common.resume

bb.k:                                             ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit
  %i.af = icmp eq i8 %i.ab, 0
  br i1 %i.af, label %_ZN5folly11IPAddressV69fetchMaskEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = sub i8 0, %i.ab
  %i.ah = and i8 %i.ag, 63
  %i.ai = zext nneg i8 %i.ah to i64
  %i.aj = shl nsw i64 -1, %i.ai
  %i.ak = call noundef i64 @llvm.bswap.i64(i64 %i.aj) ; 2 uses
  %i.al = icmp ult i8 %i.ab, 65                   ; 2 uses
  %i.am = select i1 %i.al, i64 %i.ak, i64 -1
  %i.an = select i1 %i.al, i64 0, i64 %i.ak
  br label %_ZN5folly11IPAddressV69fetchMaskEm.exit

_ZN5folly11IPAddressV69fetchMaskEm.exit:          ; preds = %bb.k, %bb.l
  %.sroa.4.0.i = phi i64 [ %i.an, %bb.l ], [ 0, %bb.k ]
  %.sroa.0.sroa.0.0.insert.insert.i = phi i64 [ %i.am, %bb.l ], [ 0, %bb.k ]
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %8, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.sroa.4.0.i, ptr %i.ao, align 8
  %i.ap = call noundef zeroext i1 @_ZNK5folly11IPAddressV616inSubnetWithMaskERKS0_RKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr noundef nonnull align 4 dereferenceable(18) %5, ptr noundef nonnull align 1 dereferenceable(16) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i1 %i.ap

bb.m:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN5folly9IPAddress13createNetworkENS_5RangeIPKcEEib(ptr dead_on_unwind writable sret(%"struct.std::pair.44") align 4, ptr, ptr, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly9IPAddress6toJsonB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(22) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i16, ptr %i.a, align 4, !tbaa !122, !noalias !129
  switch i16 %i.b, label %bb.b [
    i16 2, label %_ZNK5folly9IPAddress4asV4Ev.exit.i
    i16 10, label %_ZNK5folly9IPAddress4asV6Ev.exit.i
    i16 0, label %_ZNK5folly9IPAddress6asNoneEv.exit.i
  ]

_ZNK5folly9IPAddress4asV4Ev.exit.i:               ; preds = %bb.a
  tail call void @_ZNK5folly11IPAddressV46toJsonB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(22) %1)
  br label %_ZNK5folly9IPAddress4pickIZNKS0_6toJsonB5cxx11EvEUlRT_E_EEDaS2_.exit

_ZNK5folly9IPAddress4asV6Ev.exit.i:               ; preds = %bb.a
  tail call void @_ZNK5folly11IPAddressV66toJsonB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(22) %1)
  br label %_ZNK5folly9IPAddress4pickIZNKS0_6toJsonB5cxx11EvEUlRT_E_EEDaS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef nonnull @.str.23) #15, !noalias !129
  unreachable

_ZNK5folly9IPAddress6asNoneEv.exit.i:             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = tail call noalias noundef nonnull dereferenceable(38) ptr @_Znwm(i64 noundef 38) #39, !noalias !138 ; 3 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !13, !alias.scope !138
  store i64 37, ptr %i.c, align 8, !tbaa !19, !alias.scope !138
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(37) %i.d, ptr noundef nonnull align 1 dereferenceable(37) @.str.21, i64 37, i1 false), !noalias !138
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 37, ptr %i.e, align 8, !tbaa !18, !alias.scope !138
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 37
  store i8 0, ptr %i.f, align 1, !tbaa !19, !noalias !138
  br label %_ZNK5folly9IPAddress4pickIZNKS0_6toJsonB5cxx11EvEUlRT_E_EEDaS2_.exit

_ZNK5folly9IPAddress4pickIZNKS0_6toJsonB5cxx11EvEUlRT_E_EEDaS2_.exit: ; preds = %_ZNK5folly9IPAddress4asV4Ev.exit.i, %_ZNK5folly9IPAddress4asV6Ev.exit.i, %_ZNK5folly9IPAddress6asNoneEv.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV616inSubnetWithMaskERKS0_RKSt5arrayIhLm16EE(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %2) local_unnamed_addr #30 align 2 {
bb.a:
  %3 = alloca %"struct.std::array", align 8       ; 5 uses
  %4 = alloca %"struct.std::array", align 8       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %.sroa.0.0.copyload.i = load i64, ptr %0, align 4 ; 8 uses
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.3.0.copyload.i = load i64, ptr %.sroa.3.0..sroa_idx.i, align 4 ; 8 uses
  %.sroa.057.0.extract.trunc = trunc i64 %.sroa.0.0.copyload.i to i8
  %i.a = load i8, ptr %2, align 1, !tbaa !19      ; 2 uses
  %i.b = and i8 %i.a, %.sroa.057.0.extract.trunc
  %.sroa.057.1.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 8
  %.sroa.057.1.extract.trunc = trunc i64 %.sroa.057.1.extract.shift to i8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !19    ; 2 uses
  %i.e = and i8 %i.d, %.sroa.057.1.extract.trunc
  %.sroa.057.2.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 16
  %.sroa.057.2.extract.trunc = trunc i64 %.sroa.057.2.extract.shift to i8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !19    ; 2 uses
  %i.h = and i8 %i.g, %.sroa.057.2.extract.trunc
  %.sroa.057.3.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 24
  %.sroa.057.3.extract.trunc = trunc i64 %.sroa.057.3.extract.shift to i8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.j = load i8, ptr %i.i, align 1, !tbaa !19    ; 2 uses
  %i.k = and i8 %i.j, %.sroa.057.3.extract.trunc
  %.sroa.057.4.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 32
  %.sroa.057.4.extract.trunc = trunc i64 %.sroa.057.4.extract.shift to i8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19    ; 2 uses
  %i.n = and i8 %i.m, %.sroa.057.4.extract.trunc
  %.sroa.057.5.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 40
  %.sroa.057.5.extract.trunc = trunc i64 %.sroa.057.5.extract.shift to i8
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 5
  %i.p = load i8, ptr %i.o, align 1, !tbaa !19    ; 2 uses
  %i.q = and i8 %i.p, %.sroa.057.5.extract.trunc
  %.sroa.057.6.extract.shift = lshr i64 %.sroa.0.0.copyload.i, 48
  %.sroa.057.6.extract.trunc = trunc i64 %.sroa.057.6.extract.shift to i8
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19    ; 2 uses
  %i.t = and i8 %i.s, %.sroa.057.6.extract.trunc
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 7
  %i.v = load i8, ptr %i.u, align 1, !tbaa !19
  %.sroa.1158.8.extract.trunc = trunc i64 %.sroa.3.0.copyload.i to i8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !19    ; 2 uses
  %i.y = and i8 %i.x, %.sroa.1158.8.extract.trunc
  %.sroa.10.8.insert.ext.i = zext i8 %i.y to i64
  %.sroa.1158.9.extract.shift = lshr i64 %.sroa.3.0.copyload.i, 8
  %.sroa.1158.9.extract.trunc = trunc i64 %.sroa.1158.9.extract.shift to i8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !19   ; 2 uses
  %i.ab = and i8 %i.aa, %.sroa.1158.9.extract.trunc
  %.sroa.10.9.insert.ext.i = zext i8 %i.ab to i64
  %.sroa.10.9.insert.shift.i = shl nuw nsw i64 %.sroa.10.9.insert.ext.i, 8
  %.sroa.10.9.insert.insert.i = or disjoint i64 %.sroa.10.9.insert.shift.i, %.sroa.10.8.insert.ext.i
  %.sroa.1158.10.extract.shift = lshr i64 %.sroa.3.0.copyload.i, 16
  %.sroa.1158.10.extract.trunc = trunc i64 %.sroa.1158.10.extract.shift to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 10
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !19  ; 2 uses
  %i.ae = and i8 %i.ad, %.sroa.1158.10.extract.trunc
  %.sroa.10.10.insert.ext.i = zext i8 %i.ae to i64
  %.sroa.10.10.insert.shift.i = shl nuw nsw i64 %.sroa.10.10.insert.ext.i, 16
  %.sroa.10.10.insert.insert.i = or disjoint i64 %.sroa.10.9.insert.insert.i, %.sroa.10.10.insert.shift.i
  %.sroa.1158.11.extract.shift = lshr i64 %.sroa.3.0.copyload.i, 24
  %.sroa.1158.11.extract.trunc = trunc i64 %.sroa.1158.11.extract.shift to i8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 11
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !19  ; 2 uses
  %i.ah = and i8 %i.ag, %.sroa.1158.11.extract.trunc
  %.sroa.10.11.insert.ext.i = zext i8 %i.ah to i64
  %.sroa.10.11.insert.shift.i = shl nuw nsw i64 %.sroa.10.11.insert.ext.i, 24
  %.sroa.10.11.insert.insert.i = or disjoint i64 %.sroa.10.10.insert.insert.i, %.sroa.10.11.insert.shift.i
  %.sroa.1158.12.extract.shift = lshr i64 %.sroa.3.0.copyload.i, 32
  %.sroa.1158.12.extract.trunc = trunc i64 %.sroa.1158.12.extract.shift to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19  ; 2 uses
  %i.ak = and i8 %i.aj, %.sroa.1158.12.extract.trunc
  %.sroa.10.12.insert.ext.i = zext i8 %i.ak to i64
  %.sroa.10.12.insert.shift.i = shl nuw nsw i64 %.sroa.10.12.insert.ext.i, 32
  %.sroa.1158.13.extract.shift = lshr i64 %.sroa.3.0.copyload.i, 40
  %.sroa.1158.13.extract.trunc = trunc i64 %.sroa.1158.13.extract.shift to i8
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.am = load i8, ptr %i.al, align 1, !tbaa !19  ; 2 uses
  %i.an = and i8 %i.am, %.sroa.1158.13.extract.trunc
  %.sroa.10.13.insert.ext.i = zext i8 %i.an to i64
  %.sroa.10.13.insert.shift.i = shl nuw nsw i64 %.sroa.10.13.insert.ext.i, 40
  %.sroa.10.13.insert.mask.i = or disjoint i64 %.sroa.10.11.insert.insert.i, %.sroa.10.12.insert.shift.i
  %.sroa.1158.14.extract.shift = lshr i64 %.sroa.3.0.copyload.i, 48
  %.sroa.1158.14.extract.trunc = trunc i64 %.sroa.1158.14.extract.shift to i8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !19  ; 2 uses
  %i.aq = and i8 %i.ap, %.sroa.1158.14.extract.trunc
  %.sroa.10.14.insert.ext.i = zext i8 %i.aq to i64
  %.sroa.10.14.insert.shift.i = shl nuw nsw i64 %.sroa.10.14.insert.ext.i, 48
  %.sroa.10.14.insert.mask.i = or disjoint i64 %.sroa.10.13.insert.mask.i, %.sroa.10.13.insert.shift.i
  %.sroa.10.14.insert.insert.i = or i64 %.sroa.10.14.insert.mask.i, %.sroa.10.14.insert.shift.i
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 15
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !19
  %5 = zext i8 %i.as to i64
  %.sroa.10.15.insert.ext.i59 = shl nuw i64 %5, 56 ; 2 uses
  %.sroa.1158.15.extract.shift60 = and i64 %.sroa.10.15.insert.ext.i59, %.sroa.3.0.copyload.i
  %.sroa.10.15.insert.insert.i = or i64 %.sroa.10.14.insert.insert.i, %.sroa.1158.15.extract.shift60
  %.sroa.0.sroa.9.0.insert.ext.i = zext i8 %i.v to i64
  %.sroa.0.sroa.9.0.insert.shift.i = shl nuw i64 %.sroa.0.sroa.9.0.insert.ext.i, 56 ; 2 uses
  %.sroa.057.7.extract.shift62 = and i64 %.sroa.0.sroa.9.0.insert.shift.i, %.sroa.0.0.copyload.i
  %.sroa.0.sroa.8.0.insert.ext.i = zext i8 %i.t to i64
  %.sroa.0.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.8.0.insert.ext.i, 48
  %.sroa.0.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.057.7.extract.shift62, %.sroa.0.sroa.8.0.insert.shift.i
  %.sroa.0.sroa.7.0.insert.ext.i = zext i8 %i.q to i64
  %.sroa.0.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext.i, 40
  %.sroa.0.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.8.0.insert.insert.i, %.sroa.0.sroa.7.0.insert.shift.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i8 %i.n to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.7.0.insert.insert.i, %.sroa.0.sroa.6.0.insert.shift.i
  %.sroa.0.sroa.5.0.insert.ext.i = zext i8 %i.k to i64
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.5.0.insert.ext.i, 24
  %.sroa.0.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.insert.i, %.sroa.0.sroa.5.0.insert.shift.i
  %.sroa.0.sroa.4.0.insert.ext.i = zext i8 %i.h to i64
  %.sroa.0.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.4.0.insert.ext.i, 16
  %.sroa.0.sroa.3.0.insert.ext.i = zext i8 %i.e to i64
  %.sroa.0.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i, 8
  %.sroa.0.sroa.3.0.insert.mask.i = or disjoint i64 %.sroa.0.sroa.5.0.insert.insert.i, %.sroa.0.sroa.4.0.insert.shift.i
  %.sroa.0.sroa.0.0.insert.ext.i = zext i8 %i.b to i64
  %.sroa.0.sroa.0.0.insert.mask.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.0.sroa.0.0.insert.insert.i = or i64 %.sroa.0.sroa.0.0.insert.mask.i, %.sroa.0.sroa.3.0.insert.mask.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i, ptr %3, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.10.15.insert.insert.i, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %.sroa.0.0.copyload.i6 = load i64, ptr %1, align 4 ; 8 uses
  %.sroa.3.0..sroa_idx.i7 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.3.0.copyload.i8 = load i64, ptr %.sroa.3.0..sroa_idx.i7, align 4 ; 8 uses
  %.sroa.0.1.extract.trunc.a = trunc i64 %.sroa.0.0.copyload.i6 to i8
  %i.au = and i8 %i.a, %.sroa.0.1.extract.trunc.a
  %.sroa.0.2.extract.shift.a = lshr i64 %.sroa.0.0.copyload.i6, 8
  %.sroa.0.2.extract.trunc.a = trunc i64 %.sroa.0.2.extract.shift.a to i8
  %i.av = and i8 %i.d, %.sroa.0.2.extract.trunc.a
  %.sroa.0.3.extract.shift.a = lshr i64 %.sroa.0.0.copyload.i6, 16
  %.sroa.0.3.extract.trunc.a = trunc i64 %.sroa.0.3.extract.shift.a to i8
  %i.aw = and i8 %i.g, %.sroa.0.3.extract.trunc.a
  %.sroa.0.4.extract.shift.a = lshr i64 %.sroa.0.0.copyload.i6, 24
  %.sroa.0.4.extract.trunc.a = trunc i64 %.sroa.0.4.extract.shift.a to i8
  %i.ax = and i8 %i.j, %.sroa.0.4.extract.trunc.a
  %.sroa.0.5.extract.shift.a = lshr i64 %.sroa.0.0.copyload.i6, 32
  %.sroa.0.5.extract.trunc.a = trunc i64 %.sroa.0.5.extract.shift.a to i8
  %i.ay = and i8 %i.m, %.sroa.0.5.extract.trunc.a
  %.sroa.0.6.extract.shift.a = lshr i64 %.sroa.0.0.copyload.i6, 40
  %.sroa.0.6.extract.trunc.a = trunc i64 %.sroa.0.6.extract.shift.a to i8
  %i.az = and i8 %i.p, %.sroa.0.6.extract.trunc.a
  %.sroa.0.7.extract.shift = lshr i64 %.sroa.0.0.copyload.i6, 48
  %.sroa.0.7.extract.trunc = trunc i64 %.sroa.0.7.extract.shift to i8
  %i.ba = and i8 %i.s, %.sroa.0.7.extract.trunc
  %.sroa.11.8.extract.trunc = trunc i64 %.sroa.3.0.copyload.i8 to i8
  %i.bb = and i8 %i.x, %.sroa.11.8.extract.trunc
  %.sroa.10.8.insert.ext.i11 = zext i8 %i.bb to i64
  %.sroa.11.9.extract.shift = lshr i64 %.sroa.3.0.copyload.i8, 8
  %.sroa.11.9.extract.trunc = trunc i64 %.sroa.11.9.extract.shift to i8
  %i.bc = and i8 %i.aa, %.sroa.11.9.extract.trunc
  %.sroa.10.9.insert.ext.i12 = zext i8 %i.bc to i64
  %.sroa.10.9.insert.shift.i13 = shl nuw nsw i64 %.sroa.10.9.insert.ext.i12, 8
  %.sroa.10.9.insert.insert.i14 = or disjoint i64 %.sroa.10.9.insert.shift.i13, %.sroa.10.8.insert.ext.i11
  %.sroa.11.10.extract.shift = lshr i64 %.sroa.3.0.copyload.i8, 16
  %.sroa.11.10.extract.trunc = trunc i64 %.sroa.11.10.extract.shift to i8
  %i.bd = and i8 %i.ad, %.sroa.11.10.extract.trunc
  %.sroa.10.10.insert.ext.i15 = zext i8 %i.bd to i64
  %.sroa.10.10.insert.shift.i16 = shl nuw nsw i64 %.sroa.10.10.insert.ext.i15, 16
  %.sroa.10.10.insert.insert.i17 = or disjoint i64 %.sroa.10.9.insert.insert.i14, %.sroa.10.10.insert.shift.i16
  %.sroa.11.11.extract.shift = lshr i64 %.sroa.3.0.copyload.i8, 24
  %.sroa.11.11.extract.trunc = trunc i64 %.sroa.11.11.extract.shift to i8
  %i.be = and i8 %i.ag, %.sroa.11.11.extract.trunc
  %.sroa.10.11.insert.ext.i18 = zext i8 %i.be to i64
  %.sroa.10.11.insert.shift.i19 = shl nuw nsw i64 %.sroa.10.11.insert.ext.i18, 24
  %.sroa.10.11.insert.insert.i20 = or disjoint i64 %.sroa.10.10.insert.insert.i17, %.sroa.10.11.insert.shift.i19
  %.sroa.11.12.extract.shift = lshr i64 %.sroa.3.0.copyload.i8, 32
  %.sroa.11.12.extract.trunc = trunc i64 %.sroa.11.12.extract.shift to i8
  %i.bf = and i8 %i.aj, %.sroa.11.12.extract.trunc
  %.sroa.10.12.insert.ext.i21 = zext i8 %i.bf to i64
  %.sroa.10.12.insert.shift.i22 = shl nuw nsw i64 %.sroa.10.12.insert.ext.i21, 32
  %.sroa.11.13.extract.shift = lshr i64 %.sroa.3.0.copyload.i8, 40
  %.sroa.11.13.extract.trunc = trunc i64 %.sroa.11.13.extract.shift to i8
  %i.bg = and i8 %i.am, %.sroa.11.13.extract.trunc
  %.sroa.10.13.insert.ext.i23 = zext i8 %i.bg to i64
  %.sroa.10.13.insert.shift.i24 = shl nuw nsw i64 %.sroa.10.13.insert.ext.i23, 40
  %.sroa.10.13.insert.mask.i25 = or disjoint i64 %.sroa.10.11.insert.insert.i20, %.sroa.10.12.insert.shift.i22
  %.sroa.11.14.extract.shift = lshr i64 %.sroa.3.0.copyload.i8, 48
  %.sroa.11.14.extract.trunc = trunc i64 %.sroa.11.14.extract.shift to i8
  %i.bh = and i8 %i.ap, %.sroa.11.14.extract.trunc
  %.sroa.10.14.insert.ext.i26 = zext i8 %i.bh to i64
  %.sroa.10.14.insert.shift.i27 = shl nuw nsw i64 %.sroa.10.14.insert.ext.i26, 48
  %.sroa.10.14.insert.mask.i28 = or disjoint i64 %.sroa.10.13.insert.mask.i25, %.sroa.10.13.insert.shift.i24
  %.sroa.11.15.extract.shift64 = and i64 %.sroa.3.0.copyload.i8, %.sroa.10.15.insert.ext.i59
  %.sroa.10.14.insert.insert.i29 = or disjoint i64 %.sroa.10.14.insert.shift.i27, %.sroa.11.15.extract.shift64
  %.sroa.10.15.insert.insert.i32 = or i64 %.sroa.10.14.insert.insert.i29, %.sroa.10.14.insert.mask.i28
  %.sroa.0.7.extract.shift66 = and i64 %.sroa.0.0.copyload.i6, %.sroa.0.sroa.9.0.insert.shift.i
  %.sroa.0.sroa.8.0.insert.ext.i35 = zext i8 %i.ba to i64
  %.sroa.0.sroa.8.0.insert.shift.i36 = shl nuw nsw i64 %.sroa.0.sroa.8.0.insert.ext.i35, 48
  %.sroa.0.sroa.8.0.insert.insert.i37 = or disjoint i64 %.sroa.0.sroa.8.0.insert.shift.i36, %.sroa.0.7.extract.shift66
  %.sroa.0.sroa.7.0.insert.ext.i38 = zext i8 %i.az to i64
  %.sroa.0.sroa.7.0.insert.shift.i39 = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext.i38, 40
  %.sroa.0.sroa.7.0.insert.insert.i40 = or disjoint i64 %.sroa.0.sroa.8.0.insert.insert.i37, %.sroa.0.sroa.7.0.insert.shift.i39
  %.sroa.0.sroa.6.0.insert.ext.i41 = zext i8 %i.ay to i64
  %.sroa.0.sroa.6.0.insert.shift.i42 = shl nuw nsw i64 %.sroa.0.sroa.6.0.insert.ext.i41, 32
  %.sroa.0.sroa.6.0.insert.insert.i43 = or disjoint i64 %.sroa.0.sroa.7.0.insert.insert.i40, %.sroa.0.sroa.6.0.insert.shift.i42
  %.sroa.0.sroa.5.0.insert.ext.i44 = zext i8 %i.ax to i64
  %.sroa.0.sroa.5.0.insert.shift.i45 = shl nuw nsw i64 %.sroa.0.sroa.5.0.insert.ext.i44, 24
  %.sroa.0.sroa.5.0.insert.insert.i46 = or disjoint i64 %.sroa.0.sroa.6.0.insert.insert.i43, %.sroa.0.sroa.5.0.insert.shift.i45
  %.sroa.0.sroa.4.0.insert.ext.i47 = zext i8 %i.aw to i64
  %.sroa.0.sroa.4.0.insert.shift.i48 = shl nuw nsw i64 %.sroa.0.sroa.4.0.insert.ext.i47, 16
  %.sroa.0.sroa.3.0.insert.ext.i49 = zext i8 %i.av to i64
  %.sroa.0.sroa.3.0.insert.shift.i50 = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i49, 8
  %.sroa.0.sroa.3.0.insert.mask.i51 = or disjoint i64 %.sroa.0.sroa.5.0.insert.insert.i46, %.sroa.0.sroa.4.0.insert.shift.i48
  %.sroa.0.sroa.0.0.insert.ext.i52 = zext i8 %i.au to i64
  %.sroa.0.sroa.0.0.insert.mask.i53 = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i50, %.sroa.0.sroa.0.0.insert.ext.i52
  %.sroa.0.sroa.0.0.insert.insert.i54 = or i64 %.sroa.0.sroa.0.0.insert.mask.i53, %.sroa.0.sroa.3.0.insert.mask.i51
  store i64 %.sroa.0.sroa.0.0.insert.insert.i54, ptr %4, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %.sroa.10.15.insert.insert.i32, ptr %i.bi, align 8
  %i.bj = load i128, ptr %3, align 8
  %i.bk = load i128, ptr %4, align 8
  %i.bl = icmp ne i128 %i.bj, %i.bk
  %i.bm = zext i1 %i.bl to i32
  %.not9.i.i.i.i.i = icmp eq i32 %i.bm, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  ret i1 %.not9.i.i.i.i.i
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZN5folly11IPAddressV69fetchMaskEm(i64 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %0, 128
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  invoke void @_ZN5folly24IPAddressFormatExceptionCI2St13runtime_errorEPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull @.str.39)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.b) #34
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %0, 0
  br i1 %i.d, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = sub nsw i64 0, %0
  %i.f = and i64 %i.e, 63
  %i.g = shl nsw i64 -1, %i.f
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g) ; 2 uses
  %i.i = icmp samesign ult i64 %0, 65             ; 2 uses
  %i.j = select i1 %i.i, i64 %i.h, i64 -1
  %i.k = select i1 %i.i, i64 0, i64 %i.h
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.f
  %.sroa.4.0 = phi i64 [ %i.k, %bb.f ], [ 0, %bb.e ]
  %.sroa.0.sroa.0.0.insert.insert = phi i64 [ %i.j, %bb.f ], [ 0, %bb.e ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.0.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { i64, i64 } %.fca.1.insert
}

declare void @_ZNK5folly11IPAddressV46toJsonB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly6detail16throw_exception_INS_29InvalidAddressFamilyExceptionEJPKcEEEvDpT0_(ptr noundef %0) local_unnamed_addr #14 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::InvalidAddressFamilyException", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @_ZNSt13runtime_errorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %0)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly29InvalidAddressFamilyExceptionE, i64 16), ptr %1, align 8, !tbaa !23
  invoke void @_ZN5folly15throw_exceptionINS_29InvalidAddressFamilyExceptionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %1) #15
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  resume { ptr, i32 } %i.a
}

; Function Attrs: cold mustprogress noinline noreturn optsize uwtable
define linkonce_odr void @_ZN5folly15throw_exceptionINS_29InvalidAddressFamilyExceptionEEEvOT_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 2 uses
  tail call void @_ZN5folly29InvalidAddressFamilyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %0) #34
  tail call void @__cxa_throw(ptr nonnull %i.a, ptr nonnull @_ZTIN5folly29InvalidAddressFamilyExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
  unreachable
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29InvalidAddressFamilyExceptionC2EOS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #34
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly29InvalidAddressFamilyExceptionE, i64 16), ptr %0, align 8, !tbaa !23
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5folly29InvalidAddressFamilyExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #24 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #34
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #35
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorC2EOS_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #10

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV610isLoopbackEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.folly::IPAddressV4", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 4
  %.fr15 = freeze i8 %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1
  %.fr14 = freeze i8 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 2
  %i.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.j = icmp eq i64 %.fr.scalar, 0
  %i.k = or i8 %.fr14, %.fr15
  %i.l = icmp eq i8 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  %op.rdx13 = select i1 %i.m, i1 %i.i, i1 false
  br i1 %op.rdx13, label %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit, label %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread

_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  br label %.critedge

_ZNK5folly11IPAddressV612isIPv4MappedEv.exit:     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %i.p = icmp eq i8 %i.o, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit
  %i.q = tail call i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(18) %0)
  store i32 %i.q, ptr %1, align 4
  %i.r = call noundef zeroext i1 @_ZNK5folly11IPAddressV410isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(4) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br i1 %i.r, label %bb.e, label %bb.c

.critedge:                                        ; preds = %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread, %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %.sroa.4.8.copyload = load i32, ptr %0, align 4
  %.sroa.6.8.copyload = load i32, ptr %i.a, align 4
  %.sroa.7.8.copyload = load i32, ptr %i.c, align 4
  %i.s = icmp eq i32 %.sroa.4.8.copyload, 0
  %i.t = icmp eq i32 %.sroa.6.8.copyload, 0
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  %i.u = icmp eq i32 %.sroa.7.8.copyload, 0
  %or.cond10 = select i1 %or.cond, i1 %i.u, i1 false
  br i1 %or.cond10, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.8.8..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.8.8.copyload = load i32, ptr %.sroa.8.8..sroa_idx, align 4
  %i.v = icmp eq i32 %.sroa.8.8.copyload, 16777216
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ false, %bb.c ], [ %i.v, %bb.d ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK5folly11IPAddressV410isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV610isRoutableEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #17 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 5 uses
  %2 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34, !noalias !139
  %i.a = load i8, ptr %0, align 4, !tbaa !19, !noalias !139
  %i.b = and i8 %i.a, -32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %i.b to i64
  store i64 %.sroa.0.sroa.0.0.insert.ext.i.i, ptr %1, align 8, !noalias !139
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.d, align 8, !noalias !139
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %2, ptr noundef nonnull align 1 dereferenceable(16) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34, !noalias !139
  %rhsv = load i16, ptr %2, align 4
  %.not = icmp eq i16 %rhsv, 32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br i1 %.not, label %bb.d, label %bb.b
end_hunk_0
begin_hunk_1_@_ZNK5folly11IPAddressV611isMulticastEv:bb.a

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 16) i8 @_ZNK5folly11IPAddressV617getMulticastScopeEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = and i8 %i.b, 15
  ret i8 %i.c
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV620isLinkLocalBroadcastEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.e, !prof !34

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast) #34
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5folly11IPAddressV6C1ENS_5RangeIPKcEE(ptr noundef nonnull align 4 dereferenceable(18) @_ZZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast, ptr nonnull @.str.24, ptr nonnull getelementptr inbounds nuw (i8, ptr @.str.24, i64 7))
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 20, ptr nonnull @_ZZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast) #34
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i128, ptr %0, align 4
  %i.g = load i128, ptr @_ZZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast, align 4
  %i.h = icmp ne i128 %i.f, %i.g
  %i.i = zext i1 %i.h to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.i, 0
  %i.j = load i16, ptr %i.e, align 4
  %i.k = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast, i64 16), align 4
  %i.l = icmp eq i16 %i.j, %i.k
  %i.m = select i1 %.not9.i.i.i.i.i.i.i.i, i1 %i.l, i1 false
  ret i1 %i.m

bb.f:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZNK5folly11IPAddressV620isLinkLocalBroadcastEvE19kLinkLocalBroadcast) #34
  resume { ptr, i32 } %i.n
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5folly11IPAddressV69isPrivateEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.std::array", align 8       ; 5 uses
  %2 = alloca %"struct.std::array", align 8       ; 5 uses
  %3 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %4 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %5 = alloca %"class.folly::IPAddressV4", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load <8 x i8>, ptr %0, align 4
  %.fr = freeze <8 x i8> %i.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 4
  %.fr9 = freeze i8 %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1
  %.fr8 = freeze i8 %i.f
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.h = load i8, ptr %i.g, align 2
  %i.i = icmp eq i8 %i.h, -1
  %.fr.scalar = bitcast <8 x i8> %.fr to i64
  %i.j = icmp eq i64 %.fr.scalar, 0
  %i.k = or i8 %.fr8, %.fr9
  %i.l = icmp eq i8 %i.k, 0
  %i.m = and i1 %i.j, %i.l
  %op.rdx7 = select i1 %i.m, i1 %i.i, i1 false
  br i1 %op.rdx7, label %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit, label %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread

_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  br label %.critedge

_ZNK5folly11IPAddressV612isIPv4MappedEv.exit:     ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.o = load i8, ptr %i.n, align 1, !tbaa !19
  %i.p = icmp eq i8 %i.o, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  br i1 %i.p, label %bb.b, label %.critedge

bb.b:                                             ; preds = %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit
  %i.q = tail call i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(18) %0)
  store i32 %i.q, ptr %5, align 4
  %i.r = call noundef zeroext i1 @_ZNK5folly11IPAddressV49isPrivateEv(ptr noundef nonnull align 4 dereferenceable(4) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br i1 %i.r, label %bb.f, label %bb.c

.critedge:                                        ; preds = %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit.thread, %_ZNK5folly11IPAddressV612isIPv4MappedEv.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.b
  %i.s = call noundef zeroext i1 @_ZNK5folly11IPAddressV610isLoopbackEv(ptr noundef nonnull align 4 dereferenceable(18) %0)
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34, !noalias !142
  %i.t = load i8, ptr %0, align 4, !tbaa !19, !noalias !142
  %i.u = and i8 %i.t, -2
  %.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %i.u to i64
  store i64 %.sroa.0.sroa.0.0.insert.ext.i.i, ptr %1, align 8, !noalias !142
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.v, align 8, !noalias !142
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %4, ptr noundef nonnull align 1 dereferenceable(16) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34, !noalias !142
  %rhsv = load i16, ptr %4, align 4
  %.not = icmp eq i16 %rhsv, 252
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !145
  %i.w = load i8, ptr %0, align 4, !tbaa !19, !noalias !145
  %i.x = load i8, ptr %i.a, align 1, !tbaa !19, !noalias !145
  %i.y = and i8 %i.x, -64
  %.sroa.0.sroa.3.0.insert.ext.i.i.i = zext i8 %i.y to i64
  %.sroa.0.sroa.3.0.insert.shift.i.i.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i.i.i, 8
  %.sroa.0.sroa.0.0.insert.ext.i.i.i = zext i8 %i.w to i64
  %.sroa.0.sroa.0.0.insert.insert.i6.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i6.i.i, ptr %2, align 8, !noalias !145
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.z, align 8, !noalias !145
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %3, ptr noundef nonnull align 1 dereferenceable(16) %2) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !145
  %rhsv4 = load i16, ptr %3, align 4
  %.not5 = icmp eq i16 %rhsv4, -32514
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ true, %bb.b ], [ true, %bb.d ], [ true, %bb.c ], [ %.not5, %bb.e ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK5folly11IPAddressV49isPrivateEv(ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext range(i8 0, 16) i8 @_ZNK5folly11IPAddressV617getMulticastFlagsEv(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %0) local_unnamed_addr #30 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !19
  %i.c = lshr i8 %i.b, 4
  ret i8 %i.c
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV623getSolicitedNodeAddressEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.folly::IPAddressV6") align 4 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 -1, ptr %i.a, align 16, !tbaa !19
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 2, ptr %i.b, align 1, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(9) %i.c, i8 0, i64 9, i1 false)
  store i8 1, ptr %i.d, align 1, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 -1, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.h = load i8, ptr %i.g, align 1, !tbaa !19
  store i8 %i.h, ptr %i.f, align 1, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.k = load i8, ptr %i.j, align 2, !tbaa !19
  store i8 %i.k, ptr %i.i, align 2, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.n = load i8, ptr %i.m, align 1, !tbaa !19
  store i8 %i.n, ptr %i.l, align 1, !tbaa !19
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @_ZN5folly11IPAddressV610fromBinaryENS_5RangeIPKhEE(ptr dead_on_unwind writable sret(%"class.folly::IPAddressV6") align 4 %0, ptr nonnull %i.a, ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV64maskEm(ptr dead_on_unwind noalias writable sret(%"class.folly::IPAddressV6") align 4 %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(18) %1, i64 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.53", align 16 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"struct.std::array", align 8       ; 5 uses
  %i.a = icmp ugt i64 %2, 128
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34, !noalias !148
  store i64 %2, ptr %3, align 16, !tbaa !19, !noalias !148
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 128, ptr %i.c, align 16, !tbaa !19, !noalias !148
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.28, i64 26, i64 68, ptr nonnull %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34, !noalias !148
  invoke void @_ZNSt13runtime_errorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5folly24IPAddressFormatExceptionE, i64 16), ptr %i.b, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN5folly24IPAddressFormatExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #37
          to label %bb.j unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.e = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.f = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.i = load i64, ptr %i.g, align 8, !tbaa !19
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.0, label %bb.f, label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  br i1 %.0, label %bb.f, label %bb.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn14 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #34
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.k = icmp eq i64 %2, 0
  br i1 %i.k, label %_ZN5folly11IPAddressV69fetchMaskEm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = sub nsw i64 0, %2
  %i.m = and i64 %i.l, 63
  %i.n = shl nsw i64 -1, %i.m
  %i.o = tail call noundef i64 @llvm.bswap.i64(i64 %i.n) ; 2 uses
  %i.p = icmp samesign ult i64 %2, 65             ; 2 uses
  %i.q = select i1 %i.p, i64 %i.o, i64 -1
  %i.r = select i1 %i.p, i64 0, i64 %i.o
  br label %_ZN5folly11IPAddressV69fetchMaskEm.exit

_ZN5folly11IPAddressV69fetchMaskEm.exit:          ; preds = %bb.g, %bb.h
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.h ], [ 0, %bb.g ] ; 8 uses
  %.sroa.0.sroa.0.0.insert.insert.i = phi i64 [ %i.q, %bb.h ], [ 0, %bb.g ] ; 8 uses
  %.sroa.0.0.extract.trunc = trunc i64 %.sroa.0.sroa.0.0.insert.insert.i to i8
  %6 = load i8, ptr %1, align 4, !tbaa !19
  %7 = and i8 %6, %.sroa.0.0.extract.trunc
  %.sroa.0.1.extract.shift = lshr i64 %.sroa.0.sroa.0.0.insert.insert.i, 8
  %.sroa.0.0.extract.trunc.a = trunc i64 %.sroa.0.1.extract.shift to i8
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.s = load i8, ptr %8, align 1, !tbaa !19
  %i.t = and i8 %i.s, %.sroa.0.0.extract.trunc.a
  %.sroa.0.2.extract.shift = lshr i64 %.sroa.0.sroa.0.0.insert.insert.i, 16
  %.sroa.0.2.extract.trunc = trunc i64 %.sroa.0.2.extract.shift to i8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 2
  %9 = load i8, ptr %i.u, align 2, !tbaa !19
  %10 = and i8 %9, %.sroa.0.2.extract.trunc
  %.sroa.0.3.extract.shift = lshr i64 %.sroa.0.sroa.0.0.insert.insert.i, 24
  %.sroa.0.3.extract.trunc = trunc i64 %.sroa.0.3.extract.shift to i8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 3
  %11 = load i8, ptr %i.v, align 1, !tbaa !19
  %12 = and i8 %11, %.sroa.0.3.extract.trunc
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.sroa.0.0.insert.insert.i, 32
  %.sroa.0.4.extract.trunc = trunc i64 %.sroa.0.4.extract.shift to i8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.x = load i8, ptr %i.w, align 4, !tbaa !19
  %13 = and i8 %i.x, %.sroa.0.4.extract.trunc
  %.sroa.0.6.extract.shift.a = lshr i64 %.sroa.0.sroa.0.0.insert.insert.i, 40
  %.sroa.0.6.extract.trunc.a = trunc i64 %.sroa.0.6.extract.shift.a to i8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.z = load i8, ptr %i.y, align 1, !tbaa !19
  %i.aa = and i8 %i.z, %.sroa.0.6.extract.trunc.a
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.0.sroa.0.0.insert.insert.i, 48
  %.sroa.0.6.extract.trunc = trunc i64 %.sroa.0.6.extract.shift to i8
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %15 = load i8, ptr %14, align 2, !tbaa !19
  %16 = and i8 %15, %.sroa.0.6.extract.trunc
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !19
  %.sroa.11.8.extract.trunc = trunc i64 %.sroa.4.0.i to i8
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !19
  %i.af = and i8 %i.ae, %.sroa.11.8.extract.trunc
  %.sroa.10.8.insert.ext.i = zext i8 %i.af to i64
  %.sroa.11.9.extract.shift = lshr i64 %.sroa.4.0.i, 8
  %.sroa.11.9.extract.trunc = trunc i64 %.sroa.11.9.extract.shift to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 9
  %17 = load i8, ptr %i.ag, align 1, !tbaa !19
  %18 = and i8 %17, %.sroa.11.9.extract.trunc
  %.sroa.10.9.insert.ext.i = zext i8 %18 to i64
  %.sroa.10.9.insert.shift.i = shl nuw nsw i64 %.sroa.10.9.insert.ext.i, 8
  %.sroa.10.9.insert.insert.i = or disjoint i64 %.sroa.10.9.insert.shift.i, %.sroa.10.8.insert.ext.i
  %.sroa.11.10.extract.shift = lshr i64 %.sroa.4.0.i, 16
  %.sroa.11.10.extract.trunc = trunc i64 %.sroa.11.10.extract.shift to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 10
  %19 = load i8, ptr %i.ah, align 2, !tbaa !19
  %20 = and i8 %19, %.sroa.11.10.extract.trunc
  %.sroa.10.10.insert.ext.i = zext i8 %20 to i64
  %.sroa.10.10.insert.shift.i = shl nuw nsw i64 %.sroa.10.10.insert.ext.i, 16
  %.sroa.10.10.insert.insert.i = or disjoint i64 %.sroa.10.9.insert.insert.i, %.sroa.10.10.insert.shift.i
  %.sroa.11.15.extract.shift = lshr i64 %.sroa.4.0.i, 24
  %.sroa.11.15.extract.trunc = trunc i64 %.sroa.11.15.extract.shift to i8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = and i8 %i.aj, %.sroa.11.15.extract.trunc
  %.sroa.10.15.insert.ext.i = zext i8 %i.ak to i64
  %.sroa.10.15.insert.shift.i = shl nuw nsw i64 %.sroa.10.15.insert.ext.i, 24
  %.sroa.10.11.insert.insert.i = or disjoint i64 %.sroa.10.10.insert.insert.i, %.sroa.10.15.insert.shift.i
  %.sroa.11.12.extract.shift = lshr i64 %.sroa.4.0.i, 32
  %.sroa.11.12.extract.trunc = trunc i64 %.sroa.11.12.extract.shift to i8
  %21 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %22 = load i8, ptr %21, align 4, !tbaa !19
  %23 = and i8 %22, %.sroa.11.12.extract.trunc
  %.sroa.0.sroa.8.0.insert.ext.i.a = zext i8 %23 to i64
  %.sroa.0.sroa.8.0.insert.shift.i.a = shl nuw nsw i64 %.sroa.0.sroa.8.0.insert.ext.i.a, 32
  %.sroa.11.13.extract.shift = lshr i64 %.sroa.4.0.i, 40
  %.sroa.11.13.extract.trunc = trunc i64 %.sroa.11.13.extract.shift to i8
  %24 = getelementptr inbounds nuw i8, ptr %1, i64 13
  %25 = load i8, ptr %24, align 1, !tbaa !19
  %26 = and i8 %25, %.sroa.11.13.extract.trunc
  %.sroa.10.13.insert.ext.i = zext i8 %26 to i64
  %.sroa.10.13.insert.shift.i = shl nuw nsw i64 %.sroa.10.13.insert.ext.i, 40
  %.sroa.10.13.insert.mask.i = or disjoint i64 %.sroa.10.11.insert.insert.i, %.sroa.0.sroa.8.0.insert.shift.i.a
  %.sroa.11.14.extract.shift = lshr i64 %.sroa.4.0.i, 48
  %.sroa.11.14.extract.trunc = trunc i64 %.sroa.11.14.extract.shift to i8
  %27 = getelementptr inbounds nuw i8, ptr %1, i64 14
  %28 = load i8, ptr %27, align 2, !tbaa !19
  %29 = and i8 %28, %.sroa.11.14.extract.trunc
  %.sroa.10.14.insert.ext.i = zext i8 %29 to i64
  %.sroa.10.14.insert.shift.i = shl nuw nsw i64 %.sroa.10.14.insert.ext.i, 48
  %.sroa.10.14.insert.mask.i = or disjoint i64 %.sroa.10.13.insert.mask.i, %.sroa.10.13.insert.shift.i
  %.sroa.10.14.insert.insert.i = or i64 %.sroa.10.14.insert.mask.i, %.sroa.10.14.insert.shift.i
  %30 = getelementptr inbounds nuw i8, ptr %1, i64 15
  %31 = load i8, ptr %30, align 1, !tbaa !19
  %32 = zext i8 %31 to i64
  %.sroa.10.15.insert.ext.i15 = shl nuw i64 %32, 56
  %.sroa.11.15.extract.shift16 = and i64 %.sroa.10.15.insert.ext.i15, %.sroa.4.0.i
  %.sroa.10.15.insert.insert.i = or i64 %.sroa.10.14.insert.insert.i, %.sroa.11.15.extract.shift16
  %33 = zext i8 %i.ac to i64
  %.sroa.0.sroa.9.0.insert.ext.i17 = shl nuw i64 %33, 56
  %.sroa.0.7.extract.shift18 = and i64 %.sroa.0.sroa.9.0.insert.ext.i17, %.sroa.0.sroa.0.0.insert.insert.i
  %.sroa.0.sroa.8.0.insert.ext.i = zext i8 %16 to i64
  %.sroa.0.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.8.0.insert.ext.i, 48
  %.sroa.0.sroa.8.0.insert.insert.i = or disjoint i64 %.sroa.0.7.extract.shift18, %.sroa.0.sroa.8.0.insert.shift.i
  %.sroa.0.sroa.7.0.insert.ext.i = zext i8 %i.aa to i64
  %.sroa.0.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.7.0.insert.ext.i, 40
  %.sroa.0.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.8.0.insert.insert.i, %.sroa.0.sroa.7.0.insert.shift.i
  %.sroa.0.sroa.6.0.insert.ext.i = zext i8 %13 to i64
  %.sroa.0.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.6.0.insert.ext.i, 32
  %.sroa.0.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.7.0.insert.insert.i, %.sroa.0.sroa.6.0.insert.shift.i
  %.sroa.0.sroa.5.0.insert.ext.i = zext i8 %12 to i64
  %.sroa.0.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.5.0.insert.ext.i, 24
  %.sroa.0.sroa.5.0.insert.insert.i = or disjoint i64 %.sroa.0.sroa.6.0.insert.insert.i, %.sroa.0.sroa.5.0.insert.shift.i
  %.sroa.0.sroa.4.0.insert.ext.i = zext i8 %10 to i64
  %.sroa.0.sroa.4.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.4.0.insert.ext.i, 16
  %.sroa.0.sroa.3.0.insert.ext.i = zext i8 %i.t to i64
  %.sroa.0.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i, 8
  %.sroa.0.sroa.3.0.insert.mask.i = or disjoint i64 %.sroa.0.sroa.5.0.insert.insert.i, %.sroa.0.sroa.4.0.insert.shift.i
  %.sroa.0.sroa.0.0.insert.ext.i = zext i8 %7 to i64
  %.sroa.0.sroa.0.0.insert.mask.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i, %.sroa.0.sroa.0.0.insert.ext.i
  %.sroa.0.sroa.0.0.insert.insert.i6 = or i64 %.sroa.0.sroa.0.0.insert.mask.i, %.sroa.0.sroa.3.0.insert.mask.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i6, ptr %5, align 8
  %34 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.sroa.10.15.insert.insert.i, ptr %34, align 8
  call void @_ZN5folly11IPAddressV6C1ERKSt5arrayIhLm16EE(ptr noundef nonnull align 4 dereferenceable(18) %0, ptr noundef nonnull align 1 dereferenceable(16) %5) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #34
  ret void

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn13 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn14, %bb.f ], [ %i.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn13

bb.j:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nounwind
declare ptr @inet_ntop(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5folly6detail5Bytes5toHexB5cxx11EPKhm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = shl i64 %2, 1                            ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !28
  %i.c = icmp ugt i64 %i.a, 15
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i64 %i.a, 0
  br i1 %i.d, label %.noexc.i, label %.thread7.i.i

.noexc.i:                                         ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #37
  unreachable

.thread7.i.i:                                     ; preds = %bb.b
  %i.e = or disjoint i64 %i.a, 1
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #39 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !13
  store i64 %i.a, ptr %i.b, align 8, !tbaa !19
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %cond = icmp eq i64 %i.a, 0
  br i1 %cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread7.i.i
  %i.g = phi ptr [ %i.f, %.thread7.i.i ], [ %i.b, %bb.c ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.g, i8 0, i64 %i.a, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %i.g, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.a, ptr %i.i, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.a
  store i8 0, ptr %i.j, align 1, !tbaa !19
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %xtraiter = and i64 %2, 1
  %i.k = icmp eq i64 %2, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %2, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.014 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.014
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = lshr i32 %i.n, 4
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !19
  %i.s = shl i64 %.014, 1                         ; 2 uses
  %i.t = load ptr, ptr %0, align 8, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %i.r, ptr %i.u, align 1, !tbaa !19
  %i.v = and i32 %i.n, 15
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !19
  %i.z = load ptr, ptr %0, align 8, !tbaa !13
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.s
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1
  store i8 %i.y, ptr %i.ab, align 1, !tbaa !19
  %i.ac = or disjoint i64 %.014, 1                ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !19
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = lshr i32 %i.af, 4
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !19
  %i.ak = shl i64 %i.ac, 1                        ; 2 uses
  %i.al = load ptr, ptr %0, align 8, !tbaa !13
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !19
  %i.an = and i32 %i.af, 15
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !19
  %i.ar = load ptr, ptr %0, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ak
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 %i.aq, ptr %i.at, align 1, !tbaa !19
  %i.au = add nuw i64 %.014, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !151

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.014.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.014.epil.init
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !19
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %i.ay = lshr i32 %i.ax, 4
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !19
  %i.bc = shl i64 %.014.epil.init, 1              ; 2 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !13
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 %i.bb, ptr %i.be, align 1, !tbaa !19
  %i.bf = and i32 %i.ax, 15
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @.str.31, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !19
  %i.bj = load ptr, ptr %0, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bc
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 1
  store i8 %i.bi, ptr %i.bl, align 1, !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.e
  ret void
}

declare void @_ZN5folly8errnoStrB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #31

; Function Attrs: nounwind
declare ptr @if_indextoname(i32 noundef, ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #32

; Function Attrs: mustprogress uwtable
define void @_ZNK5folly11IPAddressV616toFullyQualifiedB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 4 dereferenceable(18) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !152)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34, !noalias !152
  %i.b = call noundef i64 @_ZN5folly6detail22fastIpv6ToBufferUnsafeERK8in6_addrPc(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull %i.a), !noalias !152 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !28, !alias.scope !152
  %i.d = icmp ugt i64 %i.b, 15
  br i1 %i.d, label %bb.b, label %._crit_edge.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %i.b, 0
  br i1 %i.e, label %.noexc.i.i, label %bb.c

.noexc.i.i:                                       ; preds = %bb.b
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #37
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %i.b, 1                      ; 2 uses
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %.noexc9.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !29

.noexc9.i.i:                                      ; preds = %bb.c
  call void @_ZSt17__throw_bad_allocv() #37
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.c
  %i.h = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #39 ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !13, !alias.scope !152
  store i64 %i.b, ptr %i.c, align 8, !tbaa !19, !alias.scope !152
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %bb.a
  %i.i = phi ptr [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  switch i64 %i.b, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZN5folly6detail16fastIpv6ToStringB5cxx11ERK8in6_addr.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
end_hunk_1
