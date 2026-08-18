inline.NumInlined: 8096
inline.NumDeleted: 3435
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection26PopulateTcParseFastEntriesERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase14FastFieldEntryE:bb.a
  %.0.i27 = phi ptr [ %i.ax, %bb.j ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 16
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !518
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 18
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !519
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 19
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !520
  %i.be = shl nuw i64 %i.as, 48
  %i.bf = zext i8 %i.bd to i64
  %i.bg = shl nuw nsw i64 %i.bf, 24
  %i.bh = or disjoint i64 %i.bg, %i.be
  %i.bi = zext i8 %i.bb to i64
  %i.bj = shl nuw nsw i64 %i.bi, 16
  %i.bk = or disjoint i64 %i.bh, %i.bj
  %i.bl = zext i16 %i.az to i64
  %i.bm = or disjoint i64 %i.bk, %i.bl
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit
  %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink = phi ptr [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit ], [ %.0.i, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ], [ %.0.i27, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28 ], [ @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm, %bb.e ]
  %.sink = phi i64 [ 0, %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit ], [ %i.p, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit ], [ %i.bm, %_ZN6google8protobufL20GetFastParseFunctionENS0_8internal15TcParseFunctionE.exit28 ], [ 0, %bb.e ]
  store ptr %_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm.sink, ptr %.048, align 8, !tbaa !94
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.048, i64 8
  store i64 %.sink, ptr %.sroa.4.0..0.sroa_idx, align 8, !tbaa !31
  %.3 = getelementptr inbounds nuw i8, ptr %.048, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.040.047, i64 32 ; 2 uses
  %.not43 = icmp eq ptr %i.bn, %i.d
  br i1 %.not43, label %._crit_edge, label %bb.b
}

declare noundef ptr @_ZN6google8protobuf8internal8TcParser9MiniParseEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef, ptr noundef, ptr noundef, i64, ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZNK6google8protobuf10Reflection22PopulateTcParseEntriesERNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase10FieldEntryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #19 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !521  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !521  ; 2 uses
  %.not2527 = icmp eq ptr %i.b, %i.d
  br i1 %.not2527, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i32, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not26 = icmp eq i32 %i.j, -1
  %i.k = shl i32 %i.j, 3
  br label %bb.b

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.i
  %.029 = phi ptr [ %2, %.lr.ph ], [ %i.bg, %bb.i ] ; 4 uses
  %.sroa.022.028 = phi ptr [ %i.b, %.lr.ph ], [ %i.bh, %bb.i ] ; 4 uses
  %i.l = load ptr, ptr %.sroa.022.028, align 8, !tbaa !523 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 8
  %.not.i = icmp eq i8 %i.o, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br i1 %.not.i, label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !50
  br label %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit

_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.q, %bb.c ], [ null, %bb.b ] ; 3 uses
  %i.r = and i8 %.pre, 8
  %.not.i.i21 = icmp eq i8 %i.r, 0
  br i1 %.not.i.i21, label %bb.d, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.d:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !101
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor21real_containing_oneofEv.exit
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %.not1.i.i = icmp eq ptr %i.w, null
  br i1 %.not1.i.i, label %bb.e, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.e:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !102
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.e, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.d
  %.sink7.in.i.i = phi ptr [ %i.aa, %bb.e ], [ %i.x, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.u, %bb.d ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.ab = ptrtoint ptr %i.l to i64
  %i.ac = ptrtoint ptr %.sink7.i.i to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %.0.in.i.i = sdiv exact i64 %i.ad, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.ae = ashr exact i64 %sext.i, 30
  %i.af = getelementptr inbounds i8, ptr %i.f, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !3
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 2
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !96
  %switch.tableidx = add i8 %i.ai, -9             ; 2 uses
  %i.aj = icmp ult i8 %switch.tableidx, 4
  br i1 %i.aj, label %switch.lookup, label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

switch.lookup:                                    ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i
  %i.ak = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table._ZNK6google8protobuf10Reflection18CreateTcParseTableEv.282, i64 %i.ak
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i, %switch.lookup
  %.sink.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 2147483647, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i ]
  %i.al = and i32 %.sink.i.i, %i.ag
  store i32 %i.al, ptr %.029, align 4, !tbaa !526
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !51
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 72
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !54
  %i.aq = ptrtoint ptr %.0.i to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = sdiv exact i64 %i.as, 56
  %i.au = trunc i64 %i.at to i32
  %i.av = shl nsw i32 %i.au, 2
  %i.aw = add nsw i32 %i.av, %i.h
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema14GetFieldOffsetIvEEjPKNS0_15FieldDescriptorE.exit
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !528 ; 2 uses
  %i.az = icmp sgt i32 %i.ay, -1
  %i.ba = add i32 %i.ay, %i.k
  %i.bb = select i1 %i.az, i32 %i.ba, i32 -1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.sink = phi i32 [ %i.bb, %bb.h ], [ %i.aw, %bb.f ], [ 0, %bb.g ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.029, i64 4
  store i32 %.sink, ptr %i.bc, align 4, !tbaa !529
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %.029, i64 8
  %i.bf = load <2 x i16>, ptr %i.bd, align 4, !tbaa !530
  store <2 x i16> %i.bf, ptr %i.be, align 4, !tbaa !530
  %i.bg = getelementptr inbounds nuw i8, ptr %.029, i64 12
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.022.028, i64 24 ; 2 uses
  %.not25 = icmp eq ptr %i.bh, %i.d
  br i1 %.not25, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define void @_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(140) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.std::pair.190", align 8    ; 7 uses
  %4 = alloca %"class.std::vector.150", align 16  ; 8 uses
  %5 = alloca %"struct.std::pair.222", align 8    ; 6 uses
  %6 = alloca %"struct.std::pair.225", align 8    ; 7 uses
  %7 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !531  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !531  ; 2 uses
  %.not51 = icmp eq ptr %i.b, %i.d
  br i1 %.not51, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.b

._crit_edge:                                      ; preds = %bb.an, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %.054 = phi ptr [ %2, %.lr.ph ], [ %.1, %bb.an ] ; 18 uses
  %.sroa.5.053 = phi i8 [ undef, %.lr.ph ], [ %.sroa.5.1, %bb.an ] ; 9 uses
  %.sroa.025.052 = phi ptr [ %i.b, %.lr.ph ], [ %i.eo, %bb.an ] ; 6 uses
  %i.k = load i32, ptr %.sroa.025.052, align 8, !tbaa !533
  switch i32 %i.k, label %bb.an [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.f
    i32 6, label %bb.f
    i32 7, label %bb.f
    i32 11, label %bb.h
    i32 3, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.am
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i64 0, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.d:                                             ; preds = %bb.b
  %i.m = load i32, ptr %i.j, align 4, !tbaa !99
  %i.n = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i32 %i.m, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.e:                                             ; preds = %bb.b
  %i.o = load i32, ptr %i.i, align 8, !tbaa !507
  %i.p = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i32 %i.o, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull @.str.1, i32 noundef 3627) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %7, i64 13, ptr nonnull @.str.108)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit unwind label %bb.g

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit: ; preds = %bb.f
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.g

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  unreachable

