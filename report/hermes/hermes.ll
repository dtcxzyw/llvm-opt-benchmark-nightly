inline.NumInlined: 5074
inline.NumDeleted: 2523
begin_hunk_0_@_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl17throwPendingErrorEv:bb.a
  resume { ptr, i32 } %.pn24.pn.pn.pn.pn.pn.pn

bb.z:                                             ; preds = %bb.u
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl18utf8FromStringViewB5cxx11EN6hermes2vm10StringViewE(ptr dead_on_unwind noalias writable align 8 %0, ptr %1, i64 %2) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %.sroa.3.8.extract.trunc = trunc i64 %2 to i32  ; 3 uses
  %.sroa.7.8.extract.shift = lshr i64 %2, 32      ; 5 uses
  %i.b = icmp slt i32 %.sroa.3.8.extract.trunc, 0
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %.sroa.3.8.extract.trunc, 1073741824
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %1, align 8, !tbaa !232
  %i.d = and i64 %.sroa.0.0.copyload.i.i.i.i, 281474976710655
  %i.e = inttoptr i64 %i.d to ptr                 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4              ; 2 uses
  %i.g = icmp ugt i32 %i.f, 150994943
  br i1 %i.g, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.sink.split, label %bb.d, !prof !241

bb.d:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.f, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i, label %bb.f [
    i32 134217728, label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.thread
    i32 67108864, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.0.0.copyload.i.i.i2.i = load i64, ptr %i.h, align 8, !tbaa !232
  %i.i = and i64 %.sroa.0.0.copyload.i.i.i2.i, 281474976710655
  %i.j = inttoptr i64 %i.i to ptr
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.sink.split

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.thread: ; preds = %bb.d, %bb.e
  %.sink = phi i64 [ 8, %bb.e ], [ 12, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sink
  %i.l = and i64 %2, 1073741823
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.n, ptr %0, align 8, !tbaa !112
  br label %bb.g

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.sink.split: ; preds = %bb.c, %bb.f
  %.sink13 = phi ptr [ %i.j, %bb.f ], [ %i.e, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %.sink13, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !22
  br label %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit

_ZNK6hermes2vm10StringView13castToCharPtrEv.exit: ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.sink.split, %bb.b
  %.0.i.sink.i = phi ptr [ %1, %bb.b ], [ %i.p, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.sink.split ] ; 2 uses
  %i.q = and i64 %2, 1073741823
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.sink.i, i64 %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.s, ptr %0, align 8, !tbaa !112
  %i.t = icmp eq ptr %.0.i.sink.i, null
  %i.u = icmp ne i64 %.sroa.7.8.extract.shift, 0
  %or.cond.i = and i1 %i.u, %i.t
  br i1 %or.cond.i, label %.noexc, label %bb.g

.noexc:                                           ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.3) #53
  unreachable

bb.g:                                             ; preds = %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.thread, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit
  %i.v = phi ptr [ %i.n, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.thread ], [ %i.s, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit ] ; 2 uses
  %i.w = phi ptr [ %i.m, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit.thread ], [ %i.r, %_ZNK6hermes2vm10StringView13castToCharPtrEv.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #47
  store i64 %.sroa.7.8.extract.shift, ptr %i.a, align 8, !tbaa !232
  %i.x = icmp ugt i64 %2, 68719476735
  br i1 %i.x, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.g
  %i.y = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.y, ptr %0, align 8, !tbaa !22
  %i.z = load i64, ptr %i.a, align 8, !tbaa !232
  store i64 %i.z, ptr %i.v, align 8, !tbaa !50
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.g
  %i.aa = phi ptr [ %i.y, %.noexc.i ], [ %i.v, %bb.g ] ; 2 uses
  %trunc = trunc nuw i64 %.sroa.7.8.extract.shift to i32
  switch i32 %trunc, label %bb.i [
    i32 1, label %bb.h
    i32 0, label %bb.j
  ]

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.ab = load i8, ptr %i.w, align 1, !tbaa !50
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !50
  br label %bb.j

bb.i:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aa, ptr align 1 %i.w, i64 %.sroa.7.8.extract.shift, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %._crit_edge.i.i
  %i.ac = load i64, ptr %i.a, align 8, !tbaa !232 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !tbaa !26
  %i.ae = load ptr, ptr %0, align 8, !tbaa !22
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ac
  store i8 0, ptr %i.af, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #47
  br label %bb.t

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.ag, ptr %0, align 8, !tbaa !112
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !26
  store i8 0, ptr %i.ag, align 8, !tbaa !50
  %.not.i5 = icmp samesign ult i32 %.sroa.3.8.extract.trunc, 1073741824
  br i1 %.not.i5, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i6 = load i64, ptr %1, align 8, !tbaa !232
  %i.ai = and i64 %.sroa.0.0.copyload.i.i.i.i6, 281474976710655
  %i.aj = inttoptr i64 %i.ai to ptr               ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp ugt i32 %i.ak, 150994943
  br i1 %i.al, label %bb.m, label %bb.n, !prof !241

bb.m:                                             ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !811
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %.mask.i.i.i.i.i.i.i.i.i7 = and i32 %i.ak, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i.i7, label %bb.q [
    i32 117440512, label %bb.o
    i32 50331648, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.0.0.copyload.i.i.i2.i9 = load i64, ptr %i.aq, align 8, !tbaa !232
  %i.ar = and i64 %.sroa.0.0.copyload.i.i.i2.i9, 281474976710655
  %i.as = inttoptr i64 %i.ar to ptr
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !811
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.m, %bb.k
  %.0.i.sink.i8 = phi ptr [ %1, %bb.k ], [ %i.an, %bb.m ], [ %i.ao, %bb.o ], [ %i.ap, %bb.p ], [ %i.au, %bb.q ]
  %i.av = and i64 %2, 1073741823
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.0.i.sink.i8, i64 %i.av
  %i.ax = invoke noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %i.aw, i64 %.sroa.7.8.extract.shift, i64 noundef 0)
          to label %bb.t unwind label %bb.s       ; 0 uses

bb.s:                                             ; preds = %bb.r
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %0, align 8, !tbaa !22    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ag
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.bb = load i64, ptr %i.ag, align 8, !tbaa !50
  %i.bc = add i64 %i.bb, 1
  tail call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.r, %bb.j
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ay
}

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @"_ZZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl17throwPendingErrorEvENK3$_0clEN6hermes2vm8SymbolIDERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE"(ptr nofree captures(none) %.0.val, ptr %.8.val, i32 %0, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %1) unnamed_addr #24 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.facebook::jsi::Value", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 4 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 144 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !305, !nonnull !30, !align !31
  %i.c = tail call { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr %.8.val, ptr noundef nonnull align 8 dereferenceable(9816) %i.b, i32 %0, ptr %.8.val, i32 0, ptr noundef null) ; 2 uses
  %i.d = extractvalue { i32, i64 } %i.c, 0
  %i.e = extractvalue { i32, i64 } %i.c, 1        ; 3 uses
  %i.f = icmp eq i32 %i.d, 0
  br i1 %i.f, label %bb.b, label %bb.m, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !305, !nonnull !30, !align !31
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 720 ; 2 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.h, align 8, !tbaa !232 ; 2 uses
  store i64 -1970324836974592, ptr %i.h, align 8, !tbaa !602
  %i.i = tail call noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64 %.sroa.0.0.copyload.i)
  br i1 %i.i, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @__cxa_allocate_exception(i64 120) #47 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #47
  invoke fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl20valueFromHermesValueEN6hermes2vm11HermesValueE(ptr dead_on_unwind noalias nonnull writable align 8 %2, ptr noundef nonnull align 8 dereferenceable(192) %.0.val, i64 %.sroa.0.0.copyload.i)
          to label %bb.d unwind label %.thread

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.14, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.e unwind label %.thread9

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.13, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook3jsi7JSErrorC1EONS0_5ValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(120) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %3, ptr noundef nonnull %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN8facebook3jsi7JSErrorE, ptr nonnull @_ZN8facebook3jsi7JSErrorD1Ev) #53
          to label %bb.w unwind label %bb.i

