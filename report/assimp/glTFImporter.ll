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
  %18 = alloca [2 x float], align 8               ; 9 uses
  %19 = alloca [2 x float], align 8               ; 6 uses
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
          to label %bb.e unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not266 = icmp eq i32 %i.p, 4
  br i1 %.not266, label %bb.j, label %bb.cr

bb.g:                                             ; preds = %bb.a
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.h:                                             ; preds = %bb.b
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.i:                                             ; preds = %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

bb.j:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %10, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.r
  store i64 %.neg, ptr %0, align 8
  %i.z = trunc i64 %i.s to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %12, i32 noundef %i.z, ptr noundef %i.y)
          to label %bb.k unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44) %12)
          to label %.preheader541 unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader541:                                    ; preds = %bb.k, %.noexc
  %.014.i = phi i32 [ %.115.i, %.noexc ], [ 0, %bb.k ] ; 2 uses
  %.012.i = phi i32 [ %.113.i, %.noexc ], [ 0, %bb.k ]
  %i.aa = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.preheader541
  %i.ab = icmp eq i32 %i.aa, 1                    ; 2 uses
  %i.ac = shl nuw i32 1, %.014.i
  %i.ad = zext i1 %i.ab to i32
  %.115.i = add nuw nsw i32 %.014.i, %i.ad        ; 3 uses
  %i.ae = select i1 %i.ab, i32 %i.ac, i32 0
  %.113.i = add nsw i32 %i.ae, %.012.i            ; 2 uses
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader541, !llvm.loop !14

.preheader.i:                                     ; preds = %.noexc
  %.not1617.i = icmp eq i32 %.115.i, 0
  br i1 %.not1617.i, label %.loopexit540, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc296
  %.019.i = phi i32 [ %.1.i, %.noexc296 ], [ 0, %.preheader.i ]
  %.218.i = phi i32 [ %i.ag, %.noexc296 ], [ %.115.i, %.preheader.i ]
  %i.af = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc296 unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc296:                                        ; preds = %.lr.ph.i
  %i.ag = add nsw i32 %.218.i, -1                 ; 3 uses
  %i.ah = icmp eq i32 %i.af, 1
  %i.ai = shl nuw i32 1, %i.ag
  %i.aj = select i1 %i.ah, i32 %i.ai, i32 0
  %.1.i = or i32 %i.aj, %.019.i                   ; 2 uses
  %.not16.i = icmp eq i32 %i.ag, 0
  br i1 %.not16.i, label %.loopexit540, label %.lr.ph.i, !llvm.loop !15

.loopexit540:                                     ; preds = %.noexc296, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %.noexc296 ]
  %i.ak = add nsw i32 %.0.lcssa.i, %.113.i
  br label %bb.l

bb.l:                                             ; preds = %.noexc310, %.loopexit540
  %.014.i297 = phi i32 [ 0, %.loopexit540 ], [ %.115.i299, %.noexc310 ] ; 2 uses
  %.012.i298 = phi i32 [ 0, %.loopexit540 ], [ %.113.i300, %.noexc310 ]
  %i.al = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc310 unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc310:                                        ; preds = %bb.l
  %i.am = icmp eq i32 %i.al, 1                    ; 2 uses
  %i.an = shl nuw i32 1, %.014.i297
  %i.ao = zext i1 %i.am to i32
  %.115.i299 = add nuw nsw i32 %.014.i297, %i.ao  ; 3 uses
  %i.ap = select i1 %i.am, i32 %i.an, i32 0
  %.113.i300 = add nsw i32 %i.ap, %.012.i298      ; 2 uses
  %.not.i301 = icmp eq i32 %i.al, 0
  br i1 %.not.i301, label %.preheader.i302, label %bb.l, !llvm.loop !14

.preheader.i302:                                  ; preds = %.noexc310
  %.not1617.i303 = icmp eq i32 %.115.i299, 0
  br i1 %.not1617.i303, label %.loopexit533, label %.lr.ph.i304

.lr.ph.i304:                                      ; preds = %.preheader.i302, %.noexc311
  %.019.i305 = phi i32 [ %.1.i307, %.noexc311 ], [ 0, %.preheader.i302 ]
  %.218.i306 = phi i32 [ %i.ar, %.noexc311 ], [ %.115.i299, %.preheader.i302 ]
  %i.aq = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc311 unwind label %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc311:                                        ; preds = %.lr.ph.i304
  %i.ar = add nsw i32 %.218.i306, -1              ; 3 uses
  %i.as = icmp eq i32 %i.aq, 1
  %i.at = shl nuw i32 1, %i.ar
  %i.au = select i1 %i.as, i32 %i.at, i32 0
  %.1.i307 = or i32 %i.au, %.019.i305             ; 2 uses
  %.not16.i308 = icmp eq i32 %i.ar, 0
  br i1 %.not16.i308, label %.loopexit533, label %.lr.ph.i304, !llvm.loop !15

.loopexit533:                                     ; preds = %.noexc311, %.preheader.i302
  %.0.lcssa.i309 = phi i32 [ 0, %.preheader.i302 ], [ %.1.i307, %.noexc311 ]
  %i.av = add nsw i32 %.0.lcssa.i309, %.113.i300
  br label %bb.o

.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph.i, %.lr.ph.i304, %bb.l, %.preheader541, %bb.d, %bb.k, %bb.j
  %lpad.loopexit.split-lp940 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp529

bb.m:                                             ; preds = %bb.e
  %.not265 = icmp eq i32 %i.p, 5
  br i1 %.not265, label %bb.n, label %bb.cr

bb.n:                                             ; preds = %bb.m
  %i.aw = add i64 %.neg, 5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit533
  %.0463 = phi i64 [ %i.aw, %bb.n ], [ %.neg, %.loopexit533 ] ; 2 uses
  %.0232 = phi i32 [ 0, %bb.n ], [ %i.ak, %.loopexit533 ] ; 3 uses
  %.0231 = phi i32 [ 0, %bb.n ], [ %i.av, %.loopexit533 ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28
  %i.ax = add i32 %.0231, 2
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %16, i32 noundef %i.ax)
          to label %bb.p unwind label %bb.v

bb.p:                                             ; preds = %bb.o
  %i.ay = load i32, ptr %9, align 4
  %i.az = icmp eq i32 %i.ay, 6
  br i1 %i.az, label %bb.q, label %bb.al

bb.q:                                             ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 4584 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4592 ; 6 uses
  %i.bc = load i64, ptr %i.bb, align 8
  %i.bd = icmp ugt i64 %i.e, %i.bc
  br i1 %i.bd, label %bb.r, label %_ZN5o3dgc6VectorIcE8AllocateEm.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.e, ptr %i.bb, align 8
  %i.be = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.e) #32
          to label %.noexc315 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc315:                                        ; preds = %bb.r
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 4600
  %i.bg = load i64, ptr %i.bf, align 8            ; 2 uses
  %.not.i314 = icmp eq i64 %i.bg, 0
  br i1 %.not.i314, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.noexc315
  %i.bh = load ptr, ptr %i.ba, align 8            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.be, ptr align 1 %i.bh, i64 %i.bg, i1 false)
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @_ZdaPv(ptr noundef nonnull %i.bh) #29
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %.noexc315
  store ptr %i.be, ptr %i.ba, align 8
  br label %_ZN5o3dgc6VectorIcE8AllocateEm.exit

_ZN5o3dgc6VectorIcE8AllocateEm.exit:              ; preds = %bb.u, %bb.q
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 9 uses
  store i64 0, ptr %i.bj, align 8
  %i.bk = load i32, ptr %i.g, align 8
  %i.bl = icmp eq i32 %i.bk, 1
  br i1 %i.bl, label %.preheader523, label %bb.ab

.preheader523:                                    ; preds = %_ZN5o3dgc6VectorIcE8AllocateEm.exit
  %.not614 = icmp eq i64 %2, 0
  br i1 %.not614, label %.loopexit524, label %.lr.ph570

bb.v:                                             ; preds = %bb.o
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.cq

.lr.ph570:                                        ; preds = %.preheader523, %bb.aa
  %.0228569 = phi i64 [ %i.cy, %bb.aa ], [ 0, %.preheader523 ]
  %i.bn = load i64, ptr %0, align 8               ; 2 uses
  %i.bo = add i64 %i.bn, 1                        ; 2 uses
  store i64 %i.bo, ptr %0, align 8
  %i.bp = load ptr, ptr %10, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bn
  %i.br = load i8, ptr %i.bq, align 1             ; 2 uses
  %i.bs = zext i8 %i.br to i64
  %i.bt = icmp eq i8 %i.br, 127
  br i1 %i.bt, label %.preheader.i.i, label %.loopexit522

.preheader.i.i:                                   ; preds = %.lr.ph570, %.preheader.i.i
  %i.bu = phi i64 [ %i.bv, %.preheader.i.i ], [ %i.bo, %.lr.ph570 ] ; 2 uses
  %.09.i.i = phi i64 [ %i.cc, %.preheader.i.i ], [ 127, %.lr.ph570 ]
  %.0.i.i = phi i64 [ %i.cd, %.preheader.i.i ], [ 0, %.lr.ph570 ] ; 2 uses
  %i.bv = add i64 %i.bu, 1                        ; 2 uses
  store i64 %i.bv, ptr %0, align 8
  %i.bw = load ptr, ptr %10, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bu
  %i.by = load i8, ptr %i.bx, align 1
  %i.bz = zext i8 %i.by to i64                    ; 2 uses
  %i.ca = lshr i64 %i.bz, 1
  %i.cb = shl i64 %i.ca, %.0.i.i
  %i.cc = add i64 %i.cb, %.09.i.i                 ; 2 uses
  %i.cd = add i64 %.0.i.i, 6
  %i.ce = and i64 %i.bz, 1
  %.not.i.i = icmp eq i64 %i.ce, 0
  br i1 %.not.i.i, label %.loopexit522, label %.preheader.i.i, !llvm.loop !16

.loopexit522:                                     ; preds = %.preheader.i.i, %.lr.ph570
  %.1.i.i = phi i64 [ %i.bs, %.lr.ph570 ], [ %i.cc, %.preheader.i.i ] ; 3 uses
  %i.cf = and i64 %.1.i.i, 1
  %.not.i2.i = icmp eq i64 %i.cf, 0
  %i.cg = add i64 %.1.i.i, 1
  %i.ch = lshr exact i64 %i.cg, 1
  %i.ci = sub nsw i64 0, %i.ch
  %i.cj = lshr exact i64 %.1.i.i, 1
  %i.ck = select i1 %.not.i2.i, i64 %i.cj, i64 %i.ci
  %i.cl = trunc i64 %i.ck to i8
  %i.cm = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.cn = load i64, ptr %i.bb, align 8
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.w, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.loopexit522
  %.pre.i = load ptr, ptr %i.ba, align 8
  br label %bb.aa

bb.w:                                             ; preds = %.loopexit522
  %i.cp = shl i64 %i.cm, 1
  %spec.select.i = call i64 @llvm.umax.i64(i64 %i.cp, i64 32) ; 2 uses
  store i64 %spec.select.i, ptr %i.bb, align 8
  %i.cq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i) #32
          to label %.noexc317 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

