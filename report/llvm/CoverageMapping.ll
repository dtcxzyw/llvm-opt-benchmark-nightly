Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CoverageMapping?download=true
inline.NumInlined: 7378
inline.NumDeleted: 3735
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN4llvm14InstrProfError4takeB5cxx11ENS_5ErrorE:._crit_edge.i.i
    i64 1, label %bb.c
    i64 0, label %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  %i.u = load i8, ptr %i.o, align 1, !tbaa !94
  store i8 %i.u, ptr %i.t, align 1, !tbaa !94
  br label %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.o, i64 %i.p, i1 false)
  br label %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit

_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit: ; preds = %._crit_edge.i.i.i, %bb.c, %bb.d
  %i.v = load i64, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.v, ptr %i.w, align 8, !tbaa !218
  %i.x = load ptr, ptr %i.m, align 8, !tbaa !219
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store i8 0, ptr %i.y, align 1, !tbaa !94
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  %i.z = load ptr, ptr %4, align 8, !tbaa !219    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.c
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit
  %i.ab = load i64, ptr %i.c, align 8, !tbaa !94
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt4pairIN4llvm15instrprof_errorENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2IRS1_RS7_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISD_SE_EEEbE4typeELb1EEEOSD_OSE_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  ret void
}

declare void @_ZN4llvm22IndexedInstrProfReader17getFunctionBitmapENS_9StringRefEmRNS_9BitVectorE(ptr dead_on_unwind writable sret(%"class.llvm::Error") align 8, ptr noundef nonnull align 8 dereferenceable(508), ptr, i64, i64 noundef, ptr noundef nonnull align 8 dereferenceable(68)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(96) ptr @_ZN4llvm4errsEv() local_unnamed_addr #2

declare void @_ZN4llvm21logAllUnhandledErrorsENS_5ErrorERNS_11raw_ostreamENS_5TwineE(ptr nofree noundef align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef byval(%"class.llvm::Twine") align 8) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8coverage14FunctionRecordD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !326  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !327  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.e, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  tail call void @_ZN4llvm8coverage10MCDCRecordD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %.05.i.i.i) #31
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 616 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !9

_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !326
  br label %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i

_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i, %bb.a
  %i.f = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !328
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.k) #34
  br label %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm8coverage10MCDCRecordEEvT_S4_.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !330
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #34
  br label %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm8coverage10MCDCRecordESaIS2_EED2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !329  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit3, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !330
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.y) #34
  br label %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit3

_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit3: ; preds = %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit, %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !215 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !331 ; 2 uses
  %.not4.i.i.i4 = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i4, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i5

.lr.ph.i.i.i5:                                    ; preds = %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit3, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i6 = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aa, %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit3 ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i6, align 8, !tbaa !219 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i6, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i5
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !94
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #34
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i6, i64 32 ; 2 uses
  %.not.i.i.i7 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i7, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i5, !llvm.loop !720

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i8 = load ptr, ptr %i.z, align 8, !tbaa !215
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit3
  %i.aj = phi ptr [ %.pr.i8, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.aa, %_ZNSt6vectorIN4llvm8coverage13CountedRegionESaIS2_EED2Ev.exit3 ] ; 3 uses
  %.not.i.i1.i9 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i9, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !332
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #34
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.e
  %i.ap = load ptr, ptr %0, align 8, !tbaa !219   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.as = load i64, ptr %i.aq, align 8, !tbaa !94
  %i.at = add i64 %i.as, 1
  tail call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.at) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage15CoverageMapping15loadFromReadersENS_8ArrayRefISt10unique_ptrINS0_21CoverageMappingReaderESt14default_deleteIS4_EEEERSt8optionalISt17reference_wrapperINS_22IndexedInstrProfReaderEEERS1_(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Error") align 8 captures(none) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(98) initializes((96, 98)) %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::Twine", align 8       ; 5 uses
  %6 = alloca %"class.llvm::coverage::CoverageMappingIterator", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !238, !range !127, !noundef !128
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %_ZNRSt8optionalISt17reference_wrapperIN4llvm22IndexedInstrProfReaderEEE5valueEv.exit, label %bb.b

_ZNRSt8optionalISt17reference_wrapperIN4llvm22IndexedInstrProfReaderEEE5valueEv.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %3, align 8, !tbaa !241    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !107
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(508) %i.d) #31
  %i.i = zext i1 %i.h to i16
  %i.j = or disjoint i16 %i.i, 256
  br label %bb.b

