Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTFImporter?download=true
inline.NumInlined: 5894
inline.NumDeleted: 2006
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA30_KcS6_RA3_S7_ERA55_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_:bb.a
  %i.g = getelementptr inbounds i8, ptr %7, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %7) #28
  resume { ptr, i32 } %i.q
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA54_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(54) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(54) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(54) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERA52_KcEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(52) %2) #28
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(52) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #29
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #28
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #28
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc19TriangleListDecoderItE6DecodeEPtllRKNS_12BinaryStreamERm(ptr noundef nonnull align 8 dereferenceable(406) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %5, align 8                ; 2 uses
  %i.b = add i64 %i.a, 1
  store i64 %i.b, ptr %5, align 8
  %i.c = load ptr, ptr %4, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.a
  %.0.i = load i8, ptr %i.d, align 1              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 404 ; 2 uses
  %i.f = lshr i8 %.0.i, 1
  %.lobit = and i8 %i.f, 1
  store i8 %.lobit, ptr %i.e, align 4
  %i.g = trunc i8 %.0.i to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 405
  %i.i = and i8 %.0.i, 1
  store i8 %i.i, ptr %i.h, align 1
  br i1 %i.g, label %_ZN5o3dgc19TriangleListDecoderItE10DecompressEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = tail call noundef i64 @_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.k)
  %i.m = tail call noundef i32 @_ZN5o3dgc19TriangleListDecoderItE4InitEPtlll(ptr noundef nonnull align 8 dereferenceable(406) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %i.l) ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.o = load i8, ptr %i.e, align 4, !range !24, !noundef !25
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = load i32, ptr %i.j, align 8
  %i.r = tail call noundef i32 @_ZN5o3dgc22CompressedTriangleFans4LoadERKNS_12BinaryStreamERmbNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(164) %i.n, ptr noundef nonnull align 8 dereferenceable(28) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext %i.p, i32 noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = icmp sgt i64 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %_ZN5o3dgc19TriangleListDecoderItE10DecompressEv.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge7.i, %.lr.ph.i
  %.06.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %._crit_edge7.i ] ; 4 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = icmp eq i64 %.06.i, %i.w
  %i.y = add nuw nsw i64 %.06.i, 1                ; 3 uses
  br i1 %i.x, label %bb.d, label %._crit_edge7.i

bb.d:                                             ; preds = %bb.c
  store i64 %i.y, ptr %i.v, align 8
  br label %._crit_edge7.i

._crit_edge7.i:                                   ; preds = %bb.d, %bb.c
  %i.z = tail call noundef i32 @_ZN5o3dgc19TriangleListDecoderItE27CompueLocalConnectivityInfoEl(ptr noundef nonnull align 8 dereferenceable(406) %0, i64 noundef %.06.i) ; 0 uses
  %i.aa = tail call noundef i32 @_ZN5o3dgc19TriangleListDecoderItE14DecompressTFANEl(ptr noundef nonnull align 8 dereferenceable(406) %0, i64 noundef %.06.i) ; 0 uses
  %i.ab = load i64, ptr %i.s, align 8
  %i.ac = icmp slt i64 %i.y, %i.ab
  br i1 %i.ac, label %bb.c, label %_ZN5o3dgc19TriangleListDecoderItE10DecompressEv.exit, !llvm.loop !810

_ZN5o3dgc19TriangleListDecoderItE10DecompressEv.exit: ; preds = %._crit_edge7.i, %bb.b, %bb.a
  %.0 = phi i32 [ 6, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge7.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, ptr noundef nonnull align 8 dereferenceable(80000) %8, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 8 dereferenceable(28) %10) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 7 uses
  %i.b = alloca [32 x float], align 16            ; 8 uses
  %11 = alloca [2 x %"struct.o3dgc::SC3DMCPredictor"], align 16 ; 20 uses
  %12 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 23 uses
  %13 = alloca %"class.o3dgc::Static_Bit_Model", align 4 ; 9 uses
  %14 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 9 uses
  %15 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  %16 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 9 uses
  %17 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #28
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #28
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %15, i32 noundef 3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = mul i64 %3, %2                           ; 7 uses
  %i.f = load i64, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12872 ; 7 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = invoke noundef i64 @_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %10, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.h)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = load i64, ptr %0, align 8                ; 2 uses
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %0, align 8
  %i.l = load ptr, ptr %10, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %.0.i = load i8, ptr %i.m, align 1
  %i.n = zext i8 %.0.i to i32                     ; 2 uses
  %i.o = lshr i32 %i.n, 4
  %i.p = and i32 %i.o, 7                          ; 2 uses
  %i.q = and i32 %i.n, 7
  store i32 %i.q, ptr %9, align 4
  %i.r = load i64, ptr %0, align 8                ; 2 uses
  %.neg = add i64 %i.i, %i.f                      ; 4 uses
  %i.s = sub i64 %.neg, %i.r
  %i.t = load i32, ptr %i.g, align 8
  %.not = icmp eq i32 %i.t, 1
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not266 = icmp eq i32 %i.p, 4
  br i1 %.not266, label %bb.k, label %bb.cv

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.i:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.j:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp521

bb.k:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %10, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.r
  store i64 %.neg, ptr %0, align 8
  %i.aa = trunc i64 %i.s to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %12, i32 noundef %i.aa, ptr noundef %i.z)
          to label %bb.l unwind label %.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %.preheader531 unwind label %.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader531:                                    ; preds = %bb.l, %.noexc
  %.014.i = phi i32 [ %.115.i, %.noexc ], [ 0, %bb.l ] ; 2 uses
  %.012.i = phi i32 [ %.113.i, %.noexc ], [ 0, %bb.l ]
  %i.ab = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc unwind label %.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader531
  %i.ac = icmp eq i32 %i.ab, 1                    ; 2 uses
  %i.ad = shl nuw i32 1, %.014.i
  %i.ae = zext i1 %i.ac to i32
  %.115.i = add nuw nsw i32 %.014.i, %i.ae        ; 3 uses
  %i.af = select i1 %i.ac, i32 %i.ad, i32 0
  %.113.i = add nsw i32 %i.af, %.012.i            ; 2 uses
  %.not.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader531, !llvm.loop !14

.preheader.i:                                     ; preds = %.noexc
  %.not1617.i = icmp eq i32 %.115.i, 0
  br i1 %.not1617.i, label %.loopexit530, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc296
  %.019.i = phi i32 [ %.1.i, %.noexc296 ], [ 0, %.preheader.i ]
  %.218.i = phi i32 [ %i.ah, %.noexc296 ], [ %.115.i, %.preheader.i ]
  %i.ag = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc296 unwind label %.loopexit.split-lp521.loopexit.split-lp.loopexit

.noexc296:                                        ; preds = %.lr.ph.i
  %i.ah = add nsw i32 %.218.i, -1                 ; 3 uses
  %i.ai = icmp eq i32 %i.ag, 1
  %i.aj = shl nuw i32 1, %i.ah
  %i.ak = select i1 %i.ai, i32 %i.aj, i32 0
  %.1.i = or i32 %i.ak, %.019.i                   ; 2 uses
  %.not16.i = icmp eq i32 %i.ah, 0
  br i1 %.not16.i, label %.loopexit530, label %.lr.ph.i, !llvm.loop !15

.loopexit530:                                     ; preds = %.noexc296, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %.noexc296 ]
  %i.al = add nsw i32 %.0.lcssa.i, %.113.i
  br label %bb.m

bb.m:                                             ; preds = %.noexc310, %.loopexit530
  %.014.i297 = phi i32 [ 0, %.loopexit530 ], [ %.115.i299, %.noexc310 ] ; 2 uses
  %.012.i298 = phi i32 [ 0, %.loopexit530 ], [ %.113.i300, %.noexc310 ]
  %i.am = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc310 unwind label %.loopexit.split-lp521.loopexit ; 2 uses

.noexc310:                                        ; preds = %bb.m
  %i.an = icmp eq i32 %i.am, 1                    ; 2 uses
  %i.ao = shl nuw i32 1, %.014.i297
  %i.ap = zext i1 %i.an to i32
  %.115.i299 = add nuw nsw i32 %.014.i297, %i.ap  ; 3 uses
  %i.aq = select i1 %i.an, i32 %i.ao, i32 0
  %.113.i300 = add nsw i32 %i.aq, %.012.i298      ; 2 uses
  %.not.i301 = icmp eq i32 %i.am, 0
  br i1 %.not.i301, label %.preheader.i302, label %bb.m, !llvm.loop !14