bb.g:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi14EEERS2_RAT__Kc.exit, %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #37
  unreachable

bb.h:                                             ; preds = %bb.b
  %8 = and i8 %.sroa.5.053, -16                   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i32 0, ptr %.054, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.054, i64 4
  store i8 %8, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !31
  br label %bb.an

bb.i:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = call noundef ptr @_ZNK6google8protobuf10Reflection25GetDefaultMessageInstanceEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %i.t)
  %i.v = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store ptr %i.u, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.j:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.054, i64 8
  %i.y = load <2 x i32>, ptr %i.w, align 8, !tbaa !31
  store <2 x i32> %i.y, ptr %.054, align 8, !tbaa !3
  br label %bb.an

bb.k:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !31
  %i.ab = call noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.aa) ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !536
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !537 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  store ptr %i.ab, ptr %3, align 8, !tbaa !546
  store ptr @"_ZZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_E8type_key", ptr %i.e, align 8, !tbaa !548
  call void @_ZN4absl12lts_202505125Mutex10ReaderLockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !549
  %i.ai = invoke { ptr, ptr } @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE4findIS7_EENSP_8iteratorERSM_(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.l unwind label %bb.n       ; 2 uses

bb.l:                                             ; preds = %bb.k
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0
  %.not.i = icmp eq ptr %i.aj, null               ; 2 uses
  br i1 %.not.i, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = extractvalue { ptr, ptr } %i.ai, 1
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !551
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i unwind label %bb.ai

bb.o:                                             ; preds = %bb.m, %bb.l
  %.014.i = phi ptr [ %i.an, %bb.m ], [ undef, %bb.l ]
  invoke void @_ZN4absl12lts_202505125Mutex12ReaderUnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %i.ap, 0
  call void @__clang_call_terminate(ptr %i.aq) #37
  unreachable

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i: ; preds = %bb.o
  br i1 %.not.i, label %bb.q, label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit"

bb.q:                                             ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i
  %i.ar = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #38, !noalias !553 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEE, i64 16), ptr %i.ar, align 8, !tbaa !149, !noalias !553
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false), !noalias !553
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 4 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !177, !noalias !556 ; 3 uses
  %i.av = sext i32 %i.au to i64                   ; 2 uses
  %i.aw = icmp slt i32 %i.au, 0
  br i1 %i.aw, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #40
          to label %.noexc.i.i.i unwind label %.thread, !noalias !556

.noexc.i.i.i:                                     ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %.not.i.i.i = icmp eq i32 %i.au, 0
  br i1 %.not.i.i.i, label %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i

_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i: ; preds = %bb.s
  %i.ax = shl nuw nsw i64 %i.av, 2
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #38
          to label %.lr.ph.i.i.i unwind label %.loopexit, !noalias !556 ; 3 uses

.lr.ph.i.i.i:                                     ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.av
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  br label %bb.u

._crit_edge.i.i.i:                                ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.032.4.i.i.i, %.sroa.14.2.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i, label %bb.t

._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i: ; preds = %._crit_edge.i.i.i, %bb.s
  %.sroa.032.0.lcssa103.i.i.i = phi ptr [ %.sroa.032.4.i.i.i, %._crit_edge.i.i.i ], [ null, %bb.s ] ; 2 uses
  %.sroa.26.0.lcssa98.i.i.i = phi ptr [ %.sroa.26.4.i.i.i, %._crit_edge.i.i.i ], [ null, %bb.s ]
  %.pre.i.i.i = ptrtoint ptr %.sroa.032.0.lcssa103.i.i.i to i64 ; 2 uses
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.bb = ptrtoint ptr %.sroa.14.2.i.i.i to i64   ; 3 uses
  %i.bc = ptrtoint ptr %.sroa.032.4.i.i.i to i64  ; 4 uses
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2
  %i.bf = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.be, i1 true)
  %i.bg = shl nuw nsw i64 %i.bf, 1
  %i.bh = xor i64 %i.bg, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %.sroa.032.4.i.i.i, ptr nonnull %.sroa.14.2.i.i.i, i64 noundef %i.bh)
          to label %.noexc16.i.i.i unwind label %.loopexit, !noalias !556

.noexc16.i.i.i:                                   ; preds = %bb.t
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %.sroa.032.4.i.i.i, ptr nonnull %.sroa.14.2.i.i.i)
          to label %.preheader.i.i.i.i.i.i unwind label %.loopexit, !noalias !556