bb.b:                                             ; preds = %_ZNRSt8optionalISt17reference_wrapperIN4llvm22IndexedInstrProfReaderEEE5valueEv.exit, %bb.a
  %.sroa.054.0.insert.ext = phi i16 [ 257, %bb.a ], [ %i.j, %_ZNRSt8optionalISt17reference_wrapperIN4llvm22IndexedInstrProfReaderEEE5valueEv.exit ]
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i16 %.sroa.054.0.insert.ext, ptr %i.k, align 8
  %.idx = shl nuw nsw i64 %2, 3
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %.not72 = icmp eq i64 %2, 0
  br i1 %.not72, label %_ZN4llvm5ErrorD2Ev.exit44, label %.lr.ph75

.lr.ph75:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph75, %._crit_edge
  %.03273 = phi ptr [ %1, %.lr.ph75 ], [ %i.aa, %._crit_edge ] ; 2 uses
  %i.p = load ptr, ptr %.03273, align 8, !tbaa !334
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %i.p, ptr %6, align 8, !tbaa !732, !alias.scope !733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i8 0, i64 16, i1 false), !alias.scope !733
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %i.n, i8 0, i64 52, i1 false), !alias.scope !733
  call void @_ZN4llvm8coverage23CoverageMappingIterator9incrementEv(ptr noundef nonnull align 8 dereferenceable(84) %6) #31
  %i.q = load ptr, ptr %6, align 8, !tbaa !732
  %.not6871 = icmp eq ptr %i.q, null
  br i1 %.not6871, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %i.r = load i32, ptr %i.o, align 8, !tbaa !734, !noalias !735
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %_ZN4llvm5ErrorD2Ev.exit, label %_ZN4llvm8ExpectedIRNS_8coverage21CoverageMappingRecordEED2Ev.exit41

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %.lr.ph
  store ptr null, ptr %0, align 8, !tbaa !105, !alias.scope !736
  call void @_ZN4llvm8coverage15CoverageMapping18loadFunctionRecordERKNS0_21CoverageMappingRecordERKSt8optionalISt17reference_wrapperINS_22IndexedInstrProfReaderEEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(98) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %3)
  %i.s = load ptr, ptr %0, align 8, !tbaa !105
  %.not69 = icmp eq ptr %i.s, null
  br i1 %.not69, label %bb.d, label %.loopexit.loopexit

bb.d:                                             ; preds = %_ZN4llvm5ErrorD2Ev.exit
  call void @_ZN4llvm8coverage23CoverageMappingIterator9incrementEv(ptr noundef nonnull align 8 dereferenceable(84) %6) #31
  %i.t = load ptr, ptr %6, align 8, !tbaa !732
  %.not68 = icmp eq ptr %i.t, null
  br i1 %.not68, label %._crit_edge, label %.lr.ph

_ZN4llvm8ExpectedIRNS_8coverage21CoverageMappingRecordEED2Ev.exit41: ; preds = %.lr.ph
  %i.u = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #33, !noalias !737 ; 4 uses
  %i.v = load i32, ptr %i.o, align 8, !tbaa !738, !noalias !737
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31, !noalias !737
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i8 1, ptr %i.w, align 8, !tbaa !229, !noalias !737
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 33
  store i8 1, ptr %i.x, align 1, !tbaa !228, !noalias !737
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN4llvm8coverage16CoverageMapErrorE, i64 16), ptr %i.u, align 8, !tbaa !107, !noalias !737
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i32 %i.v, ptr %i.y, align 8, !tbaa !234, !noalias !737
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @_ZNK4llvm5Twine3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %i.z, ptr noundef nonnull align 8 dereferenceable(34) %5) #31, !noalias !737
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31, !noalias !737
  store ptr %i.u, ptr %0, align 8, !tbaa !105, !alias.scope !736
  br label %.loopexit

