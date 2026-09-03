Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/folly/original/Zlib?download=true
inline.NumInlined: 631
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13canUncompressEPKNS_5IOBufENS_8OptionalImEE:bb.a
  %i.ak = ptrtoint ptr %i.aj to i64
  br label %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i

_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i:        ; preds = %bb.h, %bb.g
  %i.al = phi i64 [ 0, %bb.g ], [ %i.ak, %bb.h ]
  %i.am = phi ptr [ null, %bb.g ], [ %i.ah, %bb.h ] ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 2
  %.not.i.i6.i = icmp ugt i64 %i.ao, %i.al
  br i1 %.not.i.i6.i, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.i, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.thread.i, !prof !75

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.i: ; preds = %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i
  %i.ap = call noundef i64 @_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE14pullAtMostSlowEPvm(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull align 2 dereferenceable(2) %i.a, i64 noundef 2)
  %i.aq = icmp eq i64 %i.ap, 2
  br i1 %i.aq, label %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.thread.i, label %_ZN5folly11compression6detail16dataStartsWithLEItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit

_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.thread.i: ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.i, %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i
  %.in.i = phi ptr [ %i.am, %_ZN5folly2io6CursorC2EPKNS_5IOBufE.exit.i ], [ %i.a, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.i ]
  %i.ar = load i16, ptr %.in.i, align 1
  %i.as = icmp eq i16 %i.ar, -29921
  br label %_ZN5folly11compression6detail16dataStartsWithLEItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit

_ZN5folly11compression6detail16dataStartsWithLEItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit: ; preds = %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.i, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.thread.i
  %.0.i = phi i1 [ %i.as, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.thread.i ], [ false, %_ZN5folly2io10CursorBaseINS0_6CursorEKNS_5IOBufEE9tryReadLEItEEbRT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZN5folly11compression6detail16dataStartsWithLEItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit, %bb.f
  %.1 = phi i1 [ %.0, %bb.f ], [ %.0.i, %_ZN5folly11compression6detail16dataStartsWithLEItEENSt9enable_ifIXsr3std11is_unsignedIT_EE5valueEbE4typeEPKNS_5IOBufES4_m.exit ], [ false, %bb.a ]
  ret i1 %.1
}

declare noundef i64 @_ZNK5folly11compression5Codec23doMaxUncompressedLengthEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #6

declare noundef zeroext i1 @_ZNK5folly11compression5Codec25doNeedsUncompressedLengthEv(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #6

declare void @_ZN5folly11compression11StreamCodec10doCompressEPKNS_5IOBufE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.30") align 8, ptr noundef nonnull align 8 dereferenceable(49), ptr noundef) unnamed_addr #6

declare void @_ZN5folly11compression11StreamCodec12doUncompressEPKNS_5IOBufENS_8OptionalImEE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.30") align 8, ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, ptr noundef align 8 dead_on_return) unnamed_addr #6

declare void @_ZN5folly11compression5Codec16doCompressStringB5cxx11ENS_5RangeIPKcEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr) unnamed_addr #6

declare void @_ZN5folly11compression5Codec18doUncompressStringB5cxx11ENS_5RangeIPKcEENS_8OptionalImEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr, ptr, ptr noundef align 8 dead_on_return) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZNK5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec21doMaxCompressedLengthEm(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %0, i64 noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call i64 @deflateBound(ptr noundef null, i64 noundef %1)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.c = load i32, ptr %i.b, align 4, !tbaa !78
  %i.d = icmp eq i32 %i.c, 1
  %i.e = select i1 %i.d, i64 12, i64 0
  %i.f = add i64 %i.e, %i.a
  ret i64 %i.f
}

declare void @_ZNK5folly11compression5Codec23doGetUncompressedLengthEPKNS_5IOBufENS_8OptionalImEE(ptr dead_on_unwind writable sret(%"class.folly::Optional") align 8, ptr noundef nonnull align 8 dereferenceable(12), ptr noundef, ptr noundef align 8 dead_on_return) unnamed_addr #6

