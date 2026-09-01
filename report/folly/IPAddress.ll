Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/IPAddress?download=true
inline.NumInlined: 1528
inline.NumDeleted: 719
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN5follyeqERKNS_9IPAddressES2_:bb.a
  ]

_ZNK5folly9IPAddress4asV6Ev.exit22:               ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i128, ptr %0, align 4
  %i.j = load i128, ptr %1, align 4
  %i.k = icmp ne i128 %i.i, %i.j
  %i.l = zext i1 %i.k to i32
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  %i.m = load i16, ptr %i.g, align 4
  %i.n = load i16, ptr %i.h, align 4
  %i.o = icmp eq i16 %i.m, %i.n
  %i.p = select i1 %.not9.i.i.i.i.i.i.i.i, i1 %i.o, i1 false
  br label %._crit_edge

_ZNK5folly9IPAddress4asV4Ev.exit23:               ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %0, align 4, !tbaa !100
  %.sroa.0.0.copyload.i.i2.i = load i32, ptr %1, align 4, !tbaa !100
  %i.q = icmp eq i32 %.sroa.0.0.copyload.i.i.i, %.sroa.0.0.copyload.i.i2.i
  br label %._crit_edge

_ZN6google12Check_EQImplItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i16 %i.d, ptr %i.a, align 2, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i32 0, ptr %i.b, align 4, !tbaa !100
  %i.r = call noundef ptr @_ZN6google17MakeCheckOpStringItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.59) ; 2 uses
  store ptr %i.r, ptr %2, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN6google12Check_EQImplItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %._crit_edge

bb.e:                                             ; preds = %_ZN6google12Check_EQImplItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.11, i32 noundef 405, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.s = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.f unwind label %bb.g       ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #36
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #36
  unreachable

bb.h:                                             ; preds = %bb.b
  %i.u = icmp eq i16 %i.d, 10
  br i1 %i.u, label %_ZNK5folly9IPAddress12isIPv4MappedEv.exit, label %thread-pre-split

_ZNK5folly9IPAddress12isIPv4MappedEv.exit:        ; preds = %bb.h
  %i.v = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(22) %0)
  %.pr.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !12 ; 2 uses
  %i.w = icmp eq i16 %.pr.pre, 2
  %or.cond = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond, label %bb.i, label %thread-pre-split

bb.i:                                             ; preds = %_ZNK5folly9IPAddress12isIPv4MappedEv.exit
  %i.x = load i16, ptr %i.c, align 4, !tbaa !12
  switch i16 %i.x, label %bb.j [
    i16 2, label %_ZN5folly9IPAddress10createIPv4ERKS0_.exit.thread
    i16 10, label %_ZN5folly9IPAddress10createIPv4ERKS0_.exit
  ], !prof !87

_ZN5folly9IPAddress10createIPv4ERKS0_.exit.thread: ; preds = %bb.i
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4, !tbaa !15
  br label %_ZNK5folly9IPAddress4asV4Ev.exit25

bb.j:                                             ; preds = %bb.i
  tail call void @_ZNK5folly9IPAddress9asV6ThrowEv(ptr noundef nonnull align 4 dereferenceable(22) %0) #37
  unreachable

_ZN5folly9IPAddress10createIPv4ERKS0_.exit:       ; preds = %bb.i
  %i.y = tail call i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(22) %0)
  %.pre40 = load i16, ptr %.phi.trans.insert, align 4, !tbaa !12
  %i.z = icmp eq i16 %.pre40, 2
  br i1 %i.z, label %_ZNK5folly9IPAddress4asV4Ev.exit25, label %bb.k, !prof !368

bb.k:                                             ; preds = %_ZN5folly9IPAddress10createIPv4ERKS0_.exit
  tail call void @_ZNK5folly9IPAddress9asV4ThrowEv(ptr noundef nonnull align 4 dereferenceable(22) %1) #37
  unreachable

_ZNK5folly9IPAddress4asV4Ev.exit25:               ; preds = %_ZN5folly9IPAddress10createIPv4ERKS0_.exit.thread, %_ZN5folly9IPAddress10createIPv4ERKS0_.exit
  %.sroa.0.0.i45 = phi i32 [ %.sroa.0.0.copyload.i, %_ZN5folly9IPAddress10createIPv4ERKS0_.exit.thread ], [ %i.y, %_ZN5folly9IPAddress10createIPv4ERKS0_.exit ]
  %.sroa.0.0.copyload.i.i2.i27 = load i32, ptr %1, align 4, !tbaa !100
  %i.aa = icmp eq i32 %.sroa.0.0.i45, %.sroa.0.0.copyload.i.i2.i27
  br i1 %i.aa, label %._crit_edge, label %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread

thread-pre-split:                                 ; preds = %_ZNK5folly9IPAddress12isIPv4MappedEv.exit, %bb.h
  %i.ab = phi i16 [ %.pr.pre, %_ZNK5folly9IPAddress12isIPv4MappedEv.exit ], [ %.pre41, %bb.h ]
  %i.ac = icmp eq i16 %i.ab, 10
  br i1 %i.ac, label %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29, label %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread

_ZNK5folly9IPAddress12isIPv4MappedEv.exit29:      ; preds = %thread-pre-split
  %i.ad = tail call noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(22) %1)
  br i1 %i.ad, label %bb.l, label %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread

bb.l:                                             ; preds = %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29
  %i.ae = load i16, ptr %i.c, align 4, !tbaa !12
  %i.af = icmp eq i16 %i.ae, 2
  br i1 %i.af, label %bb.m, label %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread

bb.m:                                             ; preds = %bb.l
  %i.ag = load i16, ptr %.phi.trans.insert, align 4, !tbaa !12
  switch i16 %i.ag, label %bb.n [
    i16 2, label %_ZN5folly9IPAddress10createIPv4ERKS0_.exit34.thread
    i16 10, label %_ZN5folly9IPAddress10createIPv4ERKS0_.exit34
  ], !prof !87

_ZN5folly9IPAddress10createIPv4ERKS0_.exit34.thread: ; preds = %bb.m
  %.sroa.0.0.copyload.i33 = load i32, ptr %1, align 4, !tbaa !15
  br label %_ZNK5folly9IPAddress4asV4Ev.exit35

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNK5folly9IPAddress9asV6ThrowEv(ptr noundef nonnull align 4 dereferenceable(22) %1) #37
  unreachable

_ZN5folly9IPAddress10createIPv4ERKS0_.exit34:     ; preds = %bb.m
  %i.ah = tail call i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(22) %1)
  %.pre = load i16, ptr %i.c, align 4, !tbaa !12
  %i.ai = icmp eq i16 %.pre, 2
  br i1 %i.ai, label %_ZNK5folly9IPAddress4asV4Ev.exit35, label %bb.o, !prof !368

bb.o:                                             ; preds = %_ZN5folly9IPAddress10createIPv4ERKS0_.exit34
  tail call void @_ZNK5folly9IPAddress9asV4ThrowEv(ptr noundef nonnull align 4 dereferenceable(22) %0) #37
  unreachable

_ZNK5folly9IPAddress4asV4Ev.exit35:               ; preds = %_ZN5folly9IPAddress10createIPv4ERKS0_.exit34.thread, %_ZN5folly9IPAddress10createIPv4ERKS0_.exit34
  %.sroa.0.0.i3147 = phi i32 [ %.sroa.0.0.copyload.i33, %_ZN5folly9IPAddress10createIPv4ERKS0_.exit34.thread ], [ %i.ah, %_ZN5folly9IPAddress10createIPv4ERKS0_.exit34 ]
  %.sroa.0.0.copyload.i.i2.i37 = load i32, ptr %0, align 4, !tbaa !100
  %i.aj = icmp eq i32 %.sroa.0.0.i3147, %.sroa.0.0.copyload.i.i2.i37
  br i1 %i.aj, label %._crit_edge, label %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread

_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread: ; preds = %_ZNK5folly9IPAddress4asV4Ev.exit25, %thread-pre-split, %_ZNK5folly9IPAddress4asV4Ev.exit35, %bb.l, %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %_ZNK5folly9IPAddress4asV4Ev.exit35, %_ZNK5folly9IPAddress4asV4Ev.exit25, %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread, %bb.d, %_ZNK5folly9IPAddress4asV4Ev.exit23, %_ZNK5folly9IPAddress4asV6Ev.exit22
  %.0 = phi i1 [ true, %_ZNK5folly9IPAddress4asV4Ev.exit35 ], [ %i.p, %_ZNK5folly9IPAddress4asV6Ev.exit22 ], [ %i.q, %_ZNK5folly9IPAddress4asV4Ev.exit23 ], [ true, %bb.d ], [ false, %_ZNK5folly9IPAddress12isIPv4MappedEv.exit29.thread ], [ true, %_ZNK5folly9IPAddress4asV4Ev.exit25 ], [ %.not48.mux, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 2 dereferenceable(2) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #15 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !314
  %i.b = load i16, ptr %0, align 2, !tbaa !89
  %i.c = zext i16 %i.b to i64
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.c)
          to label %_ZN6google22MakeCheckOpValueStringItEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringItEEvPSoRKT_.exit: ; preds = %bb.a
  %i.e = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringItEEvPSoRKT_.exit
  %i.f = load i32, ptr %1, align 4, !tbaa !100
  %i.g = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.e, i32 noundef %i.f)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.b
  %i.h = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  ret ptr %i.h

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringItEEvPSoRKT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %i.i
}

declare noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(18)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define range(i8 -1, 2) i8 @_ZN5follyssERKNS_9IPAddressES2_(ptr noundef nonnull align 4 dereferenceable(22) %0, ptr noundef nonnull align 4 dereferenceable(22) %1) local_unnamed_addr #20 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.google::LogMessageFatal", align 8 ; 4 uses
  %4 = alloca %"class.folly::IPAddressV6", align 4 ; 7 uses
  %5 = alloca %"class.folly::IPAddressV6", align 4 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 4 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !12   ; 7 uses
  %i.e = icmp eq i16 %i.d, 0                      ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 4 uses
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !12 ; 3 uses
  %i.f = icmp eq i16 %.pre, 0                     ; 2 uses
  %brmerge = select i1 %i.e, i1 true, i1 %i.f
  br i1 %brmerge, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %not. = icmp ne i16 %i.d, 0
  %.mux = select i1 %not., i1 true, i1 %i.f
  %.not65 = icmp eq i16 %i.d, 0
  %i.g = select i1 %.not65, i8 1, i8 -1
  %i.h = xor i1 %i.e, %.mux
  %i.i = select i1 %i.h, i8 %i.g, i8 0
  br label %_ZN5folly12_GLOBAL__N_19compareV6ERKNS_11IPAddressV6ES3_.exit

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i16 %i.d, %.pre
  br i1 %i.j, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  switch i16 %i.d, label %bb.e [
    i16 10, label %_ZNK5folly9IPAddress4asV6Ev.exit27
    i16 2, label %bb.d
  ]

_ZNK5folly9IPAddress4asV6Ev.exit27:               ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i128, ptr %0, align 4
  %i.n = load i128, ptr %1, align 4
  %i.o = icmp ne i128 %i.m, %i.n
  %i.p = zext i1 %i.o to i32
  %.not9.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.p, 0
  %i.q = load i16, ptr %i.k, align 4              ; 2 uses
  %i.r = load i16, ptr %i.l, align 4              ; 2 uses
  %i.s = icmp eq i16 %i.q, %i.r
  %i.t = select i1 %.not9.i.i.i.i.i.i.i.i.i, i1 %i.s, i1 false
  br i1 %i.t, label %_ZN5folly12_GLOBAL__N_19compareV6ERKNS_11IPAddressV6ES3_.exit, label %loadbb

res_block:                                        ; preds = %loadbb65, %loadbb
  %phi.src1 = phi i64 [ %i.y, %loadbb ], [ %i.af, %loadbb65 ]
  %phi.src2 = phi i64 [ %i.z, %loadbb ], [ %i.ag, %loadbb65 ]
  %i.u = icmp ult i64 %phi.src1, %phi.src2
  %i.v = select i1 %i.u, i32 -1, i32 1
  br label %endblock

loadbb:                                           ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit27
  %i.w = load i64, ptr %0, align 4
  %i.x = load i64, ptr %1, align 4
  %i.y = tail call i64 @llvm.bswap.i64(i64 %i.w)  ; 2 uses
  %i.z = tail call i64 @llvm.bswap.i64(i64 %i.x)  ; 2 uses
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %loadbb65, label %res_block