.noexc317:                                        ; preds = %bb.w
  %i.cr = load i64, ptr %i.bj, align 8            ; 3 uses
  %.not.i316 = icmp eq i64 %i.cr, 0
  br i1 %.not.i316, label %bb.z, label %bb.x

bb.x:                                             ; preds = %.noexc317
  %i.cs = load ptr, ptr %i.ba, align 8            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cq, ptr align 1 %i.cs, i64 %i.cr, i1 false)
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @_ZdaPv(ptr noundef nonnull %i.cs) #29
  %.pre6.pre.i = load i64, ptr %i.bj, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %.noexc317
  %.pre6.i = phi i64 [ %i.cr, %bb.x ], [ %.pre6.pre.i, %bb.y ], [ 0, %.noexc317 ]
  store ptr %i.cq, ptr %i.ba, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i
  %i.cu = phi i64 [ %i.cm, %._crit_edge.i ], [ %.pre6.i, %bb.z ] ; 2 uses
  %i.cv = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.cq, %bb.z ]
  %i.cw = add i64 %i.cu, 1
  store i64 %i.cw, ptr %i.bj, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cu
  store i8 %i.cl, ptr %i.cx, align 1
  %i.cy = add nuw i64 %.0228569, 1                ; 2 uses
  %exitcond673.not = icmp eq i64 %i.cy, %2
  br i1 %exitcond673.not, label %.loopexit524, label %.lr.ph570, !llvm.loop !811

bb.ab:                                            ; preds = %_ZN5o3dgc6VectorIcE8AllocateEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28
  invoke void @_ZN5o3dgc19Adaptive_Data_ModelC1Ej(ptr noundef nonnull align 8 dereferenceable(52) %17, i32 noundef 12)
          to label %.preheader527 unwind label %bb.ac

.preheader527:                                    ; preds = %bb.ab
  %.not613 = icmp eq i64 %2, 0
  br i1 %.not613, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.ai, %.preheader527
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.loopexit524

bb.ac:                                            ; preds = %bb.ab
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

.lr.ph:                                           ; preds = %.preheader527, %bb.ai
  %.0227568 = phi i64 [ %i.dv, %bb.ai ], [ 0, %.preheader527 ]
  %i.da = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %17)
          to label %bb.ad unwind label %bb.aj

bb.ad:                                            ; preds = %.lr.ph
  %i.db = zext i32 %i.da to i64                   ; 3 uses
  %i.dc = and i64 %i.db, 1
  %.not.i318 = icmp eq i64 %i.dc, 0
  %i.dd = add nuw nsw i64 %i.db, 1
  %i.de = lshr exact i64 %i.dd, 1
  %i.df = sub nsw i64 0, %i.de
  %i.dg = lshr exact i64 %i.db, 1
  %i.dh = select i1 %.not.i318, i64 %i.dg, i64 %i.df
  %i.di = trunc i64 %i.dh to i8
  %i.dj = load i64, ptr %i.bj, align 8            ; 3 uses
  %i.dk = load i64, ptr %i.bb, align 8
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.ae, label %._crit_edge.i319

._crit_edge.i319:                                 ; preds = %bb.ad
  %.pre.i320 = load ptr, ptr %i.ba, align 8
  br label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.dm = shl i64 %i.dj, 1
  %spec.select.i321 = call i64 @llvm.umax.i64(i64 %i.dm, i64 32) ; 2 uses
  store i64 %spec.select.i321, ptr %i.bb, align 8
  %i.dn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %spec.select.i321) #32
          to label %.noexc325 unwind label %bb.aj ; 3 uses

.noexc325:                                        ; preds = %bb.ae
  %i.do = load i64, ptr %i.bj, align 8            ; 3 uses
  %.not.i322 = icmp eq i64 %i.do, 0
  br i1 %.not.i322, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %.noexc325
  %i.dp = load ptr, ptr %i.ba, align 8            ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dn, ptr align 1 %i.dp, i64 %i.do, i1 false)
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @_ZdaPv(ptr noundef nonnull %i.dp) #29
  %.pre6.pre.i323 = load i64, ptr %i.bj, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %.noexc325
  %.pre6.i324 = phi i64 [ %i.do, %bb.af ], [ %.pre6.pre.i323, %bb.ag ], [ 0, %.noexc325 ]
  store ptr %i.dn, ptr %i.ba, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge.i319
  %i.dr = phi i64 [ %i.dj, %._crit_edge.i319 ], [ %.pre6.i324, %bb.ah ] ; 2 uses
  %i.ds = phi ptr [ %.pre.i320, %._crit_edge.i319 ], [ %i.dn, %bb.ah ]
  %i.dt = add i64 %i.dr, 1
  store i64 %i.dt, ptr %i.bj, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dr
  store i8 %i.di, ptr %i.du, align 1
  %i.dv = add nuw i64 %.0227568, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dv, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !812

bb.aj:                                            ; preds = %bb.ae, %.lr.ph
  %i.dw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %17) #28
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.dw, %bb.aj ], [ %i.cz, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28
  br label %.loopexit.split-lp

.loopexit524:                                     ; preds = %bb.aa, %.preheader523, %._crit_edge
  %i.dx = invoke noundef i32 @_ZN5o3dgc13SC3DMCDecoderItE14ProcessNormalsERKNS_14IndexedFaceSetItEE(ptr noundef nonnull align 8 dereferenceable(12876) %0, ptr noundef nonnull align 8 dereferenceable(80000) %8)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.al:                                            ; preds = %.loopexit524, %bb.p
  %.0251 = phi i64 [ %3, %bb.p ], [ 2, %.loopexit524 ] ; 27 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4576 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8
  %i.ea = icmp ult i64 %i.dz, %i.e
  br i1 %i.ea, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %bb.al
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 2 uses
  %i.ec = load ptr, ptr %i.eb, align 8            ; 2 uses
  %i.ed = icmp eq ptr %i.ec, null
  br i1 %i.ed, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZdaPv(ptr noundef nonnull %i.ec) #29
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  store i64 %i.e, ptr %i.dy, align 8
  %i.ee = icmp ugt i64 %i.e, 2305843009213693951
  %i.ef = shl nuw i64 %i.e, 3
  %i.eg = select i1 %i.ee, i64 -1, i64 %i.ef
  %i.eh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.eg) #32
          to label %bb.ap unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.eh, ptr %i.eb, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al
  %i.ei = icmp sgt i64 %2, 0                      ; 2 uses
  br i1 %i.ei, label %.lr.ph604, label %._crit_edge605

.lr.ph604:                                        ; preds = %bb.aq
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 4336
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 4328
  %.not615 = icmp eq i64 %.0251, 0                ; 7 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 7 uses
  %i.em = zext i32 %.0231 to i64                  ; 3 uses
  %i.en = shl nuw i64 %.0251, 3                   ; 3 uses
  %min.iters.check = icmp ult i64 %.0251, 4
  %n.vec = and i64 %.0251, -4                     ; 3 uses
  %cmp.n = icmp eq i64 %.0251, %n.vec
  br label %bb.ar

._crit_edge605:                                   ; preds = %.loopexit508, %bb.aq
  %.1.lcssa = phi i64 [ %.0463, %bb.aq ], [ %.3, %.loopexit508 ]
  store i64 %.1.lcssa, ptr %0, align 8
  %i.eo = load i32, ptr %9, align 4
  %i.ep = icmp eq i32 %i.eo, 6
  br i1 %i.ep, label %bb.ck, label %bb.co

bb.ar:                                            ; preds = %.lr.ph604, %.loopexit508
  %.0226600 = phi i64 [ 0, %.lr.ph604 ], [ %i.te, %.loopexit508 ] ; 17 uses
  %.1599 = phi i64 [ %.0463, %.lr.ph604 ], [ %.3, %.loopexit508 ] ; 7 uses
  %i.eq = load ptr, ptr %i.ej, align 8            ; 3 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.0226600 ; 3 uses
  %i.es = load i64, ptr %i.er, align 8            ; 2 uses
  %.not482 = icmp eq i64 %.0226600, 0             ; 3 uses
  br i1 %.not482, label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.et = getelementptr i8, ptr %i.er, i64 -8
  %i.eu = load i64, ptr %i.et, align 8
  br label %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit

_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit: ; preds = %bb.ar, %bb.as
  %i.ev = phi i64 [ %i.eu, %bb.as ], [ 0, %bb.ar ]
  %i.ew = icmp sgt i64 %i.es, %i.ev
  br i1 %i.ew, label %bb.at, label %.critedge295.thread

bb.at:                                            ; preds = %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit
  %i.ex = load i32, ptr %9, align 4               ; 3 uses
  %.not268 = icmp eq i32 %i.ex, 0
  br i1 %.not268, label %.critedge295.thread, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not482, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ey = getelementptr i8, ptr %i.er, i64 -8
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = shl i64 %i.ez, 32
  %i.fb = ashr exact i64 %i.fa, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit:           ; preds = %bb.au, %bb.av
  %i.fc = phi i64 [ %i.fb, %bb.av ], [ 0, %bb.au ] ; 2 uses
  %i.fd = shl i64 %i.es, 32
  %i.fe = ashr exact i64 %i.fd, 32                ; 2 uses
  %i.ff = icmp slt i64 %i.fc, %i.fe
  br i1 %i.ff, label %.lr.ph587, label %.critedge295.thread

.lr.ph587:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit
  %i.fg = icmp eq i32 %i.ex, 5
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph587, %.loopexit507
  %.0225586 = phi i64 [ %i.fc, %.lr.ph587 ], [ %i.nc, %.loopexit507 ] ; 2 uses
  %.0464585 = phi i64 [ 0, %.lr.ph587 ], [ %.7, %.loopexit507 ] ; 5 uses
  %i.fh = load ptr, ptr %i.ek, align 8            ; 2 uses
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %.0225586
  %i.fj = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fk = icmp sgt i64 %i.fj, -1
  br i1 %i.fk, label %bb.ax, label %.critedge295

bb.ax:                                            ; preds = %bb.aw
  br i1 %i.fg, label %bb.ay, label %.critedge

bb.ay:                                            ; preds = %bb.ax
  %.idx483 = mul nuw nsw i64 %i.fj, 6
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx483 ; 3 uses
  %i.fm = load i16, ptr %i.fl, align 2
  %i.fn = zext i16 %i.fm to i64                   ; 3 uses
  %i.fo = icmp eq i64 %.0226600, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fl, i64 2
  %i.fq = load i16, ptr %i.fp, align 2
  %i.fr = zext i16 %i.fq to i64                   ; 3 uses
  br i1 %i.fo, label %.sink.split, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fs = icmp eq i64 %.0226600, %i.fr
  br i1 %i.fs, label %.sink.split, label %bb.ba

.sink.split:                                      ; preds = %bb.az, %bb.ay
  %.0462.ph = phi i64 [ %i.fr, %bb.ay ], [ %i.fn, %bb.az ]
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fu = load i16, ptr %i.ft, align 2
  %i.fv = zext i16 %i.fu to i64
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split, %bb.az
  %.0462 = phi i64 [ %i.fn, %bb.az ], [ %.0462.ph, %.sink.split ] ; 10 uses
  %.0461 = phi i64 [ %i.fr, %bb.az ], [ %i.fv, %.sink.split ] ; 7 uses
  %i.fw = icmp samesign ult i64 %.0462, %.0226600
  %i.fx = icmp samesign ult i64 %.0461, %.0226600
  %or.cond291 = select i1 %i.fw, i1 %i.fx, i1 false
  br i1 %or.cond291, label %bb.bb, label %.critedge.thread