declare noundef zeroext i1 @_ZNK5folly11compression11StreamCodec17doNeedsDataLengthEv(ptr noundef nonnull align 8 dereferenceable(49)) unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define internal void @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec13doResetStreamEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(320) initializes((316, 317)) %0) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i8 1, ptr %i.a, align 4, !tbaa !40
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef zeroext i1 @_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec16doCompressStreamERNS_5RangeIPKhEERNS4_IPhEENS0_11StreamCodec7FlushOpE(ptr noundef nonnull align 8 dereferenceable(320) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %2, i32 noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %6 = alloca %"class.folly::detail::ScopeGuardImpl", align 8 ; 8 uses
  %7 = alloca %"class.folly::Range", align 8      ; 10 uses
  %8 = alloca %"class.folly::Range.39", align 8   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !79
  %.pre28.i = load ptr, ptr %1, align 8, !tbaa !80
  %.pre29.i = load ptr, ptr %i.d, align 8, !tbaa !82
  %.pre30.i = load ptr, ptr %2, align 8, !tbaa !83
  br label %bb.b

bb.b:                                             ; preds = %bb.an, %bb.a
  %i.s = phi ptr [ %i.eb, %bb.an ], [ %.pre30.i, %bb.a ] ; 4 uses
  %i.t = phi ptr [ %i.dv, %bb.an ], [ %.pre29.i, %bb.a ]
  %i.u = phi ptr [ %i.du, %bb.an ], [ %.pre28.i, %bb.a ] ; 3 uses
  %i.v = phi ptr [ %i.do, %bb.an ], [ %.pre.i, %bb.a ]
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.u to i64
  %i.y = sub i64 %i.w, %i.x                       ; 2 uses
  %.sroa.speculated3.i = call i64 @llvm.umin.i64(i64 %i.y, i64 4194304) ; 3 uses
  %i.z = ptrtoint ptr %i.t to i64
  %i.aa = ptrtoint ptr %i.s to i64
  %i.ab = sub i64 %i.z, %i.aa
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 4194304) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 %.sroa.speculated3.i
  store ptr %i.u, ptr %7, align 8
  store ptr %i.ac, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 %.sroa.speculated.i
  store ptr %i.s, ptr %8, align 8
  store ptr %i.ad, ptr %i.f, align 8
  %i.ae = icmp ult i64 %i.y, 4194305
  %i.af = select i1 %i.ae, i32 %3, i32 0          ; 3 uses
  %i.ag = load i8, ptr %i.g, align 4, !tbaa !40, !range !55, !noundef !56
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %bb.c, label %bb.v

bb.c:                                             ; preds = %bb.b
  %i.ai = load i8, ptr %i.i, align 8, !tbaa !54, !range !55, !noundef !56
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.d, label %_ZN5folly8OptionalI10z_stream_sEaSIS1_EERS2_OT_.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.ak = call i32 @deflateReset(ptr noundef nonnull %i.h) ; 2 uses
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !13
  %.not14.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not14.i.i.i, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 0, ptr %i.i, align 8, !tbaa !31
  %i.al = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA38_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(38) @.str.29, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.f unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i

bb.f:                                             ; preds = %bb.e
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
          to label %bb.u unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i: ; preds = %bb.e
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %.05.i.i.i = phi i1 [ false, %bb.g ], [ true, %bb.f ] ; 2 uses
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ao = load ptr, ptr %4, align 8, !tbaa !45    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.h
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !29
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.05.i.i.i, label %bb.i, label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br i1 %.05.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i
  %.pn1524.i.i.i = phi { ptr, i32 } [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.al) #24
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn1523.i.i.i = phi { ptr, i32 } [ %.pn1524.i.i.i, %bb.i ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %i.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %common.resume.i.i

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec18resetDeflateStreamEv.exit.i.i

_ZN5folly8OptionalI10z_stream_sEaSIS1_EERS2_OT_.exit.i.i.i: ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.h, i8 0, i64 112, i1 false)
  store i8 1, ptr %i.i, align 8, !tbaa !54
  %i.at = load i32, ptr %i.j, align 4, !tbaa !78  ; 2 uses
  %9 = icmp eq i32 %i.at, 3
  %spec.select.i.i.i = select i1 %9, i32 0, i32 %i.at
  %i.au = load i32, ptr %i.k, align 8, !tbaa !41  ; 4 uses
  switch i32 %spec.select.i.i.i, label %_ZN5folly11compression4zlib12_GLOBAL__N_113getWindowBitsENS1_7Options6FormatEi.exit.i.i.i [
    i32 3, label %10
    i32 1, label %bb.l
    i32 2, label %bb.m
  ]

