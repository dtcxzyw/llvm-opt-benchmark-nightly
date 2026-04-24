inline.NumInlined: 5894
inline.NumDeleted: 2006
begin_hunk_0_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a

_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit.thread: ; preds = %bb.v, %.noexc.i.i101, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit
  %.sroa.30.0 = phi ptr [ %i.jf, %.noexc.i.i101 ], [ inttoptr (i64 844424930131968 to ptr), %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ inttoptr (i64 844424930131968 to ptr), %bb.v ] ; 4 uses
  %.sroa.22.0 = phi i64 [ 512, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ]
  %.not445 = phi i1 [ true, %.noexc.i.i101 ], [ false, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ false, %bb.v ]
  %.sroa.22.0.a = phi i32 [ 16, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ] ; 4 uses
  %.sroa.0242.0 = phi i64 [ 1, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ]
  %.sroa.0242.0.a = phi i32 [ 1, %.noexc.i.i101 ], [ 0, %_ZNK10glTFCommon3RefIN4glTF8AccessorEEcvbEv.exit ], [ 0, %bb.v ] ; 4 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.jp = load ptr, ptr %i.jo, align 8            ; 3 uses
  %.not.i105 = icmp eq ptr %i.jp, null
end_hunk_0
begin_hunk_1_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.kk = ptrtoint ptr %.sroa.30.0 to i64         ; 2 uses
  %i.kl = and i64 %i.kk, 281474976710655
  %i.km = inttoptr i64 %i.kl to ptr
  %i.kn = call noundef ptr @_ZN9rapidjson19MemoryPoolAllocatorINS_12CrtAllocatorEE7ReallocEPvmm(ptr noundef nonnull align 8 dereferenceable(24) %i.kj, ptr noundef %i.km, i64 noundef %.sroa.22.0, i64 noundef 512)
  %i.ko = and i64 %i.kk, -281474976710656
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = or i64 %i.ko, %i.kp
end_hunk_1
begin_hunk_2_@_ZN4glTF5WriteERN9rapidjson12GenericValueINS0_4UTF8IcEENS0_19MemoryPoolAllocatorINS0_12CrtAllocatorEEEEERNS_9AnimationERNS_11AssetWriterE:bb.a
  %i.kx = ptrtoint ptr %.sroa.30.5 to i64
  %i.ky = and i64 %i.kx, 281474976710655
  %i.kz = inttoptr i64 %i.ky to ptr
  %i.la = getelementptr inbounds nuw [32 x i8], ptr %i.kz, i64 %.sroa.0242.0 ; 6 uses
  store i32 8, ptr %i.la, align 8
  %.sroa.6.0..sroa_idx.i.i110 = getelementptr inbounds nuw i8, ptr %i.la, i64 4
  store i32 0, ptr %.sroa.6.0..sroa_idx.i.i110, align 4
end_hunk_2
begin_hunk_3_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  br i1 %or.cond448, label %.lr.ph518, label %.critedge186, !prof !619, !llvm.loop !625

