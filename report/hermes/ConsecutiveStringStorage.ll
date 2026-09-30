Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/ConsecutiveStringStorage?download=true
inline.NumInlined: 2626
inline.NumDeleted: 1307
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6hermes3hbc24ConsecutiveStringStorageC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_PSA_ESt17integral_constantIbLb0EEEET_SG_T0_b:bb.a
  %.sroa.13.1.i = phi ptr [ %i.eh, %bb.ab ], [ %.sroa.13.031.i, %bb.aa ]
  %.sroa.10.1.i = phi ptr [ %i.ej, %bb.ab ], [ %.sroa.10.032.i, %bb.aa ]
  %.sroa.0.1.i = phi ptr [ %i.ei, %bb.ab ], [ %i.ef, %bb.aa ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.1.i, %i.k
  br i1 %.not.i, label %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit, label %bb.b, !llvm.loop !175

_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit: ; preds = %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  call fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb(ptr noundef nonnull align 8 dereferenceable(128) %5, ptr noundef %6, ptr noundef %7, i1 noundef zeroext %3)
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !58
  %i.em = load ptr, ptr %6, align 8, !tbaa !58    ; 4 uses
  %i.en = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !58
  %i.ep = load ptr, ptr %i.c, align 8, !tbaa !58  ; 2 uses
  %i.eq = ptrtoint ptr %i.el to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = getelementptr inbounds i8, ptr %i.ep, i64 %i.es
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr %i.et, ptr %i.em, ptr %i.eo)
  %i.eu = load ptr, ptr %7, align 8, !tbaa !67    ; 4 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !63
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = ptrtoint ptr %i.eu to i64               ; 2 uses
  %i.ez = sub i64 %i.ex, %i.ey
  %i.fa = ashr exact i64 %i.ez, 1
  %i.fb = call fastcc noundef i64 @_ZN12_GLOBAL__N_118StringTableBuilder16appendU16StorageEN4llvh8ArrayRefIDsEEPSt6vectorIhSaIhEE(ptr %i.eu, i64 %i.fa, ptr noundef %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder19generateStringTableEN4llvh8ArrayRefIhEEm(ptr dead_on_unwind noalias writable align 8 %8, ptr noundef nonnull align 8 dereferenceable(128) %5, i64 noundef %i.fb)
  %i.fc = load ptr, ptr %0, align 8, !tbaa !70    ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !71
  %i.ff = load <2 x ptr>, ptr %8, align 16, !tbaa !72
  store <2 x ptr> %i.ff, ptr %0, align 8, !tbaa !72
  %i.fg = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.fh = load ptr, ptr %i.fg, align 16, !tbaa !71
  store ptr %i.fh, ptr %i.fd, align 8, !tbaa !71
  %.not.i.i.i.i.i6 = icmp eq ptr %i.fc, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i6, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit: ; preds = %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit
  %i.fi = ptrtoint ptr %i.fe to i64
  %i.fj = ptrtoint ptr %i.fc to i64
  %i.fk = sub i64 %i.fi, %i.fj
  call void @_ZdlPvm(ptr noundef nonnull %i.fc, i64 noundef %i.fk) #18
  %.pr = load ptr, ptr %8, align 16, !tbaa !70    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit
  %i.fl = load ptr, ptr %i.fg, align 16, !tbaa !71
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = ptrtoint ptr %.pr to i64
  %i.fo = sub i64 %i.fm, %i.fn
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fo) #18
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %.not.i.i.i9 = icmp eq ptr %i.eu, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit
  %i.fp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !64
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = sub i64 %i.fr, %i.ey
  call void @_ZdlPvm(ptr noundef nonnull %i.eu, i64 noundef %i.fs) #18
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZNSt6vectorIDsSaIDsEED2Ev.exit:                  ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.not.i.i.i10 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit
  %i.ft = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !73
  %i.fv = ptrtoint ptr %i.fu to i64
  %i.fw = ptrtoint ptr %i.em to i64
  %i.fx = sub i64 %i.fv, %i.fw
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.fx) #18
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call fastcc void @_ZN12_GLOBAL__N_118StringTableBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"struct.(anonymous namespace)::StringPacker<char16_t>::HashedSuffix", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i15 = alloca %"class.llvh::ArrayRef", align 8 ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %5 = alloca %"struct.(anonymous namespace)::StringPacker<char16_t>::HashedSuffix", align 8 ; 7 uses
  %6 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %7 = alloca %"struct.std::pair.113", align 8    ; 3 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %8 = alloca %"class.llvh::DenseSet.87", align 8 ; 11 uses
  %9 = alloca %"struct.(anonymous namespace)::StringPacker<unsigned char>::HashedSuffix", align 8 ; 8 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %.sroa.0.i.i.i.i.i.i.i = alloca %"class.llvh::ArrayRef.25", align 8 ; 4 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %10 = alloca %"struct.(anonymous namespace)::StringPacker<unsigned char>::HashedSuffix", align 8 ; 7 uses
  %11 = alloca %"struct.llvh::detail::DenseSetEmpty", align 1 ; 3 uses
  %12 = alloca %"struct.std::pair.52", align 8    ; 3 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %13 = alloca %"class.llvh::DenseSet", align 8   ; 11 uses
  %14 = alloca %"class.std::vector.0", align 16   ; 9 uses
  %15 = alloca %"class.std::vector.19", align 16  ; 9 uses
  %16 = alloca %"class.std::vector.0", align 16   ; 11 uses
  %17 = alloca %"class.std::vector.19", align 16  ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  br i1 %3, label %bb.b, label %bb.ge

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %.val7 = load ptr, ptr %i.g, align 8, !tbaa !76 ; 6 uses
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !77 ; 6 uses
  %i.i = ptrtoint ptr %.val8 to i64
  %i.j = ptrtoint ptr %.val7 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 96                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15, !noalias !284
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  %i.m = lshr i64 %i.l, 3
  %i.n = trunc i64 %i.m to i32                    ; 2 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.c, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %bb.b
  %i.p = shl i32 %i.n, 2
  %i.q = udiv i32 %i.p, 3
  %i.r = add nuw nsw i32 %i.q, 1
  %i.s = zext nneg i32 %i.r to i64                ; 2 uses
  %i.t = lshr i64 %i.s, 1
  %i.u = or i64 %i.t, %i.s                        ; 2 uses
  %i.v = lshr i64 %i.u, 2
  %i.w = or i64 %i.v, %i.u                        ; 2 uses
  %i.x = lshr i64 %i.w, 4
  %i.y = or i64 %i.x, %i.w                        ; 2 uses
  %i.z = lshr i64 %i.y, 8
  %i.aa = or i64 %i.z, %i.y                       ; 2 uses
  %i.ab = lshr i64 %i.aa, 16
  %i.ac = or i64 %i.ab, %i.aa
  %i.ad = trunc nuw nsw i64 %i.ac to i32
  %i.ae = add nuw i32 %i.ad, 1                    ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !80, !alias.scope !285, !noalias !284
  %i.ag = zext i32 %i.ae to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #19, !noalias !286 ; 2 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !81, !alias.scope !285, !noalias !284
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !82, !alias.scope !285, !noalias !284
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !83, !alias.scope !285, !noalias !284
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ai, i8 -1, i64 %i.ah, i1 false), !tbaa !13, !noalias !286
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 20, i1 false), !alias.scope !285, !noalias !284
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i: ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.not16.i.i = icmp eq ptr %.val8, %.val7
  br i1 %.not16.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, label %.lr.ph.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i: ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i
  tail call void @_ZdlPv(ptr noundef null) #15, !noalias !287
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !284
  br label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

