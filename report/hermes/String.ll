Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/String?download=true
inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vm13StringBuilder16appendStringPrimENS0_6HandleINS0_15StringPrimitiveEEEj:bb.a
  %index64 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next68, %vec.epilog.vector.body ] ; 3 uses
  %i.ey = shl i64 %index64, 1
  %next.gep65 = getelementptr i8, ptr %.0.i4.i21, i64 %i.ey
  %next.gep66 = getelementptr i8, ptr %.0.i15, i64 %index64
  %wide.load67 = load <4 x i8>, ptr %next.gep66, align 1, !tbaa !38, !alias.scope !370
  %i.ez = sext <4 x i8> %wide.load67 to <4 x i16>
  store <4 x i16> %i.ez, ptr %next.gep65, align 2, !tbaa !61, !alias.scope !371, !noalias !370
  %index.next68 = add nuw i64 %index64, 4         ; 2 uses
  %i.fa = icmp eq i64 %index.next68, %n.vec63
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !366

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n69 = icmp eq i64 %n.vec63, %i.dn
  br i1 %cmp.n69, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30, label %.lr.ph.i.i.i.i.i.i23.preheader

.lr.ph.i.i.i.i.i.i23.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.012.i.i.i.i.i.i24.ph = phi i64 [ %i.dn, %iter.check ], [ %i.dn, %vector.memcheck ], [ %i.ek, %vec.epilog.iter.check ], [ %i.eu, %vec.epilog.middle.block ]
  %.0811.i.i.i.i.i.i25.ph = phi ptr [ %.0.i4.i21, %iter.check ], [ %.0.i4.i21, %vector.memcheck ], [ %i.em, %vec.epilog.iter.check ], [ %i.ew, %vec.epilog.middle.block ]
  %.0910.i.i.i.i.i.i26.ph = phi ptr [ %.0.i15, %iter.check ], [ %.0.i15, %vector.memcheck ], [ %i.en, %vec.epilog.iter.check ], [ %i.ex, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i.i.i.i23

.lr.ph.i.i.i.i.i.i23:                             ; preds = %.lr.ph.i.i.i.i.i.i23.preheader, %.lr.ph.i.i.i.i.i.i23
  %.012.i.i.i.i.i.i24 = phi i64 [ %i.ff, %.lr.ph.i.i.i.i.i.i23 ], [ %.012.i.i.i.i.i.i24.ph, %.lr.ph.i.i.i.i.i.i23.preheader ] ; 2 uses
  %.0811.i.i.i.i.i.i25 = phi ptr [ %i.fe, %.lr.ph.i.i.i.i.i.i23 ], [ %.0811.i.i.i.i.i.i25.ph, %.lr.ph.i.i.i.i.i.i23.preheader ] ; 2 uses
  %.0910.i.i.i.i.i.i26 = phi ptr [ %i.fd, %.lr.ph.i.i.i.i.i.i23 ], [ %.0910.i.i.i.i.i.i26.ph, %.lr.ph.i.i.i.i.i.i23.preheader ] ; 2 uses
  %i.fb = load i8, ptr %.0910.i.i.i.i.i.i26, align 1, !tbaa !38
  %i.fc = sext i8 %i.fb to i16
  store i16 %i.fc, ptr %.0811.i.i.i.i.i.i25, align 2, !tbaa !61
  %i.fd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i26, i64 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i25, i64 2
  %i.ff = add nsw i64 %.012.i.i.i.i.i.i24, -1
  %i.fg = icmp samesign ugt i64 %.012.i.i.i.i.i.i24, 1
  br i1 %i.fg, label %.lr.ph.i.i.i.i.i.i23, label %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30, !llvm.loop !367

_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30: ; preds = %.lr.ph.i.i.i.i.i.i23, %middle.block, %vec.epilog.middle.block, %bb.ap, %bb.aq, %bb.ar, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit.i20
  %i.fh = load i32, ptr %i.dl, align 8, !tbaa !77
  %i.fi = add i32 %i.fh, %i.dm
  store i32 %i.fi, ptr %i.dl, align 8, !tbaa !77
  %.sroa.0.0.copyload.i.i31 = load i64, ptr %1, align 8, !tbaa !26
  %i.fj = and i64 %.sroa.0.0.copyload.i.i31, 281474976710655
  %i.fk = inttoptr i64 %i.fj to ptr               ; 5 uses
  %i.fl = load i32, ptr %i.fk, align 4            ; 2 uses
  %i.fm = icmp ugt i32 %i.fl, 150994943
  br i1 %i.fm, label %bb.ax, label %bb.ay, !prof !8

bb.ax:                                            ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !59
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

bb.ay:                                            ; preds = %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit30
  %.mask.i.i.i.i.i.i.i.i32 = and i32 %i.fl, 251658240
  switch i32 %.mask.i.i.i.i.i.i.i.i32, label %bb.bb [
    i32 117440512, label %bb.az
    i32 50331648, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

bb.ba:                                            ; preds = %bb.ay
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

bb.bb:                                            ; preds = %bb.ay
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %.sroa.0.0.copyload.i.i.i34 = load i64, ptr %i.fr, align 8, !tbaa !26
  %i.fs = and i64 %.sroa.0.0.copyload.i.i.i34, 281474976710655
  %i.ft = inttoptr i64 %i.fs to ptr
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !59
  br label %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35

_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35: ; preds = %bb.ax, %bb.az, %bb.ba, %bb.bb
  %.0.i33 = phi ptr [ %i.fo, %bb.ax ], [ %i.fp, %bb.az ], [ %i.fq, %bb.ba ], [ %i.fv, %bb.bb ]
  %i.fw = zext i32 %2 to i64
  tail call void @_ZN6hermes2vm13StringBuilder14appendUTF16RefEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %.0.i33, i64 %i.fw)
  br label %bb.bc

bb.bc:                                            ; preds = %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit, %_ZNK6hermes2vm15StringPrimitive18castToUTF16PointerEv.exit35, %_ZN6hermes2vm13StringBuilder14appendASCIIRefEN4llvh8ArrayRefIcEE.exit
  ret void
}

