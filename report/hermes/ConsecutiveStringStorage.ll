inline.NumInlined: 2626
inline.NumDeleted: 1307
begin_hunk_0_@_ZN6hermes3hbc24ConsecutiveStringStorageC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_PSA_ESt17integral_constantIbLb0EEEET_SG_T0_b:bb.a
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cm ; 2 uses
  store ptr %i.cs, ptr %i.as, align 8, !tbaa !60
  br label %_ZNSt20back_insert_iteratorISt6vectorIDsSaIDsEEEaSEODs.exit25.i

_ZNSt20back_insert_iteratorISt6vectorIDsSaIDsEEEaSEODs.exit25.i: ; preds = %_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i24.i, %bb.p
  %i.ct = phi ptr [ %i.cb, %bb.p ], [ %i.cs, %_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i24.i ] ; 2 uses
  %i.cu = phi ptr [ %i.cc, %bb.p ], [ %i.cr, %_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i24.i ] ; 3 uses
  %i.cv = trunc i32 %.0.i.i.i to i16
  %i.cw = and i16 %i.cv, 1023
  %i.cx = or disjoint i16 %i.cw, -9216            ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cu, %i.ct
  br i1 %.not.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIDsSaIDsEEEaSEODs.exit25.i
  store i16 %i.cx, ptr %i.cu, align 2, !tbaa !61
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 2
  store ptr %i.cy, ptr %i.ar, align 8, !tbaa !57
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEEvRT_j.exit.i

bb.v:                                             ; preds = %_ZNSt20back_insert_iteratorISt6vectorIDsSaIDsEEEaSEODs.exit25.i
  %i.cz = load ptr, ptr %i.aq, align 8, !tbaa !63 ; 4 uses
  %i.da = ptrtoint ptr %i.ct to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775806
  br i1 %i.dd, label %bb.w, label %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18
  unreachable

_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.v
  %i.de = ashr exact i64 %i.dc, 1                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 4611686018427387903)
  %i.di = select i1 %i.dg, i64 4611686018427387903, i64 %i.dh ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %i.dj = shl nuw nsw i64 %i.di, 1
  %i.dk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #17 ; 4 uses
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store i16 %i.cx, ptr %i.dl, align 2, !tbaa !61
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.x, label %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit16.i.i.i.i.i

bb.x:                                             ; preds = %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dk, ptr align 2 %i.cz, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.x, %_ZNKSt6vectorIDsSaIDsEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 2
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dc) #19
  br label %_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.y, %_ZNSt6vectorIDsSaIDsEE11_S_relocateEPDsS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %i.dk, ptr %i.aq, align 8, !tbaa !63
  store ptr %i.dn, ptr %i.ar, align 8, !tbaa !57
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.do, ptr %i.as, align 8, !tbaa !60
  br label %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEEvRT_j.exit.i

_ZN6hermes11encodeUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEEvRT_j.exit.i: ; preds = %_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i.i, %bb.u, %_ZNSt6vectorIDsSaIDsEE17_M_realloc_insertIJDsEEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EEDpOT_.exit.i.i.i.i.i, %bb.j
  %i.dp = load ptr, ptr %i.a, align 8, !tbaa !54  ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.ab
  br i1 %i.dq, label %.lr.ph.i.i, label %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEET_S6_PKcS8_.exit.i, !llvm.loop !64

_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEET_S6_PKcS8_.exit.i: ; preds = %_ZN6hermes11encodeUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEEvRT_j.exit.i, %_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE4backEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val16.i = load ptr, ptr %i.aq, align 8
  %i.dr = getelementptr i8, ptr %i.ap, i64 -16
  %.val17.i = load ptr, ptr %i.dr, align 8
  call fastcc void @_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE12emplace_backIJRjRS_IDsSaIDsEEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i32 %.043.i, ptr %.val16.i, ptr %.val17.i)
  br label %bb.z

bb.z:                                             ; preds = %_ZN6hermes32convertUTF8WithSurrogatesToUTF16ISt20back_insert_iteratorISt6vectorIDsSaIDsEEEEET_S6_PKcS8_.exit.i, %bb.b
  %i.ds = add i32 %.043.i, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.026.041.i, i64 32 ; 2 uses
  %i.du = icmp eq ptr %i.dt, %.sroa.10.040.i
  br i1 %i.du, label %bb.aa, label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.dv = getelementptr inbounds nuw i8, ptr %.sroa.13.042.i, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !66 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 512
  br label %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i

_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i: ; preds = %bb.aa, %bb.z
  %.sroa.10.1.i = phi ptr [ %i.dx, %bb.aa ], [ %.sroa.10.040.i, %bb.z ]
  %.sroa.026.1.i = phi ptr [ %i.dw, %bb.aa ], [ %i.dt, %bb.z ] ; 2 uses
  %.sroa.13.1.i = phi ptr [ %i.dv, %bb.aa ], [ %.sroa.13.042.i, %bb.z ]
  %.not.i = icmp eq ptr %.sroa.026.1.i, %i.j
  br i1 %.not.i, label %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit, label %.lr.ph.i, !llvm.loop !67

_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit: ; preds = %_ZNSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_EppEv.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb(ptr noundef nonnull align 8 dereferenceable(128) %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %3)
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !54
  %i.ea = load ptr, ptr %5, align 8, !tbaa !54    ; 4 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !54
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !54  ; 2 uses
  %i.ee = ptrtoint ptr %i.dz to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %i.eh = getelementptr inbounds i8, ptr %i.ed, i64 %i.eg
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.eh, ptr %i.ea, ptr %i.ec)
  %i.ei = load ptr, ptr %6, align 8, !tbaa !63    ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !57
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ei to i64               ; 2 uses
  %i.en = sub i64 %i.el, %i.em
  %i.eo = ashr exact i64 %i.en, 1
  %i.ep = call fastcc noundef i64 @_ZN12_GLOBAL__N_118StringTableBuilder16appendU16StorageEN4llvh8ArrayRefIDsEEPSt6vectorIhSaIhEE(ptr %i.ei, i64 %i.eo, ptr noundef %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  call fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder19generateStringTableEN4llvh8ArrayRefIhEEm(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 noundef %i.ep)
  %i.eq = load ptr, ptr %0, align 8, !tbaa !68    ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !69
  %i.et = load <2 x ptr>, ptr %7, align 16, !tbaa !70
  store <2 x ptr> %i.et, ptr %0, align 8, !tbaa !70
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ev = load ptr, ptr %i.eu, align 16, !tbaa !69
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !69
  %.not.i.i.i.i.i6 = icmp eq ptr %i.eq, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i.i6, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit: ; preds = %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit
  %i.ew = ptrtoint ptr %i.es to i64
  %i.ex = ptrtoint ptr %i.eq to i64
  %i.ey = sub i64 %i.ew, %i.ex
  call void @_ZdlPvm(ptr noundef nonnull %i.eq, i64 noundef %i.ey) #19
  %.pr = load ptr, ptr %7, align 16, !tbaa !68    ; 3 uses
  %.not.i.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit
  %i.ez = load ptr, ptr %i.eu, align 16, !tbaa !69
  %i.fa = ptrtoint ptr %i.ez to i64
  %i.fb = ptrtoint ptr %.pr to i64
  %i.fc = sub i64 %i.fa, %i.fb
  call void @_ZdlPvm(ptr noundef nonnull %.pr, i64 noundef %i.fc) #19
  br label %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit

_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit: ; preds = %_ZN12_GLOBAL__N_118StringTableBuilderC2ISt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS8_PS9_ESt17integral_constantIbLb0EEEET_SF_T0_.exit, %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EEaSEOS3_.exit, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  %.not.i.i.i9 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIDsSaIDsEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit
  %i.fd = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !60
  %i.ff = ptrtoint ptr %i.fe to i64
  %i.fg = sub i64 %i.ff, %i.em
  call void @_ZdlPvm(ptr noundef nonnull %i.ei, i64 noundef %i.fg) #19
  br label %_ZNSt6vectorIDsSaIDsEED2Ev.exit

_ZNSt6vectorIDsSaIDsEED2Ev.exit:                  ; preds = %_ZNSt6vectorIN6hermes16StringTableEntryESaIS1_EED2Ev.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  %.not.i.i.i10 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit
  %i.fh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !71
  %i.fj = ptrtoint ptr %i.fi to i64
  %i.fk = ptrtoint ptr %i.ea to i64
  %i.fl = sub i64 %i.fj, %i.fk
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.fl) #19
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIDsSaIDsEED2Ev.exit, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call fastcc void @_ZN12_GLOBAL__N_118StringTableBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(128) %0, ptr noundef nonnull captures(none) %1, ptr noundef nonnull captures(none) %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
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
  br i1 %3, label %bb.b, label %bb.gg

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #16
  %.val7 = load ptr, ptr %i.g, align 8, !tbaa !72 ; 6 uses
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !75 ; 6 uses
  %i.i = ptrtoint ptr %.val8 to i64
  %i.j = ptrtoint ptr %.val7 to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = sdiv exact i64 %i.k, 96                  ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #16, !noalias !76
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
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
  store i32 %i.ae, ptr %i.af, align 8, !tbaa !82, !alias.scope !79, !noalias !76
  %i.ag = zext i32 %i.ae to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2                ; 2 uses
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #20, !noalias !85 ; 2 uses
  store ptr %i.ai, ptr %13, align 8, !tbaa !86, !alias.scope !79, !noalias !76
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i32 0, ptr %i.aj, align 8, !tbaa !87, !alias.scope !79, !noalias !76
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 12
  store i32 0, ptr %i.ak, align 4, !tbaa !88, !alias.scope !79, !noalias !76
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ai, i8 -1, i64 %i.ah, i1 false), !tbaa !3, !noalias !85
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, i8 0, i64 20, i1 false), !alias.scope !79, !noalias !76
  br label %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i

_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i: ; preds = %bb.c, %.lr.ph.preheader.i.i.i.i.i.i.i
  %.not16.i.i = icmp eq ptr %.val8, %.val7
  br i1 %.not16.i.i, label %_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i, label %.lr.ph.i.i

_ZSt8_DestroyIPN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEEvT_S5_.exit.i.thread.i: ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i
  tail call void @_ZdlPv(ptr noundef null) #16, !noalias !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %14, i8 0, i64 24, i1 false), !alias.scope !76
  br label %_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE.exit

.lr.ph.i.i:                                       ; preds = %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i, %bb.e
  %.017.i.i = phi ptr [ %i.az, %bb.e ], [ %.val7, %_ZN4llvh8DenseSetIjNS_12DenseMapInfoIjEEECI2NS_6detail12DenseSetImplIjNS_8DenseMapIjNS4_13DenseSetEmptyES2_NS4_12DenseSetPairIjEEEES2_EEEj.exit.i.i ] ; 3 uses
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %.sroa.412.0.copyload.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !tbaa !92, !noalias !85
  %i.al = icmp ugt i64 %.sroa.412.0.copyload.i.i, 2
  br i1 %i.al, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 8
  %.sroa.011.0.copyload.i.i = load ptr, ptr %i.am, align 8, !tbaa !54, !noalias !85 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16, !noalias !85
  %i.an = load i8, ptr %.sroa.011.0.copyload.i.i, align 1, !tbaa !55, !noalias !76
  %i.ao = zext i8 %i.an to i32
  %i.ap = shl nuw nsw i32 %i.ao, 16
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i, i64 1
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !55, !noalias !76
  %i.as = zext i8 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 8
  %i.au = or disjoint i32 %i.at, %i.ap
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.0.copyload.i.i, i64 2
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !55, !noalias !76
  %i.ax = zext i8 %i.aw to i32
  %i.ay = or disjoint i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.f, align 4, !tbaa !3, !noalias !85
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #16, !noalias !93
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #16, !noalias !93
  call void @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbEOjDpOT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.52") align 8 %12, ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %11), !noalias !96
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #16, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #16, !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #16, !noalias !85
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 96 ; 2 uses
  %.not.i.i = icmp eq ptr %i.az, %.val8
  br i1 %.not.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i, label %.lr.ph.i.i

_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i: ; preds = %bb.e
  %.tr.i.i = trunc i64 %i.l to i32                ; 2 uses
  %.mask.i.i = and i32 %.tr.i.i, 536870911
  %i.ba = icmp eq i32 %.mask.i.i, 0
  br i1 %i.ba, label %.lr.ph179.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE.exit.i
  %i.bb = shl i32 %.tr.i.i, 5
  %i.bc = udiv i32 %i.bb, 3
  %i.bd = add nuw nsw i32 %i.bc, 1
  %i.be = zext nneg i32 %i.bd to i64              ; 2 uses
  %i.bf = lshr i64 %i.be, 1
  %i.bg = or i64 %i.bf, %i.be                     ; 2 uses
  %i.bh = lshr i64 %i.bg, 2
  %i.bi = or i64 %i.bh, %i.bg                     ; 2 uses
  %i.bj = lshr i64 %i.bi, 4
  %i.bk = or i64 %i.bj, %i.bi                     ; 2 uses
  %i.bl = lshr i64 %i.bk, 8
  %i.bm = or i64 %i.bl, %i.bk                     ; 2 uses
  %i.bn = lshr i64 %i.bm, 16
  %i.bo = or i64 %i.bn, %i.bm                     ; 2 uses
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nuw i32 %i.bp, 1                    ; 3 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 48               ; 2 uses
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #20, !noalias !89 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  %i.bv = and i64 %i.bo, 4294967295
  %xtraiter = and i64 %i.br, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %bb.f, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.bw, %.lr.ph.i.i.i.i.i.prol ], [ %i.bt, %bb.f ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %bb.f ]
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i.prol, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.prol, align 8, !tbaa !3, !noalias !89
  %i.bw = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 48 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !97

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %bb.f
  %.08.i.i.i.i.i.unr = phi ptr [ %i.bt, %bb.f ], [ %i.bw, %.lr.ph.i.i.i.i.i.prol ]
  %i.bx = icmp samesign ult i64 %i.bv, 7
  br i1 %i.bx, label %.lr.ph179.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 25 uses
  store ptr inttoptr (i64 -1 to ptr), ptr %.08.i.i.i.i.i, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 8
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 16
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i, align 8, !tbaa !3, !noalias !89
  %i.by = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 48
  store ptr inttoptr (i64 -1 to ptr), ptr %i.by, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 56
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.1, align 8, !tbaa !3, !noalias !89
  %i.bz = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 96
  store ptr inttoptr (i64 -1 to ptr), ptr %i.bz, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 104
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 112
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.2, align 8, !tbaa !3, !noalias !89
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 144
  store ptr inttoptr (i64 -1 to ptr), ptr %i.ca, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 152
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 160
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.3, align 8, !tbaa !3, !noalias !89
  %i.cb = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 192
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cb, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 200
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 208
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.4, align 8, !tbaa !3, !noalias !89
  %i.cc = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 240
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cc, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 248
  store i64 0, ptr %.sroa.4.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !92, !noalias !89
  %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 256
  store i32 0, ptr %.sroa.5.0..0.sroa_idx.i.i.i.i.i.5, align 8, !tbaa !3, !noalias !89
  %i.cd = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 288
  store ptr inttoptr (i64 -1 to ptr), ptr %i.cd, align 8, !tbaa !54, !noalias !89
  %.sroa.4.0..0.sroa_idx.i.i.i.i.i.6 = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 296
end_hunk_0
begin_hunk_1_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  %.034.i.i.i.i.i = phi ptr [ %i.hj, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i ], [ %.sroa.092.1.ph162.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E9initEmptyEv.exit.i.i.i.i.i ] ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i.i, i64 16
  %i.gz = load i32, ptr %i.gy, align 8, !tbaa !107, !noalias !89
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %bb.v, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i6.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.v, %.lr.ph.i6.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16, !noalias !89
  call fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr nonnull %i.fu, i32 %.sroa.speculated.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.034.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  %i.hb = load ptr, ptr %i.d, align 8, !tbaa !117, !noalias !89 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hb, ptr noundef nonnull align 8 dereferenceable(20) %.034.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !121, !noalias !89
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  %i.hd = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i.i, i64 24 ; 2 uses
  %i.he = load <2 x ptr>, ptr %i.hd, align 8, !tbaa !122, !noalias !89
  store <2 x ptr> %i.he, ptr %i.hc, align 8, !tbaa !122, !noalias !89
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hb, i64 40
  %i.hg = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i.i, i64 40
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !124, !noalias !89
  store ptr %i.hh, ptr %i.hf, align 8, !tbaa !124, !noalias !89
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hd, i8 0, i64 24, i1 false), !noalias !89
  %i.hi = add i32 %.sroa.12.5.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16, !noalias !89
  br label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i, %bb.v
  %.sroa.12.6.i.i = phi i32 [ %.sroa.12.5.i.i, %bb.v ], [ %i.hi, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.034.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i8.i.i.i.i = icmp eq ptr %i.hj, %i.gx
  br i1 %.not.i8.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i, label %.lr.ph.i6.i.i.i.i, !llvm.loop !126

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E9initEmptyEv.exit.i.i.i.i.i
  %.sroa.12.7.i.i = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E9initEmptyEv.exit.i.i.i.i.i ], [ %.sroa.12.6.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.092.1.ph162.i.i) #16, !noalias !89
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i: ; preds = %.lr.ph.i.i.i70.i.i.prol.loopexit, %.lr.ph.i.i.i70.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i
  %.sroa.12.8.i.i = phi i32 [ %.sroa.12.7.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i70.i.i ], [ 0, %.lr.ph.i.i.i70.i.i.prol.loopexit ]
  call fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr nonnull %i.fu, i32 %.sroa.speculated.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(20) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  %.pre.i.i.i.i.i = load ptr, ptr %i.e, align 8, !tbaa !117, !noalias !89
  br label %bb.w