._crit_edge:                                      ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  %i.aa = getelementptr inbounds nuw i8, ptr %.03273, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.aa, %i.l
  br i1 %.not, label %_ZN4llvm5ErrorD2Ev.exit44, label %bb.c

.loopexit.loopexit:                               ; preds = %_ZN4llvm5ErrorD2Ev.exit
  %.pre = load i32, ptr %i.o, align 8, !tbaa !734
  %7 = icmp eq i32 %.pre, 0
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN4llvm8ExpectedIRNS_8coverage21CoverageMappingRecordEED2Ev.exit41
  %.not.i4365 = phi i1 [ %7, %.loopexit.loopexit ], [ true, %_ZN4llvm8ExpectedIRNS_8coverage21CoverageMappingRecordEED2Ev.exit41 ]
  call void @llvm.assume(i1 %.not.i4365)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #31
  br label %bb.e

_ZN4llvm5ErrorD2Ev.exit44:                        ; preds = %._crit_edge, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !105
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %_ZN4llvm5ErrorD2Ev.exit44
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage15CoverageMapping4loadENS_8ArrayRefISt10unique_ptrINS0_21CoverageMappingReaderESt14default_deleteIS4_EEEERSt8optionalISt17reference_wrapperINS_22IndexedInstrProfReaderEEE(ptr dead_on_unwind noalias nofree writable sret(%"class.llvm::Expected.305") align 8 captures(none) initializes((0, 8)) %0, ptr nofree readonly captures(address) %1, i64 %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::Error", align 8       ; 5 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #33 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, i8 0, i64 104, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  call void @_ZN4llvm8coverage15CoverageMapping15loadFromReadersENS_8ArrayRefISt10unique_ptrINS0_21CoverageMappingReaderESt14default_deleteIS4_EEEERSt8optionalISt17reference_wrapperINS_22IndexedInstrProfReaderEEERS1_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %4, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(98) %i.a)
  %i.b = load ptr, ptr %4, align 8, !tbaa !105    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %_ZNKSt14default_deleteIN4llvm8coverage15CoverageMappingEEclEPS2_.exit.i

.thread:                                          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, -2
  store i8 %i.e, ptr %i.c, align 8
  br label %_ZNSt10unique_ptrIN4llvm8coverage15CoverageMappingESt14default_deleteIS2_EED2Ev.exit

_ZNKSt14default_deleteIN4llvm8coverage15CoverageMappingEEclEPS2_.exit.i: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = or i8 %i.g, 1
  store i8 %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  tail call void @_ZN4llvm8coverage15CoverageMappingD2Ev(ptr noundef nonnull align 8 dead_on_return(98) dereferenceable(98) %i.a) #31
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 104) #34
  br label %_ZNSt10unique_ptrIN4llvm8coverage15CoverageMappingESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4llvm8coverage15CoverageMappingESt14default_deleteIS2_EED2Ev.exit: ; preds = %.thread, %_ZNKSt14default_deleteIN4llvm8coverage15CoverageMappingEEclEPS2_.exit.i
  %.sink = phi ptr [ %i.a, %.thread ], [ %i.b, %_ZNKSt14default_deleteIN4llvm8coverage15CoverageMappingEEclEPS2_.exit.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !324
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8coverage15CoverageMapping12loadFromFileENS_9StringRefES2_S2_RSt8optionalISt17reference_wrapperINS_22IndexedInstrProfReaderEEERS1_RbPNS_15SmallVectorImplINS_11SmallVectorIhLj10EEEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.llvm::Error") align 8 captures(none) %0, ptr %1, i64 %2, ptr %3, i64 %4, ptr nofree noundef readonly byval(%"class.llvm::StringRef") align 8 captures(none) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(98) %7, ptr nofree noundef nonnull align 1 captures(none) dereferenceable(1) %8, ptr noundef %9) local_unnamed_addr #0 align 2 {
bb.a:
  %10 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %11 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %12 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %13 = alloca %class.anon.625, align 8           ; 4 uses
  %14 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %15 = alloca %"class.llvm::SmallVector.780", align 8 ; 10 uses
  %16 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %17 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %18 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %19 = alloca %class.anon.625, align 8           ; 4 uses
  %20 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %21 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %22 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %23 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %24 = alloca %"class.llvm::Error", align 8      ; 6 uses
  %25 = alloca %"class.llvm::Error", align 8      ; 7 uses
  %26 = alloca %"class.llvm::Error", align 8      ; 3 uses
  %27 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %28 = alloca %"class.std::unique_ptr", align 8  ; 7 uses
  %29 = alloca %class.anon.625, align 8           ; 4 uses
  %30 = alloca %"class.std::unique_ptr", align 8  ; 5 uses
  %31 = alloca %"class.llvm::ErrorOr", align 8    ; 8 uses
  %32 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %33 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %34 = alloca %"class.llvm::Error", align 8      ; 4 uses
  %35 = alloca %"class.llvm::MemoryBufferRef", align 8 ; 4 uses
  %36 = alloca %"class.llvm::SmallVector.323", align 8 ; 9 uses
  %37 = alloca %"class.llvm::SmallVector.328", align 8 ; 9 uses
  %38 = alloca %"class.llvm::Expected.333", align 8 ; 12 uses
  %39 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  %40 = alloca %"class.llvm::SmallVector.341", align 8 ; 14 uses
  %41 = alloca %"class.std::unique_ptr.285", align 8 ; 9 uses
  %42 = alloca %"class.llvm::Error", align 8      ; 5 uses
  %43 = alloca %"class.llvm::Twine", align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #31
  %i.a = getelementptr inbounds nuw i8, ptr %32, i64 32
  store i8 5, ptr %i.a, align 8, !tbaa !229
  %i.b = getelementptr inbounds nuw i8, ptr %32, i64 33
  store i8 1, ptr %i.b, align 1, !tbaa !228
  store ptr %1, ptr %32, align 8, !tbaa !94
  %i.c = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %2, ptr %i.c, align 8, !tbaa !94
  call void @_ZN4llvm12MemoryBuffer14getFileOrSTDINERKNS_5TwineEbbSt8optionalINS_5AlignEE(ptr dead_on_unwind nonnull writable sret(%"class.llvm::ErrorOr") align 8 %31, ptr noundef nonnull align 8 dereferenceable(34) %32, i1 noundef zeroext false, i1 noundef zeroext false, i16 0) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #31
  %i.d = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8
  %i.f = trunc i8 %i.e to i1
  br i1 %i.f, label %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit, label %.critedge

_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit: ; preds = %bb.a
  %.sroa.0.0.copyload.i = load i32, ptr %31, align 8, !tbaa !55 ; 2 uses
  %.not113 = icmp eq i32 %.sroa.0.0.copyload.i, 0
  br i1 %.not113, label %.critedge, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %31, i64 8
  %.sroa.31.0.copyload.i = load ptr, ptr %.sroa.31.0..sroa_idx.i, align 8, !tbaa !805
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #31
  %i.g = getelementptr inbounds nuw i8, ptr %33, i64 32
  store i8 5, ptr %i.g, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %33, i64 33
  store i8 1, ptr %i.h, align 1, !tbaa !228
  store ptr %1, ptr %33, align 8, !tbaa !94
  %i.i = getelementptr inbounds nuw i8, ptr %33, i64 8
  store i64 %2, ptr %i.i, align 8, !tbaa !94
  call void @_ZN4llvm16errorCodeToErrorESt10error_code(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %34, i32 %.sroa.0.0.copyload.i, ptr %.sroa.31.0.copyload.i) #31
  call void @llvm.experimental.noalias.scope.decl(metadata !806)
  %i.j = load ptr, ptr %34, align 8, !tbaa !105, !noalias !806
  store ptr null, ptr %34, align 8, !tbaa !105, !noalias !806
  call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.lifetime.start.p0(ptr nonnull %30), !noalias !806
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #31, !noalias !808
  store ptr null, ptr %28, align 8, !tbaa !336, !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #31, !noalias !808
  store ptr %28, ptr %29, align 8, !tbaa !338, !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %26), !noalias !808
  call void @llvm.lifetime.start.p0(ptr nonnull %27), !noalias !808
  store ptr %i.j, ptr %27, align 8, !tbaa !105, !noalias !808
  call void @_ZN4llvm12handleErrorsIJZNS_9FileError5buildERKNS_5TwineESt8optionalImENS_5ErrorEEUlSt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS9_EEE_EEES7_S7_DpOT_(ptr dead_on_unwind nonnull writable sret(%"class.llvm::Error") align 8 %26, ptr nofree noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %29), !noalias !808
  %i.k = load ptr, ptr %27, align 8, !tbaa !105, !noalias !808 ; 3 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !tbaa !107, !noalias !808
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noalias !808
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #31, !noalias !808, !inline_history !10
  br label %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i