declare void @_ZN6hermes16platform_unicode13convertToCaseERN4llvh15SmallVectorImplIDsEENS0_14CaseConversionEb(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare { ptr, i64 } @_ZNK6hermes2vm10StringView11getUTF16RefERN4llvh15SmallVectorImplIDsEEb(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive13createDynamicERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createINSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEEEENS0_10CallResultINS0_11HermesValueELNS0_6detail20CallResultSpecializeE2EEERNS0_7RuntimeEOT_(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6hermes2vm15StringPrimitive13arrayToStringIDsEENSt7__cxx1112basic_stringIT_St11char_traitsIS5_ESaIS5_EEEN4llvh8ArrayRefIS5_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string.209") align 8 %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !372
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !373
  %.idx = shl nuw nsw i64 %2, 1                   ; 3 uses
  %i.c = icmp ugt i64 %2, 7
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.d, label %bb.c, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #14
  unreachable

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i: ; preds = %bb.b
  %i.e = add nuw nsw i64 %.idx, 2
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #16 ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !59
  store i64 %2, ptr %i.a, align 8, !tbaa !38
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i, %bb.a
  %.pre7.i.i = phi ptr [ %i.f, %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEE9_M_createERmm.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  switch i64 %2, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.g = load i16, ptr %1, align 2, !tbaa !61
  store i16 %i.g, ptr %.pre7.i.i, align 2, !tbaa !61
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.pre7.i.i, ptr align 2 %1, i64 %.idx, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit

_ZNSt7__cxx1112basic_stringIDsSt11char_traitsIDsESaIDsEEC2IPKDsvEET_S8_RKS3_.exit: ; preds = %._crit_edge.i.i, %bb.d, %bb.e
  store i64 %2, ptr %i.b, align 8, !tbaa !373
  %i.h = getelementptr inbounds nuw i8, ptr %.pre7.i.i, i64 %.idx
  store i16 0, ptr %i.h, align 2, !tbaa !61
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

declare i32 @_ZN6hermes2vm9ArrayImpl18_setOwnIndexedImplENS0_6HandleINS0_8JSObjectEEERNS0_7RuntimeEjNS2_INS0_11HermesValueEEE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32 noundef, ptr) local_unnamed_addr #2

declare i32 @_ZN6hermes2vm8JSObject24putNamedWithReceiver_RJSENS0_6HandleIS1_EERNS0_7RuntimeENS0_8SymbolIDENS2_INS0_11HermesValueEEES8_NS0_11PropOpFlagsE(ptr, ptr noundef nonnull align 8 dereferenceable(9816), i32, ptr, ptr, i32) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i1 @llvm.is.fpclass.f64(double, i32 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt8__searchISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES5_N9__gnu_cxx5__ops19_Iter_equal_to_iterEET_S9_S9_T0_SA_T1_(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.231") align 8 %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, ptr noundef dead_on_return %3, ptr noundef dead_on_return %4) local_unnamed_addr #0 comdat {
bb.a:
  %5 = alloca %"class.std::reverse_iterator.231", align 8 ; 4 uses
  %6 = alloca %"class.std::reverse_iterator.231", align 8 ; 4 uses
  %7 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_iter", align 8 ; 4 uses
  %8 = alloca %"class.std::reverse_iterator.231", align 8 ; 4 uses
  %9 = alloca %"class.std::reverse_iterator.231", align 8 ; 4 uses
  %10 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_iter", align 8 ; 4 uses
  %11 = alloca %"class.std::reverse_iterator.231", align 8 ; 4 uses
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !81 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !82
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %2, align 8, !tbaa !81
  %.sroa.2.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i4.i = load ptr, ptr %.sroa.2.0..sroa_idx.i3.i, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  %i.a = icmp eq ptr %.sroa.0.0.copyload.i.i, %.sroa.0.0.copyload.i2.i
  %i.b = icmp eq ptr %.sroa.2.0.copyload.i.i, %.sroa.2.0.copyload.i4.i
  %.0.i.i = select i1 %.not.i.i, i1 %i.b, i1 %i.a
  br i1 %.0.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload.i.i1 = load ptr, ptr %3, align 8, !tbaa !81 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i2 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i3 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i2, align 8, !tbaa !82 ; 2 uses
  %.sroa.0.0.copyload.i2.i4 = load ptr, ptr %4, align 8, !tbaa !81 ; 2 uses
  %.sroa.2.0..sroa_idx.i3.i5 = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i4.i6 = load ptr, ptr %.sroa.2.0..sroa_idx.i3.i5, align 8, !tbaa !82 ; 2 uses
  %.not.i.i7 = icmp eq ptr %.sroa.0.0.copyload.i.i1, null ; 4 uses
  %i.c = icmp eq ptr %.sroa.0.0.copyload.i.i1, %.sroa.0.0.copyload.i2.i4
  %i.d = icmp eq ptr %.sroa.2.0.copyload.i.i3, %.sroa.2.0.copyload.i4.i6
  %.0.i.i8 = select i1 %.not.i.i7, i1 %i.d, i1 %i.c
  br i1 %.0.i.i8, label %bb.c, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !376
  br label %.critedge

_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i1, i64 -1 ; 2 uses
  %.sroa.076.0 = select i1 %.not.i.i7, ptr null, ptr %i.e
  %.sroa.7.0.idx = select i1 %.not.i.i7, i64 -2, i64 0
  %.sroa.7.0 = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i.i3, i64 %.sroa.7.0.idx ; 2 uses
  %i.f = icmp eq ptr %i.e, %.sroa.0.0.copyload.i2.i4
  %i.g = icmp eq ptr %.sroa.7.0, %.sroa.2.0.copyload.i4.i6
  %.0.i.i17 = select i1 %.not.i.i7, i1 %i.g, i1 %i.f
  br i1 %.0.i.i17, label %bb.d, label %.preheader77

bb.d:                                             ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %10)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @_ZSt9__find_ifISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEN9__gnu_cxx5__ops17_Iter_equals_iterIS5_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr dead_on_unwind writable sret(%"class.std::reverse_iterator.231") align 8 %0, ptr noundef nonnull dead_on_return %8, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %.critedge

.preheader77:                                     ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit, %.preheader77.backedge
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  call void @_ZSt9__find_ifISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEN9__gnu_cxx5__ops17_Iter_equals_iterIS5_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator.231") align 8 %11, ptr noundef nonnull dead_on_return %5, ptr noundef nonnull dead_on_return %6, ptr noundef nonnull dead_on_return %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %11, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  %.sroa.0.0.copyload.i.i18 = load ptr, ptr %1, align 8, !tbaa !81 ; 3 uses
  %.sroa.2.0.copyload.i.i20 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !82 ; 3 uses
  %.sroa.0.0.copyload.i2.i21 = load ptr, ptr %2, align 8, !tbaa !81 ; 3 uses
  %.sroa.2.0.copyload.i4.i23 = load ptr, ptr %.sroa.2.0..sroa_idx.i3.i, align 8, !tbaa !82 ; 3 uses
  %.not.i.i24 = icmp eq ptr %.sroa.0.0.copyload.i.i18, null ; 5 uses
  %i.h = icmp eq ptr %.sroa.0.0.copyload.i.i18, %.sroa.0.0.copyload.i2.i21
  %i.i = icmp eq ptr %.sroa.2.0.copyload.i.i20, %.sroa.2.0.copyload.i4.i23
  %.0.i.i25 = select i1 %.not.i.i24, i1 %i.i, i1 %i.h
  br i1 %.0.i.i25, label %bb.e, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit27

bb.e:                                             ; preds = %.preheader77
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !376
  br label %.critedge

_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit27: ; preds = %.preheader77
  %i.j = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i18, i64 -1 ; 3 uses
  %.sroa.11.1.idx = select i1 %.not.i.i24, i64 -2, i64 0
  %.sroa.11.1 = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i.i20, i64 %.sroa.11.1.idx ; 2 uses
  %i.k = icmp eq ptr %i.j, %.sroa.0.0.copyload.i2.i21
  %i.l = icmp eq ptr %.sroa.11.1, %.sroa.2.0.copyload.i4.i23
  %.0.i.i35 = select i1 %.not.i.i24, i1 %i.l, i1 %i.k
  br i1 %.0.i.i35, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit27
  %spec.select = select i1 %.not.i.i24, ptr null, ptr %i.j
  br label %.preheader

bb.f:                                             ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !376
  br label %.critedge

.preheader:                                       ; preds = %.preheader.preheader, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48
  %.sroa.8.0 = phi ptr [ %.sroa.8.1, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48 ], [ %.sroa.7.0, %.preheader.preheader ] ; 2 uses
  %.sroa.061.0 = phi ptr [ %.sroa.061.1, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48 ], [ %.sroa.076.0, %.preheader.preheader ] ; 2 uses
  %.sroa.066.0 = phi ptr [ %.sroa.066.2, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48 ], [ %spec.select, %.preheader.preheader ] ; 3 uses
  %.sroa.11.0 = phi ptr [ %.sroa.11.2, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48 ], [ %.sroa.11.1, %.preheader.preheader ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.066.0, null    ; 4 uses
  br i1 %.not.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.preheader
  %i.m = getelementptr inbounds i8, ptr %.sroa.066.0, i64 -1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !38
  %i.o = sext i8 %i.n to i16
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i

bb.h:                                             ; preds = %.preheader
  %i.p = getelementptr inbounds i8, ptr %.sroa.11.0, i64 -2
  %i.q = load i16, ptr %i.p, align 2, !tbaa !61
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i

_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i: ; preds = %bb.h, %bb.g
  %i.r = phi i16 [ %i.o, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  %.not.i.i2.i = icmp eq ptr %.sroa.061.0, null
  br i1 %.not.i.i2.i, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit, label %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit.thread

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit: ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i
  %i.s = getelementptr inbounds i8, ptr %.sroa.8.0, i64 -2 ; 2 uses
  %i.t = load i16, ptr %i.s, align 2, !tbaa !61
  %i.u = icmp eq i16 %i.r, %i.t
  br i1 %i.u, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit38, label %bb.k

_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit.thread: ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i
  %i.v = getelementptr inbounds i8, ptr %.sroa.061.0, i64 -1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !38
  %i.x = sext i8 %i.w to i16
  %i.y = icmp eq i16 %i.r, %i.x
  br i1 %i.y, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit38, label %bb.k

_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit38: ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit.thread
  %.sroa.8.1 = phi ptr [ %.sroa.8.0, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit.thread ], [ %i.s, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit ] ; 2 uses
  %.sroa.061.1 = phi ptr [ %i.v, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit.thread ], [ null, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit ] ; 3 uses
  %.sroa.0.0.copyload.i2.i42 = load ptr, ptr %4, align 8, !tbaa !81
  %.sroa.2.0.copyload.i4.i44 = load ptr, ptr %.sroa.2.0..sroa_idx.i3.i5, align 8, !tbaa !82
  %.not.i.i45 = icmp eq ptr %.sroa.061.1, null
  %i.z = icmp eq ptr %.sroa.061.1, %.sroa.0.0.copyload.i2.i42
  %i.aa = icmp eq ptr %.sroa.8.1, %.sroa.2.0.copyload.i4.i44
  %.0.i.i46 = select i1 %.not.i.i45, i1 %i.aa, i1 %i.z
  br i1 %.0.i.i46, label %bb.i, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48

bb.i:                                             ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !376
  br label %.critedge

_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48: ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit38
  %i.ab = getelementptr inbounds i8, ptr %.sroa.066.0, i64 -1 ; 2 uses
  %.sroa.066.2 = select i1 %.not.i.i.i, ptr null, ptr %i.ab
  %.sroa.11.2.idx = select i1 %.not.i.i.i, i64 -2, i64 0
  %.sroa.11.2 = getelementptr inbounds i8, ptr %.sroa.11.0, i64 %.sroa.11.2.idx ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %.sroa.0.0.copyload.i2.i21
  %i.ad = icmp eq ptr %.sroa.11.2, %.sroa.2.0.copyload.i4.i23
  %.0.i.i56 = select i1 %.not.i.i.i, i1 %i.ad, i1 %i.ac
  br i1 %.0.i.i56, label %bb.j, label %.preheader, !llvm.loop !374

bb.j:                                             ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !376
  br label %.critedge

bb.k:                                             ; preds = %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit.thread, %_ZNK9__gnu_cxx5__ops19_Iter_equal_to_iterclISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEES8_EEbT_T0_.exit
  br i1 %.not.i.i24, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store ptr %i.j, ptr %1, align 8, !tbaa !85
  br label %.preheader77.backedge

.preheader77.backedge:                            ; preds = %bb.l, %bb.m
  br label %.preheader77, !llvm.loop !375

bb.m:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds i8, ptr %.sroa.2.0.copyload.i.i20, i64 -2
  store ptr %i.ae, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !86
  br label %.preheader77.backedge

.critedge:                                        ; preds = %bb.d, %bb.f, %bb.i, %bb.j, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZSt9__find_ifISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEN9__gnu_cxx5__ops17_Iter_equals_iterIS5_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator.231") align 8 %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2, ptr noundef dead_on_return %3) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8, !tbaa !81 ; 5 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %.sroa.2.0.copyload.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !82 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %2, align 8, !tbaa !81
  %.sroa.2.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.2.0.copyload.i4.i = load ptr, ptr %.sroa.2.0..sroa_idx.i3.i, align 8, !tbaa !82
  %.not.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i, null
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ptrtoint ptr %.sroa.2.0.copyload.i.i to i64
  %i.e = ptrtoint ptr %.sroa.2.0.copyload.i4.i to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 1                   ; 2 uses
  %.0.i.i = select i1 %.not.i.i, i64 %i.g, i64 %i.c
  %i.h = ashr i64 %.0.i.i, 2                      ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %.sroa.6.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit39
  %.sroa.0.0.copyload.i.i40178 = phi ptr [ %.sroa.0.0.copyload.i.i, %.lr.ph ], [ %.sroa.0.0.copyload.i.i40171, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit39 ]
  %.sroa.088.0.copyload.pr167 = phi ptr [ %.sroa.0.0.copyload.i.i, %.lr.ph ], [ %.sroa.088.0.copyload.pr168, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit39 ] ; 4 uses
  %.sroa.289.0.copyload115155 = phi ptr [ %.sroa.2.0.copyload.i.i, %.lr.ph ], [ %.sroa.289.0.copyload115156, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit39 ] ; 4 uses
  %.0141 = phi i64 [ %i.h, %.lr.ph ], [ %i.br, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit39 ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.088.0.copyload.pr167, null ; 3 uses
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %.sroa.088.0.copyload.pr167, i64 -1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !38
  %i.l = sext i8 %i.k to i16
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds i8, ptr %.sroa.289.0.copyload115155, i64 -2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !61
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i

_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i: ; preds = %bb.d, %bb.c
  %i.o = phi i16 [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  %.sroa.0.0.copyload.i1.i = load ptr, ptr %3, align 8, !tbaa !81 ; 3 uses
  %.not.i.i2.i = icmp eq ptr %.sroa.0.0.copyload.i1.i, null
  br i1 %.not.i.i2.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i
  %i.p = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i1.i, i64 -1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !38
  %i.r = sext i8 %i.q to i16
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit

bb.f:                                             ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i
  %.sroa.6.0.copyload.i4.i = load ptr, ptr %.sroa.6.0..sroa_idx.i3.i, align 8, !tbaa !82
  %i.s = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i4.i, i64 -2
  %i.t = load i16, ptr %i.s, align 2, !tbaa !61
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit

_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit: ; preds = %bb.e, %bb.f
  %i.u = phi i16 [ %i.r, %bb.e ], [ %i.t, %bb.f ]
  %i.v = icmp eq i16 %i.o, %i.u
  br i1 %i.v, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit83, label %bb.g

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit
  br i1 %.not.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds i8, ptr %.sroa.088.0.copyload.pr167, i64 -1 ; 3 uses
  store ptr %i.w, ptr %1, align 8, !tbaa !85
  %.sroa.0.0.copyload.i1.i7.pre.pre = load ptr, ptr %3, align 8, !tbaa !81
  %i.x = getelementptr inbounds i8, ptr %.sroa.088.0.copyload.pr167, i64 -2
  %i.y = load i8, ptr %i.x, align 1, !tbaa !38
  %i.z = sext i8 %i.y to i16
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i6

bb.i:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds i8, ptr %.sroa.289.0.copyload115155, i64 -2 ; 2 uses
  store ptr %i.aa, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !86
  %i.ab = getelementptr inbounds i8, ptr %.sroa.289.0.copyload115155, i64 -4
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !61
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i6

_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i6: ; preds = %bb.i, %bb.h
  %.sroa.0.0.copyload.i.i40176 = phi ptr [ %i.w, %bb.h ], [ %.sroa.0.0.copyload.i.i40178, %bb.i ] ; 2 uses
  %.sroa.0.0.copyload.i1.i7 = phi ptr [ %.sroa.0.0.copyload.i1.i7.pre.pre, %bb.h ], [ %.sroa.0.0.copyload.i1.i, %bb.i ] ; 4 uses
  %.sroa.293.0.copyload101 = phi ptr [ %.sroa.289.0.copyload115155, %bb.h ], [ %i.aa, %bb.i ] ; 3 uses
  %.sroa.092.0.copyload99 = phi ptr [ %i.w, %bb.h ], [ null, %bb.i ] ; 3 uses
  %i.ad = phi i16 [ %i.z, %bb.h ], [ %i.ac, %bb.i ]
  %.not.i.i2.i8 = icmp eq ptr %.sroa.0.0.copyload.i1.i7, null
  br i1 %.not.i.i2.i8, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i6
  %i.ae = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i1.i7, i64 -1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !38
  %i.ag = sext i8 %i.af to i16
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit13

bb.k:                                             ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i6
  %.sroa.6.0.copyload.i4.i10 = load ptr, ptr %.sroa.6.0..sroa_idx.i3.i, align 8, !tbaa !82
  %i.ah = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i4.i10, i64 -2
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !61
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit13

_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit13: ; preds = %bb.j, %bb.k
  %i.aj = phi i16 [ %i.ag, %bb.j ], [ %i.ai, %bb.k ]
  %i.ak = icmp eq i16 %i.ad, %i.aj
  br i1 %i.ak, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit83, label %bb.l

bb.l:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit13
  br i1 %.not.i.i.i, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15.thread

_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15.thread: ; preds = %bb.l
  %i.al = getelementptr inbounds i8, ptr %.sroa.092.0.copyload99, i64 -1 ; 3 uses
  store ptr %i.al, ptr %1, align 8, !tbaa !85
  %.sroa.0.0.copyload.i1.i19.pre.pre = load ptr, ptr %3, align 8, !tbaa !81
  br label %bb.m

_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15: ; preds = %bb.l
  %i.am = getelementptr inbounds i8, ptr %.sroa.293.0.copyload101, i64 -2 ; 3 uses
  store ptr %i.am, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !86
  %.not.i.i.i17 = icmp eq ptr %.sroa.092.0.copyload99, null
  br i1 %.not.i.i.i17, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15.thread, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15
  %.sroa.0.0.copyload.i1.i19.pre = phi ptr [ %.sroa.0.0.copyload.i1.i19.pre.pre, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15.thread ], [ %.sroa.0.0.copyload.i1.i7, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15 ]
  %.sroa.0.0.copyload.i.i40175 = phi ptr [ %i.al, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15.thread ], [ %.sroa.0.0.copyload.i.i40176, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15 ]
  %.sroa.088.0.copyload.pr164 = phi ptr [ %i.al, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15.thread ], [ %.sroa.092.0.copyload99, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15 ] ; 2 uses
  %.sroa.289.0.copyload115160 = phi ptr [ %.sroa.293.0.copyload101, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15.thread ], [ %i.am, %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15 ]
  %i.an = getelementptr inbounds i8, ptr %.sroa.088.0.copyload.pr164, i64 -1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !38
  %i.ap = sext i8 %i.ao to i16
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i18

bb.n:                                             ; preds = %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit15
  %i.aq = getelementptr inbounds i8, ptr %.sroa.293.0.copyload101, i64 -4
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !61
  br label %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i18

_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i18: ; preds = %bb.n, %bb.m
  %.sroa.0.0.copyload.i.i40174 = phi ptr [ %.sroa.0.0.copyload.i.i40175, %bb.m ], [ %.sroa.0.0.copyload.i.i40176, %bb.n ] ; 2 uses
  %.sroa.088.0.copyload.pr = phi ptr [ %.sroa.088.0.copyload.pr164, %bb.m ], [ null, %bb.n ] ; 3 uses
  %.sroa.289.0.copyload115 = phi ptr [ %.sroa.289.0.copyload115160, %bb.m ], [ %i.am, %bb.n ] ; 3 uses
  %.sroa.0.0.copyload.i1.i19 = phi ptr [ %.sroa.0.0.copyload.i1.i19.pre, %bb.m ], [ %.sroa.0.0.copyload.i1.i7, %bb.n ] ; 4 uses
  %.not.i.i.i17112 = phi i1 [ false, %bb.m ], [ true, %bb.n ]
  %i.as = phi i16 [ %i.ap, %bb.m ], [ %i.ar, %bb.n ]
  %.not.i.i2.i20 = icmp eq ptr %.sroa.0.0.copyload.i1.i19, null
  br i1 %.not.i.i2.i20, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i18
  %i.at = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i1.i19, i64 -1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !38
  %i.av = sext i8 %i.au to i16
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit25

bb.p:                                             ; preds = %_ZNKSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEdeEv.exit.i18
  %.sroa.6.0.copyload.i4.i22 = load ptr, ptr %.sroa.6.0..sroa_idx.i3.i, align 8, !tbaa !82
  %i.aw = getelementptr inbounds i8, ptr %.sroa.6.0.copyload.i4.i22, i64 -2
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !61
  br label %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit25

_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit25: ; preds = %bb.o, %bb.p
  %i.ay = phi i16 [ %i.av, %bb.o ], [ %i.ax, %bb.p ]
  %i.az = icmp eq i16 %i.as, %i.ay
  br i1 %i.az, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit83, label %bb.q

bb.q:                                             ; preds = %_ZN9__gnu_cxx5__ops17_Iter_equals_iterISt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEEclIS7_EEbT_.exit25
  br i1 %.not.i.i.i17112, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit27, label %_ZNSt16reverse_iteratorIN6hermes2vm10StringView14const_iteratorEEppEv.exit27.thread

end_hunk_0