bb.w:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i, %bb.u
  %.sroa.29.4.i.i = phi i32 [ %.sroa.29.1.ph156.i.i, %bb.u ], [ %.sroa.speculated.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ]
  %.sroa.23.4.i.i = phi i32 [ %.sroa.23.1.ph158.i.i, %bb.u ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ] ; 2 uses
  %.sroa.092.4.i.i = phi ptr [ %.sroa.092.1.ph162.i.i, %bb.u ], [ %i.fu, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ]
  %i.hk = phi ptr [ %.0.i118.i.i, %bb.u ], [ %.pre.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ] ; 5 uses
  %.val.i.i.i.i.i.i.i = phi i32 [ %.sroa.12.1.ph160.i.i, %bb.u ], [ %.sroa.12.8.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ]
  %i.hl = add i32 %.val.i.i.i.i.i.i.i, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hk, i64 16
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !107, !noalias !89
  %i.ho = icmp eq i32 %i.hn, 0
  br i1 %i.ho, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.hk, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.hp = add i32 %.sroa.23.4.i.i, -1
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.y, %bb.x
  %.sroa.23.5.i.i = phi i32 [ %.sroa.23.4.i.i, %bb.x ], [ %i.hp, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.hk, ptr noundef nonnull readonly align 8 dereferenceable(20) %10, i64 20, i1 false), !tbaa.struct !121, !noalias !89
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hk, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hq, i8 0, i64 24, i1 false), !noalias !89
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i
  %.sroa.29.5.i.i = phi i32 [ %.sroa.29.1.ph156.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i ], [ %.sroa.29.4.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.23.6.i.i = phi i32 [ %.sroa.23.1.ph158.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i ], [ %.sroa.23.5.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.4.i.i = phi i32 [ %.sroa.12.1.ph160.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i ], [ %i.hl, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.092.5.i.i = phi ptr [ %.sroa.092.1.ph162.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i ], [ %.sroa.092.4.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i = phi ptr [ %storemerge.i.i.ph.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread119.i.i ], [ %i.hk, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32 ; 3 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !127, !noalias !89 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 40 ; 2 uses
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !124, !noalias !89
  %.not.i.i.i.i = icmp eq ptr %i.ht, %i.hv
  br i1 %.not.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i
  store ptr %.0176.i.i, ptr %i.ht, align 8, !tbaa !128, !noalias !89
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  store ptr %i.hw, ptr %i.hs, align 8, !tbaa !127, !noalias !89
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i

bb.aa:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i
  %.val.i.i.i.i.i = load ptr, ptr %i.hr, align 8, !tbaa !129, !noalias !89 ; 5 uses
  %i.hx = ptrtoint ptr %i.ht to i64
  %i.hy = ptrtoint ptr %.val.i.i.i.i.i to i64
  %i.hz = sub i64 %i.hx, %i.hy                    ; 6 uses
  %i.ia = icmp eq i64 %i.hz, 9223372036854775800
  br i1 %i.ia, label %bb.ab, label %_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18, !noalias !89
  unreachable

_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.aa
  %i.ib = ashr exact i64 %i.hz, 3                 ; 3 uses
  %i.ic = icmp eq ptr %i.ht, %.val.i.i.i.i.i
  %.sroa.speculated.i.i.i.i.i.i = select i1 %i.ic, i64 1, i64 %i.ib
  %i.id = add nsw i64 %.sroa.speculated.i.i.i.i.i.i, %i.ib ; 2 uses
  %i.ie = icmp ult i64 %i.id, %i.ib
  %i.if = call i64 @llvm.umin.i64(i64 %i.id, i64 1152921504606846975)
  %i.ig = select i1 %i.ie, i64 1152921504606846975, i64 %i.if ; 3 uses
  %.not.i.i.i.i53.i.i = icmp ne i64 %i.ig, 0
  call void @llvm.assume(i1 %.not.i.i.i.i53.i.i)
  %i.ih = shl nuw nsw i64 %i.ig, 3
  %i.ii = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ih) #17, !noalias !89 ; 4 uses
  %i.ij = getelementptr inbounds i8, ptr %i.ii, i64 %i.hz ; 2 uses
  store ptr %.0176.i.i, ptr %i.ij, align 8, !tbaa !128, !noalias !89
  %i.ik = icmp sgt i64 %i.hz, 0
  br i1 %i.ik, label %bb.ac, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i

bb.ac:                                            ; preds = %_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ii, ptr align 8 %.val.i.i.i.i.i, i64 %i.hz, i1 false), !noalias !89
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i: ; preds = %bb.ac, %_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  %.not.i21.i.i.i.i.i = icmp eq ptr %.val.i.i.i.i.i, null
  br i1 %.not.i21.i.i.i.i.i, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.hz) #19, !noalias !89
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ad, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i
  store ptr %i.ii, ptr %i.hr, align 8, !tbaa !129, !noalias !89
  store ptr %i.il, ptr %i.hs, align 8, !tbaa !127, !noalias !89
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ii, i64 %i.ig
  store ptr %i.im, ptr %i.hu, align 8, !tbaa !124, !noalias !89
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #16, !noalias !89
  %.not36145.i.i = icmp eq i64 %i.cu, 0
  br i1 %.not36145.i.i, label %.loopexit.i.i, label %.lr.ph.i17.i, !llvm.loop !106

.loopexit.i.i:                                    ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i, %bb.h, %bb.g
  %.sroa.29.2.i.i = phi i32 [ %.sroa.29.0172.i.i, %bb.g ], [ %.sroa.29.1.ph156.i.i, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ], [ %.sroa.29.0172.i.i, %bb.h ], [ %.sroa.29.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ] ; 5 uses
  %.sroa.23.2.i.i = phi i32 [ %.sroa.23.0173.i.i, %bb.g ], [ %.sroa.23.1.ph158.i.i, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ], [ %.sroa.23.0173.i.i, %bb.h ], [ %.sroa.23.6.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ]
  %.sroa.12.2.i.i = phi i32 [ %.sroa.12.0174.i.i, %bb.g ], [ %.sroa.12.1.ph160.i.i, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ], [ %.sroa.12.0174.i.i, %bb.h ], [ %.sroa.12.4.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ] ; 3 uses
  %.sroa.092.2.i.i = phi ptr [ %.sroa.092.0175.i.i, %bb.g ], [ %.sroa.092.1.ph162.i.i, %_ZNK4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E5countERKj.exit.i.i ], [ %.sroa.092.0175.i.i, %bb.h ], [ %.sroa.092.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ] ; 8 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.0176.i.i, i64 96 ; 2 uses
  %.not.i18.i = icmp eq ptr %i.in, %.val8
  br i1 %.not.i18.i, label %._crit_edge.i.i, label %bb.g

bb.ae:                                            ; preds = %._crit_edge.i.i
  %i.io = zext i32 %.sroa.12.2.i.i to i64         ; 2 uses
  %i.ip = mul nuw nsw i64 %i.io, 40
  %i.iq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ip) #17, !noalias !89 ; 5 uses
  %i.ir = getelementptr inbounds nuw [40 x i8], ptr %i.iq, i64 %i.io ; 2 uses
  %i.is = zext i32 %.sroa.29.2.i.i to i64         ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.is, 48
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.092.2.i.i, i64 %.idx.i.i.i ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq i32 %.sroa.29.2.i.i, 0
  br i1 %.not18.i.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i, label %.lr.ph.i.i.i.i55.i.i

.lr.ph.i.i.i.i55.i.i:                             ; preds = %bb.ae, %.critedge2.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i = phi ptr [ %i.ix, %.critedge2.i.i.i.i.i.i ], [ %.sroa.092.2.i.i, %bb.ae ] ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 16
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !107, !noalias !89
  %i.iw = icmp eq i32 %i.iv, 0
  br i1 %i.iw, label %bb.af, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i

bb.af:                                            ; preds = %.lr.ph.i.i.i.i55.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i56.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i57.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i56.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.i.i.i.i58.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i57.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i58.i.i, label %.critedge2.i.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i

.critedge2.i.i.i.i.i.i:                           ; preds = %bb.af
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i.i.i59.i.i = icmp eq ptr %i.ix, %i.it
  br i1 %.not.i.i.i.i59.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i, label %.lr.ph.i.i.i.i55.i.i, !llvm.loop !130

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i: ; preds = %.critedge2.i.i.i.i.i.i, %bb.af, %.lr.ph.i.i.i.i55.i.i, %bb.ae
  %.pn9.i.i.i = phi ptr [ %.sroa.092.2.i.i, %bb.ae ], [ %.sroa.0.0.i.i.i.i, %bb.af ], [ %i.it, %.critedge2.i.i.i.i.i.i ], [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i55.i.i ] ; 2 uses
  %i.iy = getelementptr inbounds nuw [48 x i8], ptr %.sroa.092.2.i.i, i64 %i.is ; 2 uses
  %.not12.i.i.i.i.i.i.i = icmp eq ptr %.pn9.i.i.i, %i.iy
  br i1 %.not12.i.i.i.i.i.i.i, label %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i
  %.sroa.17.0.i = phi ptr [ %.sroa.17.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %i.ir, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 5 uses
  %.sroa.11.0.i = phi ptr [ %.sroa.11.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %i.iq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 6 uses
  %.sroa.074.0.i = phi ptr [ %.sroa.074.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %i.iq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 5 uses
  %.sroa.011.013.i.i.i.i.i.i.i = phi ptr [ %.sroa.011.2.i.i.i.i.i.i.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %.pn9.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !131, !noalias !89
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !129, !noalias !89 ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !127, !noalias !89 ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 40
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !124, !noalias !89 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.iz, i8 0, i64 24, i1 false), !noalias !89
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.0.i, %.sroa.17.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !89
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 16
  store ptr %i.ja, ptr %i.jf, align 8, !tbaa !129, !noalias !89
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 24
  store ptr %i.jc, ptr %i.jg, align 8, !tbaa !127, !noalias !89
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i, i64 32
  store ptr %i.je, ptr %i.jh, align 8, !tbaa !124, !noalias !89
  br label %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ji = ptrtoint ptr %.sroa.17.0.i to i64
  %i.jj = ptrtoint ptr %.sroa.074.0.i to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 4 uses
  %i.jl = icmp eq i64 %i.jk, 9223372036854775800
  br i1 %i.jl, label %bb.ai, label %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18, !noalias !89
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah
  %i.jm = sdiv exact i64 %i.jk, 40                ; 3 uses
  %i.jn = icmp eq ptr %.sroa.17.0.i, %.sroa.074.0.i ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.jn, i64 1, i64 %i.jm
  %i.jo = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i, %i.jm ; 2 uses
  %i.jp = icmp ult i64 %i.jo, %i.jm
  %i.jq = call i64 @llvm.umin.i64(i64 %i.jo, i64 230584300921369395)
  %i.jr = select i1 %i.jp, i64 230584300921369395, i64 %i.jq ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %i.jr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i)
  %i.js = mul nuw nsw i64 %i.jr, 40
  %i.jt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.js) #17, !noalias !89 ; 5 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jk ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ju, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !131, !noalias !89
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  store ptr %i.ja, ptr %i.jv, align 8, !tbaa !129, !noalias !89
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  store ptr %i.jc, ptr %i.jw, align 8, !tbaa !127, !noalias !89
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  store ptr %i.je, ptr %i.jx, align 8, !tbaa !124, !noalias !89
  br i1 %i.jn, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.kf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.jt, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.ke, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.074.0.i, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  call void @llvm.experimental.noalias.scope.decl(metadata !135)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !131, !alias.scope !137, !noalias !89
  %i.jy = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ka = load <2 x ptr>, ptr %i.jz, align 8, !tbaa !122, !alias.scope !135, !noalias !138
  store <2 x ptr> %i.ka, ptr %i.jy, align 8, !tbaa !122, !alias.scope !132, !noalias !139
  %i.kb = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.kc = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 32
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !124, !alias.scope !135, !noalias !138
  store ptr %i.kd, ptr %i.kb, align 8, !tbaa !124, !alias.scope !132, !noalias !139
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jz, i8 0, i64 24, i1 false), !alias.scope !135, !noalias !138
  %i.ke = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ke, %.sroa.17.0.i
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !140

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.jt, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.kf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0.i, i64 noundef %i.jk) #19, !noalias !89
  %i.kg = getelementptr inbounds nuw [40 x i8], ptr %i.jt, i64 %i.jr
  br label %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.ag
  %.sroa.17.1.i = phi ptr [ %i.kg, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.17.0.i, %bb.ag ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0.i, %bb.ag ]
  %.sroa.074.1.i = phi ptr [ %i.jt, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.074.0.i, %bb.ag ] ; 2 uses
  %.sroa.11.1.i = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i)
  %i.kh = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i, i64 48 ; 3 uses
  %.not18.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.kh, %i.it
  br i1 %.not18.i.i.i.i.i.i.i.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i, %.critedge2.i.i.i.i.i.i.i.i.i
  %.sroa.011.1.i.i.i.i.i.i.i = phi ptr [ %i.kl, %.critedge2.i.i.i.i.i.i.i.i.i ], [ %i.kh, %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i, i64 16
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !107, !noalias !89
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.aj, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

bb.aj:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.i.i5.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i5.i.i.i.i.i.i.i, label %.critedge2.i.i.i.i.i.i.i.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

.critedge2.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.aj
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i, i64 48 ; 3 uses
  %.not.i.i.i.i.i.i.i60.i.i = icmp eq ptr %i.kl, %i.it
  br i1 %.not.i.i.i.i.i.i.i60.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !130

_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge2.i.i.i.i.i.i.i.i.i, %bb.aj, %.lr.ph.i.i.i.i.i.i.i.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i = phi ptr [ %i.kh, %_ZN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ], [ %i.kl, %.critedge2.i.i.i.i.i.i.i.i.i ], [ %.sroa.011.1.i.i.i.i.i.i.i, %bb.aj ], [ %.sroa.011.1.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.011.2.i.i.i.i.i.i.i, %i.iy
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !141

_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i: ; preds = %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i
  %.sroa.17.2.i = phi ptr [ %i.ir, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.17.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ]
  %.sroa.11.2.i = phi ptr [ %i.iq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.11.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.074.2.i = phi ptr [ %i.iq, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.074.1.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.km = ptrtoint ptr %.sroa.11.2.i to i64
  %i.kn = ptrtoint ptr %.sroa.074.2.i to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.074.2.i, i64 %i.ko
  call fastcc void @_ZN12_GLOBAL__N_112StringPackerIhE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef nonnull %.sroa.074.2.i, ptr noundef nonnull %i.kp, i64 noundef 0), !noalias !89
  %i.kq = ptrtoint ptr %.sroa.17.2.i to i64
  br label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, %._crit_edge.i.i
  %.sroa.17.3.i = phi i64 [ %i.kq, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ 0, %._crit_edge.i.i ]
  %.sroa.11.3.i = phi ptr [ %.sroa.11.2.i, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i ] ; 3 uses
  %.sroa.074.3.i = phi ptr [ %.sroa.074.2.i, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i ] ; 7 uses
  %i.kr = icmp eq i32 %.sroa.29.2.i.i, 0
  br i1 %i.kr, label %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %._crit_edge.thread.i.i
  %i.ks = zext i32 %.sroa.29.2.i.i to i64
  %.idx.i.i.i.i = mul nuw nsw i64 %i.ks, 48
  %i.kt = getelementptr inbounds nuw i8, ptr %.sroa.092.2.i.i, i64 %.idx.i.i.i.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.lc, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i ], [ %.sroa.092.2.i.i, %.lr.ph.preheader.i.i.i.i ] ; 5 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 16
  %i.kv = load i32, ptr %i.ku, align 8, !tbaa !107, !noalias !89
  %i.kw = icmp eq i32 %i.kv, 0
  br i1 %i.kw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph.i.i.i.i
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !92, !noalias !89
  %.not.i.i.i.i.i62.i.i = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i62.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.al

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i.i.i.i
  %i.kx = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %.val11.i.i.i.i = load ptr, ptr %i.kx, align 8, !tbaa !129, !noalias !89 ; 3 uses
  %.not.i.i.i24.i.i.i.i = icmp eq ptr %.val11.i.i.i.i, null
  br i1 %.not.i.i.i24.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ky = getelementptr i8, ptr %.06.i.i.i.i, i64 40
  %.val12.i.i.i.i = load ptr, ptr %i.ky, align 8, !tbaa !124, !noalias !89
  %i.kz = ptrtoint ptr %.val12.i.i.i.i to i64
  %i.la = ptrtoint ptr %.val11.i.i.i.i to i64
  %i.lb = sub i64 %i.kz, %i.la
  call void @_ZdlPvm(ptr noundef nonnull %.val11.i.i.i.i, i64 noundef %i.lb) #19, !noalias !89
  br label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i: ; preds = %bb.am, %bb.al, %bb.ak
  %i.lc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 48 ; 2 uses
  %.not.i.i61.i.i = icmp eq ptr %i.lc, %i.kt
  br i1 %.not.i.i61.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !142

_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %._crit_edge.thread.i.i
  call void @_ZdlPv(ptr noundef %.sroa.092.2.i.i) #16, !noalias !89
  %i.ld = ptrtoint ptr %.sroa.074.3.i to i64      ; 2 uses
  %i.le = ptrtoint ptr %.sroa.11.3.i to i64
  %i.lf = sub i64 %i.le, %i.ld
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.074.3.i, i64 %i.lf
  br label %bb.an

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i
  %.sroa.073.0.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.sroa.073.2.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.sroa.9.2.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.14.0.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.sroa.14.2.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val66.i31.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.val66.i32.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val63.i25.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.val63.i26.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val62.i20.i.i = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %.val62.i21.i.i, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.015.i.i = phi ptr [ %.val7, %_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE.exit.i ], [ %i.qe, %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 8 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 8
  %.sroa.096.0.copyload.i.i.i = load ptr, ptr %i.lh, align 8, !tbaa !54, !noalias !143
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 16
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !92, !noalias !143 ; 3 uses
  %.not113.i.i.i = icmp eq i64 %.sroa.4.0.copyload.i.i.i, 0
  br i1 %.not113.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %.lr.ph112.i.i.i

.lr.ph112.i.i.i:                                  ; preds = %bb.an
  %i.li = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 32 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.015.i.i, i64 40
  br label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, %.lr.ph112.i.i.i
  %.sroa.073.1.i = phi ptr [ %.sroa.073.0.i, %.lr.ph112.i.i.i ], [ %.sroa.073.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.sroa.9.1.i = phi ptr [ %.sroa.9.0.i, %.lr.ph112.i.i.i ], [ %.sroa.9.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 9 uses
  %.sroa.14.1.i = phi ptr [ %.sroa.14.0.i, %.lr.ph112.i.i.i ], [ %.sroa.14.3.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.val66.i30.i.i = phi ptr [ %.val66.i31.i.i, %.lr.ph112.i.i.i ], [ %.val66.i34.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 10 uses
  %.val63.i.i.i = phi ptr [ %.val63.i25.i.i, %.lr.ph112.i.i.i ], [ %.val63.i28.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 16 uses
  %.val62.i.i.i = phi ptr [ %.val62.i20.i.i, %.lr.ph112.i.i.i ], [ %.val62.i23.i.i, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.0110.i.i.i = phi ptr [ %.sroa.074.3.i, %.lr.ph112.i.i.i ], [ %i.me, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 2 uses
  %.047109.i.i.i = phi ptr [ %i.lg, %.lr.ph112.i.i.i ], [ %i.ms, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ]
  %.049108.i.i.i = phi i64 [ 0, %.lr.ph112.i.i.i ], [ %i.mu, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 7 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %.sroa.096.0.copyload.i.i.i, i64 %.049108.i.i.i
  %i.ll = load i8, ptr %i.lk, align 1, !tbaa !55, !noalias !143 ; 2 uses
  %i.lm = ptrtoint ptr %.047109.i.i.i to i64      ; 2 uses
  %i.ln = ptrtoint ptr %.0110.i.i.i to i64
  %i.lo = sub i64 %i.lm, %i.ln                    ; 2 uses
  %i.lp = icmp sgt i64 %i.lo, 0
  br i1 %i.lp, label %.lr.ph.i.i.i23.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i.i.i23.i:                                 ; preds = %bb.ao
  %i.lq = udiv exact i64 %i.lo, 40
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i.i.i23.i
  %.018.i.i.i.i = phi ptr [ %.0110.i.i.i, %.lr.ph.i.i.i23.i ], [ %i.me, %bb.aq ] ; 2 uses
  %.01017.i.i.i.i = phi i64 [ %i.lq, %.lr.ph.i.i.i23.i ], [ %i.md, %bb.aq ] ; 3 uses
  %i.lr = lshr i64 %.01017.i.i.i.i, 1             ; 4 uses
  %i.ls = getelementptr inbounds nuw [40 x i8], ptr %.018.i.i.i.i, i64 %i.lr ; 4 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 8
  %.val14.i.i.i.i = load i64, ptr %i.lt, align 8, !tbaa !100, !noalias !143
  %.not.i.i.i.i.i24.i = icmp ult i64 %.049108.i.i.i, %.val14.i.i.i.i
  br i1 %.not.i.i.i.i.i24.i, label %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, label %.thread.i.i.i.i

.thread.i.i.i.i:                                  ; preds = %bb.ap
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.lv = xor i64 %i.lr, -1
  %i.lw = add nsw i64 %.01017.i.i.i.i, %i.lv
  br label %bb.aq

_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i: ; preds = %bb.ap
  %.val13.i.i.i.i = load ptr, ptr %i.ls, align 8, !noalias !143
  %i.lx = getelementptr inbounds nuw i8, ptr %.val13.i.i.i.i, i64 %.049108.i.i.i
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !55, !noalias !143
  %i.lz = icmp ult i8 %i.ly, %i.ll
  %cond.fr.i.i.i.i = freeze i1 %i.lz              ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ls, i64 40
  %i.mb = xor i64 %i.lr, -1
  %i.mc = add nsw i64 %.01017.i.i.i.i, %i.mb
  %spec.select.i.i.i = select i1 %cond.fr.i.i.i.i, i64 %i.mc, i64 %i.lr
  %spec.select98.i.i.i = select i1 %cond.fr.i.i.i.i, ptr %i.ma, ptr %.018.i.i.i.i
  br label %bb.aq

bb.aq:                                            ; preds = %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, %.thread.i.i.i.i
  %i.md = phi i64 [ %spec.select.i.i.i, %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.lw, %.thread.i.i.i.i ] ; 2 uses
  %i.me = phi ptr [ %spec.select98.i.i.i, %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.lu, %.thread.i.i.i.i ] ; 10 uses
  %i.mf = icmp sgt i64 %i.md, 0
  br i1 %i.mf, label %bb.ap, label %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i, !llvm.loop !146

_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i: ; preds = %bb.aq
  %.pre.i.i.i = ptrtoint ptr %i.me to i64
  %.pre116.i.i.i = sub i64 %i.lm, %.pre.i.i.i     ; 2 uses
  %i.mg = icmp sgt i64 %.pre116.i.i.i, 0
  br i1 %i.mg, label %.lr.ph.i73.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i73.i.i.i:                                 ; preds = %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i
  %i.mh = udiv exact i64 %.pre116.i.i.i, 40
  br label %bb.ar

bb.ar:                                            ; preds = %.thread.i80.i.i.i, %.lr.ph.i73.i.i.i
  %.018.i74.i.i.i = phi ptr [ %i.me, %.lr.ph.i73.i.i.i ], [ %i.ms, %.thread.i80.i.i.i ] ; 3 uses
  %.01017.i75.i.i.i = phi i64 [ %i.mh, %.lr.ph.i73.i.i.i ], [ %i.mr, %.thread.i80.i.i.i ] ; 2 uses
  %i.mi = lshr i64 %.01017.i75.i.i.i, 1           ; 4 uses
  %i.mj = getelementptr inbounds nuw [40 x i8], ptr %.018.i74.i.i.i, i64 %i.mi ; 3 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 8
  %.val14.i78.i.i.i = load i64, ptr %i.mk, align 8, !tbaa !100, !noalias !143
  %.not.i.i.i79.i.i.i = icmp ult i64 %.049108.i.i.i, %.val14.i78.i.i.i
  br i1 %.not.i.i.i79.i.i.i, label %_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i, label %.thread.i80.i.i.i

_ZZN12_GLOBAL__N_112StringPackerIhE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i: ; preds = %bb.ar
  %.val13.i81.i.i.i = load ptr, ptr %i.mj, align 8, !noalias !143
  %i.ml = getelementptr inbounds nuw i8, ptr %.val13.i81.i.i.i, i64 %.049108.i.i.i
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !55, !noalias !143
  %i.mn = icmp eq i8 %i.mm, %i.ll
  %cond.fr.i82.i.i.i = freeze i1 %i.mn            ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  %i.mp = xor i64 %i.mi, -1
  %i.mq = add nsw i64 %.01017.i75.i.i.i, %i.mp
  %spec.select99.i.i.i = select i1 %cond.fr.i82.i.i.i, i64 %i.mq, i64 %i.mi
end_hunk_1
begin_hunk_2_@_ZN12_GLOBAL__N_118StringTableBuilder15packIntoStorageEPSt6vectorIhSaIhEEPS1_IDsSaIDsEEb:bb.a
  %.035.i.i.i.i.i = phi ptr [ %i.agl, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i ], [ %.sroa.094.1.ph164.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E9initEmptyEv.exit.i.i.i.i.i ] ; 7 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 16
  %i.agb = load i32, ptr %i.aga, align 8, !tbaa !242, !noalias !227
  %i.agc = icmp eq i32 %i.agb, 0
  br i1 %i.agc, label %bb.dk, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i

bb.dk:                                            ; preds = %.lr.ph.i6.i.i.i.i67
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i386 = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i387 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i386, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.i.i.i.i.i388 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i387, 0
  br i1 %.not.i.i.i.i.i.i.i.i388, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.dk, %.lr.ph.i6.i.i.i.i67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16, !noalias !227
  call fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr nonnull %i.aew, i32 %.sroa.speculated.i.i.i.i59, ptr noundef nonnull align 8 dereferenceable(20) %.035.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.agd = load ptr, ptr %i.a, align 8, !tbaa !250, !noalias !227 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.agd, ptr noundef nonnull align 8 dereferenceable(20) %.035.i.i.i.i.i, i64 20, i1 false), !tbaa.struct !254, !noalias !227
  %i.age = getelementptr inbounds nuw i8, ptr %i.agd, i64 24
  %i.agf = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 24 ; 2 uses
  %i.agg = load <2 x ptr>, ptr %i.agf, align 8, !tbaa !255, !noalias !227
  store <2 x ptr> %i.agg, ptr %i.age, align 8, !tbaa !255, !noalias !227
  %i.agh = getelementptr inbounds nuw i8, ptr %i.agd, i64 40
  %i.agi = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 40
  %i.agj = load ptr, ptr %i.agi, align 8, !tbaa !257, !noalias !227
  store ptr %i.agj, ptr %i.agh, align 8, !tbaa !257, !noalias !227
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.agf, i8 0, i64 24, i1 false), !noalias !227
  %i.agk = add i32 %.sroa.12.5.i.i68, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16, !noalias !227
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i, %bb.dk
  %.sroa.12.6.i.i69 = phi i32 [ %.sroa.12.5.i.i68, %bb.dk ], [ %i.agk, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EED2Ev.exit.i.i.i.i.i ] ; 2 uses
  %i.agl = getelementptr inbounds nuw i8, ptr %.035.i.i.i.i.i, i64 48 ; 2 uses
  %.not.i8.i.i.i.i70 = icmp eq ptr %i.agl, %i.afz
  br i1 %.not.i8.i.i.i.i70, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i, label %.lr.ph.i6.i.i.i.i67, !llvm.loop !259

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E9initEmptyEv.exit.i.i.i.i.i
  %.sroa.12.7.i.i71 = phi i32 [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E9initEmptyEv.exit.i.i.i.i.i ], [ %.sroa.12.6.i.i69, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i.i ]
  call void @_ZdlPv(ptr noundef nonnull %.sroa.094.1.ph164.i.i) #16, !noalias !227
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i: ; preds = %.lr.ph.i.i.i70.i.i389.prol.loopexit, %.lr.ph.i.i.i70.i.i389, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i
  %.sroa.12.8.i.i72 = phi i32 [ %.sroa.12.7.i.i71, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E18moveFromOldBucketsEPSD_SG_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i70.i.i389 ], [ 0, %.lr.ph.i.i.i70.i.i389.prol.loopexit ]
  call fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr nonnull %i.aew, i32 %.sroa.speculated.i.i.i.i59, ptr noundef nonnull readonly align 8 dereferenceable(20) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.pre.i.i.i.i.i73 = load ptr, ptr %i.b, align 8, !tbaa !250, !noalias !227
  br label %bb.dl

bb.dl:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i, %bb.dj
  %.sroa.29.4.i.i74 = phi i32 [ %.sroa.29.1.ph158.i.i, %bb.dj ], [ %.sroa.speculated.i.i.i.i59, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ]
  %.sroa.23.4.i.i75 = phi i32 [ %.sroa.23.1.ph160.i.i, %bb.dj ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ] ; 2 uses
  %.sroa.094.4.i.i = phi ptr [ %.sroa.094.1.ph164.i.i, %bb.dj ], [ %i.aew, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ]
  %i.agm = phi ptr [ %.0.i120.i.i, %bb.dj ], [ %.pre.i.i.i.i.i73, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ] ; 5 uses
  %.val.i.i.i.i.i.i.i76 = phi i32 [ %.sroa.12.1.ph162.i.i, %bb.dj ], [ %.sroa.12.8.i.i72, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E4growEj.exit.i.i ]
  %i.agn = add i32 %.val.i.i.i.i.i.i.i76, 1
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agm, i64 16
  %i.agp = load i32, ptr %i.ago, align 8, !tbaa !242, !noalias !227
  %i.agq = icmp eq i32 %i.agp, 0
  br i1 %i.agq, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i383 = getelementptr inbounds nuw i8, ptr %i.agm, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i384 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i383, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.i.i.i.i.i.i385 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i384, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i385, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i, label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.agr = add i32 %.sroa.23.4.i.i75, -1
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i: ; preds = %bb.dn, %bb.dm
  %.sroa.23.5.i.i77 = phi i32 [ %.sroa.23.4.i.i75, %bb.dm ], [ %i.agr, %bb.dn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !227
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.agm, ptr noundef nonnull readonly align 8 dereferenceable(20) %5, i64 20, i1 false), !tbaa.struct !254, !noalias !227
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agm, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ags, i8 0, i64 24, i1 false), !noalias !227
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i: ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i
  %.sroa.29.5.i.i78 = phi i32 [ %.sroa.29.1.ph158.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i ], [ %.sroa.29.4.i.i74, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.23.6.i.i79 = phi i32 [ %.sroa.23.1.ph160.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i ], [ %.sroa.23.5.i.i77, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.12.4.i.i80 = phi i32 [ %.sroa.12.1.ph162.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i ], [ %i.agn, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.sroa.094.5.i.i = phi ptr [ %.sroa.094.1.ph164.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i ], [ %.sroa.094.4.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 2 uses
  %.0.i.i.i.i81 = phi ptr [ %storemerge.i.i.ph.i.i403, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_.exit.thread121.i.i ], [ %i.agm, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E16InsertIntoBucketIS5_JEEEPSD_SH_OT_DpOT0_.exit.i.i.i.i ] ; 3 uses
  %i.agt = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i81, i64 24 ; 2 uses
  %i.agu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i81, i64 32 ; 3 uses
  %i.agv = load ptr, ptr %i.agu, align 8, !tbaa !260, !noalias !227 ; 5 uses
  %i.agw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i81, i64 40 ; 2 uses
  %i.agx = load ptr, ptr %i.agw, align 8, !tbaa !257, !noalias !227
  %.not.i.i.i.i82 = icmp eq ptr %i.agv, %i.agx
  br i1 %.not.i.i.i.i82, label %bb.dp, label %bb.do

bb.do:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i
  store ptr %.0178.i.i, ptr %i.agv, align 8, !tbaa !261, !noalias !227
  %i.agy = getelementptr inbounds nuw i8, ptr %i.agv, i64 8
  store ptr %i.agy, ptr %i.agu, align 8, !tbaa !260, !noalias !227
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i

bb.dp:                                            ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_EixEOS5_.exit.i.i
  %.val.i.i.i.i.i379 = load ptr, ptr %i.agt, align 8, !tbaa !262, !noalias !227 ; 5 uses
  %i.agz = ptrtoint ptr %i.agv to i64
  %i.aha = ptrtoint ptr %.val.i.i.i.i.i379 to i64
  %i.ahb = sub i64 %i.agz, %i.aha                 ; 6 uses
  %i.ahc = icmp eq i64 %i.ahb, 9223372036854775800
  br i1 %i.ahc, label %bb.dq, label %_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.dq:                                            ; preds = %bb.dp
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18, !noalias !227
  unreachable

_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.dp
  %i.ahd = ashr exact i64 %i.ahb, 3               ; 3 uses
  %i.ahe = icmp eq ptr %i.agv, %.val.i.i.i.i.i379
  %.sroa.speculated.i.i.i.i.i.i380 = select i1 %i.ahe, i64 1, i64 %i.ahd
  %i.ahf = add nsw i64 %.sroa.speculated.i.i.i.i.i.i380, %i.ahd ; 2 uses
  %i.ahg = icmp ult i64 %i.ahf, %i.ahd
  %i.ahh = call i64 @llvm.umin.i64(i64 %i.ahf, i64 1152921504606846975)
  %i.ahi = select i1 %i.ahg, i64 1152921504606846975, i64 %i.ahh ; 3 uses
  %.not.i.i.i.i53.i.i381 = icmp ne i64 %i.ahi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i53.i.i381)
  %i.ahj = shl nuw nsw i64 %i.ahi, 3
  %i.ahk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahj) #17, !noalias !227 ; 4 uses
  %i.ahl = getelementptr inbounds i8, ptr %i.ahk, i64 %i.ahb ; 2 uses
  store ptr %.0178.i.i, ptr %i.ahl, align 8, !tbaa !261, !noalias !227
  %i.ahm = icmp sgt i64 %i.ahb, 0
  br i1 %i.ahm, label %bb.dr, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i

bb.dr:                                            ; preds = %_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ahk, ptr align 8 %.val.i.i.i.i.i379, i64 %i.ahb, i1 false), !noalias !227
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i: ; preds = %bb.dr, %_ZNKSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  %.not.i21.i.i.i.i.i382 = icmp eq ptr %.val.i.i.i.i.i379, null
  br i1 %.not.i21.i.i.i.i.i382, label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, label %bb.ds

bb.ds:                                            ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i.i379, i64 noundef %i.ahb) #19, !noalias !227
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ds, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit20.i.i.i.i.i
  store ptr %i.ahk, ptr %i.agt, align 8, !tbaa !262, !noalias !227
  store ptr %i.ahn, ptr %i.agu, align 8, !tbaa !260, !noalias !227
  %i.aho = getelementptr inbounds nuw [8 x i8], ptr %i.ahk, i64 %i.ahi
  store ptr %i.aho, ptr %i.agw, align 8, !tbaa !257, !noalias !227
  br label %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i

_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i: ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i.i.i, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16, !noalias !227
  %.not36147.i.i = icmp eq i64 %i.abu, 0
  br i1 %.not36147.i.i, label %.loopexit.i.i83, label %.lr.ph.i17.i33, !llvm.loop !241

.loopexit.i.i83:                                  ; preds = %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i, %bb.cw, %bb.cv
  %.sroa.29.2.i.i84 = phi i32 [ %.sroa.29.0174.i.i, %bb.cv ], [ %.sroa.29.1.ph158.i.i, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ], [ %.sroa.29.0174.i.i, %bb.cw ], [ %.sroa.29.5.i.i78, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ] ; 5 uses
  %.sroa.23.2.i.i85 = phi i32 [ %.sroa.23.0175.i.i, %bb.cv ], [ %.sroa.23.1.ph160.i.i, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ], [ %.sroa.23.0175.i.i, %bb.cw ], [ %.sroa.23.6.i.i79, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ]
  %.sroa.12.2.i.i86 = phi i32 [ %.sroa.12.0176.i.i, %bb.cv ], [ %.sroa.12.1.ph162.i.i, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ], [ %.sroa.12.0176.i.i, %bb.cw ], [ %.sroa.12.4.i.i80, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ] ; 3 uses
  %.sroa.094.2.i.i = phi ptr [ %.sroa.094.0177.i.i, %bb.cv ], [ %.sroa.094.1.ph164.i.i, %_ZNK4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E5countERKm.exit.i.i ], [ %.sroa.094.0177.i.i, %bb.cw ], [ %.sroa.094.5.i.i, %_ZNSt6vectorIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE9push_backEOS4_.exit.i.i ] ; 8 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr %.0178.i.i, i64 96 ; 2 uses
  %.not.i18.i87 = icmp eq ptr %i.ahp, %.val12
  br i1 %.not.i18.i87, label %._crit_edge.i.i88, label %bb.cv

bb.dt:                                            ; preds = %._crit_edge.i.i88
  %i.ahq = zext i32 %.sroa.12.2.i.i86 to i64      ; 2 uses
  %i.ahr = mul nuw nsw i64 %i.ahq, 40
  %i.ahs = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ahr) #17, !noalias !227 ; 5 uses
  %i.aht = getelementptr inbounds nuw [40 x i8], ptr %i.ahs, i64 %i.ahq ; 2 uses
  %i.ahu = zext i32 %.sroa.29.2.i.i84 to i64      ; 2 uses
  %.idx.i.i.i89 = mul nuw nsw i64 %i.ahu, 48
  %i.ahv = getelementptr inbounds nuw i8, ptr %.sroa.094.2.i.i, i64 %.idx.i.i.i89 ; 4 uses
  %.not19.i.i.i.i.i.i = icmp eq i32 %.sroa.29.2.i.i84, 0
  br i1 %.not19.i.i.i.i.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i, label %.lr.ph.i.i.i.i55.i.i90

.lr.ph.i.i.i.i55.i.i90:                           ; preds = %bb.dt, %.critedge2.i.i.i.i.i.i377
  %.sroa.0.0.i.i.i.i91 = phi ptr [ %i.ahz, %.critedge2.i.i.i.i.i.i377 ], [ %.sroa.094.2.i.i, %bb.dt ] ; 5 uses
  %i.ahw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i91, i64 16
  %i.ahx = load i32, ptr %i.ahw, align 8, !tbaa !242, !noalias !227
  %i.ahy = icmp eq i32 %i.ahx, 0
  br i1 %i.ahy, label %bb.du, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i

bb.du:                                            ; preds = %.lr.ph.i.i.i.i55.i.i90
  %.sroa.22.0..sroa_idx.i.i.i.i.i56.i.i374 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i91, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i57.i.i375 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i56.i.i374, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.i.i.i.i58.i.i376 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i57.i.i375, 0
  br i1 %.not.i.i.i.i.i.i.i58.i.i376, label %.critedge2.i.i.i.i.i.i377, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i

.critedge2.i.i.i.i.i.i377:                        ; preds = %bb.du
  %i.ahz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i91, i64 48 ; 2 uses
  %.not.i.i.i.i59.i.i378 = icmp eq ptr %i.ahz, %i.ahv
  br i1 %.not.i.i.i.i59.i.i378, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i, label %.lr.ph.i.i.i.i55.i.i90, !llvm.loop !263

_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i: ; preds = %.critedge2.i.i.i.i.i.i377, %bb.du, %.lr.ph.i.i.i.i55.i.i90, %bb.dt
  %.pn9.i.i.i92 = phi ptr [ %.sroa.094.2.i.i, %bb.dt ], [ %.sroa.0.0.i.i.i.i91, %bb.du ], [ %i.ahv, %.critedge2.i.i.i.i.i.i377 ], [ %.sroa.0.0.i.i.i.i91, %.lr.ph.i.i.i.i55.i.i90 ] ; 2 uses
  %i.aia = getelementptr inbounds nuw [48 x i8], ptr %.sroa.094.2.i.i, i64 %i.ahu ; 2 uses
  %.not12.i.i.i.i.i.i.i93 = icmp eq ptr %.pn9.i.i.i92, %i.aia
  br i1 %.not12.i.i.i.i.i.i.i93, label %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i94

.lr.ph.i.i.i.i.i.i.i94:                           ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i
  %.sroa.17.0.i95 = phi ptr [ %.sroa.17.1.i100, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %i.aht, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 5 uses
  %.sroa.11.0.i96 = phi ptr [ %.sroa.11.1.i103, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %i.ahs, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 6 uses
  %.sroa.074.0.i97 = phi ptr [ %.sroa.074.1.i102, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %i.ahs, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 5 uses
  %.sroa.011.013.i.i.i.i.i.i.i98 = phi ptr [ %.sroa.011.2.i.i.i.i.i.i.i106, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ], [ %.pn9.i.i.i92, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i15)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i15, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i98, i64 16, i1 false), !tbaa.struct !264, !noalias !227
  %i.aib = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 24 ; 2 uses
  %i.aic = load ptr, ptr %i.aib, align 8, !tbaa !262, !noalias !227 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 32
  %i.aie = load ptr, ptr %i.aid, align 8, !tbaa !260, !noalias !227 ; 2 uses
  %i.aif = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 40
  %i.aig = load ptr, ptr %i.aif, align 8, !tbaa !257, !noalias !227 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aib, i8 0, i64 24, i1 false), !noalias !227
  %.not.i.i.i.i.i.i.i.i.i.i99 = icmp eq ptr %.sroa.11.0.i96, %.sroa.17.0.i95
  br i1 %.not.i.i.i.i.i.i.i.i.i.i99, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i94
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.0.i96, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.013.i.i.i.i.i.i.i98, i64 16, i1 false), !noalias !227
  %i.aih = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i96, i64 16
  store ptr %i.aic, ptr %i.aih, align 8, !tbaa !262, !noalias !227
  %i.aii = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i96, i64 24
  store ptr %i.aie, ptr %i.aii, align 8, !tbaa !260, !noalias !227
  %i.aij = getelementptr inbounds nuw i8, ptr %.sroa.11.0.i96, i64 32
  store ptr %i.aig, ptr %i.aij, align 8, !tbaa !257, !noalias !227
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

bb.dw:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i94
  %i.aik = ptrtoint ptr %.sroa.17.0.i95 to i64
  %i.ail = ptrtoint ptr %.sroa.074.0.i97 to i64
  %i.aim = sub i64 %i.aik, %i.ail                 ; 4 uses
  %i.ain = icmp eq i64 %i.aim, 9223372036854775800
  br i1 %i.ain, label %bb.dx, label %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i

bb.dx:                                            ; preds = %bb.dw
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #18, !noalias !227
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.dw
  %i.aio = sdiv exact i64 %i.aim, 40              ; 3 uses
  %i.aip = icmp eq ptr %.sroa.17.0.i95, %.sroa.074.0.i97 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i367 = select i1 %i.aip, i64 1, i64 %i.aio
  %i.aiq = add nsw i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i.i367, %i.aio ; 2 uses
  %i.air = icmp ult i64 %i.aiq, %i.aio
  %i.ais = call i64 @llvm.umin.i64(i64 %i.aiq, i64 230584300921369395)
  %i.ait = select i1 %i.air, i64 230584300921369395, i64 %i.ais ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i368 = icmp ne i64 %i.ait, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i368)
  %i.aiu = mul nuw nsw i64 %i.ait, 40
  %i.aiv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aiu) #17, !noalias !227 ; 5 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 %i.aim ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aiw, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i.i.i.i.i.i.i15, i64 16, i1 false), !tbaa.struct !264, !noalias !227
  %i.aix = getelementptr inbounds nuw i8, ptr %i.aiw, i64 16
  store ptr %i.aic, ptr %i.aix, align 8, !tbaa !262, !noalias !227
  %i.aiy = getelementptr inbounds nuw i8, ptr %i.aiw, i64 24
  store ptr %i.aie, ptr %i.aiy, align 8, !tbaa !260, !noalias !227
  %i.aiz = getelementptr inbounds nuw i8, ptr %i.aiw, i64 32
  store ptr %i.aig, ptr %i.aiz, align 8, !tbaa !257, !noalias !227
  br i1 %i.aip, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369:            ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369
  %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i370 = phi ptr [ %i.ajh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369 ], [ %i.aiv, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i371 = phi ptr [ %i.ajg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369 ], [ %.sroa.074.0.i97, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i370, ptr noundef nonnull align 8 dereferenceable(40) %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, i64 16, i1 false), !tbaa.struct !264, !alias.scope !270, !noalias !227
  %i.aja = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i370, i64 16
  %i.ajb = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, i64 16 ; 2 uses
  %i.ajc = load <2 x ptr>, ptr %i.ajb, align 8, !tbaa !255, !alias.scope !268, !noalias !271
  store <2 x ptr> %i.ajc, ptr %i.aja, align 8, !tbaa !255, !alias.scope !265, !noalias !272
  %i.ajd = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i370, i64 32
  %i.aje = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, i64 32
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !257, !alias.scope !268, !noalias !271
  store ptr %i.ajf, ptr %i.ajd, align 8, !tbaa !257, !alias.scope !265, !noalias !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ajb, i8 0, i64 24, i1 false), !alias.scope !268, !noalias !271
  %i.ajg = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i.i.i.i.i.i.i.i371, i64 40 ; 2 uses
  %i.ajh = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i.i.i.i.i.i.i.i370, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i372 = icmp eq ptr %i.ajg, %.sroa.17.0.i95
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i372, label %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369, !llvm.loop !273

_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i373 = phi ptr [ %i.aiv, %_ZNKSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ajh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i369 ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.074.0.i97, i64 noundef %i.aim) #19, !noalias !227
  %i.aji = getelementptr inbounds nuw [40 x i8], ptr %i.aiv, i64 %i.ait
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i, %bb.dv
  %.sroa.17.1.i100 = phi ptr [ %i.aji, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.17.0.i95, %bb.dv ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i101 = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.i373, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.11.0.i96, %bb.dv ]
  %.sroa.074.1.i102 = phi ptr [ %i.aiv, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.074.0.i97, %bb.dv ] ; 2 uses
  %.sroa.11.1.i103 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.i.i.i.i.i.pn.i101, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i.i.i.i.i15)
  %i.ajj = getelementptr inbounds nuw i8, ptr %.sroa.011.013.i.i.i.i.i.i.i98, i64 48 ; 3 uses
  %.not19.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ajj, %i.ahv
  br i1 %.not19.i.i.i.i.i.i.i.i.i, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i104

.lr.ph.i.i.i.i.i.i.i.i.i104:                      ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i, %.critedge2.i.i.i.i.i.i.i.i.i365
  %.sroa.011.1.i.i.i.i.i.i.i105 = phi ptr [ %i.ajn, %.critedge2.i.i.i.i.i.i.i.i.i365 ], [ %i.ajj, %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ] ; 5 uses
  %i.ajk = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i105, i64 16
  %i.ajl = load i32, ptr %i.ajk, align 8, !tbaa !242, !noalias !227
  %i.ajm = icmp eq i32 %i.ajl, 0
  br i1 %i.ajm, label %bb.dy, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

bb.dy:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i104
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i362 = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i105, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i363 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i.i.i.i.i362, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.i.i5.i.i.i.i.i.i.i364 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i.i.i.i.i.i363, 0
  br i1 %.not.i.i.i.i.i5.i.i.i.i.i.i.i364, label %.critedge2.i.i.i.i.i.i.i.i.i365, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i

.critedge2.i.i.i.i.i.i.i.i.i365:                  ; preds = %bb.dy
  %i.ajn = getelementptr inbounds nuw i8, ptr %.sroa.011.1.i.i.i.i.i.i.i105, i64 48 ; 3 uses
  %.not.i.i.i.i.i.i.i60.i.i366 = icmp eq ptr %i.ajn, %i.ahv
  br i1 %.not.i.i.i.i.i.i.i60.i.i366, label %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i104, !llvm.loop !263

_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i: ; preds = %.critedge2.i.i.i.i.i.i.i.i.i365, %bb.dy, %.lr.ph.i.i.i.i.i.i.i.i.i104, %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i
  %.sroa.011.2.i.i.i.i.i.i.i106 = phi ptr [ %i.ajj, %_ZN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryD2Ev.exit.i.i.i.i.i.i.i ], [ %i.ajn, %.critedge2.i.i.i.i.i.i.i.i.i365 ], [ %.sroa.011.1.i.i.i.i.i.i.i105, %bb.dy ], [ %.sroa.011.1.i.i.i.i.i.i.i105, %.lr.ph.i.i.i.i.i.i.i.i.i104 ] ; 2 uses
  %.not.i.i.i.i.i.i.i107 = icmp eq ptr %.sroa.011.2.i.i.i.i.i.i.i106, %i.aia
  br i1 %.not.i.i.i.i.i.i.i107, label %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, label %.lr.ph.i.i.i.i.i.i.i94, !llvm.loop !274

_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i: ; preds = %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i
  %.sroa.17.2.i108 = phi ptr [ %i.aht, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.17.1.i100, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ]
  %.sroa.11.2.i109 = phi ptr [ %i.ahs, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.11.1.i103, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.074.2.i110 = phi ptr [ %i.ahs, %_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E5beginEv.exit.i.i ], [ %.sroa.074.1.i102, %_ZN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS3_11StringEntryESaIS7_EES4_NS_6detail12DenseMapPairIS4_S9_EELb0EEppEv.exit.i.i.i.i.i.i.i ] ; 4 uses
  %i.ajo = ptrtoint ptr %.sroa.11.2.i109 to i64
  %i.ajp = ptrtoint ptr %.sroa.074.2.i110 to i64
  %i.ajq = sub i64 %i.ajo, %i.ajp
  %i.ajr = getelementptr inbounds nuw i8, ptr %.sroa.074.2.i110, i64 %i.ajq
  call fastcc void @_ZN12_GLOBAL__N_112StringPackerIDsE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef nonnull %.sroa.074.2.i110, ptr noundef nonnull %i.ajr, i64 noundef 0), !noalias !227
  %i.ajs = ptrtoint ptr %.sroa.17.2.i108 to i64
  br label %._crit_edge.thread.i.i111

._crit_edge.thread.i.i111:                        ; preds = %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i, %._crit_edge.i.i88
  %.sroa.17.3.i112 = phi i64 [ %i.ajs, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ 0, %._crit_edge.i.i88 ]
  %.sroa.11.3.i113 = phi ptr [ %.sroa.11.2.i109, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i88 ] ; 3 uses
  %.sroa.074.3.i114 = phi ptr [ %.sroa.074.2.i110, %_ZSt4moveIN4llvh16DenseMapIteratorIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS0_6detail12DenseMapPairIS5_SA_EELb0EEESt20back_insert_iteratorIS6_INS4_16SuffixArrayEntryESaISG_EEEET0_T_SL_SK_.exit.i.i ], [ null, %._crit_edge.i.i88 ] ; 7 uses
  %i.ajt = icmp eq i32 %.sroa.29.2.i.i84, 0
  br i1 %i.ajt, label %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i, label %.lr.ph.preheader.i.i.i.i115

.lr.ph.preheader.i.i.i.i115:                      ; preds = %._crit_edge.thread.i.i111
  %i.aju = zext i32 %.sroa.29.2.i.i84 to i64
  %.idx.i.i.i.i116 = mul nuw nsw i64 %i.aju, 48
  %i.ajv = getelementptr inbounds nuw i8, ptr %.sroa.094.2.i.i, i64 %.idx.i.i.i.i116
  br label %.lr.ph.i.i.i.i117

.lr.ph.i.i.i.i117:                                ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %.lr.ph.preheader.i.i.i.i115
  %.06.i.i.i.i118 = phi ptr [ %i.ake, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i ], [ %.sroa.094.2.i.i, %.lr.ph.preheader.i.i.i.i115 ] ; 5 uses
  %i.ajw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 16
  %i.ajx = load i32, ptr %i.ajw, align 8, !tbaa !242, !noalias !227
  %i.ajy = icmp eq i32 %i.ajx, 0
  br i1 %i.ajy, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %.lr.ph.i.i.i.i117
  %.sroa.22.0..sroa_idx.i.i.i.i.i359 = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i360 = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i359, align 8, !tbaa !92, !noalias !227
  %.not.i.i.i.i.i62.i.i361 = icmp eq i64 %.sroa.22.0.copyload.i.i.i.i.i360, 0
  br i1 %.not.i.i.i.i.i62.i.i361, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %.lr.ph.i.i.i.i117
  %i.ajz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 24
  %.val11.i.i.i.i119 = load ptr, ptr %i.ajz, align 8, !tbaa !262, !noalias !227 ; 3 uses
  %.not.i.i.i25.i.i.i.i = icmp eq ptr %.val11.i.i.i.i119, null
  br i1 %.not.i.i.i25.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.aka = getelementptr i8, ptr %.06.i.i.i.i118, i64 40
  %.val12.i.i.i.i120 = load ptr, ptr %i.aka, align 8, !tbaa !257, !noalias !227
  %i.akb = ptrtoint ptr %.val12.i.i.i.i120 to i64
  %i.akc = ptrtoint ptr %.val11.i.i.i.i119 to i64
  %i.akd = sub i64 %i.akb, %i.akc
  call void @_ZdlPvm(ptr noundef nonnull %.val11.i.i.i.i119, i64 noundef %i.akd) #19, !noalias !227
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i: ; preds = %bb.eb, %bb.ea, %bb.dz
  %i.ake = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i118, i64 48 ; 2 uses
  %.not.i.i61.i.i121 = icmp eq ptr %i.ake, %i.ajv
  br i1 %.not.i.i61.i.i121, label %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i, label %.lr.ph.i.i.i.i117, !llvm.loop !275

_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i.i.i.i, %._crit_edge.thread.i.i111
  call void @_ZdlPv(ptr noundef %.sroa.094.2.i.i) #16, !noalias !227
  %i.akf = ptrtoint ptr %.sroa.074.3.i114 to i64  ; 2 uses
  %i.akg = ptrtoint ptr %.sroa.11.3.i113 to i64
  %i.akh = sub i64 %i.akg, %i.akf
  %i.aki = getelementptr inbounds nuw i8, ptr %.sroa.074.3.i114, i64 %i.akh
  br label %bb.ec

bb.ec:                                            ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i
  %.sroa.073.0.i122 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.sroa.073.2.i143, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.9.0.i123 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.sroa.9.2.i144, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.sroa.14.0.i124 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.sroa.14.2.i145, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val66.i31.i.i125 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.val66.i32.i.i146, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val63.i25.i.i126 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.val63.i26.i.i147, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.val62.i20.i.i127 = phi ptr [ null, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %.val62.i21.i.i148, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 2 uses
  %.015.i.i128 = phi ptr [ %.val11, %_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE.exit.i ], [ %i.apg, %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i ] ; 8 uses
  %i.akj = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 8
  %.sroa.096.0.copyload.i.i.i129 = load ptr, ptr %i.akj, align 8, !tbaa !230, !noalias !276
  %.sroa.4.0..sroa_idx.i.i.i130 = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 16
  %.sroa.4.0.copyload.i.i.i131 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i130, align 8, !tbaa !92, !noalias !276 ; 3 uses
  %.not113.i.i.i132 = icmp eq i64 %.sroa.4.0.copyload.i.i.i131, 0
  br i1 %.not113.i.i.i132, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i, label %.lr.ph112.i.i.i133

.lr.ph112.i.i.i133:                               ; preds = %bb.ec
  %i.akk = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 32 ; 2 uses
  %i.akl = getelementptr inbounds nuw i8, ptr %.015.i.i128, i64 40
  br label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i, %.lr.ph112.i.i.i133
  %.sroa.073.1.i134 = phi ptr [ %.sroa.073.0.i122, %.lr.ph112.i.i.i133 ], [ %.sroa.073.3.i296, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.sroa.9.1.i135 = phi ptr [ %.sroa.9.0.i123, %.lr.ph112.i.i.i133 ], [ %.sroa.9.3.i297, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 9 uses
  %.sroa.14.1.i136 = phi ptr [ %.sroa.14.0.i124, %.lr.ph112.i.i.i133 ], [ %.sroa.14.3.i298, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.val66.i30.i.i137 = phi ptr [ %.val66.i31.i.i125, %.lr.ph112.i.i.i133 ], [ %.val66.i34.i.i299, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 10 uses
  %.val63.i.i.i138 = phi ptr [ %.val63.i25.i.i126, %.lr.ph112.i.i.i133 ], [ %.val63.i28.i.i300, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 16 uses
  %.val62.i.i.i139 = phi ptr [ %.val62.i20.i.i127, %.lr.ph112.i.i.i133 ], [ %.val62.i23.i.i301, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 12 uses
  %.0110.i.i.i140 = phi ptr [ %.sroa.074.3.i114, %.lr.ph112.i.i.i133 ], [ %i.alg, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 2 uses
  %.047109.i.i.i141 = phi ptr [ %i.aki, %.lr.ph112.i.i.i133 ], [ %i.alu, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ]
  %.049108.i.i.i142 = phi i64 [ 0, %.lr.ph112.i.i.i133 ], [ %i.alw, %_ZNSt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE9push_backERKS3_.exit.i.i.i ] ; 7 uses
  %i.akm = getelementptr inbounds nuw [2 x i8], ptr %.sroa.096.0.copyload.i.i.i129, i64 %.049108.i.i.i142
  %i.akn = load i16, ptr %i.akm, align 2, !tbaa !61, !noalias !276 ; 2 uses
  %i.ako = ptrtoint ptr %.047109.i.i.i141 to i64  ; 2 uses
  %i.akp = ptrtoint ptr %.0110.i.i.i140 to i64
  %i.akq = sub i64 %i.ako, %i.akp                 ; 2 uses
  %i.akr = icmp sgt i64 %i.akq, 0
  br i1 %i.akr, label %.lr.ph.i.i.i23.i276, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i.i.i23.i276:                              ; preds = %bb.ed
  %i.aks = udiv exact i64 %i.akq, 40
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ef, %.lr.ph.i.i.i23.i276
  %.018.i.i.i.i277 = phi ptr [ %.0110.i.i.i140, %.lr.ph.i.i.i23.i276 ], [ %i.alg, %bb.ef ] ; 2 uses
  %.01017.i.i.i.i278 = phi i64 [ %i.aks, %.lr.ph.i.i.i23.i276 ], [ %i.alf, %bb.ef ] ; 3 uses
  %i.akt = lshr i64 %.01017.i.i.i.i278, 1         ; 4 uses
  %i.aku = getelementptr inbounds nuw [40 x i8], ptr %.018.i.i.i.i277, i64 %i.akt ; 4 uses
  %i.akv = getelementptr i8, ptr %i.aku, i64 8
  %.val14.i.i.i.i281 = load i64, ptr %i.akv, align 8, !tbaa !237, !noalias !276
  %.not.i.i.i.i.i24.i282 = icmp ult i64 %.049108.i.i.i142, %.val14.i.i.i.i281
  br i1 %.not.i.i.i.i.i24.i282, label %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, label %.thread.i.i.i.i283

.thread.i.i.i.i283:                               ; preds = %bb.ee
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 40
  %i.akx = xor i64 %i.akt, -1
  %i.aky = add nsw i64 %.01017.i.i.i.i278, %i.akx
  br label %bb.ef

_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i: ; preds = %bb.ee
  %.val13.i.i.i.i355 = load ptr, ptr %i.aku, align 8, !noalias !276
  %i.akz = getelementptr inbounds nuw [2 x i8], ptr %.val13.i.i.i.i355, i64 %.049108.i.i.i142
  %i.ala = load i16, ptr %i.akz, align 2, !tbaa !61, !noalias !276
  %i.alb = icmp ult i16 %i.ala, %i.akn
  %cond.fr.i.i.i.i356 = freeze i1 %i.alb          ; 2 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.aku, i64 40
  %i.ald = xor i64 %i.akt, -1
  %i.ale = add nsw i64 %.01017.i.i.i.i278, %i.ald
  %spec.select.i.i.i357 = select i1 %cond.fr.i.i.i.i356, i64 %i.ale, i64 %i.akt
  %spec.select98.i.i.i358 = select i1 %cond.fr.i.i.i.i356, ptr %i.alc, ptr %.018.i.i.i.i277
  br label %bb.ef

bb.ef:                                            ; preds = %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i, %.thread.i.i.i.i283
  %i.alf = phi i64 [ %spec.select.i.i.i357, %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.aky, %.thread.i.i.i.i283 ] ; 2 uses
  %i.alg = phi ptr [ %spec.select98.i.i.i358, %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E_clESG_.exit.i.i.i.i ], [ %i.akw, %.thread.i.i.i.i283 ] ; 10 uses
  %i.alh = icmp sgt i64 %i.alf, 0
  br i1 %i.alh, label %bb.ee, label %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i, !llvm.loop !279

_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i: ; preds = %bb.ef
  %.pre.i.i.i284 = ptrtoint ptr %i.alg to i64
  %.pre116.i.i.i285 = sub i64 %i.ako, %.pre.i.i.i284 ; 2 uses
  %i.ali = icmp sgt i64 %.pre116.i.i.i285, 0
  br i1 %i.ali, label %.lr.ph.i73.i.i.i286, label %_ZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EE.exit.i.i

.lr.ph.i73.i.i.i286:                              ; preds = %_ZSt15partition_pointIPKN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryEZNS2_32computeOverlapsAndParentForEntryEPNS2_11StringEntryEN4llvh8ArrayRefIS3_EEPSt6vectorISB_INS2_7OverlapESaISC_EESaISE_EEEUlRS4_E_ET_SK_SK_T0_.exit.i.i.i
  %i.alj = udiv exact i64 %.pre116.i.i.i285, 40
  br label %bb.eg

bb.eg:                                            ; preds = %.thread.i80.i.i.i293, %.lr.ph.i73.i.i.i286
  %.018.i74.i.i.i287 = phi ptr [ %i.alg, %.lr.ph.i73.i.i.i286 ], [ %i.alu, %.thread.i80.i.i.i293 ] ; 3 uses
  %.01017.i75.i.i.i288 = phi i64 [ %i.alj, %.lr.ph.i73.i.i.i286 ], [ %i.alt, %.thread.i80.i.i.i293 ] ; 2 uses
  %i.alk = lshr i64 %.01017.i75.i.i.i288, 1       ; 4 uses
  %i.all = getelementptr inbounds nuw [40 x i8], ptr %.018.i74.i.i.i287, i64 %i.alk ; 3 uses
  %i.alm = getelementptr i8, ptr %i.all, i64 8
  %.val14.i78.i.i.i291 = load i64, ptr %i.alm, align 8, !tbaa !237, !noalias !276
  %.not.i.i.i79.i.i.i292 = icmp ult i64 %.049108.i.i.i142, %.val14.i78.i.i.i291
  br i1 %.not.i.i.i79.i.i.i292, label %_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i, label %.thread.i80.i.i.i293

_ZZN12_GLOBAL__N_112StringPackerIDsE32computeOverlapsAndParentForEntryEPNS1_11StringEntryEN4llvh8ArrayRefINS1_16SuffixArrayEntryEEEPSt6vectorIS8_INS1_7OverlapESaIS9_EESaISB_EEENKUlRKS6_E0_clESG_.exit.i.i.i.i: ; preds = %bb.eg
  %.val13.i81.i.i.i351 = load ptr, ptr %i.all, align 8, !noalias !276
  %i.aln = getelementptr inbounds nuw [2 x i8], ptr %.val13.i81.i.i.i351, i64 %.049108.i.i.i142
  %i.alo = load i16, ptr %i.aln, align 2, !tbaa !61, !noalias !276
  %i.alp = icmp eq i16 %i.alo, %i.akn
  %cond.fr.i82.i.i.i352 = freeze i1 %i.alp        ; 2 uses
  %i.alq = getelementptr inbounds nuw i8, ptr %i.all, i64 40
  %i.alr = xor i64 %i.alk, -1
  %i.als = add nsw i64 %.01017.i75.i.i.i288, %i.alr
  %spec.select99.i.i.i353 = select i1 %cond.fr.i82.i.i.i352, i64 %i.als, i64 %i.alk
end_hunk_2
begin_hunk_3_@_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorIjS3_S5_S7_Lb0EEEbEOjDpOT_:bb.a
  store i8 %.sink, ptr %i.aw, align 8, !tbaa !398
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !86     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !82   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !3      ; 3 uses
  %i.f = mul i32 %i.e, 37
  %i.g = add i32 %i.c, -1                         ; 2 uses
  %.02744.i = and i32 %i.f, %i.g                  ; 2 uses
  %i.h = zext i32 %.02744.i to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.h ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp eq i32 %i.e, %i.j
  br i1 %i.k, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPKS7_.exit, label %.lr.ph.i, !prof !103

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.l = phi i32 [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %i.u, %bb.d ], [ %i.i, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.02546.i = phi i32 [ %i.r, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.n = icmp eq i32 %i.l, -1
  br i1 %i.n, label %bb.c, label %bb.d, !prof !56

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.o = select i1 %.not.i, ptr %i.m, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPKS7_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = icmp eq i32 %i.l, -2
  %i.q = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.p, i1 %i.q, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.m, ptr %.02945.i
  %i.r = add i32 %.02546.i, 1
  %i.s = add i32 %.02546.i, %.02747.i
  %.027.i = and i32 %i.s, %i.g                    ; 2 uses
  %i.t = zext i32 %.027.i to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 2 uses
  %i.w = icmp eq i32 %i.e, %i.v
  br i1 %i.w, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPKS7_.exit, label %.lr.ph.i, !prof !104, !llvm.loop !105

_ZNK4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPKS7_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.o, %bb.c ], [ null, %bb.a ], [ %i.i, %bb.b ], [ %i.u, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !397
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !86     ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !82
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 5 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !86
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !87
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !88
  %i.w = load i32, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 -1, i64 %.idx.i, i1 false), !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

bb.b:                                             ; preds = %_ZN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEE15allocateBucketsEj.exit
  %i.y = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.y, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !87
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !88
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %.not5.i.i = icmp eq i32 %i.ac, 0
  br i1 %.not5.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.t, i8 -1, i64 %.idx.i.i, i1 false), !tbaa !3
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i, %bb.f
  %i.ae = phi i32 [ %i.bb, %bb.f ], [ 0, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i ] ; 2 uses
  %.019.i = phi ptr [ %i.bc, %bb.f ], [ %i.c, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i ] ; 2 uses
  %i.af = load i32, ptr %.019.i, align 4, !tbaa !3 ; 5 uses
  %switch.i = icmp ugt i32 %i.af, -3
  br i1 %switch.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !82  ; 2 uses
  %i.ah = icmp ne i32 %i.ag, 0
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = mul i32 %i.af, 37
  %i.aj = add i32 %i.ag, -1                       ; 2 uses
  %.02744.i.i.i = and i32 %i.aj, %i.ai            ; 2 uses
  %i.ak = zext i32 %.02744.i.i.i to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.ak ; 3 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3  ; 2 uses
  %i.an = icmp eq i32 %i.af, %i.am
  br i1 %i.an, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !103

.lr.ph.i.i.i:                                     ; preds = %bb.c, %bb.e
  %i.ao = phi i32 [ %i.ay, %bb.e ], [ %i.am, %bb.c ] ; 2 uses
  %i.ap = phi ptr [ %i.ax, %bb.e ], [ %i.al, %bb.c ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.e ], [ %.02744.i.i.i, %bb.c ]
  %.02546.i.i.i = phi i32 [ %i.au, %bb.e ], [ 1, %bb.c ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.e ], [ null, %bb.c ] ; 4 uses
  %i.aq = icmp eq i32 %i.ao, -1
  br i1 %i.aq, label %bb.d, label %bb.e, !prof !56

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.ar = select i1 %.not.i.i.i, ptr %i.ap, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.as = icmp eq i32 %i.ao, -2
  %i.at = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.as, i1 %i.at, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ap, ptr %.02945.i.i.i
  %i.au = add i32 %.02546.i.i.i, 1
  %i.av = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.av, %i.aj              ; 2 uses
  %i.aw = zext i32 %.027.i.i.i to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.aw ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3  ; 2 uses
  %i.az = icmp eq i32 %i.af, %i.ay
  br i1 %i.az, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !104, !llvm.loop !105

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sink.i.i.i = phi ptr [ %i.ar, %bb.d ], [ %i.al, %bb.c ], [ %i.ax, %bb.e ]
  store i32 %i.af, ptr %.sink.i.i.i, align 4, !tbaa !3
  %i.ba = add i32 %i.ae, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.aa, align 8, !tbaa !87
  br label %bb.f

bb.f:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i, %.lr.ph.i
  %i.bb = phi i32 [ %i.ba, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E15LookupBucketForIjEEbRKT_RPS7_.exit.i ], [ %i.ae, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.019.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bc, %i.z
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i, !llvm.loop !401

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit: ; preds = %bb.f, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E9initEmptyEv.exit: ; preds = %.lr.ph.preheader.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS2_12DenseSetPairIjEEEEjS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112StringPackerIhE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0.i47 = alloca %"class.llvh::ArrayRef.25", align 8 ; 4 uses
  %.sroa.0.i = alloca %"class.llvh::ArrayRef.25", align 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.039 = phi i64 [ %2, %bb.a ], [ %i.l, %._crit_edge ] ; 7 uses
  %.037 = phi ptr [ %1, %bb.a ], [ %.033.lcssa, %._crit_edge ] ; 5 uses
  %.030 = phi ptr [ %0, %bb.a ], [ %.035.lcssa, %._crit_edge ] ; 7 uses
  %i.a = ptrtoint ptr %.037 to i64
  %i.b = ptrtoint ptr %.030 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 80
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.030, i64 8
  %.030.val44 = load i64, ptr %i.e, align 8, !tbaa !100
  %.not.i = icmp ult i64 %.039, %.030.val44
  br i1 %.not.i, label %bb.d, label %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit

bb.d:                                             ; preds = %bb.c
  %.030.val = load ptr, ptr %.030, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.030.val, i64 %.039
  %i.g = load i8, ptr %i.f, align 1, !tbaa !55
  %i.h = zext i8 %i.g to i32
  br label %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit

_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit: ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.h, %bb.d ], [ -1, %bb.c ]   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.030, i64 40 ; 2 uses
  %i.k = icmp ult ptr %i.j, %.037
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit
  %.035.lcssa = phi ptr [ %.030, %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit ], [ %.136, %bb.j ] ; 2 uses
  %.033.lcssa = phi ptr [ %.037, %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit ], [ %.134, %bb.j ] ; 2 uses
  tail call fastcc void @_ZN12_GLOBAL__N_112StringPackerIhE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef nonnull %.030, ptr noundef %.035.lcssa, i64 noundef %.039)
  tail call fastcc void @_ZN12_GLOBAL__N_112StringPackerIhE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef %.033.lcssa, ptr noundef %.037, i64 noundef %.039)
  %.not = icmp eq i32 %i.i, -1
  %i.l = add i64 %.039, 1
  br i1 %.not, label %bb.k, label %bb.b

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit, %bb.j
  %.03150 = phi ptr [ %.132, %bb.j ], [ %i.j, %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit ] ; 13 uses
  %.03349 = phi ptr [ %.134, %bb.j ], [ %.037, %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit ] ; 5 uses
  %.03548 = phi ptr [ %.136, %bb.j ], [ %.030, %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit ] ; 7 uses
  %i.m = getelementptr i8, ptr %.03150, i64 8
  %.031.val43 = load i64, ptr %i.m, align 8, !tbaa !100
  %.not.i45 = icmp ult i64 %.039, %.031.val43
  br i1 %.not.i45, label %bb.e, label %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit46

bb.e:                                             ; preds = %.lr.ph
  %.031.val = load ptr, ptr %.03150, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.031.val, i64 %.039
  %i.o = load i8, ptr %i.n, align 1, !tbaa !55
  %i.p = zext i8 %i.o to i32
  br label %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit46

_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit46: ; preds = %.lr.ph, %bb.e
  %i.q = phi i32 [ %i.p, %bb.e ], [ -1, %.lr.ph ] ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.i
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit46
  %i.s = getelementptr inbounds nuw i8, ptr %.03548, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.03150, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(40) %.03548, i64 16, i1 false), !tbaa.struct !131
  %i.u = getelementptr inbounds nuw i8, ptr %.03548, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03548, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !124
  %i.x = getelementptr inbounds nuw i8, ptr %.03150, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03150, i64 32 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03548, ptr noundef nonnull align 8 dereferenceable(40) %.03150, i64 16, i1 false), !tbaa.struct !131
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !122
  store <2 x ptr> %i.aa, ptr %i.u, align 8, !tbaa !122
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !124
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03150, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !131
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !122
  store ptr %i.w, ptr %i.y, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.j

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntry9extCharAtEm.exit46
  %i.ac = icmp sgt i32 %i.q, %i.i
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %.03349, i64 -40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i47)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i47, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 16, i1 false), !tbaa.struct !131
  %i.ae = getelementptr inbounds i8, ptr %.03349, i64 -24 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.03349, i64 -8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !124
  %i.ah = getelementptr inbounds nuw i8, ptr %.03150, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03150, i64 32 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !122
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %.03150, i64 16, i1 false), !tbaa.struct !131
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !122
  store <2 x ptr> %i.ak, ptr %i.ae, align 8, !tbaa !122
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !124
  store ptr %i.al, ptr %i.af, align 8, !tbaa !124
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03150, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i47, i64 16, i1 false), !tbaa.struct !131
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !122
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i47)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.03150, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.136 = phi ptr [ %i.s, %bb.f ], [ %.03548, %bb.h ], [ %.03548, %bb.i ] ; 2 uses
  %.134 = phi ptr [ %.03349, %bb.f ], [ %i.ad, %bb.h ], [ %.03349, %bb.i ] ; 3 uses
  %.132 = phi ptr [ %i.t, %bb.f ], [ %.03150, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = icmp ult ptr %.132, %.134
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !402

bb.k:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr %.0.val, i32 %.16.val, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::StringPacker<unsigned char>::HashedSuffix", align 8 ; 7 uses
  %3 = alloca %"struct.(anonymous namespace)::StringPacker<unsigned char>::HashedSuffix", align 8 ; 7 uses
  %i.a = icmp eq i32 %.16.val, 0
  br i1 %i.a, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !alias.scope !403
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !alias.scope !403
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !107, !alias.scope !403
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr inttoptr (i64 -2 to ptr), ptr %3, align 8, !alias.scope !408
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !408
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !107, !alias.scope !408
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val36.i = load i32, ptr %i.f, align 8, !tbaa !107 ; 4 uses
  %i.g = add i32 %.16.val, -1                     ; 2 uses
  %.sroa.01.0.copyload.i.i = load ptr, ptr %0, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  %.sroa.22.0.copyload.i.fr.i = freeze i64 %.sroa.22.0.copyload.i.i ; 3 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b, %bb.d
  %.029.us.i = phi ptr [ %spec.select.us.i, %bb.d ], [ null, %bb.b ] ; 3 uses
  %.val36.pn.us.i = phi i32 [ %i.q, %bb.d ], [ %.val36.i, %bb.b ]
  %.025.us.i = phi i32 [ %i.p, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.027.us.i = and i32 %.val36.pn.us.i, %i.g      ; 2 uses
  %i.h = zext i32 %.027.us.i to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %i.h ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !107
  %i.l = icmp eq i32 %.val36.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i, !prof !114

bb.c:                                             ; preds = %.split.us.i
  %.sroa.2.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.us.i = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i, align 8, !tbaa !92
  %.not.i.i.i.us.i = icmp eq i64 %.sroa.2.0.copyload.i.us.i, 0
  br i1 %.not.i.i.i.us.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i: ; preds = %bb.c, %.split.us.i
  %i.m = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br i1 %i.m, label %.split11.us.i, label %bb.d, !prof !56

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i
  %i.n = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.o = icmp eq ptr %.029.us.i, null
  %or.cond.not.us.i = select i1 %i.n, i1 %i.o, i1 false
  %spec.select.us.i = select i1 %or.cond.not.us.i, ptr %i.i, ptr %.029.us.i
  %i.p = add i32 %.025.us.i, 1
  %i.q = add i32 %.027.us.i, %.025.us.i
  br label %.split.us.i, !llvm.loop !115

.split.i:                                         ; preds = %bb.b, %bb.f
  %.029.i = phi ptr [ %spec.select.i, %bb.f ], [ null, %bb.b ] ; 3 uses
  %.val36.pn.i = phi i32 [ %i.ab, %bb.f ], [ %.val36.i, %bb.b ]
  %.025.i = phi i32 [ %i.aa, %bb.f ], [ 1, %bb.b ] ; 2 uses
  %.027.i = and i32 %.val36.pn.i, %i.g            ; 2 uses
  %i.r = zext i32 %.027.i to i64
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %i.r ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !107
  %i.v = icmp eq i32 %.val36.i, %i.u
  br i1 %i.v, label %bb.e, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, !prof !114

bb.e:                                             ; preds = %.split.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !92
  %.not.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i, %.sroa.2.0.copyload.i.i
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.s, align 8, !tbaa !54
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i64 %.sroa.22.0.copyload.i.fr.i)
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i, label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, !prof !116

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i, %bb.e, %.split.i
  %i.w = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br i1 %i.w, label %.split11.us.i, label %bb.f, !prof !56

.split11.us.i:                                    ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i
  %.us-phi12.i = phi ptr [ %.029.us.i, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i ], [ %.029.i, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i ] ; 2 uses
  %.us-phi13.i = phi ptr [ %i.i, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i ], [ %i.s, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i ]
  %.not.i = icmp eq ptr %.us-phi12.i, null
  %i.x = select i1 %.not.i, ptr %.us-phi13.i, ptr %.us-phi12.i
  br label %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i
  %i.y = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.z = icmp eq ptr %.029.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.s, ptr %.029.i
  %i.aa = add i32 %.025.i, 1
  %i.ab = add i32 %.027.i, %.025.i
  br label %.split.i, !llvm.loop !115

_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i, %bb.c, %.split11.us.i
  %storemerge.i = phi ptr [ %i.x, %.split11.us.i ], [ %i.i, %bb.c ], [ %i.s, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit: ; preds = %bb.a, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i
  %.0 = phi ptr [ %storemerge.i, %_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i ], [ null, %bb.a ]
  store ptr %.0, ptr %1, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !107
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !107
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !54
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !92 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !54
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !92
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i.i = icmp samesign eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit

_ZN4llvheqIhEEbNS_8ArrayRefIT_EES3_.exit:         ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not9.i.i.i.i.i.i, %bb.d ], [ true, %bb.c ]
  ret i1 %i.f
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !343  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
end_hunk_3
begin_hunk_4_@_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E11try_emplaceIJRS3_EEESt4pairINS_16DenseMapIteratorImS3_S5_S7_Lb0EEEbEOmDpOT_:bb.a
  store i8 %.sink, ptr %i.ax, align 8, !tbaa !416
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !224    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !220  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPKS7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %1, align 8, !tbaa !92     ; 3 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = mul i32 %i.f, 37
  %i.h = add i32 %i.c, -1                         ; 2 uses
  %.02744.i = and i32 %i.g, %i.h                  ; 2 uses
  %i.i = zext i32 %.02744.i to i64
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !92   ; 2 uses
  %i.l = icmp eq i64 %i.e, %i.k
  br i1 %i.l, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPKS7_.exit, label %.lr.ph.i, !prof !103

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %i.m = phi i64 [ %i.w, %bb.d ], [ %i.k, %bb.b ] ; 2 uses
  %i.n = phi ptr [ %i.v, %bb.d ], [ %i.j, %bb.b ] ; 2 uses
  %.02747.i = phi i32 [ %.027.i, %bb.d ], [ %.02744.i, %bb.b ]
  %.02546.i = phi i32 [ %i.s, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.02945.i = phi ptr [ %spec.select.i, %bb.d ], [ null, %bb.b ] ; 4 uses
  %i.o = icmp eq i64 %i.m, -1
  br i1 %i.o, label %bb.c, label %bb.d, !prof !56

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i = icmp eq ptr %.02945.i, null
  %i.p = select i1 %.not.i, ptr %i.n, ptr %.02945.i
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPKS7_.exit

bb.d:                                             ; preds = %.lr.ph.i
  %i.q = icmp eq i64 %i.m, -2
  %i.r = icmp eq ptr %.02945.i, null
  %or.cond.not.i = select i1 %i.q, i1 %i.r, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.n, ptr %.02945.i
  %i.s = add i32 %.02546.i, 1
  %i.t = add i32 %.02546.i, %.02747.i
  %.027.i = and i32 %i.t, %i.h                    ; 2 uses
  %i.u = zext i32 %.027.i to i64
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.u ; 3 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !92   ; 2 uses
  %i.x = icmp eq i64 %i.e, %i.w
  br i1 %i.x, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPKS7_.exit, label %.lr.ph.i, !prof !104, !llvm.loop !240

_ZNK4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPKS7_.exit: ; preds = %bb.d, %bb.a, %bb.b, %bb.c
  %.sink.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.v, %bb.d ]
  %.2.i = phi i1 [ false, %bb.c ], [ false, %bb.a ], [ true, %bb.b ], [ true, %bb.d ]
  store ptr %.sink.i, ptr %2, align 8, !tbaa !415
  ret i1 %.2.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvh8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEEE4growEj(ptr noundef nonnull align 8 dereferenceable(20) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
_ZN4llvh8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !220  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !224    ; 4 uses
  %i.d = add i32 %1, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = lshr i64 %i.e, 1
  %i.g = or i64 %i.f, %i.e                        ; 2 uses
  %i.h = lshr i64 %i.g, 2
  %i.i = or i64 %i.h, %i.g                        ; 2 uses
  %i.j = lshr i64 %i.i, 4
  %i.k = or i64 %i.j, %i.i                        ; 2 uses
  %i.l = lshr i64 %i.k, 8
  %i.m = or i64 %i.l, %i.k                        ; 2 uses
  %i.n = lshr i64 %i.m, 16
  %i.o = or i64 %i.n, %i.m
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = add i32 %i.p, 1
  %.sroa.speculated = tail call i32 @llvm.umax.i32(i32 %i.q, i32 64) ; 2 uses
  store i32 %.sroa.speculated, ptr %i.a, align 8, !tbaa !220
  %i.r = zext i32 %.sroa.speculated to i64
  %i.s = shl nuw nsw i64 %i.r, 3
  %i.t = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #20 ; 5 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !224
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_ZN4llvh8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !225
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.v, align 4, !tbaa !226
  %i.w = load i32, ptr %i.a, align 8, !tbaa !220  ; 2 uses
  %.not5.i = icmp eq i32 %i.w, 0
  br i1 %.not5.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %i.x = zext i32 %i.w to i64
  %.idx.i = shl nuw nsw i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 -1, i64 %.idx.i, i1 false), !tbaa !92
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit

bb.b:                                             ; preds = %_ZN4llvh8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEEE15allocateBucketsEj.exit
  %i.y = zext i32 %i.b to i64
  %.idx = shl nuw nsw i64 %i.y, 3
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !225
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.ab, align 4, !tbaa !226
  %i.ac = load i32, ptr %i.a, align 8, !tbaa !220 ; 3 uses
  %.not5.i.i = icmp ne i32 %i.ac, 0               ; 2 uses
  br i1 %.not5.i.i, label %.lr.ph.preheader.i.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.b
  %i.ad = zext i32 %i.ac to i64
  %.idx.i.i = shl nuw nsw i64 %i.ad, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 -1, i64 %.idx.i.i, i1 false), !tbaa !92
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit.i

_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit.i: ; preds = %.lr.ph.preheader.i.i, %bb.b
  %.not18.i = icmp eq i32 %i.b, 0
  br i1 %.not18.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit.i
  %i.ae = add i32 %i.ac, -1                       ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i
  %i.af = phi i32 [ 0, %.lr.ph.i ], [ %i.ba, %bb.g ] ; 2 uses
  %.019.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.bb, %bb.g ] ; 2 uses
  %i.ag = load i64, ptr %.019.i, align 8, !tbaa !92 ; 5 uses
  %switch.i = icmp ugt i64 %i.ag, -3
  br i1 %switch.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %.not5.i.i)
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = mul i32 %i.ah, 37
  %.02744.i.i.i = and i32 %i.ai, %i.ae            ; 2 uses
  %i.aj = zext i32 %.02744.i.i.i to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.aj ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !92 ; 2 uses
  %i.am = icmp eq i64 %i.ag, %i.al
  br i1 %i.am, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !103

.lr.ph.i.i.i:                                     ; preds = %bb.d, %bb.f
  %i.an = phi i64 [ %i.ax, %bb.f ], [ %i.al, %bb.d ] ; 2 uses
  %i.ao = phi ptr [ %i.aw, %bb.f ], [ %i.ak, %bb.d ] ; 2 uses
  %.02747.i.i.i = phi i32 [ %.027.i.i.i, %bb.f ], [ %.02744.i.i.i, %bb.d ]
  %.02546.i.i.i = phi i32 [ %i.at, %bb.f ], [ 1, %bb.d ] ; 2 uses
  %.02945.i.i.i = phi ptr [ %spec.select.i.i.i, %bb.f ], [ null, %bb.d ] ; 4 uses
  %i.ap = icmp eq i64 %i.an, -1
  br i1 %i.ap, label %bb.e, label %bb.f, !prof !56

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %.02945.i.i.i, null
  %i.aq = select i1 %.not.i.i.i, ptr %i.ao, ptr %.02945.i.i.i
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = icmp eq i64 %i.an, -2
  %i.as = icmp eq ptr %.02945.i.i.i, null
  %or.cond.not.i.i.i = select i1 %i.ar, i1 %i.as, i1 false
  %spec.select.i.i.i = select i1 %or.cond.not.i.i.i, ptr %i.ao, ptr %.02945.i.i.i
  %i.at = add i32 %.02546.i.i.i, 1
  %i.au = add i32 %.02546.i.i.i, %.02747.i.i.i
  %.027.i.i.i = and i32 %i.au, %i.ae              ; 2 uses
  %i.av = zext i32 %.027.i.i.i to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.av ; 3 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !92 ; 2 uses
  %i.ay = icmp eq i64 %i.ag, %i.ax
  br i1 %i.ay, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit.i, label %.lr.ph.i.i.i, !prof !104, !llvm.loop !240

_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit.i: ; preds = %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %i.aq, %bb.e ], [ %i.ak, %bb.d ], [ %i.aw, %bb.f ]
  store i64 %i.ag, ptr %.sink.i.i.i, align 8, !tbaa !92
  %i.az = add i32 %i.af, 1                        ; 2 uses
  store i32 %i.az, ptr %i.aa, align 8, !tbaa !225
  br label %bb.g

