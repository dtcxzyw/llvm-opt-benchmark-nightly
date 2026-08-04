inline.NumInlined: 1077
inline.NumDeleted: 688
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK8rawspeed10Cr2Decoder12isSubSampledEv
define hidden noundef zeroext i1 @_ZNK8rawspeed10Cr2Decoder12isSubSampledEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !216  ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %.not = icmp eq i64 %i.i, 32
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !217
  %i.l = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.k, i16 noundef zeroext -14651) #29 ; 2 uses
  %.not5 = icmp eq ptr %i.l, null
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noundef i32 @_ZNK8rawspeed9TiffEntry6getU32Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.l, i32 noundef 0)
  %i.n = icmp eq i32 %i.m, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.n, %bb.c ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden range(i64 4294967297, 8589934595) i64 @_ZNK8rawspeed10Cr2Decoder14getSubSamplingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 1) #29 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.16, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10Cr2Decoder14getSubSamplingEv) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 42
  %i.e = load i8, ptr %i.d, align 2, !tbaa !82
  %.not6 = icmp eq i8 %i.e, 3
  br i1 %.not6, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.17, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10Cr2Decoder14getSubSamplingEv) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.g = load i32, ptr %i.f, align 4, !tbaa !86
  %i.h = icmp ult i32 %i.g, 47
  br i1 %i.h, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 46) ; 3 uses
  %i.j = icmp ult i16 %i.i, 3
  br i1 %i.j, label %switch.lookup, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = zext i16 %i.i to i32
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.18, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK8rawspeed10Cr2Decoder14getSubSamplingEv, i32 noundef %i.k) #16
  unreachable

switch.lookup:                                    ; preds = %bb.f
  %i.l = zext nneg i16 %i.i to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZNK8rawspeed10Cr2Decoder14getSubSamplingEv, i64 %i.l
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.h

bb.h:                                             ; preds = %switch.lookup, %bb.e
  %.sroa.5.0 = phi i64 [ %switch.load, %switch.lookup ], [ 4294967297, %bb.e ]
  ret i64 %.sroa.5.0
}

declare noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

declare void @_ZN8rawspeed12RawImageData6setCppEj(ptr noundef nonnull align 8 dereferenceable(624), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN8rawspeed10Cr2Decoder15sRawInterpolateEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %2 = alloca %"class.rawspeed::RawImage", align 8 ; 8 uses
  %3 = alloca %"class.rawspeed::iPoint2D", align 4 ; 6 uses
  %4 = alloca %"class.rawspeed::Cr2sRawInterpolator", align 8 ; 13 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = tail call noundef ptr @_ZNK8rawspeed7TiffIFD17getEntryRecursiveENS_7TiffTagE(ptr noundef nonnull align 8 dereferenceable(104) %i.b, i16 noundef zeroext 16385) #29 ; 5 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZN8rawspeed14ThrowExceptionINS_19RawDecoderExceptionEEEvPKcz(ptr noundef nonnull @.str.21, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN8rawspeed10Cr2Decoder15sRawInterpolateEv) #16
  unreachable

._crit_edge.i.i:                                  ; preds = %bb.a
  %i.d = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 78) ; 2 uses
  %.sroa.0185.0.insert.ext = zext i16 %i.d to i64 ; 2 uses
  %i.e = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 79)
  %i.f = zext i16 %i.e to i64
  %i.g = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 80)
  %i.h = zext i16 %i.g to i64
  %i.i = add nuw nsw i64 %i.h, %i.f
  %i.j = shl nuw nsw i64 %i.i, 31
  %i.k = add nuw nsw i64 %i.j, 2147483648
  %.sroa.0185.4.insert.shift = and i64 %i.k, 562945658454016
  %i.l = tail call noundef zeroext i16 @_ZNK8rawspeed9TiffEntry6getU16Ej(ptr noundef nonnull align 8 dereferenceable(48) %i.c, i32 noundef 81) ; 2 uses
  %i.m = zext i16 %i.l to i32                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  store ptr %i.n, ptr %1, align 8, !tbaa !286
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.n, ptr noundef nonnull align 1 dereferenceable(14) @.str.22, i64 14, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 14, ptr %i.o, align 8, !tbaa !11
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 30
  store i8 0, ptr %i.p, align 2, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %.not10.i.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not10.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %._crit_edge.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i ], [ %i.r, %._crit_edge.i.i ] ; 4 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i ], [ %i.s, %._crit_edge.i.i ]
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 3 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 14)
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !17
  %i.y = call i32 @memcmp(ptr noundef %i.x, ptr noundef nonnull %i.n, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.z = add i64 %i.u, -14
  %spec.select7.i.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.z, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i

_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.y, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i.i ]
  %i.aa = icmp slt i32 %.0.i.i.i.i.i.i.i.i, 0     ; 2 uses
  %.19.i.i.i.i = select i1 %i.aa, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 4 uses
  %.1.in.v.i.i.i.i = select i1 %i.aa, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !28 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !287