bb.bb:                                            ; preds = %bb.ba
  %.not484 = icmp eq i64 %.0462, 0
  br i1 %.not484, label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.fy = getelementptr [8 x i8], ptr %i.eq, i64 %.0462
  %i.fz = getelementptr i8, ptr %i.fy, i64 -8
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = shl i64 %i.ga, 32
  %i.gc = ashr exact i64 %i.gb, 32
  br label %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327

_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327:        ; preds = %bb.bb, %bb.bc
  %i.gd = phi i64 [ %i.gc, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %.0462
  %i.gf = load i64, ptr %i.ge, align 8
  %i.gg = shl i64 %i.gf, 32
  %i.gh = ashr exact i64 %i.gg, 32                ; 2 uses
  %i.gi = icmp slt i64 %i.gd, %i.gh
  br i1 %i.gi, label %.lr.ph578, label %.critedge.thread

.lr.ph578:                                        ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit327
  %i.gj = call i64 @llvm.umin.i64(i64 %.0461, i64 %.0462) ; 3 uses
  %i.gk = call i64 @llvm.umax.i64(i64 %.0461, i64 %.0462) ; 3 uses
  %i.gl = mul i64 %.0462, %4
  %i.gm = mul i64 %.0461, %4
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph578, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread
  %.0224577 = phi i64 [ %i.gd, %.lr.ph578 ], [ %i.jj, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 2 uses
  %.1465576 = phi i64 [ %.0464585, %.lr.ph578 ], [ %.2466, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread ] ; 12 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.fh, i64 %.0224577
  %i.go = load i64, ptr %i.gn, align 8            ; 2 uses
  %i.gp = icmp sgt i64 %i.go, -1
  br i1 %i.gp, label %.preheader490, label %.critedge

.preheader490:                                    ; preds = %bb.bd
  %.idx = mul nuw nsw i64 %i.go, 6
  %i.gq = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx ; 3 uses
  %i.gr = load i16, ptr %i.gq, align 2
  %i.gs = zext i16 %i.gr to i64                   ; 4 uses
  %i.gt = icmp eq i64 %.0461, %i.gs               ; 2 uses
  %i.gu = icmp samesign ule i64 %.0226600, %i.gs
  %.not270 = icmp eq i64 %.0462, %i.gs
  %or.cond292 = or i1 %i.gu, %.not270
  %or.cond293 = select i1 %or.cond292, i1 true, i1 %i.gt
  %.1223 = select i1 %or.cond293, i64 -1, i64 %i.gs
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 2
  %i.gw = load i16, ptr %i.gv, align 2
  %i.gx = zext i16 %i.gw to i64                   ; 4 uses
  %i.gy = icmp eq i64 %.0461, %i.gx               ; 2 uses
  %i.gz = icmp samesign ule i64 %.0226600, %i.gx
  %.not270.1 = icmp eq i64 %.0462, %i.gx
  %or.cond292.1 = or i1 %i.gz, %.not270.1
  %or.cond293.1 = select i1 %or.cond292.1, i1 true, i1 %i.gy
  %.1223.1 = select i1 %or.cond293.1, i64 %.1223, i64 %i.gx
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gq, i64 4
  %i.hb = load i16, ptr %i.ha, align 2
  %i.hc = zext i16 %i.hb to i64                   ; 4 uses
  %i.hd = icmp eq i64 %.0461, %i.hc               ; 2 uses
  %i.he = select i1 %i.hd, i1 true, i1 %i.gy
  %spec.select.2 = select i1 %i.he, i1 true, i1 %i.gt
  %i.hf = icmp samesign ule i64 %.0226600, %i.hc
  %.not270.2 = icmp eq i64 %.0462, %i.hc
  %or.cond292.2 = or i1 %i.hf, %.not270.2
  %or.cond293.2 = select i1 %or.cond292.2, i1 true, i1 %i.hd
  %.1223.2 = select i1 %or.cond293.2, i64 %.1223.1, i64 %i.hc ; 3 uses
  %i.hg = icmp ne i64 %.1223.2, -1
  %or.cond = select i1 %i.hg, i1 %spec.select.2, i1 false
  br i1 %or.cond, label %bb.be, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread

bb.be:                                            ; preds = %.preheader490
  %i.hh = xor i64 %.1223.2, -1                    ; 3 uses
  %.not.i329 = icmp eq i64 %.1465576, 0
  br i1 %.not.i329, label %.thread34.thread.i, label %.lr.ph.i330

.lr.ph.i330:                                      ; preds = %bb.be, %bb.bh
  %.02543.i = phi i64 [ %i.ib, %bb.bh ], [ 0, %bb.be ] ; 7 uses
  %i.hi = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i ; 5 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %i.hk = load i64, ptr %i.hj, align 8            ; 2 uses
  %i.hl = icmp eq i64 %i.hk, %i.hh
  br i1 %i.hl, label %bb.bf, label %.split.i

bb.bf:                                            ; preds = %.lr.ph.i330
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hn = load i64, ptr %i.hm, align 8            ; 2 uses
  %i.ho = icmp eq i64 %i.gk, %i.hn
  br i1 %i.ho, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bf
  %i.hp = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.hq = icmp eq i64 %i.gj, %i.hp
  br i1 %i.hq, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit.thread, label %.split31.i

.split.i:                                         ; preds = %.lr.ph.i330
  %i.hr = icmp sgt i64 %i.hk, %i.hh
  br i1 %i.hr, label %bb.bg, label %bb.bh

.split31.i:                                       ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i
  %i.hs = icmp slt i64 %i.gj, %i.hp
  br i1 %i.hs, label %bb.bg, label %bb.bh

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i:      ; preds = %bb.bf
  %i.ht = icmp slt i64 %i.gk, %i.hn
  br i1 %i.ht, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i, %.split31.i, %.split.i
  %i.hu = icmp eq i64 %.1465576, 1
  %spec.select477 = select i1 %i.hu, i64 2, i64 %.1465576 ; 4 uses
  %.044.i = add i64 %spec.select477, -1
  %i.hv = icmp ugt i64 %.044.i, %.02543.i
end_hunk_0
begin_hunk_1_@_ZN5o3dgc13SC3DMCDecoderItE16DecodeFloatArrayEPfmmmPKfS4_mRKNS_14IndexedFaceSetItEERNS_25O3DGCSC3DMCPredictionModeERKNS_12BinaryStreamE:bb.a
  %i.ku = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i334.1 ; 5 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 16
  %i.kw = load i64, ptr %i.kv, align 8            ; 2 uses
  %i.kx = icmp eq i64 %i.kw, %i.ks
  br i1 %i.kx, label %bb.bn, label %.split.i335.1

.split.i335.1:                                    ; preds = %.lr.ph.i333.1
  %i.ky = icmp sgt i64 %i.kw, %i.ks
  br i1 %i.ky, label %bb.bp, label %bb.bo

bb.bn:                                            ; preds = %.lr.ph.i333.1
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ku, i64 8
  %i.la = load i64, ptr %i.kz, align 8            ; 2 uses
  %i.lb = icmp eq i64 %i.la, -1
  br i1 %i.lb, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.1, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.1

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.1: ; preds = %bb.bn
  %i.lc = icmp sgt i64 %i.la, -1
  br i1 %i.lc, label %bb.bp, label %bb.bo

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.1: ; preds = %bb.bn
  %i.ld = load i64, ptr %i.ku, align 8            ; 2 uses
  %i.le = icmp eq i64 %i.ld, -1
  br i1 %i.le, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1, label %.split31.i349.1

.split31.i349.1:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.1
  %i.lf = icmp sgt i64 %i.ld, -1
  br i1 %i.lf, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %.split31.i349.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.1, %.split.i335.1
  %i.lg = add nuw nsw i64 %.02543.i334.1, 1       ; 2 uses
  %exitcond.not.i336.1 = icmp eq i64 %i.lg, %.6
  br i1 %exitcond.not.i336.1, label %.thread34.i337.1, label %.lr.ph.i333.1, !llvm.loop !17

.thread34.i337.1:                                 ; preds = %bb.bo
  %i.lh = icmp eq i64 %.6, 1
  br i1 %i.lh, label %.thread34.thread.i339.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1

bb.bp:                                            ; preds = %.split31.i349.1, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.1, %.split.i335.1
  %i.li = icmp eq i64 %.6, 1
  %spec.select479.1 = select i1 %i.li, i64 2, i64 %.6 ; 4 uses
  %.044.i343.1 = add i64 %spec.select479.1, -1
  %i.lj = icmp ugt i64 %.044.i343.1, %.02543.i334.1
  br i1 %i.lj, label %.lr.ph47.preheader.i344.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.1

.lr.ph47.preheader.i344.1:                        ; preds = %bb.bp
  %i.lk = mul nuw nsw i64 %.02543.i334.1, 280
  %i.ll = getelementptr i8, ptr %11, i64 %i.lk    ; 2 uses
  %scevgep.i345.1 = getelementptr i8, ptr %i.ll, i64 280
  %i.lm = xor i64 %.02543.i334.1, -1
  %i.ln = add i64 %spec.select479.1, %i.lm
  %i.lo = mul nuw i64 %i.ln, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i345.1, ptr align 8 %i.ll, i64 %i.lo, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.1

.thread34.thread.i339.1:                          ; preds = %.thread34.i337.1, %bb.bm
  %i.lp = add nuw nsw i64 %.6, 1
  %i.lq = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.6
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.1: ; preds = %.thread34.thread.i339.1, %.lr.ph47.preheader.i344.1, %bb.bp
  %.12.1 = phi i64 [ %i.lp, %.thread34.thread.i339.1 ], [ %spec.select479.1, %.lr.ph47.preheader.i344.1 ], [ %spec.select479.1, %bb.bp ] ; 2 uses
  %.lcssa.sink.i341.1 = phi ptr [ %i.lq, %.thread34.thread.i339.1 ], [ %i.ku, %.lr.ph47.preheader.i344.1 ], [ %i.ku, %bb.bp ] ; 2 uses
  %.1.ph.i342.1 = phi i64 [ %.6, %.thread34.thread.i339.1 ], [ %.02543.i334.1, %.lr.ph47.preheader.i344.1 ], [ %.02543.i334.1, %bb.bp ] ; 2 uses
  %.sroa.7460.0..lcssa.sink.i341.sroa_idx.1 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i341.1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i341.1, i8 -1, i64 16, i1 false)
  store i64 %i.ks, ptr %.sroa.7460.0..lcssa.sink.i341.sroa_idx.1, align 8
  %.not275.1 = icmp eq i64 %.1.ph.i342.1, 4294967295
  %brmerge612.1 = or i1 %.not275.1, %.not615
  br i1 %brmerge612.1, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1, label %.lr.ph582.1

.lr.ph582.1:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.1
  %i.lr = load ptr, ptr %i.el, align 8
  %i.ls = mul i64 %4, %i.ks
  %i.lt = getelementptr [8 x i8], ptr %i.lr, i64 %i.ls
  %i.lu = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i342.1
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lv, ptr align 8 %i.lt, i64 %i.en, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1: ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.1, %.lr.ph582.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.1, %.thread34.i337.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread
  %.6.1 = phi i64 [ %.12.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.1 ], [ %.12.1, %.lr.ph582.1 ], [ %.6, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread ], [ %.6, %.thread34.i337.1 ], [ %.6, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.1 ] ; 11 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.jk, i64 4
  %i.lx = load i16, ptr %i.lw, align 2
  %i.ly = zext i16 %i.lx to i64                   ; 5 uses
  %i.lz = icmp samesign ugt i64 %.0226600, %i.ly
  br i1 %i.lz, label %bb.bq, label %.loopexit507

bb.bq:                                            ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1
  %.not.i332.2 = icmp eq i64 %.6.1, 0
  br i1 %.not.i332.2, label %.thread34.thread.i339.2, label %.lr.ph.i333.2

.lr.ph.i333.2:                                    ; preds = %bb.bq, %bb.bs
  %.02543.i334.2 = phi i64 [ %i.mm, %bb.bs ], [ 0, %bb.bq ] ; 7 uses
  %i.ma = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.02543.i334.2 ; 5 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 16
  %i.mc = load i64, ptr %i.mb, align 8            ; 2 uses
  %i.md = icmp eq i64 %i.mc, %i.ly
  br i1 %i.md, label %bb.br, label %.split.i335.2

.split.i335.2:                                    ; preds = %.lr.ph.i333.2
  %i.me = icmp sgt i64 %i.mc, %i.ly
  br i1 %i.me, label %bb.bt, label %bb.bs

bb.br:                                            ; preds = %.lr.ph.i333.2
  %i.mf = getelementptr inbounds nuw i8, ptr %i.ma, i64 8
  %i.mg = load i64, ptr %i.mf, align 8            ; 2 uses
  %i.mh = icmp eq i64 %i.mg, -1
  br i1 %i.mh, label %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.2, label %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.2

_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.2: ; preds = %bb.br
  %i.mi = icmp sgt i64 %i.mg, -1
  br i1 %i.mi, label %bb.bt, label %bb.bs

_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.2: ; preds = %bb.br
  %i.mj = load i64, ptr %i.ma, align 8            ; 2 uses
  %i.mk = icmp eq i64 %i.mj, -1
  br i1 %i.mk, label %.loopexit507, label %.split31.i349.2

.split31.i349.2:                                  ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.2
  %i.ml = icmp sgt i64 %i.mj, -1
  br i1 %i.ml, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %.split31.i349.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.2, %.split.i335.2
  %i.mm = add nuw nsw i64 %.02543.i334.2, 1       ; 2 uses
  %exitcond.not.i336.2 = icmp eq i64 %i.mm, %.6.1
  br i1 %exitcond.not.i336.2, label %.thread34.i337.2, label %.lr.ph.i333.2, !llvm.loop !17

.thread34.i337.2:                                 ; preds = %bb.bs
  %i.mn = icmp eq i64 %.6.1, 1
  br i1 %i.mn, label %.thread34.thread.i339.2, label %.loopexit507

bb.bt:                                            ; preds = %.split31.i349.2, %_ZN5o3dgcltERKNS_13SC3DMCTripletES2_.exit.i347.2, %.split.i335.2
  %i.mo = icmp eq i64 %.6.1, 1
  %spec.select479.2 = select i1 %i.mo, i64 2, i64 %.6.1 ; 4 uses
  %.044.i343.2 = add i64 %spec.select479.2, -1
  %i.mp = icmp ugt i64 %.044.i343.2, %.02543.i334.2
  br i1 %i.mp, label %.lr.ph47.preheader.i344.2, label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.2

.lr.ph47.preheader.i344.2:                        ; preds = %bb.bt
  %i.mq = mul nuw nsw i64 %.02543.i334.2, 280
  %i.mr = getelementptr i8, ptr %11, i64 %i.mq    ; 2 uses
  %scevgep.i345.2 = getelementptr i8, ptr %i.mr, i64 280
  %i.ms = xor i64 %.02543.i334.2, -1
  %i.mt = add i64 %spec.select479.2, %i.ms
  %i.mu = mul nuw i64 %i.mt, 280
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %scevgep.i345.2, ptr align 8 %i.mr, i64 %i.mu, i1 false)
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.2