bb.g:                                             ; preds = %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit.i, %bb.c
  %i.ba = phi i32 [ %i.af, %bb.c ], [ %i.az, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E15LookupBucketForImEEbRKT_RPS7_.exit.i ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.019.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.bb, %i.z
  br i1 %.not.i, label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit, label %bb.c, !llvm.loop !419

_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit: ; preds = %bb.g, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #16
  br label %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit

_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E9initEmptyEv.exit: ; preds = %.lr.ph.preheader.i, %bb.a, %_ZN4llvh12DenseMapBaseINS_8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS2_12DenseSetPairImEEEEmS3_S5_S7_E18moveFromOldBucketsEPS7_SA_.exit
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN12_GLOBAL__N_112StringPackerIDsE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %.sroa.0.i47 = alloca %"class.llvh::ArrayRef", align 8 ; 4 uses
  %.sroa.0.i = alloca %"class.llvh::ArrayRef", align 8 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.039 = phi i64 [ %2, %bb.a ], [ %i.l, %._crit_edge ] ; 7 uses
  %.037 = phi ptr [ %1, %bb.a ], [ %.033.lcssa, %._crit_edge ] ; 5 uses
  %.030 = phi ptr [ %0, %bb.a ], [ %.035.lcssa, %._crit_edge ] ; 7 uses
  %i.a = ptrtoint ptr %.037 to i64
  %i.b = ptrtoint ptr %.030 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp slt i64 %i.c, 80
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.030, i64 8
  %.030.val44 = load i64, ptr %i.e, align 8, !tbaa !237
  %.not.i = icmp ult i64 %.039, %.030.val44
  br i1 %.not.i, label %bb.d, label %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit

bb.d:                                             ; preds = %bb.c
  %.030.val = load ptr, ptr %.030, align 8
  %i.f = getelementptr inbounds nuw [2 x i8], ptr %.030.val, i64 %.039
  %i.g = load i16, ptr %i.f, align 2, !tbaa !61
  %i.h = zext i16 %i.g to i32
  br label %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit

_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit: ; preds = %bb.c, %bb.d
  %i.i = phi i32 [ %i.h, %bb.d ], [ -1, %bb.c ]   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.030, i64 40 ; 2 uses
  %i.k = icmp ult ptr %i.j, %.037
  br i1 %i.k, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.j, %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit
  %.035.lcssa = phi ptr [ %.030, %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit ], [ %.136, %bb.j ] ; 2 uses
  %.033.lcssa = phi ptr [ %.037, %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit ], [ %.134, %bb.j ] ; 2 uses
  tail call fastcc void @_ZN12_GLOBAL__N_112StringPackerIDsE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef nonnull %.030, ptr noundef %.035.lcssa, i64 noundef %.039)
  tail call fastcc void @_ZN12_GLOBAL__N_112StringPackerIDsE14radixQuicksortEPNS1_16SuffixArrayEntryES3_m(ptr noundef %.033.lcssa, ptr noundef %.037, i64 noundef %.039)
  %.not = icmp eq i32 %i.i, -1
  %i.l = add i64 %.039, 1
  br i1 %.not, label %bb.k, label %bb.b

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit, %bb.j
  %.03150 = phi ptr [ %.132, %bb.j ], [ %i.j, %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit ] ; 13 uses
  %.03349 = phi ptr [ %.134, %bb.j ], [ %.037, %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit ] ; 5 uses
  %.03548 = phi ptr [ %.136, %bb.j ], [ %.030, %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit ] ; 7 uses
  %i.m = getelementptr i8, ptr %.03150, i64 8
  %.031.val43 = load i64, ptr %i.m, align 8, !tbaa !237
  %.not.i45 = icmp ult i64 %.039, %.031.val43
  br i1 %.not.i45, label %bb.e, label %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit46