.loopexit:                                        ; preds = %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i, %bb.t, %.noexc16.i.i.i, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i
  %.sroa.26.1.i.i.i.ph = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i ], [ %.sroa.26.4.i.i.i, %bb.t ], [ %.sroa.26.4.i.i.i, %.noexc16.i.i.i ], [ %.sroa.26.0.lcssa96.i.i.i, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i ]
  %.sroa.032.1.i.i.i.ph = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm.exit.i.i.i.i ], [ %.sroa.032.4.i.i.i, %bb.t ], [ %.sroa.032.4.i.i.i, %.noexc16.i.i.i ], [ %.sroa.032.0.lcssa101.i.i.i, %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.thread:                                          ; preds = %bb.r
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.u:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 2 uses
  %.sroa.032.071.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.sroa.032.4.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 6 uses
  %.sroa.14.070.i.i.i = phi ptr [ %i.ay, %.lr.ph.i.i.i ], [ %.sroa.14.2.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 6 uses
  %.sroa.26.069.i.i.i = phi ptr [ %i.az, %.lr.ph.i.i.i ], [ %.sroa.26.4.i.i.i, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i ] ; 2 uses
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !182, !noalias !556
  %i.bj = getelementptr inbounds nuw [48 x i8], ptr %i.bi, i64 %indvars.iv.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !170, !noalias !556 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %.sroa.14.070.i.i.i, %.sroa.26.069.i.i.i
  br i1 %.not.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.bl, ptr %.sroa.14.070.i.i.i, align 4, !tbaa !3, !noalias !556
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i

bb.w:                                             ; preds = %bb.u
  %i.bm = ptrtoint ptr %.sroa.14.070.i.i.i to i64
  %i.bn = ptrtoint ptr %.sroa.032.071.i.i.i to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 6 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775804
  br i1 %i.bp, label %bb.x, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.136) #40
          to label %.noexc18.i.i.i unwind label %.loopexit.split-lp.i.i.i, !noalias !556

.noexc18.i.i.i:                                   ; preds = %bb.x
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i: ; preds = %bb.w
  %i.bq = ashr exact i64 %i.bo, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 2305843009213693951)
  %i.bu = select i1 %i.bs, i64 2305843009213693951, i64 %i.bt ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 2
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #38
          to label %.noexc19.i.i.i unwind label %.loopexit.i.i.i, !noalias !556 ; 4 uses

.noexc19.i.i.i:                                   ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bw, i64 %i.bo ; 2 uses
  store i32 %i.bl, ptr %i.bx, align 4, !tbaa !3, !noalias !556
  %i.by = icmp sgt i64 %i.bo, 0
  br i1 %i.by, label %bb.y, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i

bb.y:                                             ; preds = %.noexc19.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bw, ptr align 4 %.sroa.032.071.i.i.i, i64 %i.bo, i1 false), !noalias !556
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i: ; preds = %bb.y, %.noexc19.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.071.i.i.i, i64 noundef %i.bo) #39, !noalias !556
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.bu
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i

_ZNSt6vectorIiSaIiEE9push_backEOi.exit.i.i.i:     ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i, %bb.v
  %.sroa.26.4.i.i.i = phi ptr [ %i.bz, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.26.069.i.i.i, %bb.v ] ; 7 uses
  %.pn.i.i.i = phi ptr [ %i.bx, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.14.070.i.i.i, %bb.v ] ; 4 uses
  %.sroa.032.4.i.i.i = phi ptr [ %i.bw, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i.i.i.i ], [ %.sroa.032.071.i.i.i, %bb.v ] ; 12 uses
  %.sroa.14.2.i.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i.i, i64 4 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE:bb.a
  %.pre.i.i = ptrtoint ptr %i.co to i64
  br label %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i

_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i: ; preds = %.preheader.i.i.i.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i
  %.pre-phi.i.i = phi i64 [ %.pre.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %i.bb, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %i.bb, %.preheader.i.i.i.i.i.i ]
  %.sroa.032.0.lcssa101.i.i.i = phi ptr [ %.sroa.032.0.lcssa103.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %.sroa.032.4.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %.sroa.032.4.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %.sroa.032.4.i.i.i, %.preheader.i.i.i.i.i.i ] ; 4 uses
  %.sroa.26.0.lcssa96.i.i.i = phi ptr [ %.sroa.26.0.lcssa98.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %.sroa.26.4.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %.sroa.26.4.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %.sroa.26.4.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cp = phi i64 [ %.pre.i.i.i, %._crit_edge._ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.thread_crit_edge.i.i.i ], [ %i.bc, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i.i.i.i.i ], [ %i.bc, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEET_S7_S7_.exit.i.i.i ], [ %i.bc, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.cq = sub i64 %.pre-phi.i.i, %i.cp
  %i.cr = ashr exact i64 %i.cq, 2
  invoke void @_ZN6google8protobuf8internal16GenerateEnumDataEN4absl12lts_202505124SpanIKiEE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.150") align 8 %4, ptr %.sroa.032.0.lcssa101.i.i.i, i64 %i.cr)
          to label %bb.ac unwind label %.loopexit

bb.ac:                                            ; preds = %_ZNSt6vectorIiSaIiEE5eraseEN9__gnu_cxx17__normal_iteratorIPKiS1_EES6_.exit.i.i.i
  %.not.i.i.i24.i.i.i = icmp eq ptr %.sroa.032.0.lcssa101.i.i.i, null
  br i1 %.not.i.i.i24.i.i.i, label %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i", label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cs = ptrtoint ptr %.sroa.26.0.lcssa96.i.i.i to i64
  %i.ct = sub i64 %i.cs, %i.cp
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.0.lcssa101.i.i.i, i64 noundef %i.ct) #39
  br label %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i"

bb.ae:                                            ; preds = %.loopexit, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.sroa.26.2.i.i.i = phi ptr [ %.sroa.14.070.i.i.i, %.loopexit.split-lp.i.i.i ], [ %.sroa.14.070.i.i.i, %.loopexit.i.i.i ], [ %.sroa.26.1.i.i.i.ph, %.loopexit ]
  %.sroa.032.2.i.i.i = phi ptr [ %.sroa.032.071.i.i.i, %.loopexit.split-lp.i.i.i ], [ %.sroa.032.071.i.i.i, %.loopexit.i.i.i ], [ %.sroa.032.1.i.i.i.ph, %.loopexit ] ; 3 uses
  %.pn13.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i25.i.i.i = icmp eq ptr %.sroa.032.2.i.i.i, null
  br i1 %.not.i.i.i25.i.i.i, label %.body.i, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.ae
  %i.cu = ptrtoint ptr %.sroa.26.2.i.i.i to i64
  %i.cv = ptrtoint ptr %.sroa.032.2.i.i.i to i64
  %i.cw = sub i64 %i.cu, %i.cv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.032.2.i.i.i, i64 noundef %i.cw) #39
  br label %.body.i