_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %26), !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %27), !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #31, !noalias !808
  %i.p = call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #33, !noalias !808 ; 2 uses
  %i.q = load i64, ptr %28, align 8, !tbaa !103, !noalias !808
  store i64 %i.q, ptr %30, align 8, !tbaa !103, !noalias !808
  store ptr null, ptr %28, align 8, !tbaa !103, !noalias !808
  call void @_ZN4llvm9FileErrorC2ERKNS_5TwineESt8optionalImESt10unique_ptrINS_13ErrorInfoBaseESt14default_deleteIS7_EE(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(34) %33, i64 undef, i8 0, ptr nofree noundef nonnull align 8 dereferenceable(8) %30), !noalias !808
  store ptr %i.p, ptr %0, align 8, !tbaa !105, !alias.scope !808
  %i.r = load ptr, ptr %30, align 8, !tbaa !103, !noalias !808 ; 3 uses
  %.not.i4.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i4.i.i, label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !107, !noalias !808
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !noalias !808
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #31, !noalias !808, !inline_history !11
  br label %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i

_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i: ; preds = %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i5.i.i, %_ZNSt10unique_ptrIN4llvm9FileErrorESt14default_deleteIS1_EED2Ev.exit.i.i
  %i.v = load ptr, ptr %28, align 8, !tbaa !103, !noalias !808 ; 3 uses
  %.not.i7.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i7.i.i, label %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit, label %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i