.thread34.thread.i339.2:                          ; preds = %.thread34.i337.2, %bb.bq
  %i.mv = add nuw nsw i64 %.6.1, 1
  %i.mw = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.6.1
  br label %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.2

_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.2: ; preds = %.thread34.thread.i339.2, %.lr.ph47.preheader.i344.2, %bb.bt
  %.12.2 = phi i64 [ %i.mv, %.thread34.thread.i339.2 ], [ %spec.select479.2, %.lr.ph47.preheader.i344.2 ], [ %spec.select479.2, %bb.bt ] ; 2 uses
  %.lcssa.sink.i341.2 = phi ptr [ %i.mw, %.thread34.thread.i339.2 ], [ %i.ma, %.lr.ph47.preheader.i344.2 ], [ %i.ma, %bb.bt ] ; 2 uses
  %.1.ph.i342.2 = phi i64 [ %.6.1, %.thread34.thread.i339.2 ], [ %.02543.i334.2, %.lr.ph47.preheader.i344.2 ], [ %.02543.i334.2, %bb.bt ] ; 2 uses
  %.sroa.7460.0..lcssa.sink.i341.sroa_idx.2 = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i341.2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa.sink.i341.2, i8 -1, i64 16, i1 false)
  store i64 %i.ly, ptr %.sroa.7460.0..lcssa.sink.i341.sroa_idx.2, align 8
  %.not275.2 = icmp eq i64 %.1.ph.i342.2, 4294967295
  %brmerge612.2 = or i1 %.not275.2, %.not615
  br i1 %brmerge612.2, label %.loopexit507, label %.lr.ph582.2

.lr.ph582.2:                                      ; preds = %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.2
  %i.mx = load ptr, ptr %i.el, align 8
  %i.my = mul i64 %4, %i.ly
  %i.mz = getelementptr [8 x i8], ptr %i.mx, i64 %i.my
  %i.na = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.1.ph.i342.2
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.nb, ptr align 8 %i.mz, i64 %i.en, i1 false)
  br label %.loopexit507

.loopexit507:                                     ; preds = %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1, %.thread34.i337.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.2, %.lr.ph582.2, %.critedge
  %.7 = phi i64 [ %.4, %.critedge ], [ %.12.2, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.2 ], [ %.12.2, %.lr.ph582.2 ], [ %.6.1, %_ZN5o3dgc6InsertENS_13SC3DMCTripletERmPNS_15SC3DMCPredictorE.exit350.thread.1 ], [ %.6.1, %.thread34.i337.2 ], [ %.6.1, %_ZN5o3dgceqERKNS_13SC3DMCTripletES2_.exit.i348.2 ] ; 2 uses
  %i.nc = add nsw i64 %.0225586, 1                ; 2 uses
  %exitcond678.not = icmp eq i64 %i.nc, %i.fe
  br i1 %exitcond678.not, label %.critedge295, label %bb.aw, !llvm.loop !816

.critedge295:                                     ; preds = %bb.aw, %.loopexit507
  %.0464.lcssa.ph = phi i64 [ %.0464585, %bb.aw ], [ %.7, %.loopexit507 ]
  %i.nd = icmp ugt i64 %.0464.lcssa.ph, 1
  br i1 %i.nd, label %bb.bu, label %.critedge295.thread

bb.bu:                                            ; preds = %.critedge295
  %i.ne = load i32, ptr %i.g, align 8
  %i.nf = icmp eq i32 %i.ne, 1
  br i1 %i.nf, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ng = add i64 %.1599, 1
  %i.nh = load ptr, ptr %10, align 8
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 %.1599
  %i.nj = load i8, ptr %i.ni, align 1
  %i.nk = zext i8 %i.nj to i64
  br label %bb.by

bb.bw:                                            ; preds = %bb.bu
  %i.nl = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %15)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bx:                                            ; preds = %bb.bw
  %i.nm = zext i32 %i.nl to i64
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bv
  %.2 = phi i64 [ %i.ng, %bb.bv ], [ %.1599, %bb.bx ] ; 2 uses
  %.0216 = phi i64 [ %i.nk, %bb.bv ], [ %i.nm, %bb.bx ]
  br i1 %.not615, label %.loopexit508, label %.lr.ph593

.lr.ph593:                                        ; preds = %bb.by
  %i.nn = getelementptr inbounds nuw [280 x i8], ptr %11, i64 %.0216
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 24
  %i.np = mul i64 %.0226600, %4
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph593, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357
  %.0215591 = phi i64 [ 0, %.lr.ph593 ], [ %i.pm, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357 ] ; 3 uses
  %i.nq = load i32, ptr %i.g, align 8
  %i.nr = icmp eq i32 %i.nq, 1
  br i1 %i.nr, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.ns = load i64, ptr %0, align 8               ; 2 uses
  %i.nt = add i64 %i.ns, 1                        ; 2 uses
  store i64 %i.nt, ptr %0, align 8
  %i.nu = load ptr, ptr %10, align 8
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 %i.ns
  %i.nw = load i8, ptr %i.nv, align 1             ; 2 uses
  %i.nx = zext i8 %i.nw to i64
  %i.ny = icmp eq i8 %i.nw, 127
  br i1 %i.ny, label %.preheader.i.i353, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357

.preheader.i.i353:                                ; preds = %bb.ca, %.preheader.i.i353
  %i.nz = phi i64 [ %i.oa, %.preheader.i.i353 ], [ %i.nt, %bb.ca ] ; 2 uses
  %.09.i.i354 = phi i64 [ %i.oh, %.preheader.i.i353 ], [ 127, %bb.ca ]
  %.0.i.i355 = phi i64 [ %i.oi, %.preheader.i.i353 ], [ 0, %bb.ca ] ; 2 uses
  %i.oa = add i64 %i.nz, 1                        ; 2 uses
  store i64 %i.oa, ptr %0, align 8
  %i.ob = load ptr, ptr %10, align 8
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 %i.nz
  %i.od = load i8, ptr %i.oc, align 1
  %i.oe = zext i8 %i.od to i64                    ; 2 uses
  %i.of = lshr i64 %i.oe, 1
  %i.og = shl i64 %i.of, %.0.i.i355
  %i.oh = add i64 %i.og, %.09.i.i354              ; 2 uses
  %i.oi = add i64 %.0.i.i355, 6
  %i.oj = and i64 %i.oe, 1
  %.not.i.i356 = icmp eq i64 %i.oj, 0
  br i1 %.not.i.i356, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357, label %.preheader.i.i353, !llvm.loop !16

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.bw, %bb.cb, %.preheader503, %.lr.ph.i.i, %.preheader491, %.lr.ph.i.i404, %.lr.ph.i.i381, %.preheader497, %bb.cj, %bb.cf, %bb.w, %bb.r, %.loopexit524, %bb.ao
  %lpad.loopexit.split-lp929 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cb:                                            ; preds = %bb.bz
  %i.ok = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc362 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc362:                                        ; preds = %bb.cb
  %i.ol = zext i32 %i.ok to i64
  %i.om = icmp eq i32 %.0231, %i.ok
  br i1 %i.om, label %.preheader503, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357

