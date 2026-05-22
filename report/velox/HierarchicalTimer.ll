inline.NumInlined: 915
inline.NumDeleted: 373
begin_hunk_0_@_ZNK8facebook5velox9TimerNode13averageTimeNsEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.e = load i64, ptr %i.d, align 8, !tbaa !46
  %i.f = udiv i64 %i.e, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox9TimerNode9minTimeNsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load i64, ptr %i.a, align 8, !tbaa !47
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox9TimerNode9maxTimeNsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = load i64, ptr %i.a, align 8, !tbaa !48
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox9TimerNode12averageCpuNsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8, !tbaa !49
  %i.f = udiv i64 %i.e, %i.b
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox9TimerNode8minCpuNsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox9TimerNode8maxCpuNsEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load i64, ptr %i.a, align 8, !tbaa !51
  ret i64 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK8facebook5velox9TimerNode4nameB5cxx11Ev(ptr noundef nonnull readnone returned align 8 captures(ret: address, provenance) dereferenceable(176) %0) local_unnamed_addr #5 align 2 {
bb.a:
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef ptr @_ZNK8facebook5velox9TimerNode6parentEv(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 8 dereferenceable(24) ptr @_ZNK8facebook5velox9TimerNode8childrenEv(ptr noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(176) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9TimerNode6formatERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibmmb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::vector.10", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  store ptr null, ptr %7, align 8, !tbaa !54
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !57
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !54
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !57
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !58
  invoke void @_ZNK8facebook5velox9TimerNode10formatImplERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibmmbRSt6vectorIbSaIbEE(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %7, align 8, !tbaa !54     ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = ashr exact i64 %i.i, 3
  %i.k = sub nsw i64 0, %i.j
  %i.l = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.k
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.i) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit

_ZNSt13_Bvector_baseISaIbEED2Ev.exit:             ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  ret void

bb.d:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %7, align 8, !tbaa !54     ; 2 uses
  %.not.i.i8 = icmp eq ptr %i.n, null
  br i1 %.not.i.i8, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit9, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [8 x i8], ptr %i.o, i64 %i.t
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.r) #27
  br label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit9

_ZNSt13_Bvector_baseISaIbEED2Ev.exit9:            ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define void @_ZNK8facebook5velox9TimerNode10formatImplERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEibmmbRSt6vectorIbSaIbEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i1 noundef zeroext %3, i64 noundef %4, i64 noundef %5, i1 noundef zeroext %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.42", align 16 ; 9 uses
  %11 = alloca %"struct.fmt::v11::detail::format_arg_store.41", align 16 ; 14 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.40", align 16 ; 15 uses
  %13 = alloca %"struct.fmt::v11::detail::format_arg_store.40", align 16 ; 15 uses
  %14 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %15 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %16 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %17 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 4 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 20 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %48 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = icmp sgt i32 %2, 0                       ; 4 uses
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54   ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.c, %i.e
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  %.sroa.2.0.copyload.i11.i = load i32, ptr %.sroa.2.0..sroa_idx.i.i, align 8 ; 4 uses
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = add i32 %.sroa.2.0.copyload.i11.i, 1
  store i32 %i.f, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !57
  %i.g = icmp eq i32 %.sroa.2.0.copyload.i11.i, 63
  br i1 %i.g, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.h, ptr %i.b, align 8, !tbaa !54
  br label %_ZNSt13_Bit_iteratorppEi.exit.i

_ZNSt13_Bit_iteratorppEi.exit.i:                  ; preds = %bb.d, %bb.c
  %i.i = zext nneg i32 %.sroa.2.0.copyload.i11.i to i64
  %i.j = shl nuw i64 1, %i.i                      ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.k = load i64, ptr %i.c, align 8, !tbaa !36
  %i.l = or i64 %i.k, %i.j
  store i64 %i.l, ptr %i.c, align 8, !tbaa !36
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i
  %i.m = xor i64 %i.j, -1
  %i.n = load i64, ptr %i.c, align 8, !tbaa !36
  %i.o = and i64 %i.n, %i.m
  store i64 %i.o, ptr %i.c, align 8, !tbaa !36
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

bb.g:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %7, ptr %i.c, i32 %.sroa.2.0.copyload.i11.i, i1 noundef zeroext %3)
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit

_ZNSt6vectorIbSaIbEE9push_backEb.exit:            ; preds = %bb.g, %bb.f, %bb.e, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  call fastcc void @_ZN8facebook5velox12_GLOBAL__N_111buildPrefixB5cxx11ERKSt6vectorIbSaIbEE(ptr dead_on_unwind noalias writable align 8 %18, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !46
  invoke void @_ZN8facebook5velox13succinctNanosB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, i64 noundef %i.q, i32 noundef 2)
          to label %bb.h unwind label %bb.ae

bb.h:                                             ; preds = %_ZNSt6vectorIbSaIbEE9push_backEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #13
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 6 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !49
  invoke void @_ZN8facebook5velox13succinctNanosB5cxx11Emi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %20, i64 noundef %i.s, i32 noundef 2)
          to label %bb.i unwind label %bb.af

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #13
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !52   ; 6 uses
  %.not = icmp eq i64 %i.u, 0
  br i1 %.not, label %._crit_edge.i.i159, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !61)
  %i.v = icmp ult i64 %i.u, 10
  br i1 %i.v, label %.thread.i, label %.lr.ph.i.i

.thread.i:                                        ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.w, ptr %21, align 8, !tbaa !7, !alias.scope !61
  br label %bb.r

.lr.ph.i.i:                                       ; preds = %bb.j, %bb.p
  %.02229.i.i = phi i64 [ %i.ad, %bb.p ], [ %i.u, %bb.j ] ; 5 uses
  %.02328.i.i = phi i32 [ %i.ae, %bb.p ], [ 1, %bb.j ] ; 4 uses
  %i.x = icmp ult i64 %.02229.i.i, 100
  br i1 %i.x, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.y = add i32 %.02328.i.i, 1
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.l:                                             ; preds = %.lr.ph.i.i
  %i.z = icmp ult i64 %.02229.i.i, 1000
  br i1 %i.z, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aa = add i32 %.02328.i.i, 2
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.n:                                             ; preds = %bb.l
  %i.ab = icmp ult i64 %.02229.i.i, 10000
  br i1 %i.ab, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ac = add i32 %.02328.i.i, 3
  br label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ad = udiv i64 %.02229.i.i, 10000
  %i.ae = add i32 %.02328.i.i, 4                  ; 2 uses
  %i.af = icmp ult i64 %.02229.i.i, 100000
  br i1 %i.af, label %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i, label %.lr.ph.i.i, !llvm.loop !64

_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i:    ; preds = %bb.p, %bb.o, %bb.m, %bb.k
  %.0.i.i = phi i32 [ %i.ac, %bb.o ], [ %i.y, %bb.k ], [ %i.aa, %bb.m ], [ %i.ae, %bb.p ] ; 3 uses
  %i.ag = zext i32 %.0.i.i to i64                 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 5 uses
  store ptr %i.ah, ptr %21, align 8, !tbaa !7, !alias.scope !61
  %i.ai = icmp ugt i32 %.0.i.i, 15
  br i1 %i.ai, label %.noexc.i, label %bb.q

.noexc.i:                                         ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  %i.aj = add nuw nsw i64 %i.ag, 1
  %i.ak = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #26
          to label %.noexc158 unwind label %bb.ag ; 2 uses