_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i: ; preds = %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i
  %i.ab = icmp eq ptr %.19.i.i.i.i, %i.s
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !11 ; 3 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.speculated.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ad, i64 14)
  %i.af = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !17
  %i.ah = call i32 @memcmp(ptr noundef nonnull %i.n, ptr noundef %i.ag, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c
  %i.ai = sub i64 14, %i.ad
  %spec.select7.i.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.ai, i64 -2147483648)
  %.08.i.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i.i to i32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %._crit_edge.i.i, %_ZNKSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_S5_ESt10_Select1stIS8_ESt4lessIvESaIS8_EE14_M_lower_boundEPKSt13_Rb_tree_nodeIS8_EPKSt18_Rb_tree_node_baseRS7_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ah, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i.i ]
  %i.aj = icmp sgt i32 %.0.i.i.i.i.i.i.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br i1 %i.aj, label %bb.d, label %_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %7 = insertelement <2 x i16> poison, i16 %i.d, i64 0
  %8 = insertelement <2 x i16> %7, i16 %i.l, i64 1
  %9 = uitofp <2 x i16> %8 to <2 x float>
  %10 = fmul nnan <2 x float> %9, splat (float f0x3A800000)
  %11 = fdiv <2 x float> splat (float 1.024000e+03), %10 ; 2 uses
  %12 = extractelement <2 x float> %11, i64 0
  %13 = fptosi float %12 to i32
  %.sroa.0185.0.insert.ext188 = zext i32 %13 to i64
  %14 = extractelement <2 x float> %11, i64 1
  %i.ak = fptosi float %14 to i32
  br label %_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv.exit