.preheader503:                                    ; preds = %.noexc362, %.noexc363
  %.014.i.i = phi i32 [ %.115.i.i, %.noexc363 ], [ %.0232, %.noexc362 ] ; 2 uses
  %.012.i.i = phi i32 [ %.113.i.i, %.noexc363 ], [ 0, %.noexc362 ]
  %i.on = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc363 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc363:                                        ; preds = %.preheader503
  %i.oo = icmp eq i32 %i.on, 1                    ; 2 uses
  %i.op = shl nuw i32 1, %.014.i.i
  %i.oq = zext i1 %i.oo to i32
  %.115.i.i = add nsw i32 %.014.i.i, %i.oq        ; 3 uses
  %i.or = select i1 %i.oo, i32 %i.op, i32 0
  %.113.i.i = add nsw i32 %i.or, %.012.i.i        ; 2 uses
  %.not.i.i359 = icmp eq i32 %i.on, 0
  br i1 %.not.i.i359, label %.preheader.i.i360, label %.preheader503, !llvm.loop !14

.preheader.i.i360:                                ; preds = %.noexc363
  %.not1617.i.i = icmp eq i32 %.115.i.i, 0
  br i1 %.not1617.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i360, %.noexc364
  %.019.i.i = phi i32 [ %.1.i.i361, %.noexc364 ], [ 0, %.preheader.i.i360 ]
  %.218.i.i = phi i32 [ %i.ot, %.noexc364 ], [ %.115.i.i, %.preheader.i.i360 ]
  %i.os = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc364 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc364:                                        ; preds = %.lr.ph.i.i
  %i.ot = add nsw i32 %.218.i.i, -1               ; 3 uses
  %i.ou = icmp eq i32 %i.os, 1
  %i.ov = shl nuw i32 1, %i.ot
  %i.ow = select i1 %i.ou, i32 %i.ov, i32 0
  %.1.i.i361 = or i32 %i.ow, %.019.i.i            ; 2 uses
  %.not16.i.i = icmp eq i32 %i.ot, 0
  br i1 %.not16.i.i, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, label %.lr.ph.i.i, !llvm.loop !15

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i: ; preds = %.noexc364, %.preheader.i.i360
  %.0.lcssa.i.i = phi i32 [ 0, %.preheader.i.i360 ], [ %.1.i.i361, %.noexc364 ]
  %i.ox = add nsw i32 %.0.lcssa.i.i, %.113.i.i
  %i.oy = zext i32 %i.ox to i64
  %i.oz = add nuw nsw i64 %i.oy, %i.em
  br label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357: ; preds = %.preheader.i.i353, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i, %.noexc362, %bb.ca
  %.0.i358.sink781 = phi i64 [ %i.ol, %.noexc362 ], [ %i.nx, %bb.ca ], [ %i.oz, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i ], [ %i.oh, %.preheader.i.i353 ] ; 3 uses
  %i.pa = and i64 %.0.i358.sink781, 1
  %.not.i10.i = icmp eq i64 %i.pa, 0
  %i.pb = add i64 %.0.i358.sink781, 1
  %i.pc = lshr exact i64 %i.pb, 1
  %i.pd = sub nsw i64 0, %i.pc
  %i.pe = lshr exact i64 %.0.i358.sink781, 1
  %i.pf = select i1 %.not.i10.i, i64 %i.pe, i64 %i.pd
  %i.pg = getelementptr inbounds nuw [8 x i8], ptr %i.no, i64 %.0215591
  %i.ph = load i64, ptr %i.pg, align 8
  %i.pi = add nsw i64 %i.ph, %i.pf
  %i.pj = load ptr, ptr %i.el, align 8
  %i.pk = getelementptr [8 x i8], ptr %i.pj, i64 %i.np
  %i.pl = getelementptr [8 x i8], ptr %i.pk, i64 %.0215591
  store i64 %i.pi, ptr %i.pl, align 8
  %i.pm = add nuw i64 %.0215591, 1                ; 2 uses
  %exitcond679.not = icmp eq i64 %i.pm, %.0251
  br i1 %exitcond679.not, label %.loopexit508, label %bb.bz, !llvm.loop !817

.critedge295.thread:                              ; preds = %_ZNK5o3dgc13AdjacencyInfo5BeginEl.exit, %_ZNK5o3dgc13AdjacencyInfo15GetNumNeighborsEl.exit, %bb.at, %.critedge295
  br i1 %.not482, label %bb.cg, label %bb.cc

bb.cc:                                            ; preds = %.critedge295.thread
  %i.pn = load i32, ptr %9, align 4
  %.not277 = icmp eq i32 %i.pn, 0
  br i1 %.not277, label %bb.cg, label %.preheader511

.preheader511:                                    ; preds = %bb.cc
  br i1 %.not615, label %.loopexit508, label %.lr.ph595

.lr.ph595:                                        ; preds = %.preheader511
  %i.po = add nsw i64 %.0226600, -1
  %i.pp = mul i64 %i.po, %4
  %i.pq = mul i64 %.0226600, %4
  br label %bb.cd

bb.cd:                                            ; preds = %.lr.ph595, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371
  %.0214594 = phi i64 [ 0, %.lr.ph595 ], [ %i.ro, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371 ] ; 3 uses
  %i.pr = load i32, ptr %i.g, align 8
  %i.ps = icmp eq i32 %i.pr, 1
  br i1 %i.ps, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.pt = load i64, ptr %0, align 8               ; 2 uses
  %i.pu = add i64 %i.pt, 1                        ; 2 uses
  store i64 %i.pu, ptr %0, align 8
  %i.pv = load ptr, ptr %10, align 8
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 %i.pt
  %i.px = load i8, ptr %i.pw, align 1             ; 2 uses
  %i.py = zext i8 %i.px to i64
  %i.pz = icmp eq i8 %i.px, 127
  br i1 %i.pz, label %.preheader.i.i367, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371

.preheader.i.i367:                                ; preds = %bb.ce, %.preheader.i.i367
  %i.qa = phi i64 [ %i.qb, %.preheader.i.i367 ], [ %i.pu, %bb.ce ] ; 2 uses
  %.09.i.i368 = phi i64 [ %i.qi, %.preheader.i.i367 ], [ 127, %bb.ce ]
  %.0.i.i369 = phi i64 [ %i.qj, %.preheader.i.i367 ], [ 0, %bb.ce ] ; 2 uses
  %i.qb = add i64 %i.qa, 1                        ; 2 uses
  store i64 %i.qb, ptr %0, align 8
  %i.qc = load ptr, ptr %10, align 8
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.qa
  %i.qe = load i8, ptr %i.qd, align 1
  %i.qf = zext i8 %i.qe to i64                    ; 2 uses
  %i.qg = lshr i64 %i.qf, 1
  %i.qh = shl i64 %i.qg, %.0.i.i369
  %i.qi = add i64 %i.qh, %.09.i.i368              ; 2 uses
  %i.qj = add i64 %.0.i.i369, 6
  %i.qk = and i64 %i.qf, 1
  %.not.i.i370 = icmp eq i64 %i.qk, 0
  br i1 %.not.i.i370, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371, label %.preheader.i.i367, !llvm.loop !16

bb.cf:                                            ; preds = %bb.cd
  %i.ql = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc388 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc388:                                        ; preds = %bb.cf
  %i.qm = zext i32 %i.ql to i64
  %i.qn = icmp eq i32 %.0231, %i.ql
  br i1 %i.qn, label %.preheader497, label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371

.preheader497:                                    ; preds = %.noexc388, %.noexc389
  %.014.i.i374 = phi i32 [ %.115.i.i376, %.noexc389 ], [ %.0232, %.noexc388 ] ; 2 uses
  %.012.i.i375 = phi i32 [ %.113.i.i377, %.noexc389 ], [ 0, %.noexc388 ]
  %i.qo = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc389 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc389:                                        ; preds = %.preheader497
  %i.qp = icmp eq i32 %i.qo, 1                    ; 2 uses
  %i.qq = shl nuw i32 1, %.014.i.i374
  %i.qr = zext i1 %i.qp to i32
  %.115.i.i376 = add nsw i32 %.014.i.i374, %i.qr  ; 3 uses
  %i.qs = select i1 %i.qp, i32 %i.qq, i32 0
  %.113.i.i377 = add nsw i32 %i.qs, %.012.i.i375  ; 2 uses
  %.not.i.i378 = icmp eq i32 %i.qo, 0
  br i1 %.not.i.i378, label %.preheader.i.i379, label %.preheader497, !llvm.loop !14

.preheader.i.i379:                                ; preds = %.noexc389
  %.not1617.i.i380 = icmp eq i32 %.115.i.i376, 0
  br i1 %.not1617.i.i380, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386, label %.lr.ph.i.i381

.lr.ph.i.i381:                                    ; preds = %.preheader.i.i379, %.noexc390
  %.019.i.i382 = phi i32 [ %.1.i.i384, %.noexc390 ], [ 0, %.preheader.i.i379 ]
  %.218.i.i383 = phi i32 [ %i.qu, %.noexc390 ], [ %.115.i.i376, %.preheader.i.i379 ]
  %i.qt = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc390 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc390:                                        ; preds = %.lr.ph.i.i381
  %i.qu = add nsw i32 %.218.i.i383, -1            ; 3 uses
  %i.qv = icmp eq i32 %i.qt, 1
  %i.qw = shl nuw i32 1, %i.qu
  %i.qx = select i1 %i.qv, i32 %i.qw, i32 0
  %.1.i.i384 = or i32 %i.qx, %.019.i.i382         ; 2 uses
  %.not16.i.i385 = icmp eq i32 %i.qu, 0
  br i1 %.not16.i.i385, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386, label %.lr.ph.i.i381, !llvm.loop !15

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386: ; preds = %.noexc390, %.preheader.i.i379
  %.0.lcssa.i.i387 = phi i32 [ 0, %.preheader.i.i379 ], [ %.1.i.i384, %.noexc390 ]
  %i.qy = add nsw i32 %.0.lcssa.i.i387, %.113.i.i377
  %i.qz = zext i32 %i.qy to i64
  %i.ra = add nuw nsw i64 %i.qz, %i.em
  br label %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371

_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371: ; preds = %.preheader.i.i367, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386, %.noexc388, %bb.ce
  %.0.i372.sink785 = phi i64 [ %i.qm, %.noexc388 ], [ %i.py, %bb.ce ], [ %i.ra, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i386 ], [ %i.qi, %.preheader.i.i367 ] ; 3 uses
  %i.rb = and i64 %.0.i372.sink785, 1
  %.not.i10.i373 = icmp eq i64 %i.rb, 0
  %i.rc = add i64 %.0.i372.sink785, 1
  %i.rd = lshr exact i64 %i.rc, 1
  %i.re = sub nsw i64 0, %i.rd
  %i.rf = lshr exact i64 %.0.i372.sink785, 1
  %i.rg = select i1 %.not.i10.i373, i64 %i.rf, i64 %i.re
  %i.rh = load ptr, ptr %i.el, align 8            ; 2 uses
  %i.ri = getelementptr [8 x i8], ptr %i.rh, i64 %i.pp
  %i.rj = getelementptr [8 x i8], ptr %i.ri, i64 %.0214594
  %i.rk = load i64, ptr %i.rj, align 8
  %i.rl = add nsw i64 %i.rk, %i.rg
  %i.rm = getelementptr [8 x i8], ptr %i.rh, i64 %i.pq
  %i.rn = getelementptr [8 x i8], ptr %i.rm, i64 %.0214594
  store i64 %i.rl, ptr %i.rn, align 8
  %i.ro = add nuw i64 %.0214594, 1                ; 2 uses
  %exitcond680.not = icmp eq i64 %i.ro, %.0251
  br i1 %exitcond680.not, label %.loopexit508, label %bb.cd, !llvm.loop !818