.preheader.i302:                                  ; preds = %.noexc310
  %.not1617.i303 = icmp eq i32 %.115.i299, 0
  br i1 %.not1617.i303, label %.loopexit524, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.preheader.i302, %.noexc311
  %.019.i305 = phi i32 [ %.1.i307, %.noexc311 ], [ 0, %.preheader.i302 ]
  %.218.i306 = phi i32 [ %i.as, %.noexc311 ], [ %.115.i299, %.preheader.i302 ]
  %i.ar = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc311 unwind label %.loopexit520

.noexc311:                                        ; preds = %.lr.ph.i304
  %i.as = add nsw i32 %.218.i306, -1              ; 3 uses
  %i.at = icmp eq i32 %i.ar, 1
  %i.au = shl nuw i32 1, %i.as
  %i.av = select i1 %i.at, i32 %i.au, i32 0
  %.1.i307 = or i32 %i.av, %.019.i305             ; 2 uses
  %.not16.i308 = icmp eq i32 %i.as, 0
  br i1 %.not16.i308, label %.loopexit524, label %.lr.ph.i304, !llvm.loop !15

.loopexit524:                                     ; preds = %.noexc311, %.preheader.i302
  %.0.lcssa.i309 = phi i32 [ 0, %.preheader.i302 ], [ %.1.i307, %.noexc311 ]
  %i.aw = add nsw i32 %.0.lcssa.i309, %.113.i300
  br label %bb.p

.loopexit520:                                     ; preds = %.lr.ph.i304
  %lpad.loopexit522 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp521

.loopexit.split-lp521.loopexit:                   ; preds = %bb.m
  %lpad.loopexit525 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp521

.loopexit.split-lp521.loopexit.split-lp.loopexit: ; preds = %.lr.ph.i
  %lpad.loopexit528 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp521

.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.preheader531
  %lpad.loopexit532 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp521

.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.k
  %lpad.loopexit.split-lp533 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp521

bb.n:                                             ; preds = %bb.e
  %.not265 = icmp eq i32 %i.p, 5
  br i1 %.not265, label %bb.o, label %bb.cv

bb.o:                                             ; preds = %bb.n
  %i.ax = add i64 %.neg, 5
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.loopexit524
  %.0463 = phi i64 [ %i.ax, %bb.o ], [ %.neg, %.loopexit524 ] ; 2 uses
  %.0232 = phi i32 [ 0, %bb.o ], [ %i.al, %.loopexit524 ] ; 3 uses
  %.0231 = phi i32 [ 0, %bb.o ], [ %i.aw, %.loopexit524 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
end_hunk_0
begin_hunk_1_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.x:                                             ; preds = %bb.s, %bb.ar, %.loopexit518
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp504

.lr.ph560:                                        ; preds = %.preheader517, %bb.ac
  %.0228559 = phi i64 [ %i.da, %bb.ac ], [ 0, %.preheader517 ]
  %i.bp = load i64, ptr %0, align 8               ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 2 uses
  store i64 %i.bq, ptr %0, align 8
  %i.br = load ptr, ptr %10, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bp
  %i.bt = load i8, ptr %i.bs, align 1             ; 2 uses
  %i.bu = zext i8 %i.bt to i64
  %i.bv = icmp eq i8 %i.bt, 127
  br i1 %i.bv, label %.preheader.i.i, label %.loopexit516

.preheader.i.i:                                   ; preds = %.lr.ph560, %.preheader.i.i
  %i.bw = phi i64 [ %i.bx, %.preheader.i.i ], [ %i.bq, %.lr.ph560 ] ; 2 uses
  %.09.i.i = phi i64 [ %i.ce, %.preheader.i.i ], [ 127, %.lr.ph560 ]
  %.0.i.i = phi i64 [ %i.cf, %.preheader.i.i ], [ 0, %.lr.ph560 ] ; 2 uses
  %i.bx = add i64 %i.bw, 1                        ; 2 uses
  store i64 %i.bx, ptr %0, align 8
  %i.by = load ptr, ptr %10, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.bw
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = zext i8 %i.ca to i64                    ; 2 uses
  %i.cc = lshr i64 %i.cb, 1
  %i.cd = shl i64 %i.cc, %.0.i.i
  %i.ce = add i64 %i.cd, %.09.i.i                 ; 2 uses
  %i.cf = add i64 %.0.i.i, 6
  %i.cg = and i64 %i.cb, 1
  %.not.i.i = icmp eq i64 %i.cg, 0
  br i1 %.not.i.i, label %.loopexit516, label %.preheader.i.i, !llvm.loop !16

.loopexit516:                                     ; preds = %.preheader.i.i, %.lr.ph560
  %.1.i.i = phi i64 [ %i.bu, %.lr.ph560 ], [ %i.ce, %.preheader.i.i ] ; 3 uses
  %i.ch = and i64 %.1.i.i, 1
  %.not.i2.i = icmp eq i64 %i.ch, 0
  %i.ci = add i64 %.1.i.i, 1
  %i.cj = lshr exact i64 %i.ci, 1
  %i.ck = sub nsw i64 0, %i.cj
  %i.cl = lshr exact i64 %.1.i.i, 1
  %i.cm = select i1 %.not.i2.i, i64 %i.cl, i64 %i.ck
  %i.cn = trunc i64 %i.cm to i8
  %i.co = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.cp = load i64, ptr %i.bc, align 8
  %i.cq = icmp eq i64 %i.co, %i.cp
  br i1 %i.cq, label %bb.y, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.loopexit516
  %.pre.i = load ptr, ptr %i.bb, align 8
  br label %bb.ac

bb.y:                                             ; preds = %.loopexit516
  %i.cr = shl i64 %i.co, 1
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.cr, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.bc, align 8
  %i.cs = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i) #32
          to label %.noexc317 unwind label %bb.ad ; 3 uses

.noexc317:                                        ; preds = %bb.y
  %i.ct = load i64, ptr %i.bk, align 8            ; 3 uses
  %.not.i316 = icmp eq i64 %i.ct, 0
  br i1 %.not.i316, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %.noexc317
  %i.cu = load ptr, ptr %i.bb, align 8            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cs, ptr align 1 %i.cu, i64 %i.ct, i1 false)
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %i.cu) #29
  %.pre6.pre.i = load i64, ptr %i.bk, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %.noexc317
  %.pre6.i = phi i64 [ %i.ct, %bb.z ], [ %.pre6.pre.i, %bb.aa ], [ 0, %.noexc317 ]
  store ptr %i.cs, ptr %i.bb, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i
  %i.cw = phi i64 [ %i.co, %._crit_edge.i ], [ %.pre6.i, %bb.ab ] ; 2 uses
  %i.cx = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cs, %bb.ab ]
  %i.cy = add i64 %i.cw, 1
  store i64 %i.cy, ptr %i.bk, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 %i.cn, ptr %i.cz, align 1
  %i.da = add nuw i64 %.0228559, 1                ; 2 uses
  %exitcond627.not = icmp eq i64 %i.da, %2
  br i1 %exitcond627.not, label %.loopexit518, label %.lr.ph560, !llvm.loop !811

bb.ad:                                            ; preds = %bb.y
  %i.db = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp504

bb.ae:                                            ; preds = %_ZN5o3dgc6VectorIcE8AllocateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %17, i32 noundef 12)
          to label %.preheader519 unwind label %bb.af

.preheader519:                                    ; preds = %bb.ae
  %.not603 = icmp eq i64 %2, 0
  br i1 %.not603, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.al, %.preheader519
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.loopexit518

bb.af:                                            ; preds = %bb.ae
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

.lr.ph:                                           ; preds = %.preheader519, %bb.al
  %.0227558 = phi i64 [ %i.dy, %bb.al ], [ 0, %.preheader519 ]
  %i.dd = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %17)
          to label %bb.ag unwind label %bb.am

bb.ag:                                            ; preds = %.lr.ph
  %i.de = zext i32 %i.dd to i64                   ; 3 uses
  %i.df = and i64 %i.de, 1
  %.not.i318 = icmp eq i64 %i.df, 0
  %i.dg = add nuw nsw i64 %i.de, 1
  %i.dh = lshr exact i64 %i.dg, 1
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = lshr exact i64 %i.de, 1
  %i.dk = select i1 %.not.i318, i64 %i.dj, i64 %i.di
  %i.dl = trunc i64 %i.dk to i8
  %i.dm = load i64, ptr %i.bk, align 8            ; 3 uses
  %i.dn = load i64, ptr %i.bc, align 8
  %i.do = icmp eq i64 %i.dm, %i.dn
  br i1 %i.do, label %bb.ah, label %._crit_edge.i319

