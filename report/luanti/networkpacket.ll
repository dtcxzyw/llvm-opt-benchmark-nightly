Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/networkpacket?download=true
inline.NumInlined: 364
inline.NumDeleted: 157
begin_hunk_0_@_ZN13NetworkPacketrsERb:bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  %i.h = icmp ne i8 %i.g, 0
  %i.i = zext i1 %i.h to i8
  store i8 %i.i, ptr %1, align 1, !tbaa !51
  %i.j = add i32 %i.c, 1
  store i32 %i.j, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERh(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(1) initializes((0, 1)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 1)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23
  store i8 %i.g, ptr %1, align 1, !tbaa !23
  %i.h = load i32, ptr %i.a, align 4, !tbaa !31
  %i.i = add i32 %i.h, 1
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERt(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) initializes((0, 2)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 2)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %.0.copyload.i = load i16, ptr %i.f, align 1
  %rev.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i)
  store i16 %rev.i.i, ptr %1, align 2, !tbaa !37
  %i.g = add i32 %i.c, 2
  store i32 %i.g, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERj(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 4)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %.0.copyload.i = load i32, ptr %i.f, align 1
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  store i32 %i.g, ptr %1, align 4, !tbaa !38
  %i.h = load i32, ptr %i.a, align 4, !tbaa !31
  %i.i = add i32 %i.h, 4
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERm(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 8)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %.0.copyload.i = load i64, ptr %i.f, align 1
  %i.g = tail call noundef i64 @llvm.bswap.i64(i64 %.0.copyload.i)
  store i64 %i.g, ptr %1, align 8, !tbaa !28
  %i.h = add i32 %i.c, 8
  store i32 %i.h, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERf(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 4)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %i.g = tail call nsz noundef float @_Z7readF32PKh(ptr noundef nonnull %i.f)
  store float %i.g, ptr %1, align 4, !tbaa !40
  %i.h = load i32, ptr %i.a, align 4, !tbaa !31
  %i.i = add i32 %i.h, 4
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef float @_Z7readF32PKh(ptr noundef %0) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %.pre = load i32, ptr @g_serialize_f32_type, align 4, !tbaa !36
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.d, %bb.a
  %i.a = phi i32 [ %i.f, %bb.d ], [ %.pre, %bb.a ]
  %.0.copyload.i = load i32, ptr %0, align 1      ; 2 uses
  switch i32 %i.a, label %bb.e [
    i32 2, label %bb.b
    i32 1, label %bb.c
    i32 0, label %bb.d
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.c = bitcast i32 %i.b to float
  br label %bb.j

bb.c:                                             ; preds = %tailrecurse
  %i.d = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i)
  %i.e = tail call nsz noundef float @_Z12u32Tof32Slowj(i32 noundef %i.d)
  br label %bb.j

bb.d:                                             ; preds = %tailrecurse
  %i.f = tail call noundef i32 @_Z25getFloatSerializationTypev() ; 2 uses
  store i32 %i.f, ptr @g_serialize_f32_type, align 4, !tbaa !36
  br label %tailrecurse

bb.e:                                             ; preds = %tailrecurse
  %i.g = tail call ptr @__cxa_allocate_exception(i64 40) #19 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #20
          to label %bb.k unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.l = load i64, ptr %i.j, align 8, !tbaa !23
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  call void @__cxa_free_exception(ptr %i.g) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.h
  %.pn13 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %.pn13

bb.j:                                             ; preds = %bb.c, %bb.b
  %.09 = phi nsz float [ %i.c, %bb.b ], [ %i.e, %bb.c ]
  ret float %.09

bb.k:                                             ; preds = %bb.f
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIfEE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 8)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 2 uses
  %i.g = tail call nsz noundef float @_Z7readF32PKh(ptr noundef nonnull %i.f)
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = tail call nsz noundef float @_Z7readF32PKh(ptr noundef nonnull %i.h)
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.i, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4, !tbaa !40
  %i.j = load i32, ptr %i.a, align 4, !tbaa !31
  %i.k = add i32 %i.j, 8
  store i32 %i.k, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIfEE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 12)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 3 uses
  %i.g = tail call nsz noundef float @_Z7readF32PKh(ptr noundef nonnull %i.f)
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.g, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.i = tail call nsz noundef float @_Z7readF32PKh(ptr noundef nonnull %i.h)
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.i, i64 1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.k = tail call nsz noundef float @_Z7readF32PKh(ptr noundef nonnull %i.j)
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %1, align 4, !tbaa !40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store float %i.k, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !40
  %i.l = load i32, ptr %i.a, align 4, !tbaa !31
  %i.m = add i32 %i.l, 12
  store i32 %i.m, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERs(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(2) initializes((0, 2)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 2)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %.0.copyload.i.i = load i16, ptr %i.f, align 1
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i)
  store i16 %rev.i.i.i, ptr %1, align 2, !tbaa !37
  %i.g = add i32 %i.c, 2
  store i32 %i.g, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEs(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i16 noundef signext %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 5 uses
  %i.c = add i32 %i.b, 2                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp ugt i32 %i.c, %i.e
  %.pre2.i = load ptr, ptr %0, align 8, !tbaa !30 ; 6 uses
  br i1 %i.f, label %bb.b, label %_ZN13NetworkPacketlsEt.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !17
  %i.g = zext i32 %i.c to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.pre2.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.g, %i.l
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.n)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !31
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN13NetworkPacketlsEt.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.l, %i.g
  br i1 %i.o, label %bb.e, label %_ZN13NetworkPacketlsEt.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.pre2.i, i64 %i.g ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.p
  br i1 %.not.i.i.i.i, label %_ZN13NetworkPacketlsEt.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.e
  store ptr %i.p, ptr %i.h, align 8, !tbaa !29
  br label %_ZN13NetworkPacketlsEt.exit