bb.l:                                             ; preds = %_ZN5folly8OptionalI10z_stream_sEaSIS1_EERS2_OT_.exit.i.i.i
  %i.av = add nsw i32 %i.au, 16
  br label %_ZN5folly11compression4zlib12_GLOBAL__N_113getWindowBitsENS1_7Options6FormatEi.exit.i.i.i

bb.m:                                             ; preds = %_ZN5folly8OptionalI10z_stream_sEaSIS1_EERS2_OT_.exit.i.i.i
  %i.aw = sub nsw i32 0, %i.au
  br label %_ZN5folly11compression4zlib12_GLOBAL__N_113getWindowBitsENS1_7Options6FormatEi.exit.i.i.i

10:                                               ; preds = %_ZN5folly8OptionalI10z_stream_sEaSIS1_EERS2_OT_.exit.i.i.i
  %11 = add nsw i32 %i.au, 32
  br label %_ZN5folly11compression4zlib12_GLOBAL__N_113getWindowBitsENS1_7Options6FormatEi.exit.i.i.i

_ZN5folly11compression4zlib12_GLOBAL__N_113getWindowBitsENS1_7Options6FormatEi.exit.i.i.i: ; preds = %10, %bb.m, %bb.l, %_ZN5folly8OptionalI10z_stream_sEaSIS1_EERS2_OT_.exit.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.aw, %bb.m ], [ %11, %10 ], [ %i.av, %bb.l ], [ %i.au, %_ZN5folly8OptionalI10z_stream_sEaSIS1_EERS2_OT_.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ax = load i32, ptr %i.l, align 8, !tbaa !39
  %i.ay = load i32, ptr %i.m, align 4, !tbaa !46
  %i.az = load i32, ptr %i.n, align 8, !tbaa !47
  %i.ba = call i32 @deflateInit2_(ptr noundef nonnull %i.h, i32 noundef %i.ax, i32 noundef 8, i32 noundef %.0.i.i.i.i, i32 noundef %i.ay, i32 noundef %i.az, ptr noundef nonnull @.str.30, i32 noundef 112) ; 2 uses
  store i32 %i.ba, ptr %i.b, align 4, !tbaa !13
  %.not.i.i.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %_ZN5folly11compression4zlib12_GLOBAL__N_113getWindowBitsENS1_7Options6FormatEi.exit.i.i.i
  store i8 0, ptr %i.i, align 8, !tbaa !31
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  invoke void @_ZN5folly2toINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJA37_ciETnNSt9enable_ifIXaasr12IsSomeStringIT_EE5valueoonesZT0_Li1Entsr3std7is_sameIS9_19__type_pack_elementIXmisPvDpT0_ELi1EEJvSC_EEEE5valueEiE4typeELi0EEES9_DpRKSB_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 1 dereferenceable(37) @.str.31, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.o unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTISt13runtime_error, ptr nonnull @_ZNSt13runtime_errorD1Ev) #25
          to label %bb.u unwind label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i.i: ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0.i.i.i = phi i1 [ false, %bb.p ], [ true, %bb.o ] ; 2 uses
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !45    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bg = icmp eq ptr %i.be, %i.bf
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i: ; preds = %bb.q
  %i.bh = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.bi = add i64 %i.bh, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bi) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.r, label %bb.s

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i: ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br i1 %.0.i.i.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i.i
  %.pn28.i.i.i = phi { ptr, i32 } [ %i.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.thread.i.i.i ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i ]
  call void @__cxa_free_exception(ptr %i.bb) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i
  %.pn27.i.i.i = phi { ptr, i32 } [ %.pn28.i.i.i, %bb.r ], [ %i.bd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20.i.i.i ], [ %i.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %common.resume.i.i

bb.t:                                             ; preds = %_ZN5folly11compression4zlib12_GLOBAL__N_113getWindowBitsENS1_7Options6FormatEi.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec18resetDeflateStreamEv.exit.i.i

common.resume.i.i:                                ; preds = %.body.i.i, %bb.s, %bb.j
  %common.resume.op.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %.pn1523.i.i.i, %bb.j ], [ %.pn27.i.i.i, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.u:                                             ; preds = %bb.p, %bb.g
  unreachable

_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec18resetDeflateStreamEv.exit.i.i: ; preds = %bb.t, %bb.k
  store i8 0, ptr %i.g, align 4, !tbaa !40
  %.pre31.i = load ptr, ptr %8, align 8, !tbaa !83
  br label %bb.v

bb.v:                                             ; preds = %_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec18resetDeflateStreamEv.exit.i.i, %bb.b
  %i.bj = phi ptr [ %.pre31.i, %_ZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec18resetDeflateStreamEv.exit.i.i ], [ %i.s, %bb.b ] ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %"._ZZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec16doCompressStreamERNS_5RangeIPKhEERNS4_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS7_SA_SD_EEDaRT_RT0_T1_.exit_crit_edge.i", label %bb.w

"._ZZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec16doCompressStreamERNS_5RangeIPKhEERNS4_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS7_SA_SD_EEDaRT_RT0_T1_.exit_crit_edge.i": ; preds = %bb.v
  %.pre32.i = load ptr, ptr %i.e, align 8, !tbaa !79
  %.pre33.i = load ptr, ptr %7, align 8, !tbaa !80
  %.pre34.i = load ptr, ptr %i.f, align 8, !tbaa !82
  %.pre35.i = ptrtoint ptr %.pre32.i to i64
  %.pre36.i = ptrtoint ptr %.pre34.i to i64
  br label %"_ZZN5folly11compression4zlib12_GLOBAL__N_115ZlibStreamCodec16doCompressStreamERNS_5RangeIPKhEERNS4_IPhEENS0_11StreamCodec7FlushOpEENK3$_0clIS7_SA_SD_EEDaRT_RT0_T1_.exit.i"

bb.w:                                             ; preds = %bb.v
  %i.bl = load i8, ptr %i.i, align 8, !tbaa !54, !range !55, !noundef !56
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %_ZN5folly8OptionalI10z_stream_sEptEv.exit18.i.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #8
  unreachable

_ZN5folly8OptionalI10z_stream_sEptEv.exit18.i.i:  ; preds = %bb.w
  %i.bn = load ptr, ptr %7, align 8, !tbaa !80    ; 2 uses
  store ptr %i.bn, ptr %i.h, align 8, !tbaa !86
  %i.bo = load ptr, ptr %i.e, align 8, !tbaa !79
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bn to i64
  %i.br = sub i64 %i.bp, %i.bq
  %i.bs = trunc i64 %i.br to i32
  store i32 %i.bs, ptr %i.o, align 8, !tbaa !87
  store ptr %i.bj, ptr %i.p, align 8, !tbaa !88
  %i.bt = load ptr, ptr %i.f, align 8, !tbaa !82
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.bj to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i32
  store i32 %i.bx, ptr %i.q, align 8, !tbaa !89
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store i8 0, ptr %6, align 8, !tbaa !91, !alias.scope !131
  store ptr %7, ptr %i.r, align 8, !tbaa !93
  store ptr %0, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !49
  store ptr %8, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !95
  %i.by = icmp ult i32 %i.af, 3
  br i1 %i.by, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %_ZN5folly8OptionalI10z_stream_sEptEv.exit18.i.i
  %i.bz = call ptr @__cxa_allocate_exception(i64 16) #24 ; 3 uses
  invoke void @_ZNSt16invalid_argumentC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull @.str.28)
          to label %bb.z unwind label %bb.aa