loadbb65:                                         ; preds = %loadbb
  %i.ab = getelementptr i8, ptr %0, i64 8
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load i64, ptr %i.ab, align 4
  %i.ae = load i64, ptr %i.ac, align 4
  %i.af = tail call i64 @llvm.bswap.i64(i64 %i.ad) ; 2 uses
  %i.ag = tail call i64 @llvm.bswap.i64(i64 %i.ae) ; 2 uses
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb65
  %phi.res = phi i32 [ 0, %loadbb65 ], [ %i.v, %res_block ] ; 2 uses
  %i.ai = icmp eq i32 %phi.res, 0
  %i.aj = icmp ult i16 %i.q, %i.r
  %i.ak = icmp slt i32 %phi.res, 0
  %i.al = select i1 %i.ai, i1 %i.aj, i1 %i.ak
  %.sroa.05.0.copyload6.i = select i1 %i.al, i8 -1, i8 1
  br label %_ZN5folly12_GLOBAL__N_19compareV6ERKNS_11IPAddressV6ES3_.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %0, align 4, !tbaa !100
  %i.am = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i)
  %.sroa.0.0.copyload.i.i.i31 = load i32, ptr %1, align 4, !tbaa !100
  %i.an = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i31)
  %i.ao = tail call i8 @llvm.ucmp.i8.i32(i32 %i.am, i32 %i.an)
  br label %_ZN5folly12_GLOBAL__N_19compareV6ERKNS_11IPAddressV6ES3_.exit

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i16 %i.d, ptr %i.a, align 2, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  store i32 0, ptr %i.b, align 4, !tbaa !100
  %i.ap = invoke noundef ptr @_ZN6google17MakeCheckOpStringItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 2 dereferenceable(2) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.59)
          to label %_ZN6google12Check_EQImplItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit unwind label %bb.x ; 2 uses

_ZN6google12Check_EQImplItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.e
  store ptr %i.ap, ptr %2, align 8, !tbaa !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %.not = icmp eq ptr %i.ap, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6google12Check_EQImplItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  br label %_ZN5folly12_GLOBAL__N_19compareV6ERKNS_11IPAddressV6ES3_.exit

bb.g:                                             ; preds = %_ZN6google12Check_EQImplItiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #35
  invoke void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull @.str.11, i32 noundef 450, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.x

bb.h:                                             ; preds = %bb.g
  %i.aq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %3)
          to label %bb.i unwind label %bb.x       ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #36
  unreachable

bb.j:                                             ; preds = %bb.b
  %i.ar = icmp eq i16 %i.d, 10
  br i1 %i.ar, label %_ZNK5folly9IPAddress4asV6Ev.exit34, label %bb.q

_ZNK5folly9IPAddress4asV6Ev.exit34:               ; preds = %bb.j
  %i.as = invoke noundef zeroext i1 @_ZNK5folly11IPAddressV612isIPv4MappedEv(ptr noundef nonnull align 4 dereferenceable(18) %0)
          to label %bb.k unwind label %bb.x

bb.k:                                             ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit34
  %i.at = load i16, ptr %i.c, align 4, !tbaa !12  ; 2 uses
  br i1 %i.as, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  switch i16 %i.at, label %.invoke [
    i16 2, label %_ZNK5folly9IPAddress4asV4Ev.exit.i
    i16 10, label %_ZNK5folly9IPAddress4asV6Ev.exit.i
  ], !prof !87

_ZNK5folly9IPAddress4asV4Ev.exit.i:               ; preds = %bb.l
  %.sroa.0.0.copyload.i = load i32, ptr %0, align 4, !tbaa !15
  br label %bb.m

_ZNK5folly9IPAddress4asV6Ev.exit.i:               ; preds = %bb.l
  %i.au = invoke i32 @_ZNK5folly11IPAddressV610createIPv4Ev(ptr noundef nonnull align 4 dereferenceable(22) %0)
          to label %bb.m unwind label %bb.x

bb.m:                                             ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit.i, %_ZNK5folly9IPAddress4asV4Ev.exit.i
  %.sroa.0.0.i = phi i32 [ %.sroa.0.0.copyload.i, %_ZNK5folly9IPAddress4asV4Ev.exit.i ], [ %i.au, %_ZNK5folly9IPAddress4asV6Ev.exit.i ]
  %i.av = load i16, ptr %.phi.trans.insert, align 4, !tbaa !12
  %i.aw = icmp eq i16 %i.av, 2
  br i1 %i.aw, label %bb.n, label %.invoke63, !prof !78