.noexc158:                                        ; preds = %.noexc.i
  store ptr %i.ak, ptr %21, align 8, !tbaa !11, !alias.scope !61
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !16, !alias.scope !61
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt8__detail14__to_chars_lenImEEjT_i.exit.i
  switch i32 %.0.i.i, label %bb.s [
    i32 0, label %bb.t
    i32 1, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %.thread.i
  %i.al = phi ptr [ %i.w, %.thread.i ], [ %i.ah, %bb.q ] ; 2 uses
  store i8 0, ptr %i.al, align 1, !tbaa !16, !alias.scope !61
  br label %bb.t

bb.s:                                             ; preds = %bb.q, %.noexc158
  %i.am = phi ptr [ %i.ak, %.noexc158 ], [ %i.ah, %bb.q ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.am, i8 0, i64 %i.ag, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.an = phi i64 [ 0, %bb.q ], [ %i.ag, %bb.s ], [ 1, %bb.r ] ; 2 uses
  %i.ao = phi ptr [ %i.ah, %bb.q ], [ %i.am, %bb.s ], [ %i.al, %bb.r ]
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 2 uses
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !14, !alias.scope !61
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 0, ptr %i.aq, align 1, !tbaa !16
  %i.ar = load ptr, ptr %21, align 8, !tbaa !11, !alias.scope !61 ; 4 uses
  %i.as = icmp ugt i64 %i.u, 99
  br i1 %i.as, label %.lr.ph.preheader.i.i, label %._crit_edge.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.t
  %i.at = load i64, ptr %i.ap, align 8, !tbaa !14, !alias.scope !61
  %i.au = trunc i64 %i.at to i32
  %i.av = add i32 %i.au, -1
  br label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %.lr.ph.i4.i, %.lr.ph.preheader.i.i
  %.020.i.i = phi i64 [ %i.ay, %.lr.ph.i4.i ], [ %i.u, %.lr.ph.preheader.i.i ] ; 3 uses
  %.01819.i.i = phi i32 [ %i.bi, %.lr.ph.i4.i ], [ %i.av, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.aw = urem i64 %.020.i.i, 100
  %i.ax = shl nuw nsw i64 %i.aw, 1
  %i.ay = udiv i64 %.020.i.i, 100                 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.ax ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16, !noalias !61
  %i.bc = zext i32 %.01819.i.i to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bc
  store i8 %i.bb, ptr %i.bd, align 1, !tbaa !16
  %i.be = load i8, ptr %i.az, align 2, !tbaa !16, !noalias !61
  %i.bf = add i32 %.01819.i.i, -1
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  store i8 %i.be, ptr %i.bh, align 1, !tbaa !16
  %i.bi = add i32 %.01819.i.i, -2
  %i.bj = icmp ugt i64 %.020.i.i, 9999
  br i1 %i.bj, label %.lr.ph.i4.i, label %._crit_edge.i.i, !llvm.loop !66

._crit_edge.i.i:                                  ; preds = %.lr.ph.i4.i, %bb.t
  %.0.lcssa.i.i = phi i64 [ %i.u, %bb.t ], [ %i.ay, %.lr.ph.i4.i ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %.0.lcssa.i.i, 9
  br i1 %i.bk, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.bl = shl nuw nsw i64 %.0.lcssa.i.i, 1
  %i.bm = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implImEEvPcjT_.__digits, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16, !noalias !61
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !16
  %i.bq = load i8, ptr %i.bm, align 2, !tbaa !16, !noalias !61
  br label %bb.w

bb.v:                                             ; preds = %._crit_edge.i.i
  %i.br = trunc nuw nsw i64 %.0.lcssa.i.i to i8
  %i.bs = or disjoint i8 %i.br, 48
  br label %bb.w

._crit_edge.i.i159:                               ; preds = %bb.i
  %i.bt = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 2 uses
  store ptr %i.bt, ptr %21, align 8, !tbaa !7
  store i8 45, ptr %i.bt, align 8, !tbaa !16
  %i.bu = getelementptr inbounds nuw i8, ptr %21, i64 8
  store i64 1, ptr %i.bu, align 8, !tbaa !14
  %i.bv = getelementptr inbounds nuw i8, ptr %21, i64 17
  store i8 0, ptr %i.bv, align 1, !tbaa !16
  br label %.critedge

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge.i.i = phi i8 [ %i.bs, %bb.v ], [ %i.bq, %bb.u ]
  store i8 %storemerge.i.i, ptr %i.ar, align 1, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %bb.w, %._crit_edge.i.i159
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.bw = getelementptr inbounds nuw i8, ptr %22, i64 16 ; 8 uses
  store ptr %i.bw, ptr %22, align 8, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 5 uses
  store i64 0, ptr %i.bx, align 8, !tbaa !14
  store i8 0, ptr %i.bw, align 8, !tbaa !16
  %i.by = icmp ne i64 %4, 0
  %or.cond = and i1 %i.a, %i.by
  br i1 %or.cond, label %bb.x, label %bb.ai

bb.x:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  %i.bz = load i64, ptr %i.p, align 8, !tbaa !46
  %i.ca = uitofp i64 %i.bz to double
  %i.cb = fmul nnan double %i.ca, 1.000000e+02
  %i.cc = uitofp i64 %4 to double
  %i.cd = fdiv double %i.cb, %i.cc
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13, !noalias !67
  store double %i.cd, ptr %14, align 16, !tbaa !16, !noalias !67
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr nonnull @.str.1, i64 7, i64 10, ptr nonnull %14)
          to label %bb.y unwind label %bb.ah

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13, !noalias !67
  %i.ce = load ptr, ptr %22, align 8, !tbaa !11   ; 6 uses
  %i.cf = icmp eq ptr %i.ce, %i.bw
  %i.cg = load ptr, ptr %23, align 8, !tbaa !11   ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
end_hunk_0