bb.z:                                             ; preds = %bb.y
  invoke void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTISt16invalid_argument, ptr nonnull @_ZNSt16invalid_argumentD1Ev) #25
          to label %.noexc.i.i unwind label %.loopexit.split-lp.i

.noexc.i.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.y
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bz) #24
  br label %.body.i.i

bb.ab:                                            ; preds = %_ZN5folly8OptionalI10z_stream_sEptEv.exit18.i.i
  %switch.idx.mult.i.i.i = shl nuw nsw i32 %i.af, 1
  %i.cb = invoke i32 @deflate(ptr noundef nonnull %i.h, i32 noundef %switch.idx.mult.i.i.i)
          to label %bb.ac unwind label %.loopexit.i ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cc = invoke fastcc noundef i32 @_ZN5folly11compression4zlib12_GLOBAL__N_116zlibThrowOnErrorEi(i32 noundef %i.cb)
          to label %bb.ad unwind label %.loopexit.i ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  switch i32 %i.af, label %default.unreachable [
    i32 0, label %bb.ah
    i32 1, label %bb.ae
    i32 2, label %bb.ag
  ]

.loopexit.i:                                      ; preds = %bb.ac, %bb.ab
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i:                             ; preds = %bb.af, %bb.z
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.cd = load i8, ptr %i.i, align 8, !tbaa !54, !range !55, !noundef !56
  %i.ce = trunc nuw i8 %i.cd to i1
  br i1 %i.ce, label %_ZN5folly8OptionalI10z_stream_sEptEv.exit20.i.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5folly6detail16throw_exception_INS_22OptionalEmptyExceptionEJEEEvDpT0_() #8
          to label %.noexc19.i.i unwind label %.loopexit.split-lp.i