.critedge186:                                     ; preds = %bb.k, %bb.h, %bb.p, %bb.n, %.lr.ph518, %.preheader462, %.preheader460, %bb.c
  %i.bv = phi i8 [ %.pre, %bb.c ], [ %i.bk, %bb.p ], [ %i.y, %bb.h ], [ %i.n, %.preheader460 ], [ %i.az, %bb.n ], [ %i.n, %.preheader462 ], [ %i.bt, %.lr.ph518 ], [ %i.aj, %bb.k ] ; 2 uses
  %.3116374 = phi i64 [ 0, %bb.c ], [ %i.bi, %bb.p ], [ 0, %bb.h ], [ 0, %.preheader460 ], [ %i.ax, %bb.n ], [ 0, %.preheader462 ], [ %.3116, %.lr.ph518 ], [ 0, %bb.k ] ; 3 uses
  %3 = phi i8 [ 0, %bb.c ], [ 0, %bb.p ], [ 0, %bb.h ], [ 0, %.preheader460 ], [ 0, %bb.n ], [ 0, %.preheader462 ], [ 1, %.lr.ph518 ], [ 0, %bb.k ] ; 2 uses
  %.0134373 = phi i1 [ false, %bb.c ], [ false, %bb.p ], [ false, %bb.h ], [ false, %.preheader460 ], [ false, %bb.n ], [ false, %.preheader462 ], [ true, %.lr.ph518 ], [ false, %bb.k ]
  %.5148372 = phi i32 [ 0, %bb.c ], [ %i.bj, %bb.p ], [ %i.x, %bb.h ], [ 0, %.preheader460 ], [ %i.ay, %bb.n ], [ 0, %.preheader462 ], [ %.5148, %.lr.ph518 ], [ %i.ai, %bb.k ] ; 2 uses
  %.0152361371 = phi i1 [ false, %bb.c ], [ true, %bb.p ], [ false, %bb.h ], [ false, %.preheader460 ], [ true, %bb.n ], [ false, %.preheader462 ], [ true, %.lr.ph518 ], [ false, %bb.k ] ; 3 uses
  %.2112362370 = phi i32 [ 0, %bb.c ], [ %.0113.shrunk, %bb.p ], [ %i.w, %bb.h ], [ %i.m, %.preheader460 ], [ %.0113.shrunk, %bb.n ], [ %i.m, %.preheader462 ], [ %.0113.shrunk, %.lr.ph518 ], [ %i.ah, %bb.k ] ; 5 uses
  %.sroa.0.7 = phi ptr [ %i.i, %bb.c ], [ %i.bf, %bb.p ], [ %i.t, %bb.h ], [ %i.k, %.preheader460 ], [ %i.au, %bb.n ], [ %i.k, %.preheader462 ], [ %i.bo, %.lr.ph518 ], [ %i.ae, %bb.k ] ; 2 uses
  %.2102 = phi double [ 0.000000e+00, %bb.c ], [ 0.000000e+00, %bb.p ], [ 0.000000e+00, %bb.h ], [ 0.000000e+00, %.preheader460 ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %.preheader462 ], [ %i.bs, %.lr.ph518 ], [ 0.000000e+00, %bb.k ] ; 2 uses
  %i.bw = icmp eq i8 %i.bv, 46
  br i1 %i.bw, label %bb.q, label %.critedge191, !prof !609

end_hunk_3
begin_hunk_4_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  br label %.thread434

bb.s:                                             ; preds = %bb.q
  br i1 %.0134373, label %.lr.ph539.preheader, label %.lr.ph525.preheader

.lr.ph525.preheader:                              ; preds = %bb.s
  %i.ce = zext i32 %.2112362370 to i64
end_hunk_4
begin_hunk_5_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
  %.3103621 = phi double [ %i.ci, %.thread622 ], [ %.2102, %bb.s ]
  %.6119620 = phi i64 [ %.5118524, %.thread622 ], [ %.3116374, %bb.s ] ; 2 uses
  %.1130619 = phi i32 [ %.0129523, %.thread622 ], [ 0, %bb.s ]
  %.1135618 = phi i8 [ 1, %.thread622 ], [ %3, %bb.s ] ; 2 uses
  %.8151617 = phi i32 [ %.6149522, %.thread622 ], [ %.5148372, %bb.s ]
  %.sroa.0.9616 = phi ptr [ %.sroa.0.8521, %.thread622 ], [ %i.bx, %bb.s ]
  %i.cu = phi i8 [ %i.cf, %.thread622 ], [ %i.by, %bb.s ]
end_hunk_5
begin_hunk_6_@_ZN9rapidjson13GenericReaderINS_4UTF8IcEES2_NS_12CrtAllocatorEE11ParseNumberILj1ENS_25GenericInsituStringStreamIS2_EENS_15GenericDocumentIS2_NS_19MemoryPoolAllocatorIS3_EES3_EEEEvRT0_RT1_:bb.a
.critedge191:                                     ; preds = %.lr.ph539, %.critedge186
  %.pr405 = phi i8 [ %i.bv, %.critedge186 ], [ %i.cv, %.lr.ph539 ]
  %.sroa.0.12 = phi ptr [ %.sroa.0.7, %.critedge186 ], [ %.sroa.0.10535, %.lr.ph539 ] ; 5 uses
  %.2136 = phi i8 [ %3, %.critedge186 ], [ %.1135618, %.lr.ph539 ] ; 2 uses
  %.4133 = phi i32 [ 0, %.critedge186 ], [ %.2131537, %.lr.ph539 ] ; 4 uses
  %.7120 = phi i64 [ %.3116374, %.critedge186 ], [ %.6119620, %.lr.ph539 ] ; 2 uses
  %.6106 = phi double [ %.2102, %.critedge186 ], [ %.4104538, %.lr.ph539 ] ; 2 uses
end_hunk_6