._crit_edge.i319:                                 ; preds = %bb.ag
  %.pre.i320 = load ptr, ptr %i.bb, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.ag
  %i.dp = shl i64 %i.dm, 1
  %spec.select.i321 = call i64 @llvm.umax.i64(i64 %i.dp, i64 32) ; 2 uses
  store i64 %spec.select.i321, ptr %i.bc, align 8
  %i.dq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i321) #32
          to label %.noexc325 unwind label %bb.am ; 3 uses

.noexc325:                                        ; preds = %bb.ah
  %i.dr = load i64, ptr %i.bk, align 8            ; 3 uses
  %.not.i322 = icmp eq i64 %i.dr, 0
  br i1 %.not.i322, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %.noexc325
  %i.ds = load ptr, ptr %i.bb, align 8            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %i.ds, i64 %i.dr, i1 false)
  %i.dt = icmp eq ptr %i.ds, null
  br i1 %i.dt, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdaPv(ptr noundef nonnull %i.ds) #29
  %.pre6.pre.i323 = load i64, ptr %i.bk, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %.noexc325
  %.pre6.i324 = phi i64 [ %i.dr, %bb.ai ], [ %.pre6.pre.i323, %bb.aj ], [ 0, %.noexc325 ]
  store ptr %i.dq, ptr %i.bb, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i319
  %i.du = phi i64 [ %i.dm, %._crit_edge.i319 ], [ %.pre6.i324, %bb.ak ] ; 2 uses
  %i.dv = phi ptr [ %.pre.i320, %._crit_edge.i319 ], [ %i.dq, %bb.ak ]
  %i.dw = add i64 %i.du, 1
  store i64 %i.dw, ptr %i.bk, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 %i.dl, ptr %i.dx, align 1
  %i.dy = add nuw i64 %.0227558, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dy, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !812

bb.am:                                            ; preds = %bb.ah, %.lr.ph
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #28
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.af
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.am ], [ %i.dc, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.loopexit.split-lp504

.loopexit518:                                     ; preds = %bb.ac, %.preheader517, %._crit_edge
  %i.ea = invoke noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE14ProcessNormalsERKNS_14IndexedFaceSetItEE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef nonnull align 8 dereferenceable(80000) %8)
          to label %bb.ao unwind label %bb.x      ; 0 uses

bb.ao:                                            ; preds = %.loopexit518, %bb.q
  %.0251 = phi i64 [ %3, %bb.q ], [ 2, %.loopexit518 ] ; 26 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8
  %i.ed = icmp ult i64 %i.ec, %i.e
  br i1 %i.ed, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 2 uses
  %i.eg = icmp eq ptr %i.ef, null
  br i1 %i.eg, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.ef) #29
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  store i64 %i.e, ptr %i.eb, align 8
  %i.eh = icmp ugt i64 %i.e, 2305843009213693951
  %i.ei = shl nuw i64 %i.e, 3
  %i.ej = select i1 %i.eh, i64 -1, i64 %i.ei
  %i.ek = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ej) #32
          to label %bb.as unwind label %bb.x

bb.as:                                            ; preds = %bb.ar
  store ptr %i.ek, ptr %i.ee, align 8
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ao
  %i.el = icmp sgt i64 %2, 0                      ; 2 uses
  br i1 %i.el, label %.lr.ph594, label %._crit_edge595

.lr.ph594:                                        ; preds = %bb.at
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %.not605 = icmp eq i64 %.0251, 0                ; 7 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 7 uses
  %i.ep = zext i32 %.0231 to i64                  ; 3 uses
  %i.eq = shl nuw i64 %.0251, 3                   ; 3 uses
  %min.iters.check = icmp ult i64 %.0251, 4
  %n.vec = and i64 %.0251, -4                     ; 3 uses
  %cmp.n = icmp eq i64 %.0251, %n.vec
  br label %bb.au

._crit_edge595:                                   ; preds = %.loopexit512, %bb.at
  %.1.lcssa = phi i64 [ %.0463, %bb.at ], [ %.3, %.loopexit512 ]
  store i64 %.1.lcssa, ptr %0, align 8
  %i.er = load i32, ptr %9, align 4
  %18 = icmp eq i32 %i.er, 6
  %i.es = icmp eq i64 %.0251, 0                   ; 2 uses
  br i1 %18, label %bb.co, label %bb.cs

bb.au:                                            ; preds = %.lr.ph594, %.loopexit512
  %.0226590 = phi i64 [ 0, %.lr.ph594 ], [ %i.ti, %.loopexit512 ] ; 17 uses
  %.1589 = phi i64 [ %.0463, %.lr.ph594 ], [ %.3, %.loopexit512 ] ; 7 uses
  %i.et = load ptr, ptr %i.em, align 8            ; 3 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0226590 ; 3 uses
  %i.ev = load i64, ptr %i.eu, align 8            ; 2 uses
  %.not482 = icmp eq i64 %.0226590, 0             ; 3 uses
  br i1 %.not482, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ew = getelementptr i8, ptr %i.eu, i64 -8
  %i.ex = load i64, ptr %i.ew, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.au, %bb.av
  %i.ey = phi i64 [ %i.ex, %bb.av ], [ 0, %bb.au ]
  %i.ez = icmp sgt i64 %i.ev, %i.ey
  br i1 %i.ez, label %bb.aw, label %.critedge295.thread

bb.aw:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.fa = load i32, ptr %9, align 4               ; 3 uses
  %.not268 = icmp eq i32 %i.fa, 0
  br i1 %.not268, label %.critedge295.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  br i1 %.not482, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fb = getelementptr i8, ptr %i.eu, i64 -8
  %i.fc = load i64, ptr %i.fb, align 8
  %i.fd = shl i64 %i.fc, 32
  %i.fe = ashr exact i64 %i.fd, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.ax, %bb.ay
  %i.ff = phi i64 [ %i.fe, %bb.ay ], [ 0, %bb.ax ] ; 2 uses
  %i.fg = shl i64 %i.ev, 32
  %i.fh = ashr exact i64 %i.fg, 32                ; 2 uses
  %i.fi = icmp slt i64 %i.ff, %i.fh
  br i1 %i.fi, label %.lr.ph577, label %.critedge295.thread

.lr.ph577:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.fj = icmp eq i32 %i.fa, 5
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph577, %.loopexit511.a
  %.0225576 = phi i64 [ %i.ff, %.lr.ph577 ], [ %i.nf, %.loopexit511.a ] ; 2 uses
  %.0464575 = phi i64 [ 0, %.lr.ph577 ], [ %.7, %.loopexit511.a ] ; 5 uses
  %i.fk = load ptr, ptr %i.en, align 8            ; 2 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.0225576
  %i.fm = load i64, ptr %i.fl, align 8            ; 3 uses
  %i.fn = icmp sgt i64 %i.fm, -1
  br i1 %i.fn, label %bb.ba, label %.critedge295

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fj, label %bb.bb, label %.critedge

bb.bb:                                            ; preds = %bb.ba
  %.idx483 = mul nuw nsw i64 %i.fm, 6
  %i.fo = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx483 ; 3 uses
  %i.fp = load i16, ptr %i.fo, align 2
  %i.fq = zext i16 %i.fp to i64                   ; 3 uses
  %i.fr = icmp eq i64 %.0226590, %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fo, i64 2
  %i.ft = load i16, ptr %i.fs, align 2
  %i.fu = zext i16 %i.ft to i64                   ; 3 uses
  br i1 %i.fr, label %.sink.split, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fv = icmp eq i64 %.0226590, %i.fu
  br i1 %i.fv, label %.sink.split, label %bb.bd

