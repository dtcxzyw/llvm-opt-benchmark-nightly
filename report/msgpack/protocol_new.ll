Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/msgpack/original/protocol_new?download=true
inline.NumInlined: 1257
inline.NumDeleted: 586
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK7msgpack2v17adaptor4packINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEclINS3_18basic_stringstreamIcS6_S7_EEEERNS0_6packerIT_EESG_RKS8_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i8 -37, ptr %i.d, align 1, !tbaa !22
  %i.ac = tail call noundef i32 @llvm.bswap.i32(i32 %i.j)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i32 %i.ac, ptr %i.ad, align 1
  %i.ae = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !115, !align !133
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.af, ptr noundef nonnull %i.d, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_strEj.exit

_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE8pack_strEj.exit: ; preds = %bb.e, %bb.g, %bb.i, %bb.j
  %i.ah = load ptr, ptr %2, align 8, !tbaa !25
  %i.ai = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !115, !align !133
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.ah, i64 noundef %i.f) ; 0 uses
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 9 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = icmp eq ptr %i.c, %i.d                   ; 2 uses
  %i.f = load i64, ptr %i.d, align 8
  %i.g = select i1 %i.e, i64 15, i64 %i.f         ; 2 uses
  %i.h = icmp ugt i64 %i.b, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.i = icmp slt i64 %i.b, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.8) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = shl nuw i64 %i.g, 1                      ; 2 uses
  %i.k = icmp ult i64 %i.b, %i.j
  %spec.store.select.i = tail call i64 @llvm.umin.i64(i64 %i.j, i64 9223372036854775807)
  %.0 = select i1 %i.k, i64 %spec.store.select.i, i64 %i.b ; 2 uses
  %i.l = add nuw i64 %.0, 1                       ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, !prof !93

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit: ; preds = %bb.d
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #26 ; 2 uses
  br i1 %i.e, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit
  %i.o = load i64, ptr %i.d, align 8, !tbaa !22
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.p) #22
  br label %.thread

.thread:                                          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i17
  store ptr %i.n, ptr %0, align 8, !tbaa !25
  store i64 %.0, ptr %i.d, align 8, !tbaa !22
  br label %.split12

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %.not16 = icmp eq i64 %i.b, 0
  br i1 %.not16, label %.split, label %.split12

.split:                                           ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.q, align 8, !tbaa !21
  store i8 0, ptr %i.c, align 1, !tbaa !22
  br label %bb.i

.split12:                                         ; preds = %.thread, %bb.f
  %i.r = phi ptr [ %i.n, %.thread ], [ %i.c, %bb.f ] ; 2 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !25     ; 2 uses
  %cond = icmp eq i64 %i.b, 1
  br i1 %cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.split12
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  store i8 %i.t, ptr %i.r, align 1, !tbaa !22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

bb.h:                                             ; preds = %.split12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.s, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit: ; preds = %bb.g, %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.u, align 8, !tbaa !21
  %i.v = load ptr, ptr %0, align 8, !tbaa !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.b
  store i8 0, ptr %i.w, align 1, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm2EE6unpackERKNS_2v26objectERSC_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !22
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !271, !nonnull !115, !align !272
  %.sroa.0.0.copyload.i.i.i.i = load i32, ptr %i.e, align 8, !tbaa !273
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.43.0.copyload.i.i.i.i = load i64, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8 ; 2 uses
  %i.h = icmp eq i32 %.sroa.0.0.copyload.i.i.i.i, 2
  br i1 %i.h, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.i = icmp ugt i64 %.sroa.43.0.copyload.i.i.i.i, 4294967295
  br i1 %i.i, label %bb.d, label %_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.j, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.k, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
  unreachable

_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit: ; preds = %bb.c
  %i.l = trunc nuw i64 %.sroa.43.0.copyload.i.i.i.i to i32
  store i32 %i.l, ptr %i.g, align 4, !tbaa !92
  %.pr = load i32, ptr %i.a, align 8, !tbaa !22
  %i.m = icmp ult i32 %.pr, 2
  br i1 %i.m, label %_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !22   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.0.0.copyload.i.i.i = load i32, ptr %i.o, align 8, !tbaa !273
  %.off.i.i.i.i.i = add i32 %.sroa.0.0.copyload.i.i.i, -5
  %switch.i.i.i.i.i = icmp ult i32 %.off.i.i.i.i.i, 2
  br i1 %switch.i.i.i.i.i, label %_ZN7msgpack2v14type14convert_helperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr6has_asIT_EE5valueEvE4typeERKNS_2v26objectERSA_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.p, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
  unreachable

