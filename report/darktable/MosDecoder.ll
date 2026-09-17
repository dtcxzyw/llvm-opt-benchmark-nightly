Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/MosDecoder?download=true
inline.NumInlined: 541
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN8rawspeed8RawImageD2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !37
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !call_target !42, !inline_history !90
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !call_target !44, !inline_history !90
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !23

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8rawspeed12RawImageDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

declare void @_ZN8rawspeed12RawImageData10createDataEv(ptr noundef nonnull align 8 dereferenceable(624)) local_unnamed_addr #2

declare void @_ZN8rawspeed24UncompressedDecompressor19readUncompressedRawEv(ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN8rawspeed24UncompressedDecompressorD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN8rawspeed8RawImageD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !36
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !37
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !call_target !42, !inline_history !1
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28, !call_target !44, !inline_history !1
  br label %_ZN8rawspeed8RawImageD2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !20
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !45
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN8rawspeed8RawImageD2Ev.exit, !prof !23

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #28
  br label %_ZN8rawspeed8RawImageD2Ev.exit

_ZN8rawspeed8RawImageD2Ev.exit:                   ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10MosDecoder20checkSupportInternalEPKNS_14CameraMetaDataE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.e = invoke noundef zeroext i1 @_ZN8rawspeed10RawDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.a unwind label %bb.b       ; 0 uses

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.f = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.g = icmp eq ptr %i.f, %i.a
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !20
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.i) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.b
  %i.m = load i64, ptr %i.a, align 8, !tbaa !20
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  resume { ptr, i32 } %i.j
}