.lr.ph.i.i:                                       ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i, %bb.e
  %.017.i.i = phi ptr [ %i.at, %bb.e ], [ %.val7, %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i ] ; 3 uses
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %.sroa.412.0.copyload.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !tbaa !84, !noalias !286
  %i.al = icmp ugt i64 %.sroa.412.0.copyload.i.i, 2
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 8
  %.sroa.011.0.copyload.i.i = load ptr, ptr %i.am, align 8, !tbaa !58, !noalias !286 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15, !noalias !286
  %18 = load i16, ptr %.sroa.011.0.copyload.i.i, align 1, !noalias !284
  %19 = call i16 @llvm.bswap.i16(i16 %18)
  %i.an = zext i16 %19 to i32
  %i.ao = shl nuw nsw i32 %i.an, 8
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i, i64 2
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !59, !noalias !284
  %i.ar = zext i8 %i.aq to i32
  %i.as = or disjoint i32 %i.ao, %i.ar
  store i32 %i.as, ptr %i.f, align 4, !tbaa !13, !noalias !286
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15, !noalias !288
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15, !noalias !288
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbEOjDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.52") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15, !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15, !noalias !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15, !noalias !286
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.at, %.val8
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i: ; preds = %bb.e
  %.tr.i.i = trunc i64 %i.l to i32                ; 2 uses
  %.mask.i.i = and i32 %.tr.i.i, 536870911
  %i.au = icmp eq i32 %.mask.i.i, 0
  br i1 %i.au, label %.lr.ph180.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %i.av = shl i32 %.tr.i.i, 5
  %i.aw = udiv i32 %i.av, 3
  %i.ax = add nuw nsw i32 %i.aw, 1
  %i.ay = zext nneg i32 %i.ax to i64              ; 2 uses
  %i.az = lshr i64 %i.ay, 1
  %i.ba = or i64 %i.az, %i.ay                     ; 2 uses
  %i.bb = lshr i64 %i.ba, 2
  %i.bc = or i64 %i.bb, %i.ba                     ; 2 uses
  %i.bd = lshr i64 %i.bc, 4
  %i.be = or i64 %i.bd, %i.bc                     ; 2 uses
  %i.bf = lshr i64 %i.be, 8
  %i.bg = or i64 %i.bf, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 16
  %i.bi = or i64 %i.bh, %i.bg                     ; 2 uses
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = add nuw i32 %i.bj, 1                    ; 3 uses
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = mul nuw nsw i64 %i.bl, 48               ; 2 uses
  %i.bn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #19, !noalias !287 ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  %xtraiter = and i64 %i.bl, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.prol ], [ %i.bn, %bb.f ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.f ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !13, !noalias !287
  %i.bp = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !186

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %bb.f
  %.08.i.i.i.i.i.unr = phi ptr [ %i.bn, %bb.f ], [ %i.bp, %.lr.ph.i.i.i.i.i.prol ]
  %i.bq = icmp samesign ult i64 %i.bi, 7
  br i1 %i.bq, label %.lr.ph180.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 25 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !13, !noalias !287
  %i.br = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.br, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !13, !noalias !287
  %i.bs = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bs, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !13, !noalias !287
  %i.bt = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bt, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !13, !noalias !287
  %i.bu = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bu, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 200
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !13, !noalias !287
  %i.bv = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bv, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !13, !noalias !287
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 288
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bw, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 296
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 304
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.6, align 8, !tbaa !13, !noalias !287
  %i.bx = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 336
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bx, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 344
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.7 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 352
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.7, align 8, !tbaa !13, !noalias !287
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 384 ; 2 uses
  %.not.i.i.i.i.i.7 = icmp eq ptr %i.by, %i.bo
  br i1 %.not.i.i.i.i.i.7, label %.lr.ph180.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !187