_ZN7msgpack2v14type14convert_helperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr6has_asIT_EE5valueEvE4typeERKNS_2v26objectERSA_.exit: ; preds = %bb.f
  %i.q = load ptr, ptr %1, align 8, !tbaa !275, !nonnull !115, !align !133 ; 2 uses
  %.sroa.54.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.54.0.copyload.i.i.i = load ptr, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8, !tbaa !22
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %.sroa.43.0.copyload.i.i.i = load i32, ptr %.sroa.43.0..sroa_idx.i.i.i, align 8
  %i.r = zext i32 %.sroa.43.0.copyload.i.i.i to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !21
  %i.u = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 noundef 0, i64 noundef %i.t, ptr noundef %.sroa.54.0.copyload.i.i.i, i64 noundef %i.r) ; 0 uses
  br label %_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit.thread

_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit.thread: ; preds = %bb.a, %_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm1EE6unpackERKNS_2v26objectERSC_.exit, %_ZN7msgpack2v14type14convert_helperINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENSt9enable_ifIXntsr6has_asIT_EE5valueEvE4typeERKNS_2v26objectERSA_.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEONS_12basic_stringIcS2_S3_EE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packISt6vectorIN10myprotocol3GetESaIS5_EEvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESJ_RKS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v3::adaptor::pack.45", align 1 ; 3 uses
  %4 = alloca %"struct.msgpack::v3::adaptor::pack.42", align 1 ; 3 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca [3 x i8], align 1                 ; 5 uses
  %i.d = alloca [5 x i8], align 1                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !87
  %i.g = load ptr, ptr %2, align 8, !tbaa !91
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %5 = sdiv exact i64 %i.j, 40                    ; 6 uses
  %i.k = icmp ugt i64 %5, 4294967295
  br i1 %i.k, label %bb.b, label %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit

bb.b:                                             ; preds = %bb.a
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN7msgpack2v123container_size_overflowC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull @.str.33)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTIN7msgpack2v123container_size_overflowE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.l) #21
  resume { ptr, i32 } %i.m

_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit: ; preds = %bb.a
  %i.n = trunc nuw i64 %5 to i32
  %i.o = icmp samesign ult i64 %5, 16
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.p = trunc nuw nsw i64 %5 to i8
  %i.q = or disjoint i8 %i.p, -112
  store i8 %i.q, ptr %i.b, align 1, !tbaa !22
  %i.r = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !115, !align !133
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit

bb.f:                                             ; preds = %_ZN7msgpack2v126checked_get_container_sizeImEEjT_.exit
  %i.u = icmp samesign ult i64 %5, 65536
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i8 -36, ptr %i.c, align 1, !tbaa !22
  %i.v = trunc nuw i64 %5 to i16
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.v)
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i16 %rev.i.i, ptr %i.w, align 1
  %i.x = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !115, !align !133
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef nonnull %i.c, i64 noundef 3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i8 -35, ptr %i.d, align 1, !tbaa !22
  %i.aa = tail call noundef i32 @llvm.bswap.i32(i32 %i.n)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i32 %i.aa, ptr %i.ab, align 1
  %i.ac = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !115, !align !133
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ad, ptr noundef nonnull %i.d, i64 noundef 5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  br label %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit

_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit: ; preds = %bb.e, %bb.g, %bb.h
  %i.af = load ptr, ptr %2, align 8, !tbaa !160   ; 2 uses
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !160 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit
  ret ptr %1