_ZN13NetworkPacketlsEt.exit:                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i
  %i.q = phi ptr [ %.pre2.i, %bb.a ], [ %.pre1.i, %bb.c ], [ %.pre2.i, %bb.d ], [ %.pre2.i, %bb.e ], [ %.pre2.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.r = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %rev.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %1)
  store i16 %rev.i.i.i, ptr %i.t, align 1
  %i.u = load i32, ptr %i.a, align 4, !tbaa !31
  %i.v = add i32 %i.u, 2
  store i32 %i.v, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERi(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 4)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d
  %.0.copyload.i.i = load i32, ptr %i.f, align 1
  %i.g = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i)
  store i32 %i.g, ptr %1, align 4, !tbaa !38
  %i.h = load i32, ptr %i.a, align 4, !tbaa !31
  %i.i = add i32 %i.h, 4
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEi(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 5 uses
  %i.c = add i32 %i.b, 4                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp ugt i32 %i.c, %i.e
  %.pre2.i = load ptr, ptr %0, align 8, !tbaa !30 ; 6 uses
  br i1 %i.f, label %bb.b, label %_ZN13NetworkPacketlsEj.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !17
  %i.g = zext i32 %i.c to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.pre2.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.g, %i.l
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.n)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !31
  %.pre1.i = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN13NetworkPacketlsEj.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.l, %i.g
  br i1 %i.o, label %bb.e, label %_ZN13NetworkPacketlsEj.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.pre2.i, i64 %i.g ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.p
  br i1 %.not.i.i.i.i, label %_ZN13NetworkPacketlsEj.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.e
  store ptr %i.p, ptr %i.h, align 8, !tbaa !29
  br label %_ZN13NetworkPacketlsEj.exit