bb.e:                                             ; preds = %.lr.ph
  %.031.val = load ptr, ptr %.03150, align 8
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.031.val, i64 %.039
  %i.o = load i16, ptr %i.n, align 2, !tbaa !61
  %i.p = zext i16 %i.o to i32
  br label %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit46

_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit46: ; preds = %.lr.ph, %bb.e
  %i.q = phi i32 [ %i.p, %bb.e ], [ -1, %.lr.ph ] ; 2 uses
  %i.r = icmp slt i32 %i.q, %i.i
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit46
  %i.s = getelementptr inbounds nuw i8, ptr %.03548, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %.03150, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(40) %.03548, i64 16, i1 false), !tbaa.struct !264
  %i.u = getelementptr inbounds nuw i8, ptr %.03548, i64 16 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.03548, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !257
  %i.x = getelementptr inbounds nuw i8, ptr %.03150, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.03150, i64 32 ; 2 uses
  %i.z = load <2 x ptr>, ptr %i.u, align 8, !tbaa !255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.u, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03548, ptr noundef nonnull align 8 dereferenceable(40) %.03150, i64 16, i1 false), !tbaa.struct !264
  %i.aa = load <2 x ptr>, ptr %i.x, align 8, !tbaa !255
  store <2 x ptr> %i.aa, ptr %i.u, align 8, !tbaa !255
  %i.ab = load ptr, ptr %i.y, align 8, !tbaa !257
  store ptr %i.ab, ptr %i.v, align 8, !tbaa !257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03150, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !tbaa.struct !264
  store <2 x ptr> %i.z, ptr %i.x, align 8, !tbaa !255
  store ptr %i.w, ptr %i.y, align 8, !tbaa !257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.j