declare noundef zeroext i1 @_ZN8rawspeed10RawDecoder20checkCameraSupportedEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10MosDecoder22decodeMetaDataInternalEPKNS_14CameraMetaDataE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"struct.std::array.70", align 4    ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_istringstream", align 8 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !18
  store i8 0, ptr %i.a, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104
  invoke void @_ZN8rawspeed10RawDecoder11setMetaDataEPKNS_14CameraMetaDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESB_SB_i(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef 0)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !20
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25
  %i.k = call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.j, i16 noundef zeroext -31226) #30 ; 4 uses
  %.not70 = icmp eq ptr %i.k, null
  br i1 %.not70, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.047.0.copyload = load ptr, ptr %i.l, align 8 ; 2 uses
  %.sroa.750.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.750.0.copyload = load i32, ptr %.sroa.750.0..sroa_idx, align 8 ; 6 uses
  %.sroa.1558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %.sroa.1558.0.copyload = load i32, ptr %.sroa.1558.0..sroa_idx, align 8 ; 3 uses
  %i.m = icmp sgt i32 %.sroa.750.0.copyload, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = icmp uge i32 %.sroa.750.0.copyload, %.sroa.1558.0.copyload
  call void @llvm.assume(i1 %i.n)
  %i.o = sub nuw nsw i32 %.sroa.750.0.copyload, %.sroa.1558.0.copyload
  %i.p = icmp samesign ugt i32 %i.o, 52
  br i1 %i.p, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = zext nneg i32 %.sroa.1558.0.copyload to i64
  %i.r = zext nneg i32 %.sroa.750.0.copyload to i64 ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN8rawspeed10ByteStream9skipBytesEj.exit41
  %indvars.iv = phi i64 [ %i.q, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN8rawspeed10ByteStream9skipBytesEj.exit41 ] ; 5 uses
  %6 = add nuw nsw i64 %indvars.iv, 16
  %i.s = icmp samesign ule i64 %6, %i.r
  call void @llvm.assume(i1 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.047.0.copyload, i64 %indvars.iv ; 16 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %i.v = icmp eq i8 %i.u, 78
  br i1 %i.v, label %.lr.ph.i.i.i.i.i.i.i.1, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.1:                           ; preds = %.lr.ph
  %.0810.i.i.i.i.i.i.i.ptr.1 = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.w = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.1, align 1, !tbaa !20
  %i.x = icmp eq i8 %i.w, 101
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.2, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.2:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.1
  %.0810.i.i.i.i.i.i.i.ptr.2 = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.y = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.2, align 1, !tbaa !20
  %i.z = icmp eq i8 %i.y, 117
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.i.3, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.3:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.2
  %.0810.i.i.i.i.i.i.i.ptr.3 = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.aa = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.3, align 1, !tbaa !20
  %i.ab = icmp eq i8 %i.aa, 116
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i.4, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.4:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.3
  %.0810.i.i.i.i.i.i.i.ptr.4 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.ac = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.4, align 1, !tbaa !20
  %i.ad = icmp eq i8 %i.ac, 79
  br i1 %i.ad, label %.lr.ph.i.i.i.i.i.i.i.5, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.5:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.4
  %.0810.i.i.i.i.i.i.i.ptr.5 = getelementptr inbounds nuw i8, ptr %i.t, i64 5
  %i.ae = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.5, align 1, !tbaa !20
  %i.af = icmp eq i8 %i.ae, 98
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i.6, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.6:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.5
  %.0810.i.i.i.i.i.i.i.ptr.6 = getelementptr inbounds nuw i8, ptr %i.t, i64 6
  %i.ag = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.6, align 1, !tbaa !20
  %i.ah = icmp eq i8 %i.ag, 106
  br i1 %i.ah, label %.lr.ph.i.i.i.i.i.i.i.7, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.7:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.6
  %.0810.i.i.i.i.i.i.i.ptr.7 = getelementptr inbounds nuw i8, ptr %i.t, i64 7
  %i.ai = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.7, align 1, !tbaa !20
  %i.aj = icmp eq i8 %i.ai, 95
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.8, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.8:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.7
  %.0810.i.i.i.i.i.i.i.ptr.8 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ak = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.8, align 1, !tbaa !20
  %i.al = icmp eq i8 %i.ak, 110
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i.9, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.9:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.8
  %.0810.i.i.i.i.i.i.i.ptr.9 = getelementptr inbounds nuw i8, ptr %i.t, i64 9
  %i.am = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.9, align 1, !tbaa !20
  %i.an = icmp eq i8 %i.am, 101
  br i1 %i.an, label %.lr.ph.i.i.i.i.i.i.i.10, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.10:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.9
  %.0810.i.i.i.i.i.i.i.ptr.10 = getelementptr inbounds nuw i8, ptr %i.t, i64 10
  %i.ao = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.10, align 1, !tbaa !20
  %i.ap = icmp eq i8 %i.ao, 117
  br i1 %i.ap, label %.lr.ph.i.i.i.i.i.i.i.11, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.11:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.10
  %.0810.i.i.i.i.i.i.i.ptr.11 = getelementptr inbounds nuw i8, ptr %i.t, i64 11
  %i.aq = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.11, align 1, !tbaa !20
  %i.ar = icmp eq i8 %i.aq, 116
  br i1 %i.ar, label %.lr.ph.i.i.i.i.i.i.i.12, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.12:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.11
  %.0810.i.i.i.i.i.i.i.ptr.12 = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.as = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.12, align 1, !tbaa !20
  %i.at = icmp eq i8 %i.as, 114
  br i1 %i.at, label %.lr.ph.i.i.i.i.i.i.i.13, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.13:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.12
  %.0810.i.i.i.i.i.i.i.ptr.13 = getelementptr inbounds nuw i8, ptr %i.t, i64 13
  %i.au = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.13, align 1, !tbaa !20
  %i.av = icmp eq i8 %i.au, 97
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.14, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.14:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.13
  %.0810.i.i.i.i.i.i.i.ptr.14 = getelementptr inbounds nuw i8, ptr %i.t, i64 14
  %i.aw = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.14, align 1, !tbaa !20
  %i.ax = icmp eq i8 %i.aw, 108
  br i1 %i.ax, label %.lr.ph.i.i.i.i.i.i.i.15, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

.lr.ph.i.i.i.i.i.i.i.15:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.14
  %.0810.i.i.i.i.i.i.i.ptr.15 = getelementptr inbounds nuw i8, ptr %i.t, i64 15
  %i.ay = load i8, ptr %.0810.i.i.i.i.i.i.i.ptr.15, align 1, !tbaa !20
  %i.az = icmp eq i8 %i.ay, 115
  br i1 %i.az, label %bb.c, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit41

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.15
  %7 = trunc nuw i64 %indvars.iv to i32
  %narrow = add i32 %7, 44                        ; 3 uses
  %.not.i.i = icmp ugt i32 %narrow, %.sroa.750.0.copyload
  br i1 %.not.i.i, label %bb.d, label %_ZN8rawspeed10ByteStream9skipBytesEj.exit

bb.d:                                             ; preds = %bb.c
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.27, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream5checkEj) #20
  unreachable

_ZN8rawspeed10ByteStream9skipBytesEj.exit:        ; preds = %bb.c
  %i.ba = sub nuw nsw i32 %.sroa.750.0.copyload, %narrow
  %i.bb = zext nneg i32 %i.ba to i64              ; 4 uses
  %i.bc = zext nneg i32 %narrow to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.047.0.copyload, i64 %i.bc ; 8 uses
  %i.be = call noundef ptr @memchr(ptr noundef nonnull %i.bd, i32 noundef 0, i64 noundef %i.bb) #30
  %.not = icmp eq ptr %i.be, null
  br i1 %.not, label %.loopexit, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  %i.bg = load ptr, ptr %2, align 8, !tbaa !19    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.a
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.e
  %i.bi = load i64, ptr %i.a, align 8, !tbaa !20
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.ag