.lr.ph:                                           ; preds = %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit, %.lr.ph
  %.sroa.06.09 = phi ptr [ %i.ap, %.lr.ph ], [ %i.af, %_ZN7msgpack2v16packerINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEE10pack_arrayEj.exit ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i8 -110, ptr %i.a, align 1, !tbaa !22
  %i.aj = load ptr, ptr %1, align 8, !tbaa !159, !nonnull !115, !align !133
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.am = load i32, ptr %.sroa.06.09, align 4, !tbaa !92
  %i.an = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packIjvEclINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEERNS0_6packerIT_EESE_j(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.am) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ao = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK7msgpack2v17adaptor4packINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEclINS3_18basic_stringstreamIcS6_S7_EEEERNS0_6packerIT_EESG_RKS8_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ai) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.06.09, i64 40 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ag
  br i1 %i.aq, label %._crit_edge, label %.lr.ph, !llvm.loop !276
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZNK7msgpack2v17adaptor7convertISt6vectorIN10myprotocol3GetESaIS5_EEvEclERKNS_2v26objectERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.msgpack::v1::type::define_array.50", align 8 ; 5 uses
  %4 = alloca %"struct.msgpack::v2::object", align 8 ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !35
  %.not = icmp eq i32 %i.a, 7
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.b, align 8, !tbaa !37
  tail call void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = zext i32 %i.d to i64                     ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !87   ; 3 uses
  %i.h = load ptr, ptr %2, align 8, !tbaa !91     ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 40                  ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.e, %i.l
  tail call void @_ZNSt6vectorIN10myprotocol3GetESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.n)
  br label %_ZNSt6vectorIN10myprotocol3GetESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ugt i64 %i.l, %i.e
  br i1 %i.o, label %bb.f, label %_ZNSt6vectorIN10myprotocol3GetESaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.h, i64 %i.e ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIN10myprotocol3GetESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %_ZSt8_DestroyIN10myprotocol3GetEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.w, %_ZSt8_DestroyIN10myprotocol3GetEEvPT_.exit.i.i.i.i ], [ %i.p, %bb.f ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !25   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZSt8_DestroyIN10myprotocol3GetEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.u = load i64, ptr %i.s, align 8, !tbaa !22
  %i.v = add i64 %i.u, 1
  tail call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #22
  br label %_ZSt8_DestroyIN10myprotocol3GetEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN10myprotocol3GetEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.g
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN10myprotocol3GetES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN10myprotocol3GetES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN10myprotocol3GetEEvPT_.exit.i.i.i.i
  store ptr %i.p, ptr %i.f, align 8, !tbaa !87
  br label %_ZNSt6vectorIN10myprotocol3GetESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN10myprotocol3GetESaIS1_EE6resizeEm.exit: ; preds = %bb.d, %bb.e, %bb.f, %_ZSt8_DestroyIPN10myprotocol3GetES1_EvT_S3_RSaIT0_E.exit.i.i
  %i.x = load i32, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %.not14 = icmp eq i32 %i.x, 0
  br i1 %.not14, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN10myprotocol3GetESaIS1_EE6resizeEm.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 2 uses
  %i.aa = zext i32 %i.x to i64
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %i.aa
  %i.ac = load ptr, ptr %2, align 8, !tbaa !160
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNK7msgpack2v26object7convertIN10myprotocol3GetEEERT_S6_.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.ac, %bb.g ], [ %i.ai, %_ZNK7msgpack2v26object7convertIN10myprotocol3GetEEERT_S6_.exit ] ; 3 uses
  %.0 = phi ptr [ %i.z, %bb.g ], [ %i.ah, %_ZNK7msgpack2v26object7convertIN10myprotocol3GetEEERT_S6_.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %.0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 8
  store ptr %i.ae, ptr %3, align 8, !tbaa !30, !alias.scope !280
  store ptr %.sroa.0.0, ptr %i.ad, align 8, !tbaa !32, !alias.scope !280
  %i.af = load i32, ptr %4, align 8, !tbaa !35
  %.not.i.i.i.i.i.i = icmp eq i32 %i.af, 7
  br i1 %.not.i.i.i.i.i.i, label %_ZNK7msgpack2v26object7convertIN10myprotocol3GetEEERT_S6_.exit, label %.noexc.i.i.i.i

.noexc.i.i.i.i:                                   ; preds = %bb.h
  %i.ag = call ptr @__cxa_allocate_exception(i64 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7msgpack2v110type_errorE, i64 16), ptr %i.ag, align 8, !tbaa !37
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTIN7msgpack2v110type_errorE, ptr nonnull @_ZNSt8bad_castD2Ev) #23
  unreachable

_ZNK7msgpack2v26object7convertIN10myprotocol3GetEEERT_S6_.exit: ; preds = %bb.h
  call void @_ZN7msgpack2v14type16define_array_impISt5tupleIJRjRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEELm2EE6unpackERKNS_2v26objectERSC_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %i.aj = icmp ult ptr %i.ah, %i.ab
  br i1 %i.aj, label %bb.h, label %.loopexit, !llvm.loop !279

.loopexit:                                        ; preds = %_ZNK7msgpack2v26object7convertIN10myprotocol3GetEEERT_S6_.exit, %_ZNSt6vectorIN10myprotocol3GetESaIS1_EE6resizeEm.exit
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIN10myprotocol3GetESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !87   ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !91     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 40                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !88
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 40                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 230584300921369395, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.013.i.i.i.prol = phi ptr [ %i.t, %.lr.ph.i.i.i.prol ], [ %i.b, %.lr.ph.i.i.i.preheader ] ; 4 uses
  %.01012.i.i.i.prol = phi i64 [ %i.s, %.lr.ph.i.i.i.prol ], [ %1, %.lr.ph.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr %.013.i.i.i.prol, i64 8
end_hunk_0