bb.g:                                             ; preds = %_ZNK12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntry9extCharAtEm.exit46
  %i.ac = icmp sgt i32 %i.q, %i.i
  br i1 %i.ac, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds i8, ptr %.03349, i64 -40 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i47)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i47, ptr noundef nonnull align 8 dereferenceable(40) %i.ad, i64 16, i1 false), !tbaa.struct !264
  %i.ae = getelementptr inbounds i8, ptr %.03349, i64 -24 ; 3 uses
  %i.af = getelementptr inbounds i8, ptr %.03349, i64 -8 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !257
  %i.ah = getelementptr inbounds nuw i8, ptr %.03150, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.03150, i64 32 ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !255
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull align 8 dereferenceable(40) %.03150, i64 16, i1 false), !tbaa.struct !264
  %i.ak = load <2 x ptr>, ptr %i.ah, align 8, !tbaa !255
  store <2 x ptr> %i.ak, ptr %i.ae, align 8, !tbaa !255
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !257
  store ptr %i.al, ptr %i.af, align 8, !tbaa !257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.03150, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i47, i64 16, i1 false), !tbaa.struct !264
  store <2 x ptr> %i.aj, ptr %i.ah, align 8, !tbaa !255
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i47)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %.03150, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.f
  %.136 = phi ptr [ %i.s, %bb.f ], [ %.03548, %bb.h ], [ %.03548, %bb.i ] ; 2 uses
  %.134 = phi ptr [ %.03349, %bb.f ], [ %i.ad, %bb.h ], [ %.03349, %bb.i ] ; 3 uses
  %.132 = phi ptr [ %i.t, %bb.f ], [ %.03150, %bb.h ], [ %i.am, %bb.i ] ; 2 uses
  %i.an = icmp ult ptr %.132, %.134
  br i1 %i.an, label %.lr.ph, label %._crit_edge, !llvm.loop !420