bb.f:                                             ; preds = %_ZN8rawspeed10ByteStream9skipBytesEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bb ; 2 uses
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %i.bd to i64               ; 2 uses
  %i.bn = lshr i64 %i.bb, 2                       ; 2 uses
  %.not.i = icmp eq i64 %i.bn, 0
  br i1 %.not.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f
  %i.bo = and i64 %i.bb, 2147483644
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.bd, i64 %i.bo ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i
  %.047.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i ], [ %i.cb, %bb.k ] ; 2 uses
  %.02946.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %i.ca, %bb.k ] ; 9 uses
  %i.bp = load i8, ptr %.02946.i.i.i.i, align 1, !tbaa !20
  %i.bq = icmp eq i8 %i.bp, 0
  br i1 %i.bq, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !20
  %i.bt = icmp eq i8 %i.bs, 0
  br i1 %i.bt, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !20
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit108, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !20
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit110, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 4
  %i.cb = add nsw i64 %.047.i.i.i.i, -1
  %i.cc = icmp sgt i64 %.047.i.i.i.i, 1
  br i1 %i.cc, label %bb.g, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !91

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.k
  %.pre54.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.f
  %.pre-phi.i.i.i.i = phi i64 [ %.pre54.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bm, %bb.f ]
  %.029.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bd, %bb.f ] ; 5 uses
  %i.cd = sub i64 %i.bl, %.pre-phi.i.i.i.i
  switch i64 %i.cd, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread.i [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ce = load i8, ptr %.029.lcssa.i.i.i.i, align 1, !tbaa !20
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.m, %._crit_edge.i.i.i.i
  %.1.i.i.i.i = phi ptr [ %i.cg, %bb.m ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ch = load i8, ptr %.1.i.i.i.i, align 1, !tbaa !20
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i.i

._crit_edge._crit_edge52.i.i.i.i:                 ; preds = %bb.n, %._crit_edge.i.i.i.i
  %.2.i.i.i.i = phi ptr [ %i.cj, %bb.n ], [ %.029.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ck = load i8, ptr %.2.i.i.i.i, align 1, !tbaa !20
  %i.cl = icmp eq i8 %i.ck, 0
  br i1 %i.cl, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread.i

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.h
  %i.cm = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit108: ; preds = %bb.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit110: ; preds = %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.02946.i.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i:              ; preds = %bb.g, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit108, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit110, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.l
  %.028.i.i.i.i = phi ptr [ %.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %.029.lcssa.i.i.i.i, %bb.l ], [ %.2.i.i.i.i, %._crit_edge._crit_edge52.i.i.i.i ], [ %i.co, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit110 ], [ %i.cm, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.cn, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i.loopexit.split.loop.exit108 ], [ %.02946.i.i.i.i, %bb.g ] ; 2 uses
  %i.cp = icmp eq ptr %.028.i.i.i.i, %i.bk
  br i1 %i.cp, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread.i, label %bb.o

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread.i:       ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i, %._crit_edge._crit_edge52.i.i.i.i, %._crit_edge.i.i.i.i
  call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_11IOExceptionEEEvPKcz(ptr noundef nonnull @.str.31, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10ByteStream10peekStringEv) #20
  unreachable

bb.o:                                             ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.i
  %i.cq = ptrtoint ptr %.028.i.i.i.i to i64
  %i.cr = sub i64 %i.cq, %i.bm                    ; 8 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.cs, ptr %4, align 8, !tbaa !22
  %i.ct = icmp ugt i64 %i.cr, 15
  br i1 %i.ct, label %bb.p, label %._crit_edge.i.i.i.i22

bb.p:                                             ; preds = %bb.o
  %i.cu = icmp slt i64 %i.cr, 0
  br i1 %i.cu, label %.noexc.i.i.i, label %bb.q

.noexc.i.i.i:                                     ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #32
          to label %.noexc24 unwind label %bb.ab

.noexc24:                                         ; preds = %.noexc.i.i.i
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cv = add nuw i64 %i.cr, 1                    ; 2 uses
  %i.cw = icmp slt i64 %i.cv, 0
  br i1 %i.cw, label %.noexc9.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !23

.noexc9.i.i.i:                                    ; preds = %bb.q
  invoke void @_ZSt17__throw_bad_allocv() #32
          to label %.noexc25 unwind label %bb.ab

.noexc25:                                         ; preds = %.noexc9.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.q
  %i.cx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cv) #33
          to label %.noexc26 unwind label %bb.ab  ; 2 uses

.noexc26:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.cx, ptr %4, align 8, !tbaa !19
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i22

._crit_edge.i.i.i.i22:                            ; preds = %.noexc26, %bb.o
  %i.cy = phi ptr [ %i.cx, %.noexc26 ], [ %i.cs, %bb.o ] ; 3 uses
  switch i64 %i.cr, label %bb.s [
    i64 1, label %bb.r
    i64 0, label %bb.t
  ]

bb.r:                                             ; preds = %._crit_edge.i.i.i.i22
  %i.cz = load i8, ptr %i.bd, align 1, !tbaa !20
  store i8 %i.cz, ptr %i.cy, align 1, !tbaa !20
  br label %bb.t

bb.s:                                             ; preds = %._crit_edge.i.i.i.i22
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cy, ptr nonnull align 1 %i.bd, i64 %i.cr, i1 false)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %._crit_edge.i.i.i.i22
  %i.da = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.cr, ptr %i.da, align 8, !tbaa !18
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cr
end_hunk_0