bb.n:                                             ; preds = %bb.m
  %i.ax = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.i)
  %.sroa.0.0.copyload.i.i.i40 = load i32, ptr %1, align 4, !tbaa !100
  %i.ay = tail call noundef i32 @llvm.bswap.i32(i32 %.sroa.0.0.copyload.i.i.i40)
  %i.az = tail call i8 @llvm.ucmp.i8.i32(i32 %i.ax, i32 %i.ay)
  br label %_ZN5folly12_GLOBAL__N_19compareV6ERKNS_11IPAddressV6ES3_.exit

bb.o:                                             ; preds = %bb.k
  %i.ba = icmp eq i16 %i.at, 10
  br i1 %i.ba, label %_ZNK5folly9IPAddress4asV6Ev.exit42, label %.invoke, !prof !78

_ZNK5folly9IPAddress4asV6Ev.exit42:               ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #35
  %i.bb = load i16, ptr %.phi.trans.insert, align 4, !tbaa !12
  %i.bc = icmp eq i16 %i.bb, 2
  br i1 %i.bc, label %_ZNK5folly9IPAddress4asV4Ev.exit44, label %.invoke63, !prof !78

_ZNK5folly9IPAddress4asV4Ev.exit44:               ; preds = %_ZNK5folly9IPAddress4asV6Ev.exit42
  invoke void @_ZNK5folly11IPAddressV410createIPv6Ev(ptr dead_on_unwind nonnull writable sret(%"class.folly::IPAddressV6") align 4 %4, ptr noundef nonnull align 4 dereferenceable(4) %1)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %_ZNK5folly9IPAddress4asV4Ev.exit44
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load i128, ptr %0, align 4
  %i.bg = load i128, ptr %4, align 4
  %i.bh = icmp ne i128 %i.bf, %i.bg
  %i.bi = zext i1 %i.bh to i32
  %.not9.i.i.i.i.i.i.i.i.i46 = icmp eq i32 %i.bi, 0
  %i.bj = load i16, ptr %i.bd, align 4            ; 2 uses
  %i.bk = load i16, ptr %i.be, align 4            ; 2 uses
  %i.bl = icmp eq i16 %i.bj, %i.bk
  %i.bm = select i1 %.not9.i.i.i.i.i.i.i.i.i46, i1 %i.bl, i1 false
  br i1 %i.bm, label %_ZN5folly12_GLOBAL__N_19compareV6ERKNS_11IPAddressV6ES3_.exit50, label %loadbb71

res_block68:                                      ; preds = %loadbb72, %loadbb71
  %phi.src169 = phi i64 [ %i.br, %loadbb71 ], [ %i.by, %loadbb72 ]
  %phi.src270 = phi i64 [ %i.bs, %loadbb71 ], [ %i.bz, %loadbb72 ]
  %i.bn = icmp ult i64 %phi.src169, %phi.src270
  %i.bo = select i1 %i.bn, i32 -1, i32 1
  br label %endblock66

loadbb71:                                         ; preds = %bb.p
  %i.bp = load i64, ptr %0, align 4
  %i.bq = load i64, ptr %4, align 4
  %i.br = call i64 @llvm.bswap.i64(i64 %i.bp)     ; 2 uses
  %i.bs = call i64 @llvm.bswap.i64(i64 %i.bq)     ; 2 uses
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %loadbb72, label %res_block68

loadbb72:                                         ; preds = %loadbb71
  %i.bu = getelementptr i8, ptr %0, i64 8
  %i.bv = getelementptr i8, ptr %4, i64 8
  %i.bw = load i64, ptr %i.bu, align 4
  %i.bx = load i64, ptr %i.bv, align 4
  %i.by = call i64 @llvm.bswap.i64(i64 %i.bw)     ; 2 uses
  %i.bz = call i64 @llvm.bswap.i64(i64 %i.bx)     ; 2 uses
  %i.ca = icmp eq i64 %i.by, %i.bz
  br i1 %i.ca, label %endblock66, label %res_block68

endblock66:                                       ; preds = %res_block68, %loadbb72
  %phi.res67 = phi i32 [ 0, %loadbb72 ], [ %i.bo, %res_block68 ] ; 2 uses
  %i.cb = icmp eq i32 %phi.res67, 0
  %i.cc = icmp ult i16 %i.bj, %i.bk
  %i.cd = icmp slt i32 %phi.res67, 0
end_hunk_0