"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i": ; preds = %bb.ad, %bb.ac
  %i.cx = load ptr, ptr %i.as, align 8, !tbaa !564 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !566
  %i.da = load <2 x ptr>, ptr %4, align 16, !tbaa !202
  store <2 x ptr> %i.da, ptr %i.as, align 8, !tbaa !202
  %i.db = load ptr, ptr %i.f, align 16, !tbaa !566
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !566
  %.not.i.i.i.i.i22.i = icmp eq ptr %i.cx, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i22.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i

_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i:               ; preds = %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i"
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = ptrtoint ptr %i.cx to i64
  %i.de = sub i64 %i.dc, %i.dd
  call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.de) #39
  %.pr.i = load ptr, ptr %4, align 16, !tbaa !564 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i
  %i.df = load ptr, ptr %i.f, align 16, !tbaa !566
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %.pr.i to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %.pr.i, i64 noundef %i.di) #39
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.af, %_ZNSt6vectorIjSaIjEEaSEOS1_.exit.i, %"_ZZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxEENK3$_0clIKNS0_14EnumDescriptorEEEDaPT_.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i unwind label %bb.aj

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i: ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #35
  %i.dj = load ptr, ptr %i.ag, align 8, !tbaa !549
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !567
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.222") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.dk = load i8, ptr %i.h, align 8, !tbaa !584, !range !84, !alias.scope !587, !noundef !50
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i: ; preds = %.noexc.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !587 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.dn = load i64, ptr %i.g, align 8, !tbaa !551, !noalias !592
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !551
  br label %bb.ag

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i: ; preds = %.noexc.i
  %.pr45.i = load ptr, ptr %i.g, align 8, !tbaa !551 ; 3 uses
  %.not.i.i23.i = icmp eq ptr %.pr45.i, null
  br i1 %.not.i.i23.i, label %bb.ag, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i
  %i.do = load ptr, ptr %.pr45.i, align 8, !tbaa !149
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr45.i) #35, !inline_history !593
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !551
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #37
  unreachable

bb.ai:                                            ; preds = %bb.n
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #37
  unreachable