.thread:                                          ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

.thread9:                                         ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #47
  br label %.sink.split

bb.h:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.i:                                             ; preds = %bb.g, %bb.f
  %.016 = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %5, align 8, !tbaa !22     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.r = load i64, ptr %i.p, align 8, !tbaa !50
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.h
  %.117 = phi i1 [ true, %bb.h ], [ %.016, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.016, %bb.i ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.m, %bb.h ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.n, %bb.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #47
  %i.t = load ptr, ptr %3, align 8, !tbaa !22     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %bb.j, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.w = load i64, ptr %i.u, align 8, !tbaa !50
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #50
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br i1 %.117, label %bb.k, label %bb.l

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #47
  call void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #47
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br i1 %.117, label %bb.k, label %bb.l

.sink.split:                                      ; preds = %.thread, %.thread9
  %.pn.pn.pn8.ph = phi { ptr, i32 } [ %i.l, %.thread9 ], [ %i.k, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #47
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.j
  %.pn.pn.pn8 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %.pn, %bb.j ], [ %.pn.pn.pn8.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.j) #47
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22, %bb.k, %bb.j
  %.pn.pn.pn7 = phi { ptr, i32 } [ %.pn.pn.pn8, %bb.k ], [ %.pn, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ]
  resume { ptr, i32 } %.pn.pn.pn7

bb.m:                                             ; preds = %bb.a
  %.mask.i = and i64 %i.e, -281474976710656
  %i.y = icmp eq i64 %.mask.i, -844424930131968
  br i1 %i.y, label %bb.n, label %bb.v

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !305, !nonnull !30, !align !31 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !325 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 192 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !335 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 200
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !336
  %i.ag = icmp ult ptr %i.ad, %i.af
  br i1 %i.ag, label %bb.o, label %bb.p, !prof !558

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %i.ah, ptr %i.ac, align 8, !tbaa !335
  store i64 %i.e, ptr %i.ad, align 8, !tbaa !232
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

bb.p:                                             ; preds = %bb.n
  %i.ai = tail call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.ab, i64 %i.e)
  br label %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit

_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.o ], [ %i.ai, %bb.p ]
  %i.aj = tail call { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816) %i.z, ptr %.0.i.i.i.i.i.i) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #47
  call fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl18utf8FromStringViewB5cxx11EN6hermes2vm10StringViewE(ptr dead_on_unwind noalias nonnull writable align 8 %7, ptr %i.ak, i64 %i.al)
  %i.am = load ptr, ptr %1, align 8, !tbaa !22    ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  %i.ap = load ptr, ptr %7, align 8, !tbaa !22    ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq                ; 2 uses
  br i1 %i.ao, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  br i1 %i.ar, label %bb.q, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %_ZN6hermes2vm15HandleRootOwner10makeHandleINS0_15StringPrimitiveEEENS0_6HandleIT_EEPS5_.exit
  br i1 %i.ar, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !26 ; 3 uses
  %i.au = icmp ult i64 %i.at, 16
  call void @llvm.assume(i1 %i.au)
  switch i64 %i.at, label %bb.s [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q
  %i.av = load i8, ptr %i.ap, align 1, !tbaa !50
  store i8 %i.av, ptr %i.am, align 1, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.am, ptr align 1 %i.ap, i64 %i.at, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.s, %bb.r, %bb.q
  %i.aw = load i64, ptr %i.as, align 8, !tbaa !26 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !26
  %i.ay = load ptr, ptr %1, align 8, !tbaa !22
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.aw
  store i8 0, ptr %i.az, align 1, !tbaa !50
  %.pre.i = load ptr, ptr %7, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.ap, ptr %1, align 8, !tbaa !22
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bc = load <2 x i64>, ptr %i.bb, align 8, !tbaa !50
  store <2 x i64> %i.bc, ptr %i.ba, align 8, !tbaa !50
  br label %bb.u

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.bd = load i64, ptr %i.an, align 8, !tbaa !50
  store ptr %i.ap, ptr %1, align 8, !tbaa !22
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !tbaa !50
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !tbaa !50
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.am, ptr %7, align 8, !tbaa !22
  store i64 %i.bd, ptr %i.aq, align 8, !tbaa !50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.u:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.aq, ptr %7, align 8, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.t, %bb.u
  %8 = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.am, %bb.t ], [ %i.aq, %bb.u ]
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.bh, align 8, !tbaa !26
  store i8 0, ptr %8, align 1, !tbaa !50
  %i.bi = load ptr, ptr %7, align 8, !tbaa !22    ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.bk = icmp eq ptr %i.bi, %i.bj
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.bl = load i64, ptr %i.bj, align 8, !tbaa !50
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bm) #50
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #47
  br label %bb.v

bb.v:                                             ; preds = %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %bb.b
  ret void

bb.w:                                             ; preds = %bb.g
  unreachable
}

declare void @_ZN8facebook3jsi7JSErrorC1EONS0_5ValueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi7JSErrorD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN8facebook3jsi5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16)) unnamed_addr #4