bb.cg:                                            ; preds = %bb.cc, %.critedge295.thread
  br i1 %.not615, label %.loopexit508, label %.lr.ph598

.lr.ph598:                                        ; preds = %bb.cg
  %i.rp = mul i64 %.0226600, %4
  br label %bb.ch

bb.ch:                                            ; preds = %.lr.ph598, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit
  %.0213596 = phi i64 [ 0, %.lr.ph598 ], [ %i.td, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ] ; 2 uses
  %i.rq = load i32, ptr %i.g, align 8
  %i.rr = icmp eq i32 %i.rq, 1
  br i1 %i.rr, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.rs = load i64, ptr %0, align 8               ; 2 uses
  %i.rt = add i64 %i.rs, 1                        ; 2 uses
  store i64 %i.rt, ptr %0, align 8
  %i.ru = load ptr, ptr %10, align 8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.rs
  %i.rw = load i8, ptr %i.rv, align 1             ; 2 uses
  %i.rx = zext i8 %i.rw to i64
  %i.ry = icmp eq i8 %i.rw, 127
  br i1 %i.ry, label %.preheader.i393, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader.i393:                                  ; preds = %bb.ci, %.preheader.i393
  %i.rz = phi i64 [ %i.sa, %.preheader.i393 ], [ %i.rt, %bb.ci ] ; 2 uses
  %.09.i = phi i64 [ %i.sh, %.preheader.i393 ], [ 127, %bb.ci ]
  %.0.i394 = phi i64 [ %i.si, %.preheader.i393 ], [ 0, %bb.ci ] ; 2 uses
  %i.sa = add i64 %i.rz, 1                        ; 2 uses
  store i64 %i.sa, ptr %0, align 8
  %i.sb = load ptr, ptr %10, align 8
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rz
  %i.sd = load i8, ptr %i.sc, align 1
  %i.se = zext i8 %i.sd to i64                    ; 2 uses
  %i.sf = lshr i64 %i.se, 1
  %i.sg = shl i64 %i.sf, %.0.i394
  %i.sh = add i64 %i.sg, %.09.i                   ; 2 uses
  %i.si = add i64 %.0.i394, 6
  %i.sj = and i64 %i.se, 1
  %.not.i395 = icmp eq i64 %i.sj, 0
  br i1 %.not.i395, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, label %.preheader.i393, !llvm.loop !16

bb.cj:                                            ; preds = %bb.ch
  %i.sk = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_19Adaptive_Data_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 8 dereferenceable(52) %16)
          to label %.noexc411 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc411:                                        ; preds = %bb.cj
  %i.sl = zext i32 %i.sk to i64
  %i.sm = icmp eq i32 %.0231, %i.sk
  br i1 %i.sm, label %.preheader491, label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

.preheader491:                                    ; preds = %.noexc411, %.noexc412
  %.014.i.i397 = phi i32 [ %.115.i.i399, %.noexc412 ], [ %.0232, %.noexc411 ] ; 2 uses
  %.012.i.i398 = phi i32 [ %.113.i.i400, %.noexc412 ], [ 0, %.noexc411 ]
  %i.sn = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(20) %14)
          to label %.noexc412 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc412:                                        ; preds = %.preheader491
  %i.so = icmp eq i32 %i.sn, 1                    ; 2 uses
  %i.sp = shl nuw i32 1, %.014.i.i397
  %i.sq = zext i1 %i.so to i32
  %.115.i.i399 = add nsw i32 %.014.i.i397, %i.sq  ; 3 uses
  %i.sr = select i1 %i.so, i32 %i.sp, i32 0
  %.113.i.i400 = add nsw i32 %i.sr, %.012.i.i398  ; 2 uses
  %.not.i.i401 = icmp eq i32 %i.sn, 0
  br i1 %.not.i.i401, label %.preheader.i.i402, label %.preheader491, !llvm.loop !14

.preheader.i.i402:                                ; preds = %.noexc412
  %.not1617.i.i403 = icmp eq i32 %.115.i.i399, 0
  br i1 %.not1617.i.i403, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409, label %.lr.ph.i.i404

.lr.ph.i.i404:                                    ; preds = %.preheader.i.i402, %.noexc413
  %.019.i.i405 = phi i32 [ %.1.i.i407, %.noexc413 ], [ 0, %.preheader.i.i402 ]
  %.218.i.i406 = phi i32 [ %i.st, %.noexc413 ], [ %.115.i.i399, %.preheader.i.i402 ]
  %i.ss = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
          to label %.noexc413 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc413:                                        ; preds = %.lr.ph.i.i404
  %i.st = add nsw i32 %.218.i.i406, -1            ; 3 uses
  %i.su = icmp eq i32 %i.ss, 1
  %i.sv = shl nuw i32 1, %i.st
  %i.sw = select i1 %i.su, i32 %i.sv, i32 0
  %.1.i.i407 = or i32 %i.sw, %.019.i.i405         ; 2 uses
  %.not16.i.i408 = icmp eq i32 %i.st, 0
  br i1 %.not16.i.i408, label %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409, label %.lr.ph.i.i404, !llvm.loop !15

_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409: ; preds = %.noexc413, %.preheader.i.i402
  %.0.lcssa.i.i410 = phi i32 [ 0, %.preheader.i.i402 ], [ %.1.i.i407, %.noexc413 ]
  %i.sx = add nsw i32 %.0.lcssa.i.i410, %.113.i.i400
  %i.sy = zext i32 %i.sx to i64
  %i.sz = add nuw nsw i64 %i.sy, %i.em
  br label %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit

_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit:  ; preds = %.preheader.i393, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409, %.noexc411, %bb.ci
  %.2249 = phi i64 [ %i.sl, %.noexc411 ], [ %i.rx, %bb.ci ], [ %i.sz, %_ZN5o3dgc16Arithmetic_Codec15ExpGolombDecodeEiRNS_16Static_Bit_ModelERNS_18Adaptive_Bit_ModelE.exit.i409 ], [ %i.sh, %.preheader.i393 ]
  %i.ta = load ptr, ptr %i.el, align 8
  %i.tb = getelementptr [8 x i8], ptr %i.ta, i64 %i.rp
  %i.tc = getelementptr [8 x i8], ptr %i.tb, i64 %.0213596
  store i64 %.2249, ptr %i.tc, align 8
  %i.td = add nuw i64 %.0213596, 1                ; 2 uses
  %exitcond681.not = icmp eq i64 %i.td, %.0251
  br i1 %exitcond681.not, label %.loopexit508, label %bb.ch, !llvm.loop !819

.loopexit508:                                     ; preds = %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit, %bb.by, %.preheader511, %bb.cg
  %.3 = phi i64 [ %.1599, %bb.cg ], [ %.1599, %.preheader511 ], [ %.2, %bb.by ], [ %.1599, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit371 ], [ %.1599, %_ZNK5o3dgc12BinaryStream13ReadUIntASCIIERm.exit ], [ %.2, %_ZNK5o3dgc12BinaryStream12ReadIntASCIIERm.exit357 ] ; 2 uses
  %i.te = add nuw nsw i64 %.0226600, 1            ; 2 uses
  %exitcond682.not = icmp eq i64 %i.te, %2
  br i1 %exitcond682.not, label %._crit_edge605, label %bb.ar, !llvm.loop !820

bb.ck:                                            ; preds = %._crit_edge605
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  store i64 -4611686015206162432, ptr %18, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  store i64 4611686019501129728, ptr %19, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %.not.i414 = icmp eq i64 %.0251, 0
  br i1 %.not.i414, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.lr.ph.i415

.lr.ph.i415:                                      ; preds = %bb.ck
  %i.tf = trunc i64 %7 to i32
  %i.tg = add i32 %i.tf, 1
  %notmask.i = shl nsw i32 -1, %i.tg
  %i.th = xor i32 %notmask.i, -1
  %i.ti = uitofp nneg i32 %i.th to float          ; 2 uses
  %min.iters.check867.a = icmp ult i64 %.0251, 4
  br i1 %min.iters.check867.a, label %scalar.ph866.preheader.a, label %vector.ph868.a

vector.ph868.a:                                   ; preds = %.lr.ph.i415
  %n.vec869.a = and i64 %.0251, -4                ; 3 uses
  %broadcast.splatinsert870 = insertelement <4 x float> poison, float %i.ti, i64 0
  %broadcast.splat871 = shufflevector <4 x float> %broadcast.splatinsert870, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body872

vector.body872:                                   ; preds = %vector.body872, %vector.ph868.a
  %index873 = phi i64 [ 0, %vector.ph868.a ], [ %index.next876, %vector.body872 ] ; 4 uses
  %20 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %index873
  %wide.load874 = load <4 x float>, ptr %20, align 8
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %index873
  %wide.load875 = load <4 x float>, ptr %i.tj, align 8
  %21 = fsub <4 x float> %wide.load874, %wide.load875 ; 2 uses
  %22 = fcmp ogt <4 x float> %21, zeroinitializer
  %23 = fdiv <4 x float> %21, %broadcast.splat871
  %24 = select <4 x i1> %22, <4 x float> %23, <4 x float> splat (float 1.000000e+00)
  %25 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index873
  store <4 x float> %24, ptr %25, align 16
  %index.next876 = add nuw i64 %index873, 4       ; 2 uses
  %i.tk = icmp eq i64 %index.next876, %n.vec869.a
  br i1 %i.tk, label %middle.block877, label %vector.body872, !llvm.loop !821

middle.block877:                                  ; preds = %vector.body872
  %cmp.n878 = icmp eq i64 %.0251, %n.vec869.a
  br i1 %cmp.n878, label %.preheader32.i, label %scalar.ph866.preheader.a

scalar.ph866.preheader.a:                         ; preds = %.lr.ph.i415, %middle.block877
  %.02933.i.ph = phi i64 [ 0, %.lr.ph.i415 ], [ %n.vec869.a, %middle.block877 ]
  br label %scalar.ph866.a

.preheader32.i:                                   ; preds = %scalar.ph866.a, %middle.block877
  %.not38.i = icmp eq i64 %2, 0
  br i1 %.not38.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, label %.preheader.preheader.i

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread: ; preds = %.preheader32.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %._crit_edge609

.preheader.preheader.i:                           ; preds = %.preheader32.i
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter944 = and i64 %.0251, 1
  %i.tm = icmp eq i64 %.0251, 1
  %unroll_iter947 = and i64 %.0251, -2
  %lcmp.mod945.not = icmp eq i64 %xtraiter944, 0
  %lcmp.mod946 = trunc i64 %.0251 to i1
  br label %.preheader.i417