.lr.ph180.i.i:                                    ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %.sroa.093.3.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.bn, %.lr.ph.i.i.i.i.i ], [ %i.bn, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %.sroa.29.3.i.i = phi i32 [ 0, %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i ], [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %i.bk, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %9, i64 16
  br label %bb.g

._crit_edge.i.i:                                  ; preds = %.loopexit.i.i
  %i.cd = icmp eq i32 %.sroa.12.2.i.i, 0
  br i1 %i.cd, label %._crit_edge.thread.i.i, label %bb.ae

bb.g:                                             ; preds = %.loopexit.i.i, %.lr.ph180.i.i
  %.0177.i.i = phi ptr [ %.val7, %.lr.ph180.i.i ], [ %i.hh, %.loopexit.i.i ] ; 5 uses
  %.sroa.29.0176.i.i = phi i32 [ %.sroa.29.3.i.i, %.lr.ph180.i.i ], [ %.sroa.29.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.23.0175.i.i = phi i32 [ 0, %.lr.ph180.i.i ], [ %.sroa.23.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.12.0174.i.i = phi i32 [ 0, %.lr.ph180.i.i ], [ %.sroa.12.2.i.i, %.loopexit.i.i ] ; 3 uses
  %.sroa.093.0173.i.i = phi ptr [ %.sroa.093.3.i.i, %.lr.ph180.i.i ], [ %.sroa.093.2.i.i, %.loopexit.i.i ] ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.0177.i.i, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !55, !noalias !287 ; 5 uses
  %i.cg = icmp ugt i64 %i.cf, 24576
  br i1 %i.cg, label %.loopexit.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %.0177.i.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !54, !noalias !287
  %.not36146156.i.i = icmp eq i64 %i.cf, 0
  br i1 %.not36146156.i.i, label %.loopexit.i.i, label %.lr.ph.i17.i

.lr.ph.i17.i:                                     ; preds = %bb.h, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i
  %.033.ph167.i.i = phi i64 [ %i.cn, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %i.cf, %bb.h ]
  %.034.ph166.i.i = phi i32 [ %i.cu, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ 0, %bb.h ]
  %.sroa.29.1.ph164.i.i = phi i32 [ %.sroa.29.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.29.0176.i.i, %bb.h ] ; 11 uses
  %.sroa.23.1.ph162.i.i = phi i32 [ %.sroa.23.6.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.23.0175.i.i, %bb.h ] ; 4 uses
  %.sroa.12.1.ph160.i.i = phi i32 [ %.sroa.12.4.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.12.0174.i.i, %bb.h ] ; 5 uses
  %.sroa.093.1.ph157.i.i = phi ptr [ %.sroa.093.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ], [ %.sroa.093.0173.i.i, %bb.h ] ; 9 uses
  %i.cj = load ptr, ptr %13, align 8, !noalias !284 ; 2 uses
  %i.ck = load i32, ptr %i.bz, align 8, !noalias !284 ; 2 uses
  %i.cl = icmp eq i32 %i.ck, 0
  %i.cm = add i32 %i.ck, -1                       ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, %.lr.ph.i17.i
  %.033148.i.i = phi i64 [ %.033.ph167.i.i, %.lr.ph.i17.i ], [ %i.cn, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ] ; 2 uses
  %.034147.i.i = phi i32 [ %.034.ph166.i.i, %.lr.ph.i17.i ], [ %i.cu, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ]
  %i.cn = add nsw i64 %.033148.i.i, -1            ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cn ; 5 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !59, !noalias !287
  %i.cq = zext i8 %i.cp to i32
  %i.cr = add i32 %.034147.i.i, %i.cq
  %i.cs = mul i32 %i.cr, 1025                     ; 2 uses
  %i.ct = lshr i32 %i.cs, 6
  %i.cu = xor i32 %i.ct, %i.cs                    ; 7 uses
  %i.cv = add nuw nsw i64 %.033148.i.i, 2
  %.not37.i.i = icmp ugt i64 %i.cv, %i.cf
  br i1 %.not37.i.i, label %.critedge.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %20 = load i16, ptr %i.co, align 1, !noalias !287
  %21 = call i16 @llvm.bswap.i16(i16 %20)
  %i.cw = zext i16 %21 to i32
  %i.cx = shl nuw nsw i32 %i.cw, 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.co, i64 2
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !59, !noalias !287
  %i.da = zext i8 %i.cz to i32
  %i.db = or disjoint i32 %i.cx, %i.da            ; 3 uses
  br i1 %i.cl, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.dc = mul nuw nsw i32 %i.db, 37
  %.02544.i.i.i.i.i = and i32 %i.dc, %i.cm        ; 2 uses
  %i.dd = zext nneg i32 %.02544.i.i.i.i.i to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dd
  %i.df = load i32, ptr %i.de, align 4, !tbaa !13, !noalias !287 ; 2 uses
  %i.dg = icmp eq i32 %i.db, %i.df
  br i1 %i.dg, label %.critedge.i.i, label %.lr.ph.i.i.i52.i.i, !prof !86

.lr.ph.i.i.i52.i.i:                               ; preds = %bb.k, %bb.l
  %i.dh = phi i32 [ %i.dn, %bb.l ], [ %i.df, %bb.k ]
  %.02547.i.i.i.i.i = phi i32 [ %.025.i.i.i.i.i, %bb.l ], [ %.02544.i.i.i.i.i, %bb.k ]
  %.046.i.i.i.i.i = phi i32 [ %i.dj, %bb.l ], [ 1, %bb.k ] ; 2 uses
  %i.di = icmp eq i32 %i.dh, -1
  br i1 %i.di, label %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, label %bb.l, !prof !60

bb.l:                                             ; preds = %.lr.ph.i.i.i52.i.i
  %i.dj = add i32 %.046.i.i.i.i.i, 1
  %i.dk = add i32 %.046.i.i.i.i.i, %.02547.i.i.i.i.i
  %.025.i.i.i.i.i = and i32 %i.dk, %i.cm          ; 2 uses
  %i.dl = zext i32 %.025.i.i.i.i.i to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.dl
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13, !noalias !287 ; 2 uses
  %i.do = icmp eq i32 %i.db, %i.dn
  br i1 %i.do, label %.critedge.i.i, label %.lr.ph.i.i.i52.i.i, !prof !87, !llvm.loop !1

_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i: ; preds = %.lr.ph.i.i.i52.i.i, %bb.j
  %.not36.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not36.i.i, label %.loopexit.i.i, label %bb.i, !llvm.loop !188

.critedge.i.i:                                    ; preds = %bb.k, %bb.i, %bb.l
  %i.dp = sub nsw i64 %i.cf, %i.cn
  %.sroa.22.0.copyload.i.fr.i.i.i.i = freeze i64 %i.dp ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15, !noalias !287
  store ptr %i.co, ptr %10, align 8, !tbaa !58, !noalias !287
  store i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !84, !noalias !287
  store i32 %i.cu, ptr %i.ca, align 8, !tbaa !89, !noalias !287
  %i.dq = icmp eq i32 %.sroa.29.1.ph164.i.i, 0    ; 2 uses
  br i1 %i.dq, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i, label %bb.m

bb.m:                                             ; preds = %.critedge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15, !noalias !287
  store ptr inttoptr (i64 -2 to ptr), ptr %9, align 8, !alias.scope !290, !noalias !287
  store i64 0, ptr %i.cb, align 8, !alias.scope !290, !noalias !287
  store i32 0, ptr %i.cc, align 8, !tbaa !89, !alias.scope !290, !noalias !287
  %i.dr = add i32 %.sroa.29.1.ph164.i.i, -1       ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i.i.i.i, label %.split.us.i.i.i.i, label %.split.i.i.i.i

.split.us.i.i.i.i:                                ; preds = %bb.m, %bb.p
  %.027.us.i.i.i.i = phi ptr [ %spec.select.us.i.i.i.i, %bb.p ], [ null, %bb.m ] ; 3 uses
  %.val36.pn.us.i.i.i.i = phi i32 [ %i.eb, %bb.p ], [ %i.cu, %bb.m ]
  %.0.us.i.i.i.i = phi i32 [ %i.ea, %bb.p ], [ 1, %bb.m ] ; 2 uses
  %.025.us.i.i.i.i = and i32 %.val36.pn.us.i.i.i.i, %i.dr ; 2 uses
  %i.ds = zext i32 %.025.us.i.i.i.i to i64
  %i.dt = getelementptr inbounds nuw [48 x i8], ptr %.sroa.093.1.ph157.i.i, i64 %i.ds ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !89, !noalias !287 ; 2 uses
  %i.dw = icmp eq i32 %i.cu, %i.dv
  br i1 %i.dw, label %bb.n, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !90

bb.n:                                             ; preds = %.split.us.i.i.i.i
  %.sroa.2.0..sroa_idx.i.us.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.2.0.copyload.i.us.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i.i.i.i, align 8, !tbaa !84, !noalias !287
  %.not.i.i.i.us.i.i.i.i = icmp eq i64 %.sroa.2.0.copyload.i.us.i.i.i.i, 0
  br i1 %.not.i.i.i.us.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread120.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i, !prof !90

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i: ; preds = %bb.n, %.split.us.i.i.i.i
  %i.dx = icmp eq i32 %i.dv, 0
  br i1 %i.dx, label %bb.o, label %bb.p, !prof !90

bb.o:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i
  %.sroa.22.0..sroa_idx.i83.i.i = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %.sroa.22.0.copyload.i84.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i83.i.i, align 8, !tbaa !84, !noalias !287
  %.not.i.i.i88.i.i = icmp eq i64 %.sroa.22.0.copyload.i84.i.i, 0
  br i1 %.not.i.i.i88.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, label %bb.p, !prof !90

bb.p:                                             ; preds = %bb.o, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i.i.i.i
  %i.dy = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.dt, ptr noundef nonnull align 8 dereferenceable(20) %9), !noalias !287
  %i.dz = icmp eq ptr %.027.us.i.i.i.i, null
  %or.cond.not.us.i.i.i.i = select i1 %i.dy, i1 %i.dz, i1 false
  %spec.select.us.i.i.i.i = select i1 %or.cond.not.us.i.i.i.i, ptr %i.dt, ptr %.027.us.i.i.i.i
  %i.ea = add i32 %.0.us.i.i.i.i, 1
  %i.eb = add i32 %.025.us.i.i.i.i, %.0.us.i.i.i.i
  br label %.split.us.i.i.i.i, !llvm.loop !2

.split.i.i.i.i:                                   ; preds = %bb.m, %bb.s
  %.027.i.i.i.i = phi ptr [ %spec.select.i.i.i.i, %bb.s ], [ null, %bb.m ] ; 3 uses
  %.val36.pn.i.i.i.i = phi i32 [ %i.el, %bb.s ], [ %i.cu, %bb.m ]
  %.0.i.i77.i.i = phi i32 [ %i.ek, %bb.s ], [ 1, %bb.m ] ; 2 uses
  %.025.i.i.i.i = and i32 %.val36.pn.i.i.i.i, %i.dr ; 2 uses
  %i.ec = zext i32 %.025.i.i.i.i to i64
  %i.ed = getelementptr inbounds nuw [48 x i8], ptr %.sroa.093.1.ph157.i.i, i64 %i.ec ; 8 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !89, !noalias !287 ; 2 uses
  %i.eg = icmp eq i32 %i.cu, %i.ef
  br i1 %i.eg, label %bb.q, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !90

bb.q:                                             ; preds = %.split.i.i.i.i
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !84, !noalias !287
  %.not.i.i.i.i.i79.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %.not.i.i.i.i.i79.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i80.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !90

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i80.i.i: ; preds = %bb.q
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %i.ed, align 8, !tbaa !58, !noalias !287
  %bcmp.i.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.co, ptr %.sroa.0.0.copyload.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.fr.i.i.i.i), !noalias !287
  %.not9.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread120.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i, !prof !91

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i80.i.i, %bb.q, %.split.i.i.i.i
  %i.eh = icmp eq i32 %i.ef, 0
  br i1 %i.eh, label %bb.r, label %bb.s, !prof !90

bb.r:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %.sroa.22.0.copyload.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i, align 8, !tbaa !84, !noalias !287
  %.not.i.i.i81.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i, 0
  br i1 %.not.i.i.i81.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, label %bb.s, !prof !90

bb.s:                                             ; preds = %bb.r, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i.i.i.i
  %i.ei = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.ed, ptr noundef nonnull align 8 dereferenceable(20) %9), !noalias !287
  %i.ej = icmp eq ptr %.027.i.i.i.i, null
  %or.cond.not.i.i.i.i = select i1 %i.ei, i1 %i.ej, i1 false
  %spec.select.i.i.i.i = select i1 %or.cond.not.i.i.i.i, ptr %i.ed, ptr %.027.i.i.i.i
  %i.ek = add i32 %.0.i.i77.i.i, 1
  %i.el = add i32 %.025.i.i.i.i, %.0.i.i77.i.i
  br label %.split.i.i.i.i, !llvm.loop !2

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread120.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i80.i.i, %bb.n
  %storemerge.i.i.ph.i.i = phi ptr [ %i.dt, %bb.n ], [ %i.ed, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i80.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !287
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i: ; preds = %bb.r, %bb.o
  %.us-phi12.i.i.i.i = phi ptr [ %.027.us.i.i.i.i, %bb.o ], [ %.027.i.i.i.i, %bb.r ] ; 2 uses
  %.us-phi13.i.i.i.i = phi ptr [ %i.dt, %bb.o ], [ %i.ed, %bb.r ]
  %.not.i.i78.i.i = icmp eq ptr %.us-phi12.i.i.i.i, null
  %i.em = select i1 %.not.i.i78.i.i, ptr %.us-phi13.i.i.i.i, ptr %.us-phi12.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15, !noalias !287
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i, %.critedge.i.i
  %.0.i119.i.i = phi ptr [ %i.em, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.i.i ], [ null, %.critedge.i.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !287
  store ptr %.0.i119.i.i, ptr %i.e, align 8, !tbaa !93, !noalias !287
  %i.en = shl i32 %.sroa.12.1.ph160.i.i, 2
  %i.eo = add i32 %i.en, 4
  %i.ep = mul i32 %.sroa.29.1.ph164.i.i, 3
  %.not.i.i.i.i.i.i = icmp ult i32 %i.eo, %i.ep
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.t, !prof !60

bb.t:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i
  %i.eq = shl i32 %.sroa.29.1.ph164.i.i, 1
  br label %.sink.split.i.i.i.i.i.i

bb.u:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread.i.i
  %.neg.i.i.i.i.i.i = xor i32 %.sroa.12.1.ph160.i.i, -1
  %.neg1.i.i.i.i.i.i = sub i32 %.sroa.29.1.ph164.i.i, %.sroa.23.1.ph162.i.i
  %i.er = add i32 %.neg1.i.i.i.i.i.i, %.neg.i.i.i.i.i.i
  %i.es = lshr i32 %.sroa.29.1.ph164.i.i, 3
  %.not9.i.i.i.i.i.i = icmp ugt i32 %i.er, %i.es
  br i1 %.not9.i.i.i.i.i.i, label %bb.w, label %.sink.split.i.i.i.i.i.i, !prof !60

.sink.split.i.i.i.i.i.i:                          ; preds = %bb.u, %bb.t
  %.val10.sink.i.i.i.i.i.i = phi i32 [ %i.eq, %bb.t ], [ %.sroa.29.1.ph164.i.i, %bb.u ]
  %i.et = add i32 %.val10.sink.i.i.i.i.i.i, -1
  %i.eu = zext i32 %i.et to i64                   ; 2 uses
  %i.ev = lshr i64 %i.eu, 1
  %i.ew = or i64 %i.ev, %i.eu                     ; 2 uses
  %i.ex = lshr i64 %i.ew, 2
  %i.ey = or i64 %i.ex, %i.ew                     ; 2 uses
  %i.ez = lshr i64 %i.ey, 4
  %i.fa = or i64 %i.ez, %i.ey                     ; 2 uses
  %i.fb = lshr i64 %i.fa, 8
  %i.fc = or i64 %i.fb, %i.fa                     ; 2 uses
  %i.fd = lshr i64 %i.fc, 16
  %i.fe = or i64 %i.fd, %i.fc
  %i.ff = trunc nuw i64 %i.fe to i32
  %i.fg = add i32 %i.ff, 1
  %.sroa.speculated.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.fg, i32 64) ; 4 uses
  %i.fh = zext i32 %.sroa.speculated.i.i.i.i to i64
  %i.fi = mul nuw nsw i64 %i.fh, 48               ; 2 uses
  %i.fj = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fi) #19, !noalias !287 ; 6 uses
  %.not.i.i63.i.i = icmp eq ptr %.sroa.093.1.ph157.i.i, null
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.fi ; 2 uses
  br i1 %.not.i.i63.i.i, label %.lr.ph.i.i.i70.i.i, label %.lr.ph.i.i.i.i65.i.i

.lr.ph.i.i.i70.i.i:                               ; preds = %.sink.split.i.i.i.i.i.i, %.lr.ph.i.i.i70.i.i
  %.08.i.i.i71.i.i = phi ptr [ %i.fl, %.lr.ph.i.i.i70.i.i ], [ %i.fj, %.sink.split.i.i.i.i.i.i ] ; 4 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i71.i.i, align 8, !tbaa !58, !noalias !287
  %.sroa.4.0..0.sroa_idx.i.i.i72.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i71.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i72.i.i, align 8, !tbaa !84, !noalias !287
  %.sroa.5.0..0.sroa_idx.i.i.i73.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i71.i.i, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i73.i.i, align 8, !tbaa !13, !noalias !287
  %i.fl = getelementptr inbounds nuw i8, ptr %.08.i.i.i71.i.i, i64 48 ; 2 uses
  %.not.i.i.i74.i.i = icmp eq ptr %i.fl, %i.fk
  br i1 %.not.i.i.i74.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i, label %.lr.ph.i.i.i70.i.i, !llvm.loop !187
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !59
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !59
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !60

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
  %i.ac = icmp eq i64 %i.c, 1
  br i1 %i.ac, label %bb.m, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ad = load i8, ptr %2, align 1, !tbaa !59
  store i8 %i.ad, ptr %1, align 1, !tbaa !59
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ae = icmp eq i64 %i.l, 1
  %i.af = getelementptr inbounds i8, ptr %2, i64 %i.l ; 3 uses
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = sub i64 %i.a, %i.ag                     ; 3 uses
  %i.ai = icmp sgt i64 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.o, !prof !60

bb.n:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr align 1 %i.af, i64 %i.ah, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEElEvRT_T0_St26random_access_iterator_tag.exit
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.p, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.ak = load i8, ptr %i.af, align 1, !tbaa !59
  store i8 %i.ak, ptr %i.g, align 1, !tbaa !59
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit: ; preds = %bb.n, %bb.o, %bb.p
  %i.al = sub nuw i64 %i.c, %i.l
  %i.am = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al ; 3 uses
  store ptr %i.an, ptr %i.f, align 8, !tbaa !151
  %i.ao = icmp sgt i64 %i.l, 1
  br i1 %i.ao, label %bb.q, label %bb.r, !prof !60

bb.q:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %1, i64 %i.l, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.r:                                             ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit
  br i1 %i.ae, label %bb.s, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

bb.s:                                             ; preds = %bb.r
  %i.ap = load i8, ptr %1, align 1, !tbaa !59
  store i8 %i.ap, ptr %i.an, align 1, !tbaa !59
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43: ; preds = %bb.q, %bb.r, %bb.s
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !151
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.l
  store ptr %i.ar, ptr %i.f, align 8, !tbaa !151
  %i.as = icmp sgt i64 %i.l, 1
  br i1 %i.as, label %bb.t, label %bb.u, !prof !60

bb.t:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %i.l, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.u:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit43
  %i.at = icmp eq i64 %i.l, 1
  br i1 %i.at, label %bb.v, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.v:                                             ; preds = %bb.u
  %i.au = load i8, ptr %2, align 1, !tbaa !59
  store i8 %i.au, ptr %1, align 1, !tbaa !59
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

bb.w:                                             ; preds = %bb.b
  %i.av = load ptr, ptr %0, align 8, !tbaa !113   ; 5 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.ax = sub i64 %i.i, %i.aw                     ; 4 uses
  %i.ay = sub i64 9223372036854775807, %i.ax
  %i.az = icmp ult i64 %i.ay, %i.c
  br i1 %i.az, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.x:                                             ; preds = %bb.w
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #17
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.w
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.ax, i64 %i.c)
  %i.ba = add i64 %.sroa.speculated.i, %i.ax      ; 2 uses
  %i.bb = icmp ult i64 %i.ba, %i.ax
  %i.bc = tail call i64 @llvm.umin.i64(i64 %i.ba, i64 9223372036854775807)
  %i.bd = select i1 %i.bb, i64 9223372036854775807, i64 %i.bc ; 3 uses
  %.not.i = icmp eq i64 %i.bd, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit, label %bb.y