.body.i:                                          ; preds = %.thread, %.thread.i.i.i, %bb.ae
  %.pn13.i.i.i89 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread ], [ %.pn13.i.i.i, %.thread.i.i.i ], [ %.pn13.i.i.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i

bb.ak:                                            ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !551 ; 3 uses
  %.not.i.i25.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i25.i, label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i: ; preds = %bb.ak
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !149
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #35, !inline_history !593
  br label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i

_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i unwind label %bb.al

bb.al:                                            ; preds = %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #37
  unreachable

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i: ; preds = %bb.aj, %.body.i
  %.pn17.pn.pn.ph.i = phi { ptr, i32 } [ %i.dy, %bb.aj ], [ %.pn13.i.i.i89, %.body.i ]
  %i.eg = load ptr, ptr %i.ar, align 8, !tbaa !149
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #35, !inline_history !594
  br label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i, %bb.n
  %.pn17.pn.pn.pn.i = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %.pn17.pn.pn.ph.i, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i ], [ %i.dz, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn17.pn.pn.pn.i

"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit": ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i, %bb.ag
  %.115.i = phi ptr [ %.014.i, %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i ], [ %i.dt, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.ej = load ptr, ptr %.115.i, align 8, !tbaa !564
  %i.ek = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store ptr %i.ej, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.am:                                            ; preds = %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %.054, i64 8
  store i32 %i.em, ptr %.054, align 8, !tbaa !31
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit", %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.5.1 = phi i8 [ %.sroa.5.053, %bb.b ], [ %.sroa.5.053, %bb.c ], [ %.sroa.5.053, %bb.d ], [ %.sroa.5.053, %bb.e ], [ %8, %bb.h ], [ %.sroa.5.053, %bb.i ], [ %.sroa.5.053, %bb.j ], [ %.sroa.5.053, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" ], [ %.sroa.5.053, %bb.am ]
  %.1 = phi ptr [ %.054, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.r, %bb.h ], [ %i.v, %bb.i ], [ %i.x, %bb.j ], [ %i.ek, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" ], [ %i.en, %bb.am ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eo, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK6google8protobuf10Reflection18CreateTcParseTableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5.i.i28.i.i.i = alloca { i32, float, i16, i8, i8, i8, i8, i8 }, align 8 ; 4 uses
  %1 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::FieldOptions", align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i = alloca { i32, float, i16, i8, i8, i8, i8, i8 }, align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca { i32, float, i16, i8, i8, i8, i8, i8 }, align 8 ; 4 uses
  %2 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::FieldOptions", align 8 ; 4 uses
  %3 = alloca %"struct.google::protobuf::internal::TailCallTableInfo", align 8 ; 20 uses
  %4 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::MessageOptions", align 1 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204  ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #40
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge", label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit: ; preds = %bb.b
  %i.g = mul nuw nsw i64 %i.e, 24
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #38 ; 5 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !204
  %i.j = icmp sgt i32 %.pre, 0
  br i1 %i.j, label %.lr.ph, label %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge"

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit
  %.not.i.i = icmp eq ptr %.sroa.0155.3, %.sroa.15.2
  br i1 %.not.i.i, label %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge", label %bb.c

"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge": ; preds = %bb.b, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit, %._crit_edge
  %.sroa.0155.0.lcssa281 = phi ptr [ %.sroa.0155.3, %._crit_edge ], [ %i.h, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit ], [ null, %bb.b ] ; 2 uses
  %.sroa.15.0.lcssa278 = phi ptr [ %.sroa.15.2, %._crit_edge ], [ %i.h, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit ], [ null, %bb.b ] ; 2 uses
  %.sroa.27.0.lcssa275 = phi ptr [ %.sroa.27.3, %._crit_edge ], [ %i.i, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit ], [ null, %bb.b ]
  %.pre229 = ptrtoint ptr %.sroa.15.0.lcssa278 to i64
  %.pre230 = ptrtoint ptr %.sroa.0155.0.lcssa281 to i64 ; 2 uses
  %.pre232 = sub i64 %.pre229, %.pre230
  %.pre234 = sdiv exact i64 %.pre232, 24
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit"

bb.c:                                             ; preds = %._crit_edge
  %i.o = ptrtoint ptr %.sroa.15.2 to i64
  %i.p = ptrtoint ptr %.sroa.0155.3 to i64        ; 6 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = sdiv exact i64 %i.q, 24                  ; 5 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_T1_"(ptr %.sroa.0155.3, ptr nonnull %.sroa.15.2, i64 noundef %i.u)
  %i.v = icmp sgt i64 %i.q, 384
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0155.3, i64 24 ; 2 uses
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.h
  %.sroa.0.020.i.idx.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i, %bb.h ], [ 24, %bb.c ] ; 4 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %bb.h ], [ %.sroa.0155.3, %bb.c ] ; 4 uses
  %.sroa.0.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0155.3, i64 %.sroa.0.020.i.idx.i.i.i ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.0.020.i.ptr.i.i.i, align 8, !tbaa !595 ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.0155.3, align 8, !tbaa !595
  %i.w = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4 ; 2 uses
  %.val.val.i.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !42 ; 2 uses
  %i.x = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 4
  %.val1.val.i.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !42
  %i.y = icmp slt i32 %.val.val.i.i.i.i.i, %.val1.val.i.i.i.i.i
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %i.z = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i, 24
  br i1 %i.z, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0155.3, i64 %.sroa.0.020.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, i64 24, i1 false), !tbaa.struct !598
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !600
  %.val2.i11.i.i.i.i.i = load ptr, ptr %.pn19.i.i.i.i, align 8, !tbaa !595
  %i.ab = getelementptr i8, ptr %.val2.i11.i.i.i.i.i, i64 4
  %.val2.val.i12.i.i.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !42
  %i.ac = icmp slt i32 %.val.val.i.i.i.i.i, %.val2.val.i12.i.i.i.i.i
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.014.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.g ] ; 4 uses
  %.sroa.06.013.i.i.i.i.i = phi ptr [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i.i.i.i, i64 -24 ; 2 uses
  %.val.val.i8.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !42
  %.val2.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !595
  %i.ad = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 4
  %.val2.val.i.i.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !42
  %i.ae = icmp slt i32 %.val.val.i8.i.i.i.i, %.val2.val.i.i.i.i.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !601

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i
  %.sroa.0.020.i.add.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.020.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !602

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i": ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0155.3, i64 384 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.af, %.sroa.15.2
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.al, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %i.af, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i14.i.i.i, i64 16, i1 false), !tbaa.struct !600
  %i.ag = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i, i64 4 ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -24 ; 2 uses
  %.val.val10.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !42
  %.val2.i11.i.i15.i.i.i = load ptr, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !595
  %i.ah = getelementptr i8, ptr %.val2.i11.i.i15.i.i.i, i64 4
  %.val2.val.i12.i.i16.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.ai = icmp slt i32 %.val.val10.i.i.i.i.i, %.val2.val.i12.i.i16.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i"