_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !107, !noalias !808
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !808
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #31, !noalias !808, !inline_history !11
  br label %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit

_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit: ; preds = %_ZNSt10unique_ptrIN4llvm13ErrorInfoBaseESt14default_deleteIS1_EED2Ev.exit6.i.i, %_ZNKSt14default_deleteIN4llvm13ErrorInfoBaseEEclEPS1_.exit.i8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #31, !noalias !808
  call void @llvm.lifetime.end.p0(ptr nonnull %30), !noalias !806
  %i.z = load ptr, ptr %34, align 8, !tbaa !105   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %_ZN4llvm5ErrorD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !107
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #31, !inline_history !7
  br label %_ZN4llvm5ErrorD2Ev.exit

_ZN4llvm5ErrorD2Ev.exit:                          ; preds = %_ZN4llvm15createFileErrorERKNS_5TwineENS_5ErrorE.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #31
  br label %bb.aj

.critedge:                                        ; preds = %bb.a, %_ZNK4llvm7ErrorOrISt10unique_ptrINS_12MemoryBufferESt14default_deleteIS2_EEE8getErrorEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #31
  %i.ae = load ptr, ptr %31, align 8, !tbaa !810
  call void @_ZNK4llvm12MemoryBuffer15getMemBufferRefEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::MemoryBufferRef") align 8 %35, ptr noundef nonnull align 8 dereferenceable(24) %i.ae) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #31
end_hunk_0