bb.k:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPSD_(ptr %.0.val, i32 %.16.val, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #9 align 2 {
bb.a:
  %2 = alloca %"struct.(anonymous namespace)::StringPacker<char16_t>::HashedSuffix", align 8 ; 7 uses
  %3 = alloca %"struct.(anonymous namespace)::StringPacker<char16_t>::HashedSuffix", align 8 ; 7 uses
  %i.a = icmp eq i32 %.16.val, 0
  br i1 %i.a, label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  store ptr inttoptr (i64 -1 to ptr), ptr %2, align 8, !alias.scope !421
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.b, align 8, !alias.scope !421
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 0, ptr %i.c, align 8, !tbaa !242, !alias.scope !421
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  store ptr inttoptr (i64 -2 to ptr), ptr %3, align 8, !alias.scope !426
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !alias.scope !426
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.e, align 8, !tbaa !242, !alias.scope !426
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val36.i = load i32, ptr %i.f, align 8, !tbaa !242 ; 4 uses
  %i.g = add i32 %.16.val, -1                     ; 2 uses
  %.sroa.01.0.copyload.i.i = load ptr, ptr %0, align 8
  %.sroa.22.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i, align 8
  %.sroa.22.0.copyload.i.fr.i = freeze i64 %.sroa.22.0.copyload.i.i ; 3 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i, 0
  %.idx.i.i.i.i = shl nuw nsw i64 %.sroa.22.0.copyload.i.fr.i, 1
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b, %bb.d
  %.029.us.i = phi ptr [ %spec.select.us.i, %bb.d ], [ null, %bb.b ] ; 3 uses
  %.val36.pn.us.i = phi i32 [ %i.q, %bb.d ], [ %.val36.i, %bb.b ]
  %.025.us.i = phi i32 [ %i.p, %bb.d ], [ 1, %bb.b ] ; 2 uses
  %.027.us.i = and i32 %.val36.pn.us.i, %i.g      ; 2 uses
  %i.h = zext i32 %.027.us.i to i64
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %i.h ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !242
  %i.l = icmp eq i32 %.val36.i, %i.k
  br i1 %i.l, label %bb.c, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i, !prof !114

bb.c:                                             ; preds = %.split.us.i
  %.sroa.2.0..sroa_idx.i.us.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.2.0.copyload.i.us.i = load i64, ptr %.sroa.2.0..sroa_idx.i.us.i, align 8, !tbaa !92
  %.not.i.i.i.us.i = icmp eq i64 %.sroa.2.0.copyload.i.us.i, 0
  br i1 %.not.i.i.i.us.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i: ; preds = %bb.c, %.split.us.i
  %i.m = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br i1 %i.m, label %.split11.us.i, label %bb.d, !prof !56

bb.d:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i
  %i.n = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.i, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.o = icmp eq ptr %.029.us.i, null
  %or.cond.not.us.i = select i1 %i.n, i1 %i.o, i1 false
  %spec.select.us.i = select i1 %or.cond.not.us.i, ptr %i.i, ptr %.029.us.i
  %i.p = add i32 %.025.us.i, 1
  %i.q = add i32 %.027.us.i, %.025.us.i
  br label %.split.us.i, !llvm.loop !249

.split.i:                                         ; preds = %bb.b, %bb.f
  %.029.i = phi ptr [ %spec.select.i, %bb.f ], [ null, %bb.b ] ; 3 uses
  %.val36.pn.i = phi i32 [ %i.ab, %bb.f ], [ %.val36.i, %bb.b ]
  %.025.i = phi i32 [ %i.aa, %bb.f ], [ 1, %bb.b ] ; 2 uses
  %.027.i = and i32 %.val36.pn.i, %i.g            ; 2 uses
  %i.r = zext i32 %.027.i to i64
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %.0.val, i64 %i.r ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load i32, ptr %i.t, align 8, !tbaa !242
  %i.v = icmp eq i32 %.val36.i, %i.u
  br i1 %i.v, label %bb.e, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, !prof !114

bb.e:                                             ; preds = %.split.i
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.2.0.copyload.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !92
  %.not.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload.i.fr.i, %.sroa.2.0.copyload.i.i
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, !prof !114

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i: ; preds = %bb.e
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.s, align 8, !tbaa !230
  %bcmp.i.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload.i.i, ptr %.sroa.0.0.copyload.i.i, i64 %.idx.i.i.i.i)
  %.not9.i.i.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %.not9.i.i.i.i.i.i.i.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i, label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, !prof !116

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i, %bb.e, %.split.i
  %i.w = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %2)
  br i1 %i.w, label %.split11.us.i, label %bb.f, !prof !56