.sink.split:                                      ; preds = %bb.bc, %bb.bb
  %.0462.ph = phi i64 [ %i.fu, %bb.bb ], [ %i.fq, %bb.bc ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fo, i64 4
  %i.fx = load i16, ptr %i.fw, align 2
  %i.fy = zext i16 %i.fx to i64
  br label %bb.bd

bb.bd:                                            ; preds = %.sink.split, %bb.bc
  %.0462 = phi i64 [ %i.fq, %bb.bc ], [ %.0462.ph, %.sink.split ] ; 10 uses
  %.0461 = phi i64 [ %i.fu, %bb.bc ], [ %i.fy, %.sink.split ] ; 7 uses
  %i.fz = icmp samesign ult i64 %.0462, %.0226590
  %i.ga = icmp samesign ult i64 %.0461, %.0226590
  %or.cond291 = select i1 %i.fz, i1 %i.ga, i1 false
  br i1 %or.cond291, label %bb.be, label %.critedge.thread

bb.be:                                            ; preds = %bb.bd
  %.not484 = icmp eq i64 %.0462, 0
  br i1 %.not484, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gb = getelementptr [8 x i8], ptr %i.et, i64 %.0462
  %i.gc = getelementptr i8, ptr %i.gb, i64 -8
  %i.gd = load i64, ptr %i.gc, align 8
  %i.ge = shl i64 %i.gd, 32
  %i.gf = ashr exact i64 %i.ge, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327:        ; preds = %bb.be, %bb.bf
  %i.gg = phi i64 [ %i.gf, %bb.bf ], [ 0, %bb.be ] ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %.0462
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = shl i64 %i.gi, 32
  %i.gk = ashr exact i64 %i.gj, 32                ; 2 uses
  %i.gl = icmp slt i64 %i.gg, %i.gk
  br i1 %i.gl, label %.lr.ph568, label %.critedge.thread

.lr.ph568:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327
  %i.gm = call i64 @llvm.umin.i64(i64 %.0461, i64 %.0462) ; 3 uses
  %i.gn = call i64 @llvm.umax.i64(i64 %.0461, i64 %.0462) ; 3 uses
  %i.go = mul i64 %.0462, %4
  %i.gp = mul i64 %.0461, %4
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph568, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0224567 = phi i64 [ %i.gg, %.lr.ph568 ], [ %i.jm, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1465566 = phi i64 [ %.0464575, %.lr.ph568 ], [ %.2466, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 12 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.0224567
  %i.gr = load i64, ptr %i.gq, align 8            ; 2 uses
  %i.gs = icmp sgt i64 %i.gr, -1
  br i1 %i.gs, label %.preheader490, label %.critedge

.preheader490:                                    ; preds = %bb.bg
  %.idx = mul nuw nsw i64 %i.gr, 6
  %i.gt = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.gu = load i16, ptr %i.gt, align 2
  %i.gv = zext i16 %i.gu to i64                   ; 4 uses
  %i.gw = icmp eq i64 %.0461, %i.gv               ; 2 uses
  %i.gx = icmp samesign ule i64 %.0226590, %i.gv
  %.not270 = icmp eq i64 %.0462, %i.gv
  %or.cond292 = or i1 %i.gx, %.not270
  %or.cond293 = select i1 %or.cond292, i1 true, i1 %i.gw
  %.1223 = select i1 %or.cond293, i64 -1, i64 %i.gv
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gt, i64 2
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = zext i16 %i.gz to i64                   ; 4 uses
  %i.hb = icmp eq i64 %.0461, %i.ha               ; 2 uses
  %i.hc = icmp samesign ule i64 %.0226590, %i.ha
  %.not270.1 = icmp eq i64 %.0462, %i.ha
  %or.cond292.1 = or i1 %i.hc, %.not270.1
  %or.cond293.1 = select i1 %or.cond292.1, i1 true, i1 %i.hb
  %.1223.1 = select i1 %or.cond293.1, i64 %.1223, i64 %i.ha
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gt, i64 4
  %i.he = load i16, ptr %i.hd, align 2
  %i.hf = zext i16 %i.he to i64                   ; 4 uses
  %i.hg = icmp eq i64 %.0461, %i.hf               ; 2 uses
  %i.hh = select i1 %i.hg, i1 true, i1 %i.hb
  %spec.select.2 = select i1 %i.hh, i1 true, i1 %i.gw
  %i.hi = icmp samesign ule i64 %.0226590, %i.hf
  %.not270.2 = icmp eq i64 %.0462, %i.hf
  %or.cond292.2 = or i1 %i.hi, %.not270.2
  %or.cond293.2 = select i1 %or.cond292.2, i1 true, i1 %i.hg
  %.1223.2 = select i1 %or.cond293.2, i64 %.1223.1, i64 %i.hf ; 3 uses
  %i.hj = icmp ne i64 %.1223.2, -1
  %or.cond = select i1 %i.hj, i1 %spec.select.2, i1 false
  br i1 %or.cond, label %bb.bh, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.bh:                                            ; preds = %.preheader490
  %i.hk = xor i64 %.1223.2, -1                    ; 3 uses
  %.not.i329 = icmp eq i64 %.1465566, 0
  br i1 %.not.i329, label %.thread34.thread.i, label %.lr.ph.i330

.lr.ph.i330:                                      ; preds = %bb.bh, %bb.bk
  %.02543.i = phi i64 [ %i.ie, %bb.bk ], [ 0, %bb.bh ] ; 7 uses
  %i.hl = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = icmp eq i64 %i.hn, %i.hk
  br i1 %i.ho, label %bb.bi, label %.split.i

bb.bi:                                            ; preds = %.lr.ph.i330
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hq = load i64, ptr %i.hp, align 8            ; 2 uses
  %i.hr = icmp eq i64 %i.gn, %i.hq
  br i1 %i.hr, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.hs = load i64, ptr %i.hl, align 8            ; 2 uses
  %i.ht = icmp eq i64 %i.gm, %i.hs
  br i1 %i.ht, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i330
  %i.hu = icmp sgt i64 %i.hn, %i.hk
  br i1 %i.hu, label %bb.bj, label %bb.bk

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.hv = icmp slt i64 %i.gm, %i.hs
  br i1 %i.hv, label %bb.bj, label %bb.bk

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bi
  %i.hw = icmp slt i64 %i.gn, %i.hq
  br i1 %i.hw, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.hx = icmp eq i64 %.1465566, 1
  %spec.select477 = select i1 %i.hx, i64 2, i64 %.1465566 ; 4 uses
  %.044.i = add i64 %spec.select477, -1
  %i.hy = icmp ugt i64 %.044.i, %.02543.i
end_hunk_1
begin_hunk_2_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
          cleanup
  br label %.loopexit.split-lp504

bb.cj:                                            ; preds = %bb.ch
  %i.qp = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc388 unwind label %.loopexit.split-lp496.loopexit.split-lp ; 2 uses

.noexc388:                                        ; preds = %bb.cj
  %i.qq = zext i32 %i.qp to i64
  %i.qr = icmp eq i32 %.0231, %i.qp
  br i1 %i.qr, label %.preheader499, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371

.preheader499:                                    ; preds = %.noexc388, %.noexc389
  %.014.i.i374 = phi i32 [ %.115.i.i376, %.noexc389 ], [ %.0232, %.noexc388 ] ; 2 uses
  %.012.i.i375 = phi i32 [ %.113.i.i377, %.noexc389 ], [ 0, %.noexc388 ]
  %i.qs = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc389 unwind label %.loopexit.split-lp496.loopexit ; 2 uses

.noexc389:                                        ; preds = %.preheader499
  %i.qt = icmp eq i32 %i.qs, 1                    ; 2 uses
  %i.qu = shl nuw i32 1, %.014.i.i374
  %i.qv = zext i1 %i.qt to i32
  %.115.i.i376 = add nsw i32 %.014.i.i374, %i.qv  ; 3 uses
  %i.qw = select i1 %i.qt, i32 %i.qu, i32 0
  %.113.i.i377 = add nsw i32 %i.qw, %.012.i.i375  ; 2 uses
  %.not.i.i378 = icmp eq i32 %i.qs, 0
  br i1 %.not.i.i378, label %.preheader.i.i379, label %.preheader499, !llvm.loop !14

.preheader.i.i379:                                ; preds = %.noexc389
  %.not1617.i.i380 = icmp eq i32 %.115.i.i376, 0
  br i1 %.not1617.i.i380, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %.preheader.i.i379, %.noexc390
  %.019.i.i382 = phi i32 [ %.1.i.i384, %.noexc390 ], [ 0, %.preheader.i.i379 ]
  %.218.i.i383 = phi i32 [ %i.qy, %.noexc390 ], [ %.115.i.i376, %.preheader.i.i379 ]
  %i.qx = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc390 unwind label %.loopexit495

.noexc390:                                        ; preds = %.lr.ph.i.i381
  %i.qy = add nsw i32 %.218.i.i383, -1            ; 3 uses
  %i.qz = icmp eq i32 %i.qx, 1
  %i.ra = shl nuw i32 1, %i.qy
  %i.rb = select i1 %i.qz, i32 %i.ra, i32 0
  %.1.i.i384 = or i32 %i.rb, %.019.i.i382         ; 2 uses
  %.not16.i.i385 = icmp eq i32 %i.qy, 0
  br i1 %.not16.i.i385, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386, label %.lr.ph.i.i381, !llvm.loop !15

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386: ; preds = %.noexc390, %.preheader.i.i379
  %.0.lcssa.i.i387 = phi i32 [ 0, %.preheader.i.i379 ], [ %.1.i.i384, %.noexc390 ]
  %i.rc = add nsw i32 %.0.lcssa.i.i387, %.113.i.i377
  %i.rd = zext i32 %i.rc to i64
  %i.re = add nuw nsw i64 %i.rd, %i.ep
  br label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371: ; preds = %.preheader.i.i367, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386, %.noexc388, %bb.ci
  %.0.i372.sink739 = phi i64 [ %i.qq, %.noexc388 ], [ %i.qc, %bb.ci ], [ %i.re, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386 ], [ %i.qm, %.preheader.i.i367 ] ; 3 uses
  %i.rf = and i64 %.0.i372.sink739, 1
  %.not.i10.i373 = icmp eq i64 %i.rf, 0
  %i.rg = add i64 %.0.i372.sink739, 1
  %i.rh = lshr exact i64 %i.rg, 1
  %i.ri = sub nsw i64 0, %i.rh
  %i.rj = lshr exact i64 %.0.i372.sink739, 1
  %i.rk = select i1 %.not.i10.i373, i64 %i.rj, i64 %i.ri
  %i.rl = load ptr, ptr %i.eo, align 8            ; 2 uses
  %i.rm = getelementptr [8 x i8], ptr %i.rl, i64 %i.pt
  %i.rn = getelementptr [8 x i8], ptr %i.rm, i64 %.0214584
  %i.ro = load i64, ptr %i.rn, align 8
  %i.rp = add nsw i64 %i.ro, %i.rk
  %i.rq = getelementptr [8 x i8], ptr %i.rl, i64 %i.pu
  %i.rr = getelementptr [8 x i8], ptr %i.rq, i64 %.0214584
  store i64 %i.rp, ptr %i.rr, align 8
  %i.rs = add nuw i64 %.0214584, 1                ; 2 uses
  %exitcond634.not = icmp eq i64 %i.rs, %.0251
  br i1 %exitcond634.not, label %.loopexit512, label %bb.ch, !llvm.loop !818

bb.ck:                                            ; preds = %bb.cg, %.critedge295.thread
  br i1 %.not605, label %.loopexit512, label %.lr.ph588

.lr.ph588:                                        ; preds = %bb.ck
  %i.rt = mul i64 %.0226590, %4
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph588, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit
  %.0213586 = phi i64 [ 0, %.lr.ph588 ], [ %i.th, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ] ; 2 uses
  %i.ru = load i32, ptr %i.g, align 8
  %i.rv = icmp eq i32 %i.ru, 1
  br i1 %i.rv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.rw = load i64, ptr %0, align 8               ; 2 uses
  %i.rx = add i64 %i.rw, 1                        ; 2 uses
  store i64 %i.rx, ptr %0, align 8
  %i.ry = load ptr, ptr %10, align 8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 %i.rw
  %i.sa = load i8, ptr %i.rz, align 1             ; 2 uses
  %i.sb = zext i8 %i.sa to i64
  %i.sc = icmp eq i8 %i.sa, 127
  br i1 %i.sc, label %.preheader.i393, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader.i393:                                  ; preds = %bb.cm, %.preheader.i393
  %i.sd = phi i64 [ %i.se, %.preheader.i393 ], [ %i.rx, %bb.cm ] ; 2 uses
  %.09.i = phi i64 [ %i.sl, %.preheader.i393 ], [ 127, %bb.cm ]
  %.0.i394 = phi i64 [ %i.sm, %.preheader.i393 ], [ 0, %bb.cm ] ; 2 uses
  %i.se = add i64 %i.sd, 1                        ; 2 uses
  store i64 %i.se, ptr %0, align 8
  %i.sf = load ptr, ptr %10, align 8
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sf, i64 %i.sd
  %i.sh = load i8, ptr %i.sg, align 1
  %i.si = zext i8 %i.sh to i64                    ; 2 uses
  %i.sj = lshr i64 %i.si, 1
  %i.sk = shl i64 %i.sj, %.0.i394
  %i.sl = add i64 %i.sk, %.09.i                   ; 2 uses
  %i.sm = add i64 %.0.i394, 6
  %i.sn = and i64 %i.si, 1
  %.not.i395 = icmp eq i64 %i.sn, 0
  br i1 %.not.i395, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, label %.preheader.i393, !llvm.loop !16

.loopexit.a:                                      ; preds = %.lr.ph.i.i404
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp504

.loopexit.split-lp.loopexit:                      ; preds = %.preheader491
  %lpad.loopexit492 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp504

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.cn
  %lpad.loopexit.split-lp493 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp504

bb.cn:                                            ; preds = %bb.cl
  %i.so = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc411 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc411:                                        ; preds = %bb.cn
  %i.sp = zext i32 %i.so to i64
  %i.sq = icmp eq i32 %.0231, %i.so
  br i1 %i.sq, label %.preheader491, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader491:                                    ; preds = %.noexc411, %.noexc412
  %.014.i.i397 = phi i32 [ %.115.i.i399, %.noexc412 ], [ %.0232, %.noexc411 ] ; 2 uses
  %.012.i.i398 = phi i32 [ %.113.i.i400, %.noexc412 ], [ 0, %.noexc411 ]
  %i.sr = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc412 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc412:                                        ; preds = %.preheader491
  %i.ss = icmp eq i32 %i.sr, 1                    ; 2 uses
  %i.st = shl nuw i32 1, %.014.i.i397
  %i.su = zext i1 %i.ss to i32
  %.115.i.i399 = add nsw i32 %.014.i.i397, %i.su  ; 3 uses
  %i.sv = select i1 %i.ss, i32 %i.st, i32 0
  %.113.i.i400 = add nsw i32 %i.sv, %.012.i.i398  ; 2 uses
  %.not.i.i401 = icmp eq i32 %i.sr, 0
  br i1 %.not.i.i401, label %.preheader.i.i402, label %.preheader491, !llvm.loop !14

.preheader.i.i402:                                ; preds = %.noexc412
  %.not1617.i.i403 = icmp eq i32 %.115.i.i399, 0
  br i1 %.not1617.i.i403, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409, label %.lr.ph.i.i404

.lr.ph.i.i404:                                    ; preds = %.preheader.i.i402, %.noexc413
  %.019.i.i405 = phi i32 [ %.1.i.i407, %.noexc413 ], [ 0, %.preheader.i.i402 ]
  %.218.i.i406 = phi i32 [ %i.sx, %.noexc413 ], [ %.115.i.i399, %.preheader.i.i402 ]
  %i.sw = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc413 unwind label %.loopexit.a

.noexc413:                                        ; preds = %.lr.ph.i.i404
  %i.sx = add nsw i32 %.218.i.i406, -1            ; 3 uses
  %i.sy = icmp eq i32 %i.sw, 1
  %i.sz = shl nuw i32 1, %i.sx
  %i.ta = select i1 %i.sy, i32 %i.sz, i32 0
  %.1.i.i407 = or i32 %i.ta, %.019.i.i405         ; 2 uses
  %.not16.i.i408 = icmp eq i32 %i.sx, 0
  br i1 %.not16.i.i408, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409, label %.lr.ph.i.i404, !llvm.loop !15

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409: ; preds = %.noexc413, %.preheader.i.i402
  %.0.lcssa.i.i410 = phi i32 [ 0, %.preheader.i.i402 ], [ %.1.i.i407, %.noexc413 ]
  %i.tb = add nsw i32 %.0.lcssa.i.i410, %.113.i.i400
  %i.tc = zext i32 %i.tb to i64
  %i.td = add nuw nsw i64 %i.tc, %i.ep
  br label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit:  ; preds = %.preheader.i393, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409, %.noexc411, %bb.cm
  %.2249 = phi i64 [ %i.sp, %.noexc411 ], [ %i.sb, %bb.cm ], [ %i.td, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409 ], [ %i.sl, %.preheader.i393 ]
  %i.te = load ptr, ptr %i.eo, align 8
  %i.tf = getelementptr [8 x i8], ptr %i.te, i64 %i.rt
  %i.tg = getelementptr [8 x i8], ptr %i.tf, i64 %.0213586
  store i64 %.2249, ptr %i.tg, align 8
  %i.th = add nuw i64 %.0213586, 1                ; 2 uses
  %exitcond635.not = icmp eq i64 %i.th, %.0251
  br i1 %exitcond635.not, label %.loopexit512, label %bb.cl, !llvm.loop !819

.loopexit512:                                     ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, %bb.cc, %.preheader513, %bb.ck
  %.3 = phi i64 [ %.1589, %bb.ck ], [ %.1589, %.preheader513 ], [ %.2, %bb.cc ], [ %.1589, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371 ], [ %.1589, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ], [ %.2, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357 ] ; 2 uses
  %i.ti = add nuw nsw i64 %.0226590, 1            ; 2 uses
  %exitcond636.not = icmp eq i64 %i.ti, %2
  br i1 %exitcond636.not, label %._crit_edge595, label %bb.au, !llvm.loop !820

bb.co:                                            ; preds = %._crit_edge595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br i1 %i.es, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.lr.ph.i415

.lr.ph.i415:                                      ; preds = %bb.co
  %i.tj = trunc i64 %7 to i32
  %i.tk = add i32 %i.tj, 1
  %notmask.i = shl nsw i32 -1, %i.tk
  %i.tl = xor i32 %notmask.i, -1
  %i.tm = uitofp nneg i32 %i.tl to float
  %19 = fdiv float 4.000000e+00, %i.tm            ; 2 uses
  %min.iters.check784 = icmp ult i64 %.0251, 8
  br i1 %min.iters.check784, label %scalar.ph783.preheader, label %vector.ph785

vector.ph785:                                     ; preds = %.lr.ph.i415
  %n.vec786 = and i64 %.0251, -8                  ; 3 uses
  %broadcast.splatinsert787 = insertelement <4 x float> poison, float %19, i64 0
  %broadcast.splat788 = shufflevector <4 x float> %broadcast.splatinsert787, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body789

vector.body789:                                   ; preds = %vector.body789, %vector.ph785
  %index790 = phi i64 [ 0, %vector.ph785 ], [ %index.next793, %vector.body789 ] ; 2 uses
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index790 ; 2 uses
  %20 = getelementptr inbounds nuw i8, ptr %i.tn, i64 16
  store <4 x float> %broadcast.splat788, ptr %i.tn, align 16
  store <4 x float> %broadcast.splat788, ptr %20, align 16
  %index.next793 = add nuw i64 %index790, 8       ; 2 uses
  %i.to = icmp eq i64 %index.next793, %n.vec786
  br i1 %i.to, label %middle.block794, label %vector.body789, !llvm.loop !821

middle.block794:                                  ; preds = %vector.body789
  %cmp.n795 = icmp eq i64 %.0251, %n.vec786
  br i1 %cmp.n795, label %.preheader32.i, label %scalar.ph783.preheader

scalar.ph783.preheader:                           ; preds = %.lr.ph.i415, %middle.block794
  %.02933.i.ph = phi i64 [ 0, %.lr.ph.i415 ], [ %n.vec786, %middle.block794 ]
  br label %scalar.ph783

.preheader32.i:                                   ; preds = %scalar.ph783, %middle.block794
  %.not38.i = icmp eq i64 %2, 0
  br i1 %.not38.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, label %.preheader.preheader.i

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread: ; preds = %.preheader32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.ct

.preheader.preheader.i:                           ; preds = %.preheader32.i
  %i.tp = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter825 = and i64 %.0251, 1
  %i.tq = icmp eq i64 %.0251, 1
  %unroll_iter828 = and i64 %.0251, -2
  %lcmp.mod826.not = icmp eq i64 %xtraiter825, 0
  %lcmp.mod827 = trunc i64 %.0251 to i1
  br label %.preheader.i417

scalar.ph783:                                     ; preds = %scalar.ph783.preheader, %scalar.ph783
  %.02933.i = phi i64 [ %i.ts, %scalar.ph783 ], [ %.02933.i.ph, %scalar.ph783.preheader ] ; 2 uses
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02933.i
  store float %19, ptr %i.tr, align 4
  %i.ts = add nuw nsw i64 %.02933.i, 1            ; 2 uses
  %exitcond.not.i416 = icmp eq i64 %i.ts, %.0251
  br i1 %exitcond.not.i416, label %.preheader32.i, label %scalar.ph783, !llvm.loop !822

.preheader.i417:                                  ; preds = %._crit_edge.i418, %.preheader.preheader.i
  %.02836.i = phi i64 [ %i.ud, %._crit_edge.i418 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.tt = mul i64 %.02836.i, %4                   ; 3 uses
  br i1 %i.tq, label %.epil.preheader824, label %.preheader.i417.new

._crit_edge.i418.unr-lcssa:                       ; preds = %.preheader.i417.new
  br i1 %lcmp.mod826.not, label %._crit_edge.i418, label %.epil.preheader824

.epil.preheader824:                               ; preds = %._crit_edge.i418.unr-lcssa, %.preheader.i417
  %.034.i.epil.init = phi i64 [ 0, %.preheader.i417 ], [ %i.ux, %._crit_edge.i418.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod827)
  %i.tu = load ptr, ptr %i.tp, align 8
  %i.tv = add i64 %.034.i.epil.init, %i.tt        ; 2 uses
  %i.tw = getelementptr inbounds nuw [8 x i8], ptr %i.tu, i64 %i.tv
  %i.tx = load i64, ptr %i.tw, align 8
  %i.ty = sitofp i64 %i.tx to float
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i.epil.init
  %i.ua = load float, ptr %i.tz, align 4
  %i.ub = call float @llvm.fmuladd.f32(float %i.ty, float %i.ua, float -2.000000e+00)
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tv
  store float %i.ub, ptr %i.uc, align 4
  br label %._crit_edge.i418

._crit_edge.i418:                                 ; preds = %._crit_edge.i418.unr-lcssa, %.epil.preheader824
  %i.ud = add nuw i64 %.02836.i, 1                ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.ud, %2
  br i1 %exitcond41.not.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.preheader.i417, !llvm.loop !823

.preheader.i417.new:                              ; preds = %.preheader.i417, %.preheader.i417.new
  %.034.i = phi i64 [ %i.ux, %.preheader.i417.new ], [ 0, %.preheader.i417 ] ; 4 uses
  %niter829 = phi i64 [ %niter829.next.1, %.preheader.i417.new ], [ 0, %.preheader.i417 ]
  %i.ue = load ptr, ptr %i.tp, align 8
  %i.uf = add i64 %.034.i, %i.tt                  ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.ue, i64 %i.uf
  %i.uh = load i64, ptr %i.ug, align 8
  %i.ui = sitofp i64 %i.uh to float
  %i.uj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i
  %i.uk = load float, ptr %i.uj, align 8
  %i.ul = call float @llvm.fmuladd.f32(float %i.ui, float %i.uk, float -2.000000e+00)
  %i.um = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uf
  store float %i.ul, ptr %i.um, align 4
  %i.un = or disjoint i64 %.034.i, 1              ; 2 uses
  %i.uo = load ptr, ptr %i.tp, align 8
  %i.up = add i64 %i.un, %i.tt                    ; 2 uses
  %i.uq = getelementptr inbounds nuw [8 x i8], ptr %i.uo, i64 %i.up
  %i.ur = load i64, ptr %i.uq, align 8
  %i.us = sitofp i64 %i.ur to float
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.un
  %i.uu = load float, ptr %i.ut, align 4
  %i.uv = call float @llvm.fmuladd.f32(float %i.us, float %i.uu, float -2.000000e+00)
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.up
  store float %i.uv, ptr %i.uw, align 4
  %i.ux = add nuw nsw i64 %.034.i, 2              ; 2 uses
  %niter829.next.1 = add i64 %niter829, 2         ; 2 uses
  %niter829.ncmp.1 = icmp eq i64 %niter829.next.1, %unroll_iter828
  br i1 %niter829.ncmp.1, label %._crit_edge.i418.unr-lcssa, label %.preheader.i417.new, !llvm.loop !824

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit: ; preds = %._crit_edge.i418, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.el, label %.lr.ph598, label %bb.ct

.lr.ph598:                                        ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  %i.uy = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.uz = getelementptr inbounds nuw i8, ptr %0, i64 4584
  br label %bb.cp

bb.cp:                                            ; preds = %.lr.ph598, %bb.cq
  %.0597 = phi i64 [ 0, %.lr.ph598 ], [ %i.vo, %bb.cq ] ; 4 uses
  %i.va = load ptr, ptr %i.uy, align 8
  %.idx481 = shl nuw nsw i64 %.0597, 3
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 %.idx481
  %i.vc = mul i64 %.0597, %4
  %i.vd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.vc ; 4 uses
  %i.ve = getelementptr i8, ptr %i.vd, i64 4
  %i.vf = load <2 x float>, ptr %i.vb, align 4
  %i.vg = load <2 x float>, ptr %i.vd, align 4
  %i.vh = fadd <2 x float> %i.vf, %i.vg           ; 2 uses
  %i.vi = load ptr, ptr %i.uz, align 8
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 %.0597
  %i.vk = load i8, ptr %i.vj, align 1
  %i.vl = getelementptr i8, ptr %i.vd, i64 8
  %i.vm = extractelement <2 x float> %i.vh, i64 0
  %i.vn = extractelement <2 x float> %i.vh, i64 1
  invoke void @_ZN5o3dgc12CubeToSphereEffcRfS0_S0_(float noundef %i.vm, float noundef %i.vn, i8 noundef signext %i.vk, ptr noundef nonnull align 4 dereferenceable(4) %i.vd, ptr noundef nonnull align 4 dereferenceable(4) %i.ve, ptr noundef nonnull align 4 dereferenceable(4) %i.vl)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.vo = add nuw nsw i64 %.0597, 1               ; 2 uses
  %exitcond637.not = icmp eq i64 %i.vo, %2
  br i1 %exitcond637.not, label %bb.ct, label %bb.cp, !llvm.loop !825

bb.cr:                                            ; preds = %bb.cp
  %i.vp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp504

bb.cs:                                            ; preds = %._crit_edge595
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  br i1 %i.es, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434, label %.lr.ph.i420

.lr.ph.i420:                                      ; preds = %bb.cs
  %i.vq = trunc i64 %7 to i32
  %notmask.i421 = shl nsw i32 -1, %i.vq
  %i.vr = xor i32 %notmask.i421, -1
  %i.vs = uitofp nneg i32 %i.vr to float          ; 2 uses
  %min.iters.check772 = icmp ult i64 %.0251, 4
  br i1 %min.iters.check772, label %scalar.ph771.preheader, label %vector.ph773

vector.ph773:                                     ; preds = %.lr.ph.i420
  %n.vec774 = and i64 %.0251, -4                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.vs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body775

vector.body775:                                   ; preds = %vector.body775, %vector.ph773
  %index776 = phi i64 [ 0, %vector.ph773 ], [ %index.next779, %vector.body775 ] ; 4 uses
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index776
  %wide.load777 = load <4 x float>, ptr %i.vt, align 4
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index776
  %wide.load778 = load <4 x float>, ptr %i.vu, align 4
  %i.vv = fsub <4 x float> %wide.load777, %wide.load778 ; 2 uses
  %i.vw = fcmp ogt <4 x float> %i.vv, zeroinitializer
  %i.vx = fdiv <4 x float> %i.vv, %broadcast.splat
  %i.vy = select <4 x i1> %i.vw, <4 x float> %i.vx, <4 x float> splat (float 1.000000e+00)
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index776
  store <4 x float> %i.vy, ptr %i.vz, align 16
  %index.next779 = add nuw i64 %index776, 4       ; 2 uses
  %i.wa = icmp eq i64 %index.next779, %n.vec774
  br i1 %i.wa, label %middle.block780, label %vector.body775, !llvm.loop !826

middle.block780:                                  ; preds = %vector.body775
  %cmp.n781 = icmp eq i64 %.0251, %n.vec774
  br i1 %cmp.n781, label %.preheader32.i425, label %scalar.ph771.preheader

scalar.ph771.preheader:                           ; preds = %.lr.ph.i420, %middle.block780
  %.02933.i422.ph = phi i64 [ 0, %.lr.ph.i420 ], [ %n.vec774, %middle.block780 ]
  br label %scalar.ph771

.preheader32.i425:                                ; preds = %scalar.ph771, %middle.block780
  %.not38.i426 = icmp eq i64 %2, 0
  br i1 %.not38.i426, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434, label %.preheader.preheader.i427

.preheader.preheader.i427:                        ; preds = %.preheader32.i425
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter = and i64 %.0251, 1
  %i.wc = icmp eq i64 %.0251, 1
  %unroll_iter = and i64 %.0251, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod823 = trunc i64 %.0251 to i1
  br label %.preheader.i428

scalar.ph771:                                     ; preds = %scalar.ph771.preheader, %scalar.ph771
  %.02933.i422 = phi i64 [ %i.wl, %scalar.ph771 ], [ %.02933.i422.ph, %scalar.ph771.preheader ] ; 4 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02933.i422
  %i.we = load float, ptr %i.wd, align 4
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02933.i422
  %i.wg = load float, ptr %i.wf, align 4
  %i.wh = fsub float %i.we, %i.wg                 ; 2 uses
  %i.wi = fcmp ogt float %i.wh, 0.000000e+00
  %i.wj = fdiv float %i.wh, %i.vs
  %.sink.i423 = select i1 %i.wi, float %i.wj, float 1.000000e+00
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02933.i422
  store float %.sink.i423, ptr %i.wk, align 4
  %i.wl = add nuw nsw i64 %.02933.i422, 1         ; 2 uses
  %exitcond.not.i424 = icmp eq i64 %i.wl, %.0251
  br i1 %exitcond.not.i424, label %.preheader32.i425, label %scalar.ph771, !llvm.loop !827

.preheader.i428:                                  ; preds = %._crit_edge.i432, %.preheader.preheader.i427
  %.02836.i429 = phi i64 [ %i.wy, %._crit_edge.i432 ], [ 0, %.preheader.preheader.i427 ] ; 2 uses
  %i.wm = mul i64 %.02836.i429, %4                ; 3 uses
  br i1 %i.wc, label %.epil.preheader, label %.preheader.i428.new

._crit_edge.i432.unr-lcssa:                       ; preds = %.preheader.i428.new
  br i1 %lcmp.mod.not, label %._crit_edge.i432, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i432.unr-lcssa, %.preheader.i428
  %.034.i430.epil.init = phi i64 [ 0, %.preheader.i428 ], [ %i.xw, %._crit_edge.i432.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod823)
  %i.wn = load ptr, ptr %i.wb, align 8
  %i.wo = add i64 %.034.i430.epil.init, %i.wm     ; 2 uses
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %i.wn, i64 %i.wo
  %i.wq = load i64, ptr %i.wp, align 8
  %i.wr = sitofp i64 %i.wq to float
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i430.epil.init
  %i.wt = load float, ptr %i.ws, align 4
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i430.epil.init
  %i.wv = load float, ptr %i.wu, align 4
  %i.ww = call float @llvm.fmuladd.f32(float %i.wr, float %i.wt, float %i.wv)
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wo
  store float %i.ww, ptr %i.wx, align 4
  br label %._crit_edge.i432

._crit_edge.i432:                                 ; preds = %._crit_edge.i432.unr-lcssa, %.epil.preheader
  %i.wy = add nuw i64 %.02836.i429, 1             ; 2 uses
  %exitcond41.not.i433 = icmp eq i64 %i.wy, %2
  br i1 %exitcond41.not.i433, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434, label %.preheader.i428, !llvm.loop !823

.preheader.i428.new:                              ; preds = %.preheader.i428, %.preheader.i428.new
  %.034.i430 = phi i64 [ %i.xw, %.preheader.i428.new ], [ 0, %.preheader.i428 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i428.new ], [ 0, %.preheader.i428 ]
  %i.wz = load ptr, ptr %i.wb, align 8
  %i.xa = add i64 %.034.i430, %i.wm               ; 2 uses
  %i.xb = getelementptr inbounds nuw [8 x i8], ptr %i.wz, i64 %i.xa
  %i.xc = load i64, ptr %i.xb, align 8
  %i.xd = sitofp i64 %i.xc to float
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i430
  %i.xf = load float, ptr %i.xe, align 8
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i430
  %i.xh = load float, ptr %i.xg, align 4
  %i.xi = call float @llvm.fmuladd.f32(float %i.xd, float %i.xf, float %i.xh)
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xa
  store float %i.xi, ptr %i.xj, align 4
  %i.xk = or disjoint i64 %.034.i430, 1           ; 3 uses
  %i.xl = load ptr, ptr %i.wb, align 8
  %i.xm = add i64 %i.xk, %i.wm                    ; 2 uses
  %i.xn = getelementptr inbounds nuw [8 x i8], ptr %i.xl, i64 %i.xm
  %i.xo = load i64, ptr %i.xn, align 8
  %i.xp = sitofp i64 %i.xo to float
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xk
  %i.xr = load float, ptr %i.xq, align 4
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.xk
  %i.xt = load float, ptr %i.xs, align 4
  %i.xu = call float @llvm.fmuladd.f32(float %i.xp, float %i.xr, float %i.xt)
  %i.xv = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xm
  store float %i.xu, ptr %i.xv, align 4
  %i.xw = add nuw nsw i64 %.034.i430, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i432.unr-lcssa, label %.preheader.i428.new, !llvm.loop !824

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434: ; preds = %._crit_edge.i432, %bb.cs, %.preheader32.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cq, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cv

.loopexit.split-lp504:                            ; preds = %.loopexit.a, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.loopexit495, %.loopexit.split-lp496.loopexit.split-lp, %.loopexit.split-lp496.loopexit, %.loopexit503, %.loopexit.split-lp504.loopexit.split-lp, %.loopexit.split-lp504.loopexit, %bb.cb, %bb.cr, %bb.an, %bb.ad, %bb.x
  %.pn281 = phi { ptr, i32 } [ %i.db, %bb.ad ], [ %.pn, %bb.an ], [ %i.vp, %bb.cr ], [ %i.bo, %bb.x ], [ %i.nq, %bb.cb ], [ %lpad.loopexit.split-lp509.a, %.loopexit.split-lp504.loopexit.split-lp ], [ %lpad.loopexit.split-lp501, %.loopexit.split-lp496.loopexit.split-lp ], [ %lpad.loopexit505, %.loopexit503 ], [ %lpad.loopexit508.a, %.loopexit.split-lp504.loopexit ], [ %lpad.loopexit497, %.loopexit495 ], [ %lpad.loopexit500, %.loopexit.split-lp496.loopexit ], [ %lpad.loopexit, %.loopexit.a ], [ %lpad.loopexit492, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp493, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  br label %bb.cu

bb.cu:                                            ; preds = %.loopexit.split-lp504, %bb.w
  %.pn281.pn = phi { ptr, i32 } [ %.pn281, %.loopexit.split-lp504 ], [ %i.bn, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.loopexit.split-lp521

bb.cv:                                            ; preds = %bb.n, %bb.f, %bb.ct
  %.0250 = phi i32 [ 5, %bb.f ], [ 0, %bb.ct ], [ 5, %bb.n ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret i32 %.0250

.loopexit.split-lp521:                            ; preds = %.loopexit520, %.loopexit.split-lp521.loopexit.split-lp.loopexit, %.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp521.loopexit, %bb.cu, %bb.j
  %.pn281.pn.pn.pn.pn = phi { ptr, i32 } [ %i.x, %bb.j ], [ %.pn281.pn, %bb.cu ], [ %lpad.loopexit522, %.loopexit520 ], [ %lpad.loopexit525, %.loopexit.split-lp521.loopexit ], [ %lpad.loopexit528, %.loopexit.split-lp521.loopexit.split-lp.loopexit ], [ %lpad.loopexit532, %.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp533, %.loopexit.split-lp521.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #28
  br label %bb.cw

bb.cw:                                            ; preds = %.loopexit.split-lp521, %bb.i
  %.pn281.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn, %.loopexit.split-lp521 ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.h
  %.pn281.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn.pn, %bb.cw ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.g
  %.pn281.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn.pn.pn, %bb.cx ], [ %i.u, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  resume { ptr, i32 } %.pn281.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE14DecodeIntArrayEPlmmmRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(80000) %5, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 8 dereferenceable(28) %7) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca [2 x %"struct.o3dgc::SC3DMCPredictor"], align 16 ; 16 uses
  %9 = alloca %"class.o3dgc::Arithmetic_Codec", align 8 ; 22 uses
  %10 = alloca %"class.o3dgc::Static_Bit_Model", align 4 ; 9 uses
  %11 = alloca %"class.o3dgc::Adaptive_Bit_Model", align 4 ; 9 uses
  %12 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 7 uses
  %13 = alloca %"class.o3dgc::Adaptive_Data_Model", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @_ZN5o3dgc16Arithmetic_CodecC1Ev(ptr noundef nonnull align 8 dereferenceable(44) %9)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  invoke void @_ZN5o3dgc16Static_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  invoke void @_ZN5o3dgc18Adaptive_Bit_ModelC1Ev(ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %12, i32 noundef 3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i64, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12872 ; 6 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = invoke noundef i64 @_ZNK5o3dgc12BinaryStream10ReadUInt32ERmNS_15O3DGCStreamTypeE(ptr noundef nonnull align 8 dereferenceable(28) %7, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %i.e)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %0, align 8                ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %0, align 8
  %i.i = load ptr, ptr %7, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %.0.i = load i8, ptr %i.j, align 1
  %i.k = zext i8 %.0.i to i32                     ; 2 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = and i32 %i.l, 7                          ; 2 uses
  %i.n = and i32 %i.k, 7
  store i32 %i.n, ptr %6, align 4
  %i.o = load i64, ptr %0, align 8                ; 2 uses
  %.neg = add i64 %i.f, %i.c                      ; 4 uses
  %i.p = sub i64 %.neg, %i.o
  %i.q = load i32, ptr %i.d, align 8
  %.not = icmp eq i32 %i.q, 1
  br i1 %.not, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not127 = icmp eq i32 %i.m, 4
  br i1 %.not127, label %bb.k, label %bb.ba

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bd

bb.h:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.bc

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.j:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263

bb.k:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %7, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.o
  store i64 %.neg, ptr %0, align 8
  %i.x = trunc i64 %i.p to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %9, i32 noundef %i.x, ptr noundef %i.w)
          to label %bb.l unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %.preheader273 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader273:                                    ; preds = %bb.l, %.noexc
  %.014.i = phi i32 [ %.115.i, %.noexc ], [ 0, %bb.l ] ; 2 uses
  %.012.i = phi i32 [ %.113.i, %.noexc ], [ 0, %bb.l ]
  %i.y = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %.noexc unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %.preheader273
  %i.z = icmp eq i32 %i.y, 1                      ; 2 uses
  %i.aa = shl nuw i32 1, %.014.i
  %i.ab = zext i1 %i.z to i32
  %.115.i = add nuw nsw i32 %.014.i, %i.ab        ; 3 uses
  %i.ac = select i1 %i.z, i32 %i.aa, i32 0
  %.113.i = add nsw i32 %i.ac, %.012.i            ; 2 uses
  %.not.i = icmp eq i32 %i.y, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader273, !llvm.loop !14

.preheader.i:                                     ; preds = %.noexc
  %.not1617.i = icmp eq i32 %.115.i, 0
  br i1 %.not1617.i, label %.loopexit272, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc141
  %.019.i = phi i32 [ %.1.i, %.noexc141 ], [ 0, %.preheader.i ]
  %.218.i = phi i32 [ %i.ae, %.noexc141 ], [ %.115.i, %.preheader.i ]
  %i.ad = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %.noexc141 unwind label %.loopexit.split-lp263.loopexit.split-lp.loopexit

.noexc141:                                        ; preds = %.lr.ph.i
  %i.ae = add nsw i32 %.218.i, -1                 ; 3 uses
  %i.af = icmp eq i32 %i.ad, 1
  %i.ag = shl nuw i32 1, %i.ae
  %i.ah = select i1 %i.af, i32 %i.ag, i32 0
  %.1.i = or i32 %i.ah, %.019.i                   ; 2 uses
  %.not16.i = icmp eq i32 %i.ae, 0
  br i1 %.not16.i, label %.loopexit272, label %.lr.ph.i, !llvm.loop !15

.loopexit272:                                     ; preds = %.noexc141, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %.noexc141 ]
  %i.ai = add nsw i32 %.0.lcssa.i, %.113.i
  br label %bb.m

bb.m:                                             ; preds = %.noexc155, %.loopexit272
  %.014.i142 = phi i32 [ 0, %.loopexit272 ], [ %.115.i144, %.noexc155 ] ; 2 uses
  %.012.i143 = phi i32 [ 0, %.loopexit272 ], [ %.113.i145, %.noexc155 ]
  %i.aj = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %.noexc155 unwind label %.loopexit.split-lp263.loopexit ; 2 uses

.noexc155:                                        ; preds = %bb.m
  %i.ak = icmp eq i32 %i.aj, 1                    ; 2 uses
  %i.al = shl nuw i32 1, %.014.i142
  %i.am = zext i1 %i.ak to i32
  %.115.i144 = add nuw nsw i32 %.014.i142, %i.am  ; 3 uses
  %i.an = select i1 %i.ak, i32 %i.al, i32 0
  %.113.i145 = add nsw i32 %i.an, %.012.i143      ; 2 uses
  %.not.i146 = icmp eq i32 %i.aj, 0
  br i1 %.not.i146, label %.preheader.i147, label %bb.m, !llvm.loop !14

.preheader.i147:                                  ; preds = %.noexc155
  %.not1617.i148 = icmp eq i32 %.115.i144, 0
  br i1 %.not1617.i148, label %.loopexit266, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %.preheader.i147, %.noexc156
end_hunk_2