scalar.ph866.a:                                   ; preds = %scalar.ph866.preheader.a, %scalar.ph866.a
  %.02933.i = phi i64 [ %i.to, %scalar.ph866.a ], [ %.02933.i.ph, %scalar.ph866.preheader.a ] ; 4 uses
  %26 = getelementptr inbounds nuw [4 x i8], ptr %19, i64 %.02933.i
  %27 = load float, ptr %26, align 4
  %28 = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %.02933.i
  %29 = load float, ptr %28, align 4
  %30 = fsub float %27, %29                       ; 2 uses
  %31 = fcmp ogt float %30, 0.000000e+00
  %32 = fdiv float %30, %i.ti
  %.sink.i = select i1 %31, float %32, float 1.000000e+00
  %i.tn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.02933.i
  store float %.sink.i, ptr %i.tn, align 4
  %i.to = add nuw nsw i64 %.02933.i, 1            ; 2 uses
  %exitcond.not.i416 = icmp eq i64 %i.to, %.0251
  br i1 %exitcond.not.i416, label %.preheader32.i, label %scalar.ph866.a, !llvm.loop !822

.preheader.i417:                                  ; preds = %._crit_edge.i418, %.preheader.preheader.i
  %.02836.i = phi i64 [ %i.tz, %._crit_edge.i418 ], [ 0, %.preheader.preheader.i ] ; 2 uses
  %i.tp = mul i64 %.02836.i, %4                   ; 3 uses
  br i1 %i.tm, label %.epil.preheader943, label %.preheader.i417.new

._crit_edge.i418.unr-lcssa:                       ; preds = %.preheader.i417.new
  br i1 %lcmp.mod945.not, label %._crit_edge.i418, label %.epil.preheader943

.epil.preheader943:                               ; preds = %._crit_edge.i418.unr-lcssa, %.preheader.i417
  %.034.i.epil.init = phi i64 [ 0, %.preheader.i417 ], [ %i.ut, %._crit_edge.i418.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod946)
  %i.tq = load ptr, ptr %i.tl, align 8
  %i.tr = add i64 %.034.i.epil.init, %i.tp        ; 2 uses
  %i.ts = getelementptr inbounds nuw [8 x i8], ptr %i.tq, i64 %i.tr
  %i.tt = load i64, ptr %i.ts, align 8
  %i.tu = sitofp i64 %i.tt to float
  %33 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i.epil.init
  %34 = load float, ptr %33, align 4
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %.034.i.epil.init
  %i.tw = load float, ptr %i.tv, align 4
  %i.tx = call float @llvm.fmuladd.f32(float %i.tu, float %34, float %i.tw)
  %i.ty = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.tr
  store float %i.tx, ptr %i.ty, align 4
  br label %._crit_edge.i418

._crit_edge.i418:                                 ; preds = %._crit_edge.i418.unr-lcssa, %.epil.preheader943
  %i.tz = add nuw i64 %.02836.i, 1                ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.tz, %2
  br i1 %exitcond41.not.i, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit, label %.preheader.i417, !llvm.loop !823

.preheader.i417.new:                              ; preds = %.preheader.i417, %.preheader.i417.new
  %.034.i = phi i64 [ %i.ut, %.preheader.i417.new ], [ 0, %.preheader.i417 ] ; 5 uses
  %niter948 = phi i64 [ %niter948.next.1, %.preheader.i417.new ], [ 0, %.preheader.i417 ]
  %i.ua = load ptr, ptr %i.tl, align 8
  %i.ub = add i64 %.034.i, %i.tp                  ; 2 uses
  %i.uc = getelementptr inbounds nuw [8 x i8], ptr %i.ua, i64 %i.ub
  %i.ud = load i64, ptr %i.uc, align 8
  %i.ue = sitofp i64 %i.ud to float
  %35 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.034.i
  %36 = load float, ptr %35, align 8
  %i.uf = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %.034.i
  %i.ug = load float, ptr %i.uf, align 8
  %i.uh = call float @llvm.fmuladd.f32(float %i.ue, float %36, float %i.ug)
  %i.ui = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ub
  store float %i.uh, ptr %i.ui, align 4
  %i.uj = or disjoint i64 %.034.i, 1              ; 3 uses
  %i.uk = load ptr, ptr %i.tl, align 8
  %i.ul = add i64 %i.uj, %i.tp                    ; 2 uses
  %i.um = getelementptr inbounds nuw [8 x i8], ptr %i.uk, i64 %i.ul
  %i.un = load i64, ptr %i.um, align 8
  %i.uo = sitofp i64 %i.un to float
  %37 = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.uj
  %38 = load float, ptr %37, align 4
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %18, i64 %i.uj
  %i.uq = load float, ptr %i.up, align 4
  %i.ur = call float @llvm.fmuladd.f32(float %i.uo, float %38, float %i.uq)
  %i.us = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ul
  store float %i.ur, ptr %i.us, align 4
  %i.ut = add nuw nsw i64 %.034.i, 2              ; 2 uses
  %niter948.next.1 = add nuw i64 %niter948, 2     ; 2 uses
  %niter948.ncmp.1 = icmp eq i64 %niter948.next.1, %unroll_iter947
  br i1 %niter948.ncmp.1, label %._crit_edge.i418.unr-lcssa, label %.preheader.i417.new, !llvm.loop !824

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit: ; preds = %._crit_edge.i418, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br i1 %i.ei, label %.lr.ph608, label %._crit_edge609

.lr.ph608:                                        ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  %i.uu = getelementptr inbounds nuw i8, ptr %0, i64 4608
  %i.uv = getelementptr inbounds nuw i8, ptr %0, i64 4584
  br label %bb.cl

._crit_edge609:                                   ; preds = %bb.cm, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit.thread, %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %bb.cp

bb.cl:                                            ; preds = %.lr.ph608, %bb.cm
  %.0607 = phi i64 [ 0, %.lr.ph608 ], [ %i.vk, %bb.cm ] ; 4 uses
  %i.uw = load ptr, ptr %i.uu, align 8
  %.idx481 = shl nuw nsw i64 %.0607, 3
  %i.ux = getelementptr inbounds nuw i8, ptr %i.uw, i64 %.idx481
  %i.uy = mul i64 %.0607, %4
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.uy ; 4 uses
  %i.va = getelementptr i8, ptr %i.uz, i64 4
  %i.vb = load <2 x float>, ptr %i.ux, align 4
  %i.vc = load <2 x float>, ptr %i.uz, align 4
  %i.vd = fadd <2 x float> %i.vb, %i.vc           ; 2 uses
  %i.ve = load ptr, ptr %i.uv, align 8
  %i.vf = getelementptr inbounds nuw i8, ptr %i.ve, i64 %.0607
  %i.vg = load i8, ptr %i.vf, align 1
  %i.vh = getelementptr i8, ptr %i.uz, i64 8
  %i.vi = extractelement <2 x float> %i.vd, i64 0
  %i.vj = extractelement <2 x float> %i.vd, i64 1
  invoke void @_ZN5o3dgc12CubeToSphereEffcRfS0_S0_(float noundef %i.vi, float noundef %i.vj, i8 noundef signext %i.vg, ptr noundef nonnull align 4 dereferenceable(4) %i.uz, ptr noundef nonnull align 4 dereferenceable(4) %i.va, ptr noundef nonnull align 4 dereferenceable(4) %i.vh)
          to label %bb.cm unwind label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.vk = add nuw nsw i64 %.0607, 1               ; 2 uses
  %exitcond683.not = icmp eq i64 %i.vk, %2
  br i1 %exitcond683.not, label %._crit_edge609, label %bb.cl, !llvm.loop !825

bb.cn:                                            ; preds = %bb.cl
  %i.vl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %.loopexit.split-lp

bb.co:                                            ; preds = %._crit_edge605
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not.i419 = icmp eq i64 %.0251, 0
  br i1 %.not.i419, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434, label %.lr.ph.i420

.lr.ph.i420:                                      ; preds = %bb.co
  %i.vm = trunc i64 %7 to i32
  %notmask.i421 = shl nsw i32 -1, %i.vm
  %i.vn = xor i32 %notmask.i421, -1
  %i.vo = uitofp nneg i32 %i.vn to float          ; 2 uses
  %min.iters.check855 = icmp ult i64 %.0251, 4
  br i1 %min.iters.check855, label %scalar.ph854.preheader, label %vector.ph856

vector.ph856:                                     ; preds = %.lr.ph.i420
  %n.vec857 = and i64 %.0251, -4                  ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.vo, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body858

vector.body858:                                   ; preds = %vector.body858, %vector.ph856
  %index859 = phi i64 [ 0, %vector.ph856 ], [ %index.next862, %vector.body858 ] ; 4 uses
  %i.vp = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index859
  %wide.load860 = load <4 x float>, ptr %i.vp, align 4
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %index859
  %wide.load861 = load <4 x float>, ptr %i.vq, align 4
  %i.vr = fsub <4 x float> %wide.load860, %wide.load861 ; 2 uses
  %i.vs = fcmp ogt <4 x float> %i.vr, zeroinitializer
  %i.vt = fdiv <4 x float> %i.vr, %broadcast.splat
  %i.vu = select <4 x i1> %i.vs, <4 x float> %i.vt, <4 x float> splat (float 1.000000e+00)
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index859
  store <4 x float> %i.vu, ptr %i.vv, align 16
  %index.next862 = add nuw i64 %index859, 4       ; 2 uses
  %i.vw = icmp eq i64 %index.next862, %n.vec857
  br i1 %i.vw, label %middle.block863, label %vector.body858, !llvm.loop !826

middle.block863:                                  ; preds = %vector.body858
  %cmp.n864 = icmp eq i64 %.0251, %n.vec857
  br i1 %cmp.n864, label %.preheader32.i425, label %scalar.ph854.preheader

scalar.ph854.preheader:                           ; preds = %.lr.ph.i420, %middle.block863
  %.02933.i422.ph = phi i64 [ 0, %.lr.ph.i420 ], [ %n.vec857, %middle.block863 ]
  br label %scalar.ph854

.preheader32.i425:                                ; preds = %scalar.ph854, %middle.block863
  %.not38.i426 = icmp eq i64 %2, 0
  br i1 %.not38.i426, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434, label %.preheader.preheader.i427

.preheader.preheader.i427:                        ; preds = %.preheader32.i425
  %i.vx = getelementptr inbounds nuw i8, ptr %0, i64 4568 ; 3 uses
  %xtraiter = and i64 %.0251, 1
  %i.vy = icmp eq i64 %.0251, 1
  %unroll_iter = and i64 %.0251, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod942 = trunc i64 %.0251 to i1
  br label %.preheader.i428

scalar.ph854:                                     ; preds = %scalar.ph854.preheader, %scalar.ph854
  %.02933.i422 = phi i64 [ %i.wh, %scalar.ph854 ], [ %.02933.i422.ph, %scalar.ph854.preheader ] ; 4 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %.02933.i422
  %i.wa = load float, ptr %i.vz, align 4
  %i.wb = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.02933.i422
  %i.wc = load float, ptr %i.wb, align 4
  %i.wd = fsub float %i.wa, %i.wc                 ; 2 uses
  %i.we = fcmp ogt float %i.wd, 0.000000e+00
  %i.wf = fdiv float %i.wd, %i.vo
  %.sink.i423 = select i1 %i.we, float %i.wf, float 1.000000e+00
  %i.wg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.02933.i422
  store float %.sink.i423, ptr %i.wg, align 4
  %i.wh = add nuw nsw i64 %.02933.i422, 1         ; 2 uses
  %exitcond.not.i424 = icmp eq i64 %i.wh, %.0251
  br i1 %exitcond.not.i424, label %.preheader32.i425, label %scalar.ph854, !llvm.loop !827