.split11.us.i:                                    ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i
  %.us-phi12.i = phi ptr [ %.029.us.i, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i ], [ %.029.i, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i ] ; 2 uses
  %.us-phi13.i = phi ptr [ %i.i, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.us.i ], [ %i.s, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i ]
  %.not.i = icmp eq ptr %.us-phi12.i, null
  %i.x = select i1 %.not.i, ptr %.us-phi13.i, ptr %.us-phi12.i
  br label %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i

bb.f:                                             ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread.i
  %i.y = call fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull align 8 dereferenceable(20) %i.s, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %i.z = icmp eq ptr %.029.i, null
  %or.cond.not.i = select i1 %i.y, i1 %i.z, i1 false
  %spec.select.i = select i1 %or.cond.not.i, ptr %i.s, ptr %.029.i
  %i.aa = add i32 %.025.i, 1
  %i.ab = add i32 %.027.i, %.025.i
  br label %.split.i, !llvm.loop !249

_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i: ; preds = %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i, %bb.c, %.split11.us.i
  %storemerge.i = phi ptr [ %i.x, %.split11.us.i ], [ %i.i, %bb.c ], [ %i.s, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit

_ZNK4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15LookupBucketForIS5_EEbRKT_RPKSD_.exit: ; preds = %bb.a, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i
  %.0 = phi ptr [ %storemerge.i, %_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_.exit.thread1.i ], [ null, %bb.a ]
  store ptr %.0, ptr %1, align 8, !tbaa !250
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix7isEqualERKS2_S4_(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(20) %1) unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !242
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !242
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %0, align 8, !tbaa !230
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !92 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !230
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !92
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit

bb.c:                                             ; preds = %bb.b
  %.not.not.i.i.i.i.i.i = icmp eq i64 %.sroa.22.0.copyload, 0
  br i1 %.not.not.i.i.i.i.i.i, label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.idx.i.i = shl nuw nsw i64 %.sroa.22.0.copyload, 1
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.idx.i.i)
  %.not9.i.i.i.i.i.i = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br label %_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit

_ZN4llvheqIDsEEbNS_8ArrayRefIT_EES3_.exit:        ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.f = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %.not9.i.i.i.i.i.i, %bb.d ], [ true, %bb.c ]
  ret i1 %i.f
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIDsSaIDsEE15_M_range_insertIPKDsEEvN9__gnu_cxx17__normal_iteratorIPDsS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKDsN9__gnu_cxx17__normal_iteratorIPDsSt6vectorIDsSaIDsEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 1                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !60
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !57   ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 1                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPKDslEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
end_hunk_4
begin_hunk_5_@_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag:bb.a
  br i1 %i.bs, label %bb.ah, label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

bb.ah:                                            ; preds = %bb.ag
  %i.bt = load i8, ptr %1, align 1, !tbaa !55
  store i8 %i.bt, ptr %i.bp, align 1, !tbaa !55
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46