_ZN13NetworkPacketlsEj.exit:                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i
  %i.q = phi ptr [ %.pre2.i, %bb.a ], [ %.pre1.i, %bb.c ], [ %.pre2.i, %bb.d ], [ %.pre2.i, %bb.e ], [ %.pre2.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.r = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  %i.u = tail call noundef i32 @llvm.bswap.i32(i32 %1)
  store i32 %i.u, ptr %i.t, align 1
  %i.v = load i32, ptr %i.a, align 4, !tbaa !31
  %i.w = add i32 %i.v, 4
  store i32 %i.w, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIsEE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) initializes((0, 6)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 6)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 3 uses
  %.0.copyload.i.i.i = load i16, ptr %i.f, align 1
  %rev.i.i.i.i = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  %.0.copyload.i.i3.i = load i16, ptr %i.g, align 1
  %rev.i.i.i4.i = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i3.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i.i5.i = load i16, ptr %i.h, align 1
  %rev.i.i.i6.i = tail call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i5.i)
  %.sroa.5.0.insert.ext.i = zext i16 %rev.i.i.i6.i to i48
  %.sroa.5.0.insert.shift.i = shl nuw i48 %.sroa.5.0.insert.ext.i, 32
  %.sroa.3.0.insert.ext.i = zext i16 %rev.i.i.i4.i to i48
  %.sroa.3.0.insert.shift.i = shl nuw nsw i48 %.sroa.3.0.insert.ext.i, 16
  %.sroa.3.0.insert.insert.i = or disjoint i48 %.sroa.5.0.insert.shift.i, %.sroa.3.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = zext i16 %rev.i.i.i.i to i48
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.3.0.insert.insert.i, %.sroa.0.0.insert.ext.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %1, align 2, !tbaa !37
  %i.i = add i32 %i.c, 6
  store i32 %i.i, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector2dIiEE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 8)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i.i2.i = load i32, ptr %i.g, align 1
  %i.h = zext i32 %.0.copyload.i.i2.i to i64
  %i.i = zext i32 %.0.copyload.i.i.i to i64
  %i.j = shl nuw i64 %i.i, 32
  %i.k = or disjoint i64 %i.j, %i.h
  %.sroa.0.0.insert.insert.i = tail call i64 @llvm.bswap.i64(i64 %i.k)
  store i64 %.sroa.0.0.insert.insert.i, ptr %1, align 4, !tbaa !38
  %i.l = load i32, ptr %i.a, align 4, !tbaa !31
  %i.m = add i32 %i.l, 8
  store i32 %i.m, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketrsERN4core8vector3dIiEE(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(36) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(12) initializes((0, 12)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  tail call void @_ZNK13NetworkPacket15checkReadOffsetEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %i.b, i32 noundef 12)
  %i.c = load i32, ptr %i.a, align 4, !tbaa !31
  %i.d = zext i32 %i.c to i64
  %i.e = load ptr, ptr %0, align 8, !tbaa !30
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.d ; 3 uses
  %.0.copyload.i.i.i = load i32, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %.0.copyload.i.i3.i = load i32, ptr %i.g, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.0.copyload.i.i4.i = load i32, ptr %i.h, align 1
  %i.i = tail call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i4.i)
  %i.j = zext i32 %.0.copyload.i.i3.i to i64
  %i.k = zext i32 %.0.copyload.i.i.i to i64
  %i.l = shl nuw i64 %i.k, 32
  %i.m = or disjoint i64 %i.l, %i.j
  %.sroa.0.0.insert.insert.i = tail call i64 @llvm.bswap.i64(i64 %i.m)
  store i64 %.sroa.0.0.insert.insert.i, ptr %1, align 4, !tbaa !38
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !38
  %i.n = load i32, ptr %i.a, align 4, !tbaa !31
  %i.o = add i32 %i.n, 12
  store i32 %i.o, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN4core8vector2dIfEE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, <2 x float> %1) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 7 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 5 uses
  %i.c = add i32 %i.b, 4                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp ugt i32 %i.c, %i.e
  %.pre3.i = load ptr, ptr %0, align 8, !tbaa !30 ; 6 uses
  br i1 %i.f, label %bb.b, label %_ZN13NetworkPacketlsEf.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !17
  %i.g = zext i32 %i.c to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.pre3.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.g, %i.l
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.n)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !31
  %.pre2.i = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN13NetworkPacketlsEf.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.l, %i.g
  br i1 %i.o, label %bb.e, label %_ZN13NetworkPacketlsEf.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 %i.g ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.p
  br i1 %.not.i.i.i.i, label %_ZN13NetworkPacketlsEf.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.e
  store ptr %i.p, ptr %i.h, align 8, !tbaa !29
  br label %_ZN13NetworkPacketlsEf.exit

_ZN13NetworkPacketlsEf.exit:                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i
  %i.q = phi ptr [ %.pre3.i, %bb.a ], [ %.pre2.i, %bb.c ], [ %.pre3.i, %bb.d ], [ %.pre3.i, %bb.e ], [ %.pre3.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.r = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  tail call void @_Z8writeF32Phf(ptr noundef nonnull %i.t, float noundef %.sroa.0.0.vec.extract)
  %i.u = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.v = add i32 %i.u, 4                          ; 5 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !31
  %i.w = add i32 %i.u, 8                          ; 3 uses
  %i.x = load i32, ptr %i.d, align 8, !tbaa !17
  %i.y = icmp ugt i32 %i.w, %i.x
  %.pre3.i1 = load ptr, ptr %0, align 8, !tbaa !30 ; 6 uses
  br i1 %i.y, label %bb.f, label %_ZN13NetworkPacketlsEf.exit6

bb.f:                                             ; preds = %_ZN13NetworkPacketlsEf.exit
  store i32 %i.w, ptr %i.d, align 8, !tbaa !17
  %i.z = zext i32 %i.w to i64                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.pre3.i1 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.z
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = sub nuw nsw i64 %i.z, %i.ae
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.ag)
  %.pre.i4 = load i32, ptr %i.a, align 4, !tbaa !31
  %.pre2.i5 = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN13NetworkPacketlsEf.exit6

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp ugt i64 %i.ae, %i.z
  br i1 %i.ah, label %bb.i, label %_ZN13NetworkPacketlsEf.exit6

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre3.i1, i64 %i.z ; 2 uses
  %.not.i.i.i.i2 = icmp eq ptr %i.ab, %i.ai
  br i1 %.not.i.i.i.i2, label %_ZN13NetworkPacketlsEf.exit6, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i3

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i3:   ; preds = %bb.i
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !29
  br label %_ZN13NetworkPacketlsEf.exit6