.lr.ph.i.i21.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i21.i.i.i
  %.sroa.0.014.i.i22.i.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 4 uses
  %.sroa.06.013.i.i23.i.i.i = phi ptr [ %.sroa.0.014.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i22.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %.sroa.0.0.i.i24.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i22.i.i.i, i64 -24 ; 2 uses
  %.val.val.i.i25.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !42
  %.val2.i.i.i26.i.i.i = load ptr, ptr %.sroa.0.0.i.i24.i.i.i, align 8, !tbaa !595
  %i.aj = getelementptr i8, ptr %.val2.i.i.i26.i.i.i, i64 4
  %.val2.val.i.i.i27.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !42
  %i.ak = icmp slt i32 %.val.val.i.i25.i.i.i, %.val2.val.i.i.i27.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i", !llvm.loop !601

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i": ; preds = %.lr.ph.i.i21.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.06.0.lcssa.i.i18.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.014.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i18.i.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx5.i.i19.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i18.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, i64 16, i1 false), !tbaa.struct !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24
  %.not.i20.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i, %.pn
  br i1 %.not.i20.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !603

bb.i:                                             ; preds = %bb.c
  %.not18.i31.i.i.i = icmp eq ptr %.sroa.0155.3, %.pn
  br i1 %.not18.i31.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i32.i.i.i

.lr.ph.i32.i.i.i:                                 ; preds = %bb.i, %bb.o
  %.sroa.0.020.i33.i.i.i = phi ptr [ %.sroa.0.0.i45.i.i.i, %bb.o ], [ %scevgep.i.i.i, %bb.i ] ; 8 uses
  %.pn19.i34.i.i.i = phi ptr [ %.sroa.0.020.i33.i.i.i, %bb.o ], [ %.sroa.0155.3, %bb.i ] ; 5 uses
  %.val.i.i35.i.i.i = load ptr, ptr %.sroa.0.020.i33.i.i.i, align 8, !tbaa !595 ; 2 uses
  %.val1.i.i36.i.i.i = load ptr, ptr %.sroa.0155.3, align 8, !tbaa !595
  %i.am = getelementptr i8, ptr %.val.i.i35.i.i.i, i64 4 ; 2 uses
  %.val.val.i.i37.i.i.i = load i32, ptr %i.am, align 4, !tbaa !42 ; 2 uses
  %i.an = getelementptr i8, ptr %.val1.i.i36.i.i.i, i64 4
  %.val1.val.i.i38.i.i.i = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ao = icmp slt i32 %.val.val.i.i37.i.i.i, %.val1.val.i.i38.i.i.i
end_hunk_1
begin_hunk_2_@_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_:bb.a
  %i.bc = load i32, ptr %i.n, align 4, !tbaa !3
  store i32 %i.bc, ptr %i.o, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %.1.i = phi i64 [ %i.m, %bb.d ], [ %.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.bd = icmp sgt i64 %.1.i, %.08
  br i1 %i.bd, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.f
  %.019.i.i = phi i64 [ %.0920.i.i, %bb.f ], [ %.1.i, %bb.e ] ; 3 uses
  %.0920.in.i.i = add nsw i64 %.019.i.i, -1
  %.0920.i.i = sdiv i64 %.0920.in.i.i, 2          ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0920.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = icmp slt i32 %i.bf, %i.an
  br i1 %i.bg, label %bb.f, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.019.i.i
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !3
  %i.bi = icmp sgt i64 %.0920.i.i, %.08
  br i1 %i.bi, label %.lr.ph.i.i, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, !llvm.loop !758

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit: ; preds = %.lr.ph.i.i, %bb.f, %bb.e
  %.0.lcssa.i.i = phi i64 [ %.1.i, %bb.e ], [ %.0920.i.i, %bb.f ], [ %.019.i.i, %.lr.ph.i.i ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.0.lcssa.i.i
  store i32 %i.an, ptr %i.bj, align 4, !tbaa !3
  %.not = icmp eq i64 %.08, 0
  %i.bk = add nsw i64 %.08, -1
  br i1 %.not, label %.loopexit, label %.split, !llvm.loop !766

.loopexit:                                        ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit.us, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_less_iterEEvT_T0_SA_T1_T2_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #27

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.222") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 3 uses
  tail call void @llvm.prefetch.p0(ptr %i.b, i32 0, i32 1, i32 1)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %2, align 8, !tbaa !94     ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = xor i64 %i.e, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.g = mul i64 %i.f, -2543921745674291987
  %i.h = tail call noundef i64 @llvm.bswap.i64(i64 %i.g)
  %i.i = xor i64 %i.h, %i.e
  %i.j = mul i64 %i.i, -2543921745674291987
  %i.k = tail call noundef i64 @llvm.bswap.i64(i64 %i.j)
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !94   ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.n = xor i64 %i.k, %i.m
  %i.o = mul i64 %i.n, -2543921745674291987
  %i.p = tail call noundef i64 @llvm.bswap.i64(i64 %i.o)
  %i.q = xor i64 %i.p, %i.m
  %i.r = mul i64 %i.q, -2543921745674291987
  %i.s = tail call noundef i64 @llvm.bswap.i64(i64 %i.r) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32, !noalias !767
  %i.v = and i64 %i.u, 65535
  %i.w = load i64, ptr %1, align 8, !tbaa !27, !noalias !767 ; 3 uses
  %i.x = lshr i64 %i.s, 7
  %i.y = xor i64 %i.x, %i.v
  %i.z = trunc i64 %i.s to i8
  %i.aa = and i8 %i.z, 127
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.ab, align 8, !tbaa !31 ; 2 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.aa, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.pn = phi i64 [ %i.y, %bb.a ], [ %i.bh, %bb.c ]
  %.sroa.15.0 = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.c ] ; 2 uses
  %.sroa.7.0 = and i64 %.pn, %i.w                 ; 5 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.sroa.7.0
  tail call void @llvm.prefetch.p0(ptr %i.ae, i32 0, i32 3, i32 1)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.7.0
  %i.ag = load <16 x i8>, ptr %i.af, align 1, !tbaa !31 ; 2 uses
  %i.ah = icmp eq <16 x i8> %i.ad, %i.ag
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not58 = icmp eq i16 %i.ai, 0
  br i1 %.not58, label %.critedge18, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.critedge
  %.sroa.033.059 = phi i16 [ %i.av, %.critedge ], [ %i.ai, %bb.b ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.033.059, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.7.0, %i.ak
  %i.am = and i64 %i.al, %i.w                     ; 2 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %i.am ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !546
  %i.ap = icmp eq ptr %i.ao, %i.d
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = icmp eq ptr %i.ar, %i.l
  %i.at = select i1 %i.ap, i1 %i.as, i1 false
  br i1 %i.at, label %.critedge20, label %.critedge, !prof !7

.critedge:                                        ; preds = %.lr.ph
  %i.au = add i16 %.sroa.033.059, -1
  %i.av = and i16 %i.au, %.sroa.033.059           ; 2 uses
  %.not = icmp eq i16 %i.av, 0
  br i1 %.not, label %.critedge18, label %.lr.ph

.critedge18:                                      ; preds = %.critedge, %bb.b
  %i.aw = icmp eq <16 x i8> %i.ag, splat (i8 -128)
  %i.ax = bitcast <16 x i1> %i.aw to i16          ; 2 uses
  %.not51 = icmp eq i16 %i.ax, 0
  br i1 %.not51, label %bb.c, label %.thread, !prof !38

.thread:                                          ; preds = %.critedge18
  %i.ay = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ax, i1 true)
  %i.az = zext nneg i16 %i.ay to i64
  %i.ba = add i64 %.sroa.7.0, %i.az
  %i.bb = and i64 %i.ba, %i.w
  %i.bc = tail call noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(72) @_ZZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE18GetPolicyFunctionsEvE5value, i64 noundef %i.s, i64 %i.bb, i64 %.sroa.15.0) ; 2 uses
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !31, !nonnull !50, !noundef !50
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  %.sroa.0.0.copyload.i.i.i.i22 = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i.i22, i64 %i.bc
  br label %bb.d

bb.c:                                             ; preds = %.critedge18
  %i.bg = add i64 %.sroa.15.0, 16                 ; 2 uses
  %i.bh = add i64 %i.bg, %.sroa.7.0
  br label %bb.b

.critedge20:                                      ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.am
  br label %bb.d

bb.d:                                             ; preds = %.thread, %.critedge20
  %.sink76 = phi ptr [ %i.be, %.thread ], [ %i.bi, %.critedge20 ]
  %.sink75 = phi ptr [ %i.bf, %.thread ], [ %i.an, %.critedge20 ]
  %.sink = phi i8 [ 1, %.thread ], [ 0, %.critedge20 ]
  store ptr %.sink76, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink75, ptr %.sroa.4.0..sroa_idx, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %.sink, ptr %i.bj, align 8, !tbaa !584
  ret void
}