_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46: ; preds = %bb.af, %bb.ag, %bb.ah
  %i.bu = getelementptr inbounds i8, ptr %i.bp, i64 %i.bq
  %.not.i47 = icmp eq ptr %i.av, null
  br i1 %.not.i47, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46
  %i.bv = sub i64 %i.h, %i.aw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.bv) #19
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit46, %bb.ai
  store ptr %i.bf, ptr %0, align 8, !tbaa !209
  store ptr %i.bu, ptr %i.f, align 8, !tbaa !343
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  store ptr %i.bw, ptr %i.d, align 8, !tbaa !71
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEES6_ET0_T_S8_S7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.m, %bb.l, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind allocsize(0) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !20, i64 48}
!8 = !{!"_ZTSN6hermes3hbc24ConsecutiveStringStorageE", !9, i64 0, !15, i64 24, !20, i64 48, !20, i64 49}
!9 = !{!"_ZTSSt6vectorIN6hermes16StringTableEntryESaIS1_EE", !10, i64 0}
!10 = !{!"_ZTSSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE", !11, i64 0}
!11 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE12_Vector_implE", !12, i64 0}
!12 = !{!"_ZTSNSt12_Vector_baseIN6hermes16StringTableEntryESaIS1_EE17_Vector_impl_dataE", !13, i64 0, !13, i64 8, !13, i64 16}
!13 = !{!"p1 _ZTSN6hermes16StringTableEntryE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"_ZTSSt6vectorIhSaIhEE", !16, i64 0}
!16 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !17, i64 0}
!17 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !18, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 omnipotent char", !14, i64 0}
!20 = !{!"bool", !5, i64 0}
!21 = !{!8, !20, i64 49}
!22 = !{!23, !24, i64 0}
!23 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS5_PS6_E", !24, i64 0, !24, i64 8, !24, i64 16, !25, i64 24}
!24 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !14, i64 0}
!25 = !{!"p2 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !26, i64 0}
!26 = !{!"any p2 pointer", !14, i64 0}
!27 = !{!23, !24, i64 16}
!28 = !{!23, !25, i64 24}
!29 = !{!30, !32, i64 8}
!30 = !{!"_ZTSNSt11_Deque_baseISt6vectorIDsSaIDsEESaIS2_EE16_Deque_impl_dataE", !31, i64 0, !32, i64 8, !33, i64 16, !33, i64 48}
!31 = !{!"p2 _ZTSSt6vectorIDsSaIDsEE", !26, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"_ZTSSt15_Deque_iteratorISt6vectorIDsSaIDsEERS2_PS2_E", !34, i64 0, !34, i64 8, !34, i64 16, !31, i64 24}
!34 = !{!"p1 _ZTSSt6vectorIDsSaIDsEE", !14, i64 0}
!35 = !{!30, !31, i64 0}
!36 = !{!34, !34, i64 0}
!37 = !{!33, !31, i64 24}
!38 = !{!33, !34, i64 8}
!39 = !{!33, !34, i64 16}
!40 = !{!30, !34, i64 16}
!41 = !{!30, !34, i64 48}
!42 = !{!43, !19, i64 0}
!43 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !44, i64 0, !32, i64 8, !5, i64 16}
!44 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!45 = !{!43, !32, i64 8}
!46 = !{!30, !34, i64 64}
!47 = !{!33, !34, i64 0}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!50 = distinct !{!50, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!51 = !{!52}
!52 = distinct !{!52, !53, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!53 = distinct !{!53, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!54 = !{!19, !19, i64 0}
!55 = !{!5, !5, i64 0}
!56 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!57 = !{!58, !59, i64 8}
!58 = !{!"_ZTSNSt12_Vector_baseIDsSaIDsEE17_Vector_impl_dataE", !59, i64 0, !59, i64 8, !59, i64 16}
!59 = !{!"p1 char16_t", !14, i64 0}
!60 = !{!58, !59, i64 16}
!61 = !{!62, !62, i64 0}
!62 = !{!"char16_t", !5, i64 0}
!63 = !{!58, !59, i64 0}
!64 = distinct !{!64, !65}
!65 = !{!"llvm.loop.mustprogress"}
!66 = !{!24, !24, i64 0}
!67 = distinct !{!67, !65}
!68 = !{!12, !13, i64 0}
!69 = !{!12, !13, i64 16}
!70 = !{!13, !13, i64 0}
!71 = !{!18, !19, i64 16}
!72 = !{!73, !74, i64 0}
!73 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS3_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!74 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !14, i64 0}
!75 = !{!73, !74, i64 8}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!78 = distinct !{!78, !"_ZN12_GLOBAL__N_112StringPackerIhE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE: argument 0"}
!81 = distinct !{!81, !"_ZN12_GLOBAL__N_112StringPackerIhE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE"}
!82 = !{!83, !4, i64 16}
!83 = !{!"_ZTSN4llvh8DenseMapIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEEEE", !84, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!84 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIjEE", !14, i64 0}
!85 = !{!80, !77}
!86 = !{!83, !84, i64 0}
!87 = !{!83, !4, i64 8}
!88 = !{!83, !4, i64 12}
!89 = !{!90, !77}
!90 = distinct !{!90, !91, !"_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE: argument 0"}
!91 = distinct !{!91, !"_ZN12_GLOBAL__N_112StringPackerIhE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetIjNS2_12DenseMapInfoIjEEEE"}
!92 = !{!32, !32, i64 0}
!93 = !{!94, !80, !77}
!94 = distinct !{!94, !95, !"_ZN4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E6insertEOj: argument 0"}
!95 = distinct !{!95, !"_ZN4llvh6detail12DenseSetImplIjNS_8DenseMapIjNS0_13DenseSetEmptyENS_12DenseMapInfoIjEENS0_12DenseSetPairIjEEEES5_E6insertEOj"}
!96 = !{!94, !77}
!97 = distinct !{!97, !98}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = distinct !{!99, !65}
!100 = !{!101, !32, i64 8}
!101 = !{!"_ZTSN4llvh8ArrayRefIhEE", !19, i64 0, !32, i64 8}
!102 = !{!101, !19, i64 0}
!103 = !{!"branch_weights", i32 1999, i32 1}
!104 = !{!"branch_weights", i32 1, i32 0}
!105 = distinct !{!105, !65}
!106 = distinct !{!106, !65}
!107 = !{!108, !4, i64 16}
!108 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE12HashedSuffixE", !101, i64 0, !4, i64 16}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!111 = distinct !{!111, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv"}
!112 = distinct !{!112, !113, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!113 = distinct !{!113, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!114 = !{!"branch_weights", i32 2146410443, i32 1073205}
!115 = distinct !{!115, !65}
!116 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EEEE", !14, i64 0}
!119 = distinct !{!119, !98}
!120 = distinct !{!120, !98}
!121 = !{i64 0, i64 8, !54, i64 8, i64 8, !92, i64 16, i64 4, !3}
!122 = !{!123, !123, i64 0}
!123 = !{!"p2 _ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !26, i64 0}
!124 = !{!125, !123, i64 16}
!125 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_112StringPackerIhE11StringEntryESaIS4_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!126 = distinct !{!126, !65}
!127 = !{!125, !123, i64 8}
!128 = !{!74, !74, i64 0}
!129 = !{!125, !123, i64 0}
!130 = distinct !{!130, !65}
!131 = !{i64 0, i64 8, !54, i64 8, i64 8, !92}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!134 = distinct !{!134, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_"}
!135 = !{!136}
!136 = distinct !{!136, !134, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!137 = !{!133, !136}
!138 = !{!133, !90, !77}
!139 = !{!136, !90, !77}
!140 = distinct !{!140, !65}
!141 = distinct !{!141, !65}
!142 = distinct !{!142, !65}
!143 = !{!144, !77}
!144 = distinct !{!144, !145, !"_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE: argument 0"}
!145 = distinct !{!145, !"_ZN12_GLOBAL__N_112StringPackerIhE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE"}
!146 = distinct !{!146, !65}
!147 = distinct !{!147, !65}
!148 = !{!149}
!149 = distinct !{!149, !150, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!150 = distinct !{!150, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_"}
!151 = !{!152}
!152 = distinct !{!152, !150, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!153 = !{!154, !154, i64 0}
!154 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIhE7OverlapE", !14, i64 0}
!155 = !{!149, !144, !77}
!156 = !{!152, !144, !77}
!157 = !{!158, !154, i64 16}
!158 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIhE7OverlapESaIS3_EE17_Vector_impl_dataE", !154, i64 0, !154, i64 8, !154, i64 16}
!159 = distinct !{!159, !65}
!160 = !{!158, !154, i64 0}
!161 = distinct !{!161, !65}
!162 = !{!158, !154, i64 8}
!163 = !{i64 0, i64 8, !122, i64 8, i64 8, !92, i64 16, i64 8, !128}
!164 = !{!165, !167}
!165 = distinct !{!165, !166, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!166 = distinct !{!166, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE7OverlapES3_SaIS3_EEvPT_PT0_RT1_"}
!167 = distinct !{!167, !166, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIhE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!168 = distinct !{!168, !65}
!169 = distinct !{!169, !65}
!170 = !{!171, !74, i64 32}
!171 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE11StringEntryE", !4, i64 0, !101, i64 8, !32, i64 24, !74, i64 32, !32, i64 40, !74, i64 48, !74, i64 56, !32, i64 64, !172, i64 72}
!172 = !{!"_ZTSN4llvh8DenseSetIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_12DenseMapInfoIS6_EEEE", !173, i64 0}
!173 = !{!"_ZTSN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_EE", !174, i64 0}
!174 = !{!"_ZTSN4llvh8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_EENS7_12DenseSetPairIS6_EEEE", !175, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!175 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryEEE", !14, i64 0}
!176 = !{!171, !4, i64 0}
!177 = !{!171, !32, i64 40}
!178 = distinct !{!178, !65}
!179 = distinct !{!179, !65}
!180 = !{!181, !74, i64 16}
!181 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIhE7OverlapE", !182, i64 0, !74, i64 16}
!182 = !{!"_ZTSN4llvh8ArrayRefIPN12_GLOBAL__N_112StringPackerIhE11StringEntryEEE", !123, i64 0, !32, i64 8}
!183 = !{!171, !74, i64 56}
!184 = !{!182, !123, i64 0}
!185 = !{!182, !32, i64 8}
!186 = !{!171, !74, i64 48}
!187 = !{!174, !175, i64 0}
!188 = !{!174, !4, i64 16}
!189 = distinct !{!189, !65}
!190 = !{!171, !32, i64 64}
!191 = distinct !{!191, !65}
!192 = distinct !{!192, !65}
!193 = !{!194, !196, !77}
!194 = distinct !{!194, !195, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_: argument 0"}
!195 = distinct !{!195, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_"}
!196 = distinct !{!196, !197, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_: argument 0"}
!197 = distinct !{!197, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIhE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_"}
!198 = !{!174, !4, i64 8}
!199 = !{!174, !4, i64 12}
!200 = distinct !{!200, !65, !201, !202}
!201 = !{!"llvm.loop.isvectorized", i32 1}
!202 = !{!"llvm.loop.unroll.runtime.disable"}
!203 = distinct !{!203, !65, !202, !201}
!204 = distinct !{!204, !65, !201, !202}
!205 = distinct !{!205, !65, !202, !201}
!206 = !{!194, !196}
!207 = distinct !{!207, !65}
!208 = distinct !{!208, !65}
!209 = !{!18, !19, i64 0}
!210 = !{!211, !212, i64 0}
!211 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS3_EE17_Vector_impl_dataE", !212, i64 0, !212, i64 8, !212, i64 16}
!212 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !14, i64 0}
!213 = !{!211, !212, i64 8}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!216 = distinct !{!216, !"_ZN12_GLOBAL__N_112StringPackerIDsE21optimizingPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE: argument 0"}
!219 = distinct !{!219, !"_ZN12_GLOBAL__N_112StringPackerIDsE21buildPrefixTrigramSetEN4llvh8ArrayRefINS1_11StringEntryEEE"}
!220 = !{!221, !4, i64 16}
!221 = !{!"_ZTSN4llvh8DenseMapImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEEEE", !222, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!222 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairImEE", !14, i64 0}
!223 = !{!218, !215}
!224 = !{!221, !222, i64 0}
!225 = !{!221, !4, i64 8}
!226 = !{!221, !4, i64 12}
!227 = !{!228, !215}
!228 = distinct !{!228, !229, !"_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE: argument 0"}
!229 = distinct !{!229, !"_ZN12_GLOBAL__N_112StringPackerIDsE16buildSuffixArrayEN4llvh15MutableArrayRefINS1_11StringEntryEEERKNS2_8DenseSetImNS2_12DenseMapInfoImEEEE"}
!230 = !{!59, !59, i64 0}
!231 = !{!232, !218, !215}
!232 = distinct !{!232, !233, !"_ZN4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E6insertEOm: argument 0"}
!233 = distinct !{!233, !"_ZN4llvh6detail12DenseSetImplImNS_8DenseMapImNS0_13DenseSetEmptyENS_12DenseMapInfoImEENS0_12DenseSetPairImEEEES5_E6insertEOm"}
!234 = !{!232, !215}
!235 = distinct !{!235, !98}
!236 = distinct !{!236, !65}
!237 = !{!238, !32, i64 8}
!238 = !{!"_ZTSN4llvh8ArrayRefIDsEE", !59, i64 0, !32, i64 8}
!239 = !{!238, !59, i64 0}
!240 = distinct !{!240, !65}
!241 = distinct !{!241, !65}
!242 = !{!243, !4, i64 16}
!243 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixE", !238, i64 0, !4, i64 16}
!244 = !{!245, !247}
!245 = distinct !{!245, !246, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!246 = distinct !{!246, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv"}
!247 = distinct !{!247, !248, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!248 = distinct !{!248, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!249 = distinct !{!249, !65}
!250 = !{!251, !251, i64 0}
!251 = !{!"p1 _ZTSN4llvh6detail12DenseMapPairIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EEEE", !14, i64 0}
!252 = distinct !{!252, !98}
!253 = distinct !{!253, !98}
!254 = !{i64 0, i64 8, !230, i64 8, i64 8, !92, i64 16, i64 4, !3}
!255 = !{!256, !256, i64 0}
!256 = !{!"p2 _ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !26, i64 0}
!257 = !{!258, !256, i64 16}
!258 = !{!"_ZTSNSt12_Vector_baseIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryESaIS4_EE17_Vector_impl_dataE", !256, i64 0, !256, i64 8, !256, i64 16}
!259 = distinct !{!259, !65}
!260 = !{!258, !256, i64 8}
!261 = !{!212, !212, i64 0}
!262 = !{!258, !256, i64 0}
!263 = distinct !{!263, !65}
!264 = !{i64 0, i64 8, !230, i64 8, i64 8, !92}
!265 = !{!266}
!266 = distinct !{!266, !267, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!267 = distinct !{!267, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_"}
!268 = !{!269}
!269 = distinct !{!269, !267, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE16SuffixArrayEntryES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!270 = !{!266, !269}
!271 = !{!266, !228, !215}
!272 = !{!269, !228, !215}
!273 = distinct !{!273, !65}
!274 = distinct !{!274, !65}
!275 = distinct !{!275, !65}
!276 = !{!277, !215}
!277 = distinct !{!277, !278, !"_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE: argument 0"}
!278 = distinct !{!278, !"_ZN12_GLOBAL__N_112StringPackerIDsE25computeOverlapsAndParentsEN4llvh15MutableArrayRefINS1_11StringEntryEEENS2_8ArrayRefINS1_16SuffixArrayEntryEEE"}
!279 = distinct !{!279, !65}
!280 = distinct !{!280, !65}
!281 = !{!282}
!282 = distinct !{!282, !283, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!283 = distinct !{!283, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_"}
!284 = !{!285}
!285 = distinct !{!285, !283, !"_ZSt19__relocate_object_aISt6vectorIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS4_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!286 = !{!287, !287, i64 0}
!287 = !{!"p1 _ZTSN12_GLOBAL__N_112StringPackerIDsE7OverlapE", !14, i64 0}
!288 = !{!282, !277, !215}
!289 = !{!285, !277, !215}
!290 = !{!291, !287, i64 16}
!291 = !{!"_ZTSNSt12_Vector_baseIN12_GLOBAL__N_112StringPackerIDsE7OverlapESaIS3_EE17_Vector_impl_dataE", !287, i64 0, !287, i64 8, !287, i64 16}
!292 = distinct !{!292, !65}
!293 = !{!291, !287, i64 0}
!294 = distinct !{!294, !65}
!295 = !{!291, !287, i64 8}
!296 = !{i64 0, i64 8, !255, i64 8, i64 8, !92, i64 16, i64 8, !261}
!297 = !{!298, !300}
!298 = distinct !{!298, !299, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 0"}
!299 = distinct !{!299, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE7OverlapES3_SaIS3_EEvPT_PT0_RT1_"}
!300 = distinct !{!300, !299, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_112StringPackerIDsE7OverlapES3_SaIS3_EEvPT_PT0_RT1_: argument 1"}
!301 = distinct !{!301, !65}
!302 = distinct !{!302, !65}
!303 = !{!304, !212, i64 32}
!304 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE11StringEntryE", !4, i64 0, !238, i64 8, !32, i64 24, !212, i64 32, !32, i64 40, !212, i64 48, !212, i64 56, !32, i64 64, !305, i64 72}
!305 = !{!"_ZTSN4llvh8DenseSetIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_12DenseMapInfoIS6_EEEE", !306, i64 0}
!306 = !{!"_ZTSN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_EE", !307, i64 0}
!307 = !{!"_ZTSN4llvh8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_EENS7_12DenseSetPairIS6_EEEE", !308, i64 0, !4, i64 8, !4, i64 12, !4, i64 16}
!308 = !{!"p1 _ZTSN4llvh6detail12DenseSetPairIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEE", !14, i64 0}
!309 = !{!304, !4, i64 0}
!310 = !{!304, !32, i64 40}
!311 = distinct !{!311, !65}
!312 = distinct !{!312, !65}
!313 = !{!314, !212, i64 16}
!314 = !{!"_ZTSN12_GLOBAL__N_112StringPackerIDsE7OverlapE", !315, i64 0, !212, i64 16}
!315 = !{!"_ZTSN4llvh8ArrayRefIPN12_GLOBAL__N_112StringPackerIDsE11StringEntryEEE", !256, i64 0, !32, i64 8}
!316 = !{!304, !212, i64 56}
!317 = !{!315, !256, i64 0}
!318 = !{!315, !32, i64 8}
!319 = !{!304, !212, i64 48}
!320 = !{!307, !308, i64 0}
!321 = !{!307, !4, i64 16}
!322 = distinct !{!322, !65}
!323 = !{!304, !32, i64 64}
!324 = distinct !{!324, !65}
!325 = distinct !{!325, !65}
!326 = !{!327, !329, !215}
!327 = distinct !{!327, !328, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_: argument 0"}
!328 = distinct !{!328, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS7_EENS8_12DenseSetPairIS7_EEEES7_S9_SB_SD_E11try_emplaceIJRS9_EEESt4pairINS_16DenseMapIteratorIS7_S9_SB_SD_Lb0EEEbERKS7_DpOT_"}
!329 = distinct !{!329, !330, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_: argument 0"}
!330 = distinct !{!330, !"_ZN4llvh6detail12DenseSetImplIPKN12_GLOBAL__N_112StringPackerIDsE11StringEntryENS_8DenseMapIS7_NS0_13DenseSetEmptyENS_12DenseMapInfoIS7_EENS0_12DenseSetPairIS7_EEEESB_E6insertERKS7_"}
!331 = !{!307, !4, i64 8}
!332 = !{!307, !4, i64 12}
!333 = distinct !{!333, !65, !201, !202}
!334 = distinct !{!334, !65, !202, !201}
!335 = distinct !{!335, !65, !201, !202}
!336 = distinct !{!336, !65, !202, !201}
!337 = !{!327, !329}
!338 = distinct !{!338, !65}
!339 = distinct !{!339, !65}
!340 = !{!341}
!341 = distinct !{!341, !342, !"_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!342 = distinct !{!342, !"_ZN12_GLOBAL__N_112StringPackerIhE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!343 = !{!18, !19, i64 8}
!344 = !{!171, !32, i64 24}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE: argument 0"}
!347 = distinct !{!347, !"_ZN12_GLOBAL__N_112StringPackerIDsE15fastPackStringsEN4llvh15MutableArrayRefINS1_11StringEntryEEE"}
!348 = !{!304, !32, i64 24}
!349 = distinct !{!349, !201, !202}
!350 = !{!"branch_weights", i32 4, i32 12}
!351 = distinct !{!351, !201, !202}
!352 = distinct !{!352, !201}
!353 = !{!12, !13, i64 8}
!354 = distinct !{!354, !65}
!355 = !{!211, !212, i64 16}
!356 = distinct !{!356, !65}
!357 = !{!73, !74, i64 16}
!358 = !{!359}
!359 = distinct !{!359, !360, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE5beginEv: argument 0"}
!360 = distinct !{!360, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE5beginEv"}
!361 = !{!14, !14, i64 0}
!362 = !{!363}
!363 = distinct !{!363, !364, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!364 = distinct !{!364, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!365 = !{!30, !31, i64 40}
!366 = !{!30, !31, i64 72}
!367 = distinct !{!367, !65}
!368 = !{!369, !24, i64 0}
!369 = !{!"_ZTSSt15_Deque_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS5_PS5_E", !24, i64 0, !24, i64 8, !24, i64 16, !25, i64 24}
!370 = !{!369, !24, i64 16}
!371 = !{!369, !25, i64 24}
!372 = !{!373}
!373 = distinct !{!373, !374, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!374 = distinct !{!374, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!375 = !{!376}
!376 = distinct !{!376, !377, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!377 = distinct !{!377, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!378 = distinct !{!378, !65}
!379 = !{!380, !19, i64 0}
!380 = !{!"_ZTSN4llvh9StringRefE", !19, i64 0, !32, i64 8}
!381 = !{!380, !32, i64 8}
!382 = !{!383}
!383 = distinct !{!383, !384, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!384 = distinct !{!384, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv: argument 0"}
!387 = distinct !{!387, !"_ZNSt5dequeISt6vectorIDsSaIDsEESaIS2_EE3endEv"}
!388 = distinct !{!388, !65}
!389 = distinct !{!389, !65}
!390 = !{!391, !4, i64 4}
!391 = !{!"_ZTSN6hermes16StringTableEntryE", !4, i64 0, !4, i64 4}
!392 = !{!391, !4, i64 0}
!393 = distinct !{!393, !98}
!394 = distinct !{!394, !98}
!395 = distinct !{!395, !65}
!396 = distinct !{!396, !65}
!397 = !{!84, !84, i64 0}
!398 = !{!399, !20, i64 16}
!399 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorIjNS0_6detail13DenseSetEmptyENS0_12DenseMapInfoIjEENS2_12DenseSetPairIjEELb0EEEbE", !400, i64 0, !20, i64 16}
!400 = !{!"_ZTSN4llvh16DenseMapIteratorIjNS_6detail13DenseSetEmptyENS_12DenseMapInfoIjEENS1_12DenseSetPairIjEELb0EEE", !84, i64 0, !84, i64 8}
!401 = distinct !{!401, !65}
!402 = distinct !{!402, !65}
!403 = !{!404, !406}
!404 = distinct !{!404, !405, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix11getEmptyKeyEv: argument 0"}
!405 = distinct !{!405, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix11getEmptyKeyEv"}
!406 = distinct !{!406, !407, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv: argument 0"}
!407 = distinct !{!407, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv"}
!408 = !{!409, !411}
!409 = distinct !{!409, !410, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!410 = distinct !{!410, !"_ZN12_GLOBAL__N_112StringPackerIhE12HashedSuffix15getTombstoneKeyEv"}
!411 = distinct !{!411, !412, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!412 = distinct !{!412, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIhE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!413 = distinct !{!413, !65}
!414 = distinct !{!414, !65}
!415 = !{!222, !222, i64 0}
!416 = !{!417, !20, i64 16}
!417 = !{!"_ZTSSt4pairIN4llvh16DenseMapIteratorImNS0_6detail13DenseSetEmptyENS0_12DenseMapInfoImEENS2_12DenseSetPairImEELb0EEEbE", !418, i64 0, !20, i64 16}
!418 = !{!"_ZTSN4llvh16DenseMapIteratorImNS_6detail13DenseSetEmptyENS_12DenseMapInfoImEENS1_12DenseSetPairImEELb0EEE", !222, i64 0, !222, i64 8}
!419 = distinct !{!419, !65}
!420 = distinct !{!420, !65}
!421 = !{!422, !424}
!422 = distinct !{!422, !423, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix11getEmptyKeyEv: argument 0"}
!423 = distinct !{!423, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix11getEmptyKeyEv"}
!424 = distinct !{!424, !425, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv: argument 0"}
!425 = distinct !{!425, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E11getEmptyKeyEv"}
!426 = !{!427, !429}
!427 = distinct !{!427, !428, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv: argument 0"}
!428 = distinct !{!428, !"_ZN12_GLOBAL__N_112StringPackerIDsE12HashedSuffix15getTombstoneKeyEv"}
!429 = distinct !{!429, !430, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv: argument 0"}
!430 = distinct !{!430, !"_ZN4llvh12DenseMapBaseINS_8DenseMapIN12_GLOBAL__N_112StringPackerIDsE12HashedSuffixESt6vectorIPNS4_11StringEntryESaIS8_EES5_NS_6detail12DenseMapPairIS5_SA_EEEES5_SA_S5_SD_E15getTombstoneKeyEv"}
!431 = distinct !{!431, !65, !201, !202}
!432 = distinct !{!432, !65, !202, !201}
!433 = distinct !{!433, !65, !201, !202}
!434 = distinct !{!434, !65, !202, !201}
!435 = distinct !{!435, !65}
!436 = distinct !{!436, !65}
!437 = distinct !{!437, !65}
!438 = distinct !{!438, !65}
!439 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!440 = !{!441, !442, i64 17}
!441 = !{!"_ZTSN4llvh5TwineE", !5, i64 0, !5, i64 8, !442, i64 16, !442, i64 17}
!442 = !{!"_ZTSN4llvh5Twine8NodeKindE", !5, i64 0}
!443 = !{!441, !442, i64 16}
!444 = !{!445}
!445 = distinct !{!445, !446, !"_ZN4llvh5Twine9utohexstrERKm: argument 0"}
!446 = distinct !{!446, !"_ZN4llvh5Twine9utohexstrERKm"}
!447 = !{!448}
!448 = distinct !{!448, !449, !"_ZN4llvh5Twine9utohexstrERKm: argument 0"}
!449 = distinct !{!449, !"_ZN4llvh5Twine9utohexstrERKm"}
!450 = !{!451}
!451 = distinct !{!451, !452, !"_ZNK4llvh5Twine6concatERKS0_: argument 0"}
!452 = distinct !{!452, !"_ZNK4llvh5Twine6concatERKS0_"}
!453 = !{i64 0, i64 8, !55, i64 8, i64 8, !55, i64 16, i64 1, !454, i64 17, i64 1, !454}
!454 = !{!442, !442, i64 0}
end_hunk_5