.preheader.i428:                                  ; preds = %._crit_edge.i432, %.preheader.preheader.i427
  %.02836.i429 = phi i64 [ %i.wu, %._crit_edge.i432 ], [ 0, %.preheader.preheader.i427 ] ; 2 uses
  %i.wi = mul i64 %.02836.i429, %4                ; 3 uses
  br i1 %i.vy, label %.epil.preheader, label %.preheader.i428.new

._crit_edge.i432.unr-lcssa:                       ; preds = %.preheader.i428.new
  br i1 %lcmp.mod.not, label %._crit_edge.i432, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i432.unr-lcssa, %.preheader.i428
  %.034.i430.epil.init = phi i64 [ 0, %.preheader.i428 ], [ %i.xs, %._crit_edge.i432.unr-lcssa ] ; 3 uses
  call void @llvm.assume(i1 %lcmp.mod942)
  %i.wj = load ptr, ptr %i.vx, align 8
  %i.wk = add i64 %.034.i430.epil.init, %i.wi     ; 2 uses
  %i.wl = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %i.wk
  %i.wm = load i64, ptr %i.wl, align 8
  %i.wn = sitofp i64 %i.wm to float
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i430.epil.init
  %i.wp = load float, ptr %i.wo, align 4
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i430.epil.init
  %i.wr = load float, ptr %i.wq, align 4
  %i.ws = call float @llvm.fmuladd.f32(float %i.wn, float %i.wp, float %i.wr)
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.wk
  store float %i.ws, ptr %i.wt, align 4
  br label %._crit_edge.i432

._crit_edge.i432:                                 ; preds = %._crit_edge.i432.unr-lcssa, %.epil.preheader
  %i.wu = add nuw i64 %.02836.i429, 1             ; 2 uses
  %exitcond41.not.i433 = icmp eq i64 %i.wu, %2
  br i1 %exitcond41.not.i433, label %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434, label %.preheader.i428, !llvm.loop !823

.preheader.i428.new:                              ; preds = %.preheader.i428, %.preheader.i428.new
  %.034.i430 = phi i64 [ %i.xs, %.preheader.i428.new ], [ 0, %.preheader.i428 ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.i428.new ], [ 0, %.preheader.i428 ]
  %i.wv = load ptr, ptr %i.vx, align 8
  %i.ww = add i64 %.034.i430, %i.wi               ; 2 uses
  %i.wx = getelementptr inbounds nuw [8 x i8], ptr %i.wv, i64 %i.ww
  %i.wy = load i64, ptr %i.wx, align 8
  %i.wz = sitofp i64 %i.wy to float
  %i.xa = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.034.i430
  %i.xb = load float, ptr %i.xa, align 8
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.034.i430
  %i.xd = load float, ptr %i.xc, align 4
  %i.xe = call float @llvm.fmuladd.f32(float %i.wz, float %i.xb, float %i.xd)
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ww
  store float %i.xe, ptr %i.xf, align 4
  %i.xg = or disjoint i64 %.034.i430, 1           ; 3 uses
  %i.xh = load ptr, ptr %i.vx, align 8
  %i.xi = add i64 %i.xg, %i.wi                    ; 2 uses
  %i.xj = getelementptr inbounds nuw [8 x i8], ptr %i.xh, i64 %i.xi
  %i.xk = load i64, ptr %i.xj, align 8
  %i.xl = sitofp i64 %i.xk to float
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.xg
  %i.xn = load float, ptr %i.xm, align 4
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.xg
  %i.xp = load float, ptr %i.xo, align 4
  %i.xq = call float @llvm.fmuladd.f32(float %i.xl, float %i.xn, float %i.xp)
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.xi
  store float %i.xq, ptr %i.xr, align 4
  %i.xs = add nuw nsw i64 %.034.i430, 2           ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i432.unr-lcssa, label %.preheader.i428.new, !llvm.loop !824

_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434: ; preds = %._crit_edge.i432, %bb.co, %.preheader32.i425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.cp

bb.cp:                                            ; preds = %_ZN5o3dgc13SC3DMCDecoderItE19IQuantizeFloatArrayEPfmmmPKfS4_m.exit434, %._crit_edge609
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %bb.cr

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cn, %bb.ak
  %.pn281 = phi { ptr, i32 } [ %i.vl, %bb.cn ], [ %.pn, %bb.ak ], [ %lpad.loopexit.split-lp929, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %16) #28
  br label %bb.cq

bb.cq:                                            ; preds = %.loopexit.split-lp, %bb.v
  %.pn281.pn = phi { ptr, i32 } [ %.pn281, %.loopexit.split-lp ], [ %i.bm, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28
  br label %.loopexit.split-lp529

bb.cr:                                            ; preds = %bb.m, %bb.f, %bb.cp
  %.0250 = phi i32 [ 5, %bb.f ], [ 0, %bb.cp ], [ 5, %bb.m ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @_ZN5o3dgc16Arithmetic_CodecD1Ev(ptr noundef nonnull align 8 dead_on_return(44) dereferenceable(44) %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  ret i32 %.0250

.loopexit.split-lp529:                            ; preds = %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cq
  %.pn281.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn, %bb.cq ], [ %lpad.loopexit.split-lp940, %.loopexit.split-lp529.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN5o3dgc19Adaptive_Data_ModelD1Ev(ptr noundef nonnull align 8 dead_on_return(52) dereferenceable(52) %15) #28
  br label %bb.cs

bb.cs:                                            ; preds = %.loopexit.split-lp529, %bb.i
  %.pn281.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn, %.loopexit.split-lp529 ], [ %i.w, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #28
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.h
  %.pn281.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn.pn, %bb.cs ], [ %i.v, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #28
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.g
  %.pn281.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn281.pn.pn.pn.pn.pn.pn, %bb.ct ], [ %i.u, %bb.g ]
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
          to label %bb.e unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

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
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not127 = icmp eq i32 %i.m, 4
  br i1 %.not127, label %bb.j, label %bb.ay

bb.g:                                             ; preds = %bb.a
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %bb.bb

bb.h:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.i:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.j:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %7, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  store i64 %.neg, ptr %0, align 8
  %i.w = trunc i64 %i.p to i32
  invoke void @_ZN5o3dgc16Arithmetic_Codec10set_bufferEjPh(ptr noundef nonnull align 8 dereferenceable(44) %9, i32 noundef %i.w, ptr noundef %i.v)
          to label %bb.k unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN5o3dgc16Arithmetic_Codec13start_decoderEv(ptr noundef nonnull align 8 dereferenceable(44) %9)
          to label %.preheader278 unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader278:                                    ; preds = %bb.k, %.noexc
  %.014.i = phi i32 [ %.115.i, %.noexc ], [ 0, %bb.k ] ; 2 uses
  %.012.i = phi i32 [ %.113.i, %.noexc ], [ 0, %bb.k ]
  %i.x = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %.noexc unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc:                                           ; preds = %.preheader278
  %i.y = icmp eq i32 %i.x, 1                      ; 2 uses
  %i.z = shl nuw i32 1, %.014.i
  %i.aa = zext i1 %i.y to i32
  %.115.i = add nuw nsw i32 %.014.i, %i.aa        ; 3 uses
  %i.ab = select i1 %i.y, i32 %i.z, i32 0
  %.113.i = add nsw i32 %i.ab, %.012.i            ; 2 uses
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.preheader.i, label %.preheader278, !llvm.loop !14

.preheader.i:                                     ; preds = %.noexc
  %.not1617.i = icmp eq i32 %.115.i, 0
  br i1 %.not1617.i, label %.loopexit277, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.noexc141
  %.019.i = phi i32 [ %.1.i, %.noexc141 ], [ 0, %.preheader.i ]
  %.218.i = phi i32 [ %i.ad, %.noexc141 ], [ %.115.i, %.preheader.i ]
  %i.ac = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %.noexc141 unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc141:                                        ; preds = %.lr.ph.i
  %i.ad = add nsw i32 %.218.i, -1                 ; 3 uses
  %i.ae = icmp eq i32 %i.ac, 1
  %i.af = shl nuw i32 1, %i.ad
  %i.ag = select i1 %i.ae, i32 %i.af, i32 0
  %.1.i = or i32 %i.ag, %.019.i                   ; 2 uses
  %.not16.i = icmp eq i32 %i.ad, 0
  br i1 %.not16.i, label %.loopexit277, label %.lr.ph.i, !llvm.loop !15

.loopexit277:                                     ; preds = %.noexc141, %.preheader.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %.1.i, %.noexc141 ]
  %i.ah = add nsw i32 %.0.lcssa.i, %.113.i
  br label %bb.l

bb.l:                                             ; preds = %.noexc155, %.loopexit277
  %.014.i142 = phi i32 [ 0, %.loopexit277 ], [ %.115.i144, %.noexc155 ] ; 2 uses
  %.012.i143 = phi i32 [ 0, %.loopexit277 ], [ %.113.i145, %.noexc155 ]
  %i.ai = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_18Adaptive_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(20) %11)
          to label %.noexc155 unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc155:                                        ; preds = %bb.l
  %i.aj = icmp eq i32 %i.ai, 1                    ; 2 uses
  %i.ak = shl nuw i32 1, %.014.i142
  %i.al = zext i1 %i.aj to i32
  %.115.i144 = add nuw nsw i32 %.014.i142, %i.al  ; 3 uses
  %i.am = select i1 %i.aj, i32 %i.ak, i32 0
  %.113.i145 = add nsw i32 %i.am, %.012.i143      ; 2 uses
  %.not.i146 = icmp eq i32 %i.ai, 0
  br i1 %.not.i146, label %.preheader.i147, label %bb.l, !llvm.loop !14

.preheader.i147:                                  ; preds = %.noexc155
  %.not1617.i148 = icmp eq i32 %.115.i144, 0
  br i1 %.not1617.i148, label %.loopexit270, label %.lr.ph.i149

.lr.ph.i149:                                      ; preds = %.preheader.i147, %.noexc156
  %.019.i150 = phi i32 [ %.1.i152, %.noexc156 ], [ 0, %.preheader.i147 ]
  %.218.i151 = phi i32 [ %i.ao, %.noexc156 ], [ %.115.i144, %.preheader.i147 ]
  %i.an = invoke noundef i32 @_ZN5o3dgc16Arithmetic_Codec6decodeERNS_16Static_Bit_ModelE(ptr noundef nonnull align 8 dereferenceable(44) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
          to label %.noexc156 unwind label %.loopexit.split-lp266.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc156:                                        ; preds = %.lr.ph.i149
  %i.ao = add nsw i32 %.218.i151, -1              ; 3 uses
  %i.ap = icmp eq i32 %i.an, 1
  %i.aq = shl nuw i32 1, %i.ao
  %i.ar = select i1 %i.ap, i32 %i.aq, i32 0
  %.1.i152 = or i32 %i.ar, %.019.i150             ; 2 uses
end_hunk_1