declare noundef ptr @_ZN4absl12lts_2025051218container_internal19GetRefForEmptyClassERNS1_12CommonFieldsE(ptr noundef nonnull align 8 dereferenceable(32)) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN4absl12lts_2025051218container_internal18hash_policy_traitsINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEEvE28hash_slot_fn_non_type_erasedINS0_13hash_internal4HashIS7_EEEEmS6_Pv(ptr noundef %0, ptr noundef %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %1, align 8, !tbaa !94
  %i.c = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.d = xor i64 %i.c, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.e = mul i64 %i.d, -2543921745674291987
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = xor i64 %i.f, %i.c
  %i.h = mul i64 %i.g, -2543921745674291987
  %i.i = tail call noundef i64 @llvm.bswap.i64(i64 %i.h)
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !94
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = xor i64 %i.i, %i.k
  %i.m = mul i64 %i.l, -2543921745674291987
  %i.n = tail call noundef i64 @llvm.bswap.i64(i64 %i.m)
  %i.o = xor i64 %i.n, %i.k
  %i.p = mul i64 %i.o, -2543921745674291987
  %i.q = tail call noundef i64 @llvm.bswap.i64(i64 %i.p)
  ret i64 %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE19transfer_n_slots_fnEPvSQ_SQ_m(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !551
  store i64 %i.c, ptr %i.a, align 8, !tbaa !551
  store ptr null, ptr %i.b, align 8, !tbaa !551
  %i.d = add nsw i64 %3, -1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.014.unr = phi i64 [ %3, %.lr.ph.preheader ], [ %i.d, %.lr.ph.prol ]
  %.0913.unr.a = phi ptr [ %1, %.lr.ph.preheader ], [ %i.f, %.lr.ph.prol ]
  %.01012.unr.a = phi ptr [ %2, %.lr.ph.preheader ], [ %i.e, %.lr.ph.prol ]
  %i.g = icmp eq i64 %3, 1
  br i1 %i.g, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.014 = phi i64 [ %i.p, %.lr.ph ], [ %.014.unr, %.lr.ph.prol.loopexit ]
  %.0913 = phi ptr [ %i.r, %.lr.ph ], [ %.0913.unr.a, %.lr.ph.prol.loopexit ] ; 5 uses
  %.01012 = phi ptr [ %i.q, %.lr.ph ], [ %.01012.unr.a, %.lr.ph.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0913, ptr noundef nonnull align 8 dereferenceable(24) %.01012, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %.0913, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %.01012, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !551
  store i64 %i.j, ptr %i.h, align 8, !tbaa !551
  store ptr null, ptr %i.i, align 8, !tbaa !551
  %i.k = getelementptr inbounds nuw i8, ptr %.01012, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %.0913, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 16, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %.0913, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %.01012, i64 40 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !551
  store i64 %i.o, ptr %i.m, align 8, !tbaa !551
  store ptr null, ptr %i.n, align 8, !tbaa !551
  %i.p = add i64 %.014, -2                        ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.01012, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %.0913, i64 48
  %.not.1 = icmp eq i64 %i.p, 0
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !770

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef ptr @_ZN4absl12lts_2025051218container_internal20AllocateBackingArrayILm8ESaIcEEEPvS4_m(ptr noundef %0, i64 noundef %1) #11 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add i64 %1, 7                            ; 2 uses
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %.noexc.i, label %_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !38

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #40
  unreachable

_ZN4absl12lts_2025051218container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.c = and i64 %i.a, 9223372036854775800
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #38
  ret ptr %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE46transfer_unprobed_elements_to_next_capacity_fnERNS1_12CommonFieldsEPKNS1_6ctrl_tEPvSV_PFvSV_hmmE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #26 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !27     ; 4 uses
  %i.b = lshr i64 %i.a, 1                         ; 4 uses
  %i.c = and i64 %i.a, 30
  %i.d = icmp eq i64 %i.c, 30
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !32
  %i.j = and i64 %i.i, 65535
  %i.k = and i64 %i.b, 9223372036854775792
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge
  ret void

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.062 = phi i64 [ 0, %bb.a ], [ %i.s, %._crit_edge ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.062
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.062 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.n, i8 -128, i64 16, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.p, i8 -128, i64 16, i1 false)
  %i.q = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not60 = icmp eq i16 %i.r, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.c
  %i.s = add nuw i64 %.062, 16                    ; 2 uses
  %i.t = icmp ult i64 %i.s, %i.b
  br i1 %i.t, label %bb.c, label %bb.b, !llvm.loop !771

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.sroa.054.061 = phi i16 [ %i.bo, %bb.i ], [ %i.r, %bb.c ] ; 3 uses
  %i.u = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.054.061, i1 true)
  %i.v = zext nneg i16 %i.u to i64
  %i.w = or disjoint i64 %.062, %i.v              ; 4 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.w ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !94
  %i.aa = ptrtoint ptr %i.z to i64                ; 2 uses
  %i.ab = xor i64 %i.aa, ptrtoint (ptr @_ZN4absl12lts_2025051213hash_internal15MixingHashState5kSeedE to i64)
  %i.ac = mul i64 %i.ab, -2543921745674291987
  %i.ad = tail call noundef i64 @llvm.bswap.i64(i64 %i.ac)
  %i.ae = xor i64 %i.ad, %i.aa
  %i.af = mul i64 %i.ae, -2543921745674291987
  %i.ag = tail call noundef i64 @llvm.bswap.i64(i64 %i.af)
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !94
  %i.ai = ptrtoint ptr %i.ah to i64               ; 2 uses
  %i.aj = xor i64 %i.ag, %i.ai
  %i.ak = mul i64 %i.aj, -2543921745674291987
  %i.al = tail call noundef i64 @llvm.bswap.i64(i64 %i.ak)
  %i.am = xor i64 %i.al, %i.ai
  %i.an = mul i64 %i.am, -2543921745674291987
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an) ; 2 uses
  %i.ap = lshr i64 %i.ao, 7
  %i.aq = xor i64 %i.ap, %i.j                     ; 5 uses
  %i.ar = trunc i64 %i.ao to i8
  %i.as = and i8 %i.ar, 127                       ; 2 uses
  %i.at = sub i64 %i.w, %i.aq                     ; 2 uses
  %i.au = and i64 %i.k, %i.at
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.d, label %bb.e, !prof !7

bb.d:                                             ; preds = %.lr.ph
  %i.aw = and i64 %i.at, 15
  %i.ax = add nuw nsw i64 %i.aw, %i.aq
  %i.ay = and i64 %i.ax, %i.a
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.e:                                             ; preds = %.lr.ph
  %i.az = and i64 %i.aq, %i.b
  %.not.i = icmp ult i64 %i.az, %i.w
  br i1 %.not.i, label %bb.f, label %bb.h, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.ba = and i64 %i.aq, %i.a                     ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ba
  %i.bc = load <16 x i8>, ptr %i.bb, align 1, !tbaa !31
  %i.bd = icmp slt <16 x i8> %i.bc, zeroinitializer
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %.not26.i = icmp eq i16 %i.be, 0
  br i1 %.not26.i, label %bb.h, label %bb.g, !prof !38

bb.g:                                             ; preds = %bb.f
  %i.bf = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.be, i1 true)
  %i.bg = zext nneg i16 %i.bf to i64
  %i.bh = add nuw nsw i64 %i.ba, %i.bg
  br label %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit

bb.h:                                             ; preds = %bb.f, %bb.e
  tail call void %4(ptr noundef %3, i8 noundef zeroext %i.as, i64 noundef %i.w, i64 noundef %i.aq)
  br label %bb.i

_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit: ; preds = %bb.g, %bb.d
  %.2.i = phi i64 [ %i.bh, %bb.g ], [ %i.ay, %bb.d ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 %.2.i
  store i8 %i.as, ptr %i.bi, align 1, !tbaa !772
  %i.bj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload.i.i.i, i64 %.2.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bj, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 16, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !551
  store i64 %i.bm, ptr %i.bk, align 8, !tbaa !551
  store ptr null, ptr %i.bl, align 8, !tbaa !551
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_2025051218container_internal29TryFindNewIndexWithoutProbingIvEEmmmmPNS1_6ctrl_tEm.exit, %bb.h
  %i.bn = add i16 %.sroa.054.061, -1
  %i.bo = and i16 %i.bn, %.sroa.054.061           ; 2 uses
  %.not = icmp eq i16 %i.bo, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef i64 @_ZN4absl12lts_2025051218container_internal19PrepareInsertNonSooERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEmNS1_8FindInfoE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(72), i64 noundef, i64, i64) local_unnamed_addr #3

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringIllEEPKcT_T0_S4_(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf14DescriptorPool24InternalAddGeneratedFileEPKvi(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN6google8protobuf14MessageFactory29InternalRegisterGeneratedFileEPKNS0_8internal15DescriptorTableE(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #30

declare void @_ZN6google8protobuf8internal12ExtensionSet24RegisterMessageExtensionEPKNS0_11MessageLiteEihbbS5_PFPKcS7_PNS1_12ParseContextEENS1_14LazyAnnotationE(ptr noundef, i32 noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #30

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #30

declare noundef zeroext i1 @_ZN6google8protobuf8internal3cpp23IsLazilyInitializedFileESt17basic_string_viewIcSt11char_traitsIcEE(i64, ptr) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf14DescriptorPool14generated_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %3 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 5 uses
  %4 = alloca %"struct.google::protobuf::internal::ReflectionSchema", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !774
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 80
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !775
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.r, label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !776
  %i.i = getelementptr inbounds nuw [160 x i8], ptr %i.h, i64 %indvars.iv
  tail call void @_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %i.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !774
end_hunk_2