.noexc19.i.i:                                     ; preds = %bb.af
  unreachable

_ZN5folly8OptionalI10z_stream_sEptEv.exit20.i.i:  ; preds = %bb.ae
  %i.cf = load i32, ptr %i.o, align 8, !tbaa !87
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN5folly8OptionalI10z_stream_sEptEv.exit22.i.i, label %bb.ah

_ZN5folly8OptionalI10z_stream_sEptEv.exit22.i.i:  ; preds = %_ZN5folly8OptionalI10z_stream_sEptEv.exit20.i.i
  %i.ch = load i32, ptr %i.q, align 8, !tbaa !89
  %i.ci = icmp ne i32 %i.ch, 0
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.cj = icmp eq i32 %i.cb, 1
  br label %bb.ah

default.unreachable:                              ; preds = %bb.ad
  unreachable

bb.ah:                                            ; preds = %bb.ag, %_ZN5folly8OptionalI10z_stream_sEptEv.exit22.i.i, %_ZN5folly8OptionalI10z_stream_sEptEv.exit20.i.i, %bb.ad
  %.014.i.i = phi i1 [ %i.cj, %bb.ag ], [ false, %bb.ad ], [ false, %_ZN5folly8OptionalI10z_stream_sEptEv.exit20.i.i ], [ %i.ci, %_ZN5folly8OptionalI10z_stream_sEptEv.exit22.i.i ]
  %i.ck = load i8, ptr %i.i, align 8, !tbaa !54, !range !55, !noundef !56
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %"_ZN5folly6detail14ScopeGuardImplIZZNS_11compression4zlib12_GLOBAL__N_115ZlibStreamCodec16doCompressStreamERNS_5RangeIPKhEERNS6_IPhEENS2_11StreamCodec7FlushOpEENK3$_0clIS9_SC_SF_EEDaRT_RT0_T1_EUlvE_Lb1EED2Ev.exit.i.i", label %bb.ai
end_hunk_0