_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.0185.0.insert.ext188.pn = phi i64 [ %.sroa.0185.0.insert.ext188, %bb.d ], [ %.sroa.0185.0.insert.ext, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0185.0.insert.ext, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  %.sroa.8191.0 = phi i32 [ %i.ak, %bb.d ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ]
  %.sroa.0185.0 = or disjoint i64 %.sroa.0185.0.insert.ext188.pn, %.sroa.0185.4.insert.shift
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !34 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 612
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !288, !noalias !289
  %i.ap = icmp sgt i32 %i.ao, -1                  ; 2 uses
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  store ptr %i.am, ptr %2, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !114 ; 3 uses
  store ptr %i.as, ptr %i.aq, align 8, !tbaa !114
  %.not.i.i.i.i45 = icmp eq ptr %i.as, null
  br i1 %.not.i.i.i.i45, label %_ZN8rawspeed8RawImageC2ERKS0_.exit, label %bb.e

bb.e:                                             ; preds = %_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv.exit
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.au = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i = icmp eq i8 %i.au, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.av = load i32, ptr %i.at, align 4, !tbaa !116
  %i.aw = add nsw i32 %i.av, 1
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !116
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

bb.g:                                             ; preds = %bb.e
  %i.ax = atomicrmw volatile add ptr %i.at, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN8rawspeed8RawImageC2ERKS0_.exit

_ZN8rawspeed8RawImageC2ERKS0_.exit:               ; preds = %_ZN8rawspeed12RawImageData32getByteDataAsUncroppedArray2DRefEv.exit, %bb.f, %bb.g
  %i.ay = invoke noundef i32 @_ZNK8rawspeed10Cr2Decoder6getHueEv(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %_ZN8rawspeed8RawImageC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.az = load ptr, ptr %2, align 8, !tbaa !34    ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 308
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !284 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !280
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 312
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !285 ; 2 uses
  %i.bg = mul nsw i32 %i.bf, %i.bb
  %i.bh = add nsw i32 %i.bg, 2
  %i.bi = sdiv i32 %i.bd, %i.bh
  %i.bj = mul nsw i32 %i.bi, %i.bb
  %i.bk = getelementptr inbounds nuw i8, ptr %i.az, i64 44
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !281
  %i.bm = mul nsw i32 %i.bl, %i.bf
  store i32 %i.bj, ptr %3, align 4, !tbaa !282
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !283
  %i.bo = invoke noalias noundef nonnull dereferenceable(640) ptr @_Znwm(i64 noundef 640) #30
          to label %.noexc46 unwind label %bb.t   ; 6 uses

.noexc46:                                         ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i32 1, ptr %i.bp, align 8, !tbaa !121, !noalias !292
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  store i32 1, ptr %i.bq, align 4, !tbaa !123, !noalias !292
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bo, align 8, !tbaa !119, !noalias !292
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  invoke void @_ZN8rawspeed15RawImageDataU16C1ERKNS_8iPoint2DEj(ptr noundef nonnull align 8 dereferenceable(624) %i.br, ptr noundef nonnull align 4 dereferenceable(8) %3, i32 noundef 3)
          to label %_ZN8rawspeed8RawImage6createERKNS_8iPoint2DENS_12RawImageTypeEj.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i, !noalias !292

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8rawspeed15RawImageDataU16ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i.i.i.i.i: ; preds = %.noexc46
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 640) #28, !noalias !297
  br label %.body

_ZN8rawspeed8RawImage6createERKNS_8iPoint2DENS_12RawImageTypeEj.exit: ; preds = %.noexc46
  store ptr %i.br, ptr %i.al, align 8, !tbaa !298
  %i.bt = load ptr, ptr %i.ar, align 8, !tbaa !114 ; 8 uses
  store ptr %i.bo, ptr %i.ar, align 8, !tbaa !114
  %.not.i.i.i.i.i47 = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.i.i.i47, label %._crit_edge.i.i50, label %bb.i

bb.i:                                             ; preds = %_ZN8rawspeed8RawImage6createERKNS_8iPoint2DENS_12RawImageTypeEj.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = load atomic i64, ptr %i.bu acquire, align 8 ; 2 uses
  %i.bw = icmp eq i64 %i.bv, 4294967297
  %i.bx = trunc i64 %i.bv to i32                  ; 2 uses
  br i1 %i.bw, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bu, align 8, !tbaa !121
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 12
  store i32 0, ptr %i.by, align 4, !tbaa !123
  %i.bz = load ptr, ptr %i.bt, align 8, !tbaa !119
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8
  call void %i.cb(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27, !call_target !124, !inline_history !299
  %i.cc = load ptr, ptr %i.bt, align 8, !tbaa !119
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void %i.ce(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27, !call_target !156, !inline_history !299
  br label %._crit_edge.i.i50

bb.k:                                             ; preds = %bb.i
  %i.cf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !18
  %.not.i.i.i.i.i.i = icmp eq i8 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = add nsw i32 %i.bx, -1
  store i32 %i.cg, ptr %i.bu, align 8, !tbaa !116
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ch = atomicrmw volatile add ptr %i.bu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i.i.i.i48 = phi i32 [ %i.bx, %bb.l ], [ %i.ch, %bb.m ]
  %i.ci = icmp eq i32 %.0.i.i.i.i.i.i.i48, 1
  br i1 %i.ci, label %bb.n, label %._crit_edge.i.i50, !prof !193

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bt) #27
  br label %._crit_edge.i.i50

._crit_edge.i.i50:                                ; preds = %_ZN8rawspeed8RawImage6createERKNS_8iPoint2DENS_12RawImageTypeEj.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.n
  %i.cj = load ptr, ptr %2, align 8, !tbaa !34    ; 6 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 308
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 308
  %i.cn = load i64, ptr %i.ck, align 4
  store i64 %i.cn, ptr %i.cm, align 4
  %i.co = load ptr, ptr %i.al, align 8, !tbaa !34
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 56
  store i8 0, ptr %i.cp, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 568
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !300, !noalias !301
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 592
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !304, !noalias !301
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cj, i64 608
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !305, !noalias !301
  %i.cw = mul nsw i32 %i.cv, %i.ct                ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 612
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !288, !noalias !301 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !306, !noalias !301
  %i.db = ashr i32 %i.da, 1                       ; 4 uses
  %i.dc = mul nuw nsw i32 %i.db, %i.cy            ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  call void @llvm.assume(i1 %i.dd)
  %i.de = icmp sgt i32 %i.cw, -1
  call void @llvm.assume(i1 %i.de)
  %i.df = icmp sgt i32 %i.cy, -1
  call void @llvm.assume(i1 %i.df)
  %i.dg = icmp ne i32 %i.db, 0
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp sge i32 %i.db, %i.cw
  call void @llvm.assume(i1 %i.dh)
  store ptr %i.al, ptr %4, align 8, !tbaa !307
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.cr, ptr %i.di, align 8, !tbaa !308
  %.sroa.4215.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 %i.dc, ptr %.sroa.4215.0..sroa_idx, align 8, !tbaa !116
  %.sroa.6217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 %i.db, ptr %.sroa.6217.0..sroa_idx, align 8, !tbaa !116
  %.sroa.7218.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 28
  store i32 %i.cw, ptr %.sroa.7218.0..sroa_idx, align 4, !tbaa !116
  %.sroa.8219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i32 %i.cy, ptr %.sroa.8219.0..sroa_idx, align 8, !tbaa !116
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.sroa.0185.0, ptr %i.dj, align 8
  %.sroa.23.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i32 %.sroa.8191.0, ptr %.sroa.23.0..sroa_idx.i, align 8, !tbaa !18
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 52
  store i32 %i.ay, ptr %i.dk, align 4, !tbaa !309
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.dl = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.dl, ptr %5, align 8, !tbaa !286
  store i64 7219327787304317555, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 8, ptr %i.dm, align 8, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 0, ptr %i.dn, align 8, !tbaa !18
  %i.do = load ptr, ptr %i.q, align 8, !tbaa !21  ; 3 uses
  %.not10.i.i.i.i58 = icmp eq ptr %i.do, null
  br i1 %.not10.i.i.i.i58, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.thread, label %.lr.ph.i.i.i.i59

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit131.thread: ; preds = %._crit_edge.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.r

.lr.ph.i.i.i.i59:                                 ; preds = %._crit_edge.i.i50, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i65
  %.012.i.i.i.i60 = phi ptr [ %.1.i.i.i.i70, %_ZNKSt4lessIvEclIRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_EEDTltclsr3stdE7forwardIT_Efp_Eclsr3stdE7forwardIT0_Efp0_EEOSA_OSB_.exit.i.i.i.i65 ], [ %i.do, %._crit_edge.i.i50 ] ; 4 uses
end_hunk_0