bb.y:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.be = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bd) #16
  br label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit:  ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.y
  %i.bf = phi ptr [ %i.be, %bb.y ], [ null, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.bg = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.bh = sub i64 %i.bg, %i.aw                    ; 4 uses
  %i.bi = icmp sgt i64 %i.bh, 1
  br i1 %i.bi, label %bb.z, label %bb.aa, !prof !60

bb.z:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bf, ptr align 1 %i.av, i64 %i.bh, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.aa:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit
  %i.bj = icmp eq i64 %i.bh, 1
  br i1 %i.bj, label %bb.ab, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bk = load i8, ptr %i.av, align 1, !tbaa !59
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !59
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.z, %bb.aa, %bb.ab
  %i.bl = getelementptr inbounds i8, ptr %i.bf, i64 %i.bh ; 3 uses
  %i.bm = icmp sgt i64 %i.c, 1
  br i1 %i.bm, label %bb.ac, label %bb.ad, !prof !60

bb.ac:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bl, ptr align 1 %2, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

bb.ad:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.bn = icmp eq i64 %i.c, 1
  br i1 %i.bn, label %bb.ae, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

bb.ae:                                            ; preds = %bb.ad
  %i.bo = load i8, ptr %2, align 1, !tbaa !59
  store i8 %i.bo, ptr %i.bl, align 1, !tbaa !59
  br label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45: ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.bp = getelementptr inbounds i8, ptr %i.bl, i64 %i.c ; 3 uses
  %i.bq = sub i64 %i.i, %i.bg                     ; 4 uses
  %i.br = icmp sgt i64 %i.bq, 1
  br i1 %i.br, label %bb.af, label %bb.ag, !prof !60

bb.af:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bp, ptr align 1 %1, i64 %i.bq, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ag:                                            ; preds = %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES2_hET0_T_S8_S7_RSaIT1_E.exit45
  %i.bs = icmp eq i64 %i.bq, 1
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1, !tbaa !59
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !59
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i47 = icmp eq ptr %i.av, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %i.bv = load ptr, ptr %i.d, align 8, !tbaa !73
  %i.bw = ptrtoint ptr %i.bv to i64
  %i.bx = sub i64 %i.bw, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bx) #18
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bf, ptr %0, align 8, !tbaa !113
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !151
  %i.by = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.by, ptr %i.d, align 8, !tbaa !73
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!7, !8}
!llvm.ident = !{!9}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !68}
!1 = distinct !{!1, !68}
!2 = distinct !{!2, !68}
!3 = distinct !{!3, !68}
!4 = distinct !{!4, !68}
!5 = distinct !{!5, !68}
!6 = distinct !{!6, !68}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"omnipotent char", !10, i64 0}
!12 = !{!"int", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"any pointer", !11, i64 0}
!15 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !14, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIN6hermes16StringTableEntryESaIS1_EE", !18, i64 0}
!20 = !{!"p1 omnipotent char", !14, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIhSaIhEE", !23, i64 0}
!25 = !{!"bool", !11, i64 0}
!26 = !{!"_ZTSN6hermes3hbc24ConsecutiveStringStorageE", !19, i64 0, !24, i64 24, !25, i64 48, !25, i64 49}
!27 = !{!26, !25, i64 48}
!28 = !{!26, !25, i64 49}
!29 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!30 = !{!"any p2 pointer", !14, i64 0}
!31 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !30, i64 0}
!32 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E", !29, i64 0, !29, i64 8, !29, i64 16, !31, i64 24}
!33 = !{!32, !29, i64 0}
!34 = !{!32, !29, i64 16}
!35 = !{!32, !31, i64 24}
!36 = !{!"p2 _ZTSSt6vectorIDsSaIDsEE", !30, i64 0}
!37 = !{!"long", !11, i64 0}
!38 = !{!"p1 _ZTSSt6vectorIDsSaIDsEE", !14, i64 0}
!39 = !{!"_ZTSSt15_Deque_iteratorISt6vectorIDsSaIDsEERS2_PS2_E", !38, i64 0, !38, i64 8, !38, i64 16, !36, i64 24}
!40 = !{!"_ZTSNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_Deque_impl_dataE", !36, i64 0, !37, i64 8, !39, i64 16, !39, i64 48}
!41 = !{!40, !37, i64 8}
!42 = !{!40, !36, i64 0}
!43 = !{!38, !38, i64 0}
!44 = !{!39, !36, i64 24}
!45 = !{!39, !38, i64 8}
!46 = !{!39, !38, i64 16}
!47 = !{!40, !38, i64 16}
!48 = !{!40, !38, i64 48}
!49 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !20, i64 0}
!50 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !49, i64 0, !37, i64 8, !11, i64 16}
!51 = !{!50, !20, i64 0}
!52 = !{!50, !37, i64 8}
!53 = !{!"_ZTSN4llvh8ArrayRefIhEE", !20, i64 0, !37, i64 8}
!54 = !{!53, !20, i64 0}
!55 = !{!53, !37, i64 8}
!56 = !{!40, !38, i64 64}
!57 = !{!39, !38, i64 0}
!58 = !{!20, !20, i64 0}
!59 = !{!11, !11, i64 0}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!"p1 char16_t", !14, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE17_Vector_impl_dataE", !61, i64 0, !61, i64 8, !61, i64 16}
!63 = !{!62, !61, i64 8}
!64 = !{!62, !61, i64 16}
!65 = !{!"char16_t", !11, i64 0}
!66 = !{!65, !65, i64 0}
!67 = !{!62, !61, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!29, !29, i64 0}
!70 = !{!16, !15, i64 0}
!71 = !{!16, !15, i64 16}
!72 = !{!15, !15, i64 0}
!73 = !{!21, !20, i64 16}
!74 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !14, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 0}
!77 = !{!75, !74, i64 8}
!78 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIjEE", !14, i64 0}
!79 = !{!"_ZTSN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEEE", !78, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!80 = !{!79, !12, i64 16}
!81 = !{!79, !78, i64 0}
!82 = !{!79, !12, i64 8}
!83 = !{!79, !12, i64 12}
!84 = !{!37, !37, i64 0}
!85 = !{!"llvm.loop.unroll.disable"}
!86 = !{!"branch_weights", i32 1999, i32 1}
!87 = !{!"branch_weights", i32 1, i32 0}
!88 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE12HashedSuffixE", !53, i64 0, !12, i64 16}
!89 = !{!88, !12, i64 16}
!90 = !{!"branch_weights", i32 2146410443, i32 1073205}
!91 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!92 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EEEE", !14, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"p2 _ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !30, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE17_Vector_impl_dataE", !94, i64 0, !94, i64 8, !94, i64 16}
!97 = !{!96, !94, i64 16}
!98 = !{!74, !74, i64 0}
!99 = !{i64 0, i64 8, !58, i64 8, i64 8, !84}
!100 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryEEE", !14, i64 0}
!101 = !{!"_ZTSN4llvh8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_EENS7_12DenseSetPairIS6_EEEE", !100, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!102 = !{!"_ZTSN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_EE", !101, i64 0}
!103 = !{!"_ZTSN4llvh8DenseSetIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_12DenseMapInfoIS6_EEEE", !102, i64 0}
!104 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !12, i64 0, !53, i64 8, !37, i64 24, !74, i64 32, !37, i64 40, !74, i64 48, !74, i64 56, !37, i64 64, !103, i64 72}
!105 = !{!104, !74, i64 32}
!106 = !{!104, !12, i64 0}
!107 = !{!104, !37, i64 40}
!108 = !{!104, !74, i64 56}
!109 = !{!104, !74, i64 48}
!110 = !{!101, !100, i64 0}
!111 = !{!101, !12, i64 16}
!112 = !{!104, !37, i64 64}
!113 = !{!21, !20, i64 0}
!114 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !14, i64 0}
!115 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!116 = !{!115, !114, i64 0}
!117 = !{!115, !114, i64 8}
!118 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairImEE", !14, i64 0}
!119 = !{!"_ZTSN4llvh8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEEEE", !118, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!120 = !{!119, !12, i64 16}
!121 = !{!119, !118, i64 0}
!122 = !{!119, !12, i64 8}
!123 = !{!119, !12, i64 12}
!124 = !{!61, !61, i64 0}
!125 = !{!"_ZTSN4llvh8ArrayRefIDsEE", !61, i64 0, !37, i64 8}
!126 = !{!125, !37, i64 8}
!127 = !{!125, !61, i64 0}
!128 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixE", !125, i64 0, !12, i64 16}
!129 = !{!128, !12, i64 16}
!130 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EEEE", !14, i64 0}
!131 = !{!130, !130, i64 0}
!132 = !{!"p2 _ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !30, i64 0}
!133 = !{!132, !132, i64 0}
!134 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!135 = !{!134, !132, i64 16}
!136 = !{!114, !114, i64 0}
!137 = !{i64 0, i64 8, !124, i64 8, i64 8, !84}
!138 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEE", !14, i64 0}
!139 = !{!"_ZTSN4llvh8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_EENS7_12DenseSetPairIS6_EEEE", !138, i64 0, !12, i64 8, !12, i64 12, !12, i64 16}
!140 = !{!"_ZTSN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_EE", !139, i64 0}
!141 = !{!"_ZTSN4llvh8DenseSetIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_12DenseMapInfoIS6_EEEE", !140, i64 0}
!142 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !12, i64 0, !125, i64 8, !37, i64 24, !114, i64 32, !37, i64 40, !114, i64 48, !114, i64 56, !37, i64 64, !141, i64 72}
!143 = !{!142, !114, i64 32}
!144 = !{!142, !12, i64 0}
!145 = !{!142, !37, i64 40}
!146 = !{!142, !114, i64 56}
!147 = !{!142, !114, i64 48}
!148 = !{!139, !138, i64 0}
!149 = !{!139, !12, i64 16}
!150 = !{!142, !37, i64 64}
!151 = !{!21, !20, i64 8}
!152 = !{!104, !37, i64 24}
!153 = !{!142, !37, i64 24}
!154 = !{!"llvm.loop.isvectorized", i32 1}
!155 = !{!"llvm.loop.unroll.runtime.disable"}
!156 = !{!16, !15, i64 8}
!157 = !{!115, !114, i64 16}
!158 = !{!75, !74, i64 16}
!159 = !{!40, !36, i64 40}
!160 = !{!40, !36, i64 72}
!161 = !{!"_ZTSN6hermes16StringTableEntryE", !12, i64 0, !12, i64 4}
!162 = !{!161, !12, i64 4}
!163 = !{!161, !12, i64 0}
!164 = !{!78, !78, i64 0}
!165 = !{!118, !118, i64 0}
!166 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!167 = !{!"_ZTSN4llvh5Twine8NodeKindE", !11, i64 0}
!168 = !{!"_ZTSN4llvh5TwineE", !11, i64 0, !11, i64 8, !167, i64 16, !167, i64 17}
!169 = !{!168, !167, i64 17}
end_hunk_1