_ZN13NetworkPacketlsEf.exit6:                     ; preds = %_ZN13NetworkPacketlsEf.exit, %bb.g, %bb.h, %bb.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i3
  %i.aj = phi ptr [ %.pre3.i1, %_ZN13NetworkPacketlsEf.exit ], [ %.pre2.i5, %bb.g ], [ %.pre3.i1, %bb.h ], [ %.pre3.i1, %bb.i ], [ %.pre3.i1, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i3 ]
  %i.ak = phi i32 [ %i.v, %_ZN13NetworkPacketlsEf.exit ], [ %.pre.i4, %bb.g ], [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %i.v, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i3 ]
  %.sroa.0.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  tail call void @_Z8writeF32Phf(ptr noundef nonnull %i.am, float noundef %.sroa.0.4.vec.extract)
  %i.an = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ao = add i32 %i.an, 4
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !31
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN13NetworkPacketlsEN4core8vector3dIfEE(ptr noundef nonnull returned align 8 dereferenceable(36) %0, <2 x float> %1, float %2) local_unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.01.0.vec.extract = extractelement <2 x float> %1, i64 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 10 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31   ; 5 uses
  %i.c = add i32 %i.b, 4                          ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17
  %i.f = icmp ugt i32 %i.c, %i.e
  %.pre3.i = load ptr, ptr %0, align 8, !tbaa !30 ; 6 uses
  br i1 %i.f, label %bb.b, label %_ZN13NetworkPacketlsEf.exit

bb.b:                                             ; preds = %bb.a
  store i32 %i.c, ptr %i.d, align 8, !tbaa !17
  %i.g = zext i32 %i.c to i64                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !29   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.pre3.i to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = icmp ult i64 %i.l, %i.g
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = sub nuw nsw i64 %i.g, %i.l
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.n)
  %.pre.i = load i32, ptr %i.a, align 4, !tbaa !31
  %.pre2.i = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN13NetworkPacketlsEf.exit

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ugt i64 %i.l, %i.g
  br i1 %i.o, label %bb.e, label %_ZN13NetworkPacketlsEf.exit

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.pre3.i, i64 %i.g ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.p
  br i1 %.not.i.i.i.i, label %_ZN13NetworkPacketlsEf.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.e
  store ptr %i.p, ptr %i.h, align 8, !tbaa !29
  br label %_ZN13NetworkPacketlsEf.exit

_ZN13NetworkPacketlsEf.exit:                      ; preds = %bb.a, %bb.c, %bb.d, %bb.e, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i
  %i.q = phi ptr [ %.pre3.i, %bb.a ], [ %.pre2.i, %bb.c ], [ %.pre3.i, %bb.d ], [ %.pre3.i, %bb.e ], [ %.pre3.i, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.r = phi i32 [ %i.b, %bb.a ], [ %.pre.i, %bb.c ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ %i.b, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  %i.s = zext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  tail call void @_Z8writeF32Phf(ptr noundef nonnull %i.t, float noundef %.sroa.01.0.vec.extract)
  %i.u = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %i.v = add i32 %i.u, 4                          ; 5 uses
  store i32 %i.v, ptr %i.a, align 4, !tbaa !31
  %.sroa.01.4.vec.extract = extractelement <2 x float> %1, i64 1
  %i.w = add i32 %i.u, 8                          ; 3 uses
  %i.x = load i32, ptr %i.d, align 8, !tbaa !17
  %i.y = icmp ugt i32 %i.w, %i.x
  %.pre3.i2 = load ptr, ptr %0, align 8, !tbaa !30 ; 6 uses
  br i1 %i.y, label %bb.f, label %_ZN13NetworkPacketlsEf.exit7

bb.f:                                             ; preds = %_ZN13NetworkPacketlsEf.exit
  store i32 %i.w, ptr %i.d, align 8, !tbaa !17
  %i.z = zext i32 %i.w to i64                     ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !29 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = ptrtoint ptr %.pre3.i2 to i64
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp ult i64 %i.ae, %i.z
  br i1 %i.af, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ag = sub nuw nsw i64 %i.z, %i.ae
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 noundef %i.ag)
  %.pre.i5 = load i32, ptr %i.a, align 4, !tbaa !31
  %.pre2.i6 = load ptr, ptr %0, align 8, !tbaa !30
  br label %_ZN13NetworkPacketlsEf.exit7

bb.h:                                             ; preds = %bb.f
  %i.ah = icmp ugt i64 %i.ae, %i.z
  br i1 %i.ah, label %bb.i, label %_ZN13NetworkPacketlsEf.exit7

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.pre3.i2, i64 %i.z ; 2 uses
  %.not.i.i.i.i3 = icmp eq ptr %i.ab, %i.ai
  br i1 %.not.i.i.i.i3, label %_ZN13NetworkPacketlsEf.exit7, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i4

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i4:   ; preds = %bb.i
  store ptr %i.ai, ptr %i.aa, align 8, !tbaa !29
end_hunk_0