declare noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212), i64) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN6hermes34convertUTF16ToUTF8WithReplacementsERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN4llvh8ArrayRefIDsEEm(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, i64 noundef) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN6hermes2vm18isUncatchableErrorENS0_11HermesValueE(i64) local_unnamed_addr #9

declare { i32, i64 } @_ZN6hermes2vm8JSObject24getNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEENS0_11PropOpFlagsEPNS0_18PropertyCacheEntryE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, i32, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi6SymbolEEET_N6hermes2vm11HermesValueE(ptr dead_on_unwind noalias nofree nonnull writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1, i64 %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !570
  %i.f = uitofp i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !571
  %i.i = fcmp ogt double %i.h, %i.f
  br i1 %i.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %.sink.split.i, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !569
  br label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit: ; preds = %bb.a, %bb.c, %.sink.split.i
  %i.k = phi ptr [ %i.c, %bb.a ], [ %i.j, %bb.c ], [ %.pre, %.sink.split.i ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !50
  store ptr %.val.i, ptr %i.b, align 8, !tbaa !569
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 1, ptr %i.m monotonic, align 8
  store i64 %2, ptr %i.l, align 8, !tbaa !232
  store ptr %i.k, ptr %0, align 8, !tbaa !559, !alias.scope !1169
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi6BigIntEEET_N6hermes2vm11HermesValueE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1, i64 %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !570
  %i.f = uitofp i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !571
  %i.i = fcmp ogt double %i.h, %i.f
  br i1 %i.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %.sink.split.i, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !569
  br label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit: ; preds = %bb.a, %bb.c, %.sink.split.i
  %i.k = phi ptr [ %i.c, %bb.a ], [ %i.j, %bb.c ], [ %.pre, %.sink.split.i ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !50
  store ptr %.val.i, ptr %i.b, align 8, !tbaa !569
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 1, ptr %i.m monotonic, align 8
  store i64 %2, ptr %i.l, align 8, !tbaa !232
  store ptr %i.k, ptr %0, align 8, !tbaa !559, !alias.scope !1172
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi6StringEEET_N6hermes2vm11HermesValueE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1, i64 %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !570
  %i.f = uitofp i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !571
  %i.i = fcmp ogt double %i.h, %i.f
  br i1 %i.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %.sink.split.i, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !569
  br label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit: ; preds = %bb.a, %bb.c, %.sink.split.i
  %i.k = phi ptr [ %i.c, %bb.a ], [ %i.j, %bb.c ], [ %.pre, %.sink.split.i ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !50
  store ptr %.val.i, ptr %i.b, align 8, !tbaa !569
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 1, ptr %i.m monotonic, align 8
  store i64 %2, ptr %i.l, align 8, !tbaa !232
  store ptr %i.k, ptr %0, align 8, !tbaa !559, !alias.scope !1175
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl3addINS_3jsi6ObjectEEET_N6hermes2vm11HermesValueE(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(192) %1, i64 %2) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.b, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit, !prof !241

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load i64, ptr %i.d, align 8, !tbaa !570
  %i.f = uitofp i64 %i.e to double
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.h = load double, ptr %i.g, align 8, !tbaa !571
  %i.i = fcmp ogt double %i.h, %i.f
  br i1 %i.i, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE7collectEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !569  ; 2 uses
  %.not4.i = icmp eq ptr %i.j, null
  br i1 %.not4.i, label %.sink.split.i, label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

.sink.split.i:                                    ; preds = %bb.c, %bb.b
  tail call fastcc void @_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE13allocateChunkEv(ptr noundef nonnull align 8 dereferenceable(48) %i.a)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !569
  br label %_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit

_ZN6hermes18ManagedChunkedListIN8facebook6hermes12_GLOBAL__N_117HermesRuntimeImpl12ManagedValueINS_2vm17PinnedHermesValueEEELm16EE3addIJRNS6_11HermesValueEEEERS8_DpOT_.exit: ; preds = %bb.a, %bb.c, %.sink.split.i
  %i.k = phi ptr [ %i.c, %bb.a ], [ %i.j, %bb.c ], [ %.pre, %.sink.split.i ] ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %.val.i = load ptr, ptr %i.l, align 8, !tbaa !50
  store ptr %.val.i, ptr %i.b, align 8, !tbaa !569
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store atomic i32 1, ptr %i.m monotonic, align 8
  store i64 %2, ptr %i.l, align 8, !tbaa !232
  store ptr %i.k, ptr %0, align 8, !tbaa !559, !alias.scope !1178
  ret void
end_hunk_0
