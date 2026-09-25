Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DWARFVerifier?download=true
inline.NumInlined: 9912
inline.NumDeleted: 5206
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZNK4llvm13DataExtractor5getU8EPmPNS_5ErrorE
declare noundef zeroext i8 @_ZNK4llvm13DataExtractor5getU8EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i64 @_ZNK4llvm13DataExtractor6getU64EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZNK4llvm13DataExtractor6getU32EPmPNS_5ErrorE(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN4llvm12DWARFContext14getDebugAbbrevEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #3

declare void @_ZNK4llvm16DWARFDebugAbbrev29getAbbreviationDeclarationSetEm(ptr dead_on_unwind writable sret(%"class.llvm::Expected") align 8, ptr noundef nonnull align 8 dereferenceable(88), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm24OutputCategoryAggregator6ReportENS_9StringRefENS_12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr nofree readonly captures(address_is_null) %1, i64 %2, ptr %3, i64 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"class.llvm::function_ref", align 8 ; 3 uses
  store ptr %3, ptr %5, align 8, !tbaa !124
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !47
  tail call void @_ZN4llvm24OutputCategoryAggregator6ReportENS_9StringRefES1_NS_12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr %1, i64 %2, ptr nonnull @.str.136, i64 0, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %5)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN4llvm13DWARFVerifier10verifyNameERKNS_8DWARFDieE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %class.anon.58, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !138
  store i8 0, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i32 0, ptr %i.c, align 8, !tbaa !142
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 0, ptr %i.d, align 8, !tbaa !143
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.e, align 4, !tbaa !144
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !112
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %3, ptr %i.g, align 8, !tbaa !146
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !137
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.i, align 8, !tbaa !138
  store i8 0, ptr %i.h, align 8, !tbaa !78
  call void @_ZNK4llvm8DWARFDie11getFullNameERNS_18raw_string_ostreamEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull %5) #27
  %i.j = load i64, ptr %i.i, align 8, !tbaa !138  ; 3 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.b, align 8, !tbaa !138
  %i.m = icmp eq i64 %i.j, %i.l
  br i1 %i.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit: ; preds = %bb.b
  %i.n = load ptr, ptr %3, align 8, !tbaa !147
  %i.o = load ptr, ptr %5, align 8, !tbaa !147
  %bcmp.i = call i32 @bcmp(ptr %i.o, ptr %i.n, i64 %i.j)
  %i.p = icmp eq i32 %bcmp.i, 0
  br i1 %i.p, label %bb.c, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread: ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store ptr %0, ptr %6, align 8, !tbaa !149
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %5, ptr %i.r, align 8, !tbaa !146
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %3, ptr %i.s, align 8, !tbaa !146
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %i.t, align 8, !tbaa !68
  %i.u = ptrtoint ptr %6 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store ptr @"_ZN4llvm12function_refIFvvEE11callback_fnIZNS_13DWARFVerifier10verifyNameERKNS_8DWARFDieEE3$_0EEvl", ptr %2, align 8, !tbaa !124
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !47
  call void @_ZN4llvm24OutputCategoryAggregator6ReportENS_9StringRefES1_NS_12function_refIFvvEEE(ptr noundef nonnull align 8 dereferenceable(97) %i.q, ptr nonnull readonly @.str.5, i64 57, ptr nonnull @.str.136, i64 0, ptr noundef nonnull byval(%"class.llvm::function_ref") align 8 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread
  %.0 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit ], [ false, %bb.a ]
  %i.v = load ptr, ptr %5, align 8, !tbaa !147    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.h
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.x = load i64, ptr %i.h, align 8, !tbaa !78
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.z = load ptr, ptr %3, align 8, !tbaa !147    ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !78
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %.0
}

declare void @_ZNK4llvm8DWARFDie11getFullNameERNS_18raw_string_ostreamEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_ZN4llvm13DWARFVerifier18verifyUnitContentsERNS_9DWARFUnitERSt3mapImSt3setImSt4lessImESaImEES6_SaISt4pairIKmS8_EEESE_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %5 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %6 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %7 = alloca %"class.llvm::function_ref", align 8 ; 5 uses
  %8 = alloca %"class.llvm::DWARFDie", align 8    ; 12 uses
  %9 = alloca %"class.llvm::iterator_range", align 8 ; 5 uses
  %10 = alloca %"class.llvm::DWARFDie::attribute_iterator", align 8 ; 6 uses
  %11 = alloca %"struct.llvm::DWARFAttribute", align 8 ; 5 uses
  %12 = alloca %"class.llvm::formatv_object", align 8 ; 12 uses
  %13 = alloca %"struct.llvm::DIDumpOptions", align 8 ; 21 uses
  %14 = alloca %"class.llvm::DWARFDie", align 8   ; 7 uses
  %15 = alloca %class.anon.107, align 8           ; 4 uses
  %16 = alloca %class.anon.108, align 8           ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %17 = alloca %class.anon.109, align 8           ; 6 uses
  %18 = alloca %class.anon.110, align 8           ; 4 uses
  %19 = alloca %"struct.llvm::DWARFVerifier::DieRangeInfo", align 8 ; 12 uses
  tail call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %1, i1 noundef zeroext false) #27
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 296 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !755
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !756
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 24                  ; 2 uses
  %i.j = and i64 %i.i, 4294967295
  %.not93 = icmp eq i64 %i.j, 0
  br i1 %.not93, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 168
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %12, i64 56 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.r = ptrtoint ptr %i.q to i64
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 14
  %i.w = getelementptr inbounds nuw i8, ptr %13, i64 15
  %i.x = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.ad = getelementptr inbounds nuw i8, ptr %13, i64 112 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %13, i64 128 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 120
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 144 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %13, i64 160 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %13, i64 152
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 96
  %wide.trip.count = and i64 %i.i, 4294967295
  %i.ak = getelementptr inbounds nuw i8, ptr %13, i64 24
  br label %bb.b

._crit_edge91:                                    ; preds = %_ZNK4llvm8DWARFDie6getTagEv.exit.thread, %bb.a
  %.024.lcssa = phi i32 [ 0, %bb.a ], [ %.2, %_ZNK4llvm8DWARFDie6getTagEv.exit.thread ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  call void @_ZN4llvm9DWARFUnit19extractDIEsIfNeededEb(ptr noundef nonnull align 8 dereferenceable(448) %1, i1 noundef zeroext false) #27
  %i.al = load ptr, ptr %i.b, align 8, !tbaa !152 ; 7 uses
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !152
  %.not = icmp eq ptr %i.al, %i.am                ; 2 uses
  %spec.select.i = select i1 %.not, ptr null, ptr %1
  %spec.select1.i = select i1 %.not, ptr null, ptr %i.al ; 2 uses
  store ptr %spec.select.i, ptr %14, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  store ptr %spec.select1.i, ptr %i.an, align 8
  %.not83 = icmp eq ptr %spec.select1.i, null
  br i1 %.not83, label %bb.k, label %bb.l

bb.b:                                             ; preds = %.lr.ph90, %_ZNK4llvm8DWARFDie6getTagEv.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph90 ], [ %indvars.iv.next, %_ZNK4llvm8DWARFDie6getTagEv.exit.thread ] ; 2 uses
  %.02487 = phi i32 [ 0, %.lr.ph90 ], [ %.2, %_ZNK4llvm8DWARFDie6getTagEv.exit.thread ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !756
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.ao, i64 %indvars.iv ; 2 uses
  store ptr %1, ptr %8, align 8
  store ptr %i.ap, ptr %i.k, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !155 ; 2 uses
  %.not.i = icmp eq ptr %i.ar, null
  br i1 %.not.i, label %_ZNK4llvm8DWARFDie6getTagEv.exit.thread, label %_ZNK4llvm8DWARFDie6getTagEv.exit

_ZNK4llvm8DWARFDie6getTagEv.exit:                 ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i16, ptr %i.as, align 4, !tbaa !167
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %_ZNK4llvm8DWARFDie6getTagEv.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK4llvm8DWARFDie6getTagEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @_ZNK4llvm8DWARFDie10attributesEv(ptr dead_on_unwind nonnull writable sret(%"class.llvm::iterator_range") align 8 %9, ptr noundef nonnull align 8 dereferenceable(16) %8) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %10, ptr noundef nonnull align 8 dereferenceable(176) %9, i64 88, i1 false)
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8 ; 2 uses
  %i.av = load i32, ptr %i.l, align 8, !tbaa !758
  %.not8485 = icmp eq i32 %i.av, %.sroa.3.0.copyload
  br i1 %.not8485, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.1.lcssa = phi i32 [ %.02487, %bb.c ], [ %i.bi, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %i.aw = call noundef zeroext i1 @_ZN4llvm13DWARFVerifier10verifyNameERKNS_8DWARFDieE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.ax = zext i1 %i.aw to i32
  %i.ay = add i32 %.1.lcssa, %i.ax
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !176
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !155 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i28, label %_ZN4llvm13DIDumpOptionsD2Ev.exit, label %_ZNK4llvm8DWARFDie11hasChildrenEv.exit

_ZNK4llvm8DWARFDie11hasChildrenEv.exit:           ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 7
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !177, !range !79, !noundef !80
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.d, label %_ZN4llvm13DIDumpOptionsD2Ev.exit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.186 = phi i32 [ %i.bi, %.lr.ph ], [ %.02487, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false), !tbaa.struct !759
  %i.bf = call noundef i32 @_ZN4llvm13DWARFVerifier24verifyDebugInfoAttributeERKNS_8DWARFDieERNS_14DWARFAttributeE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(64) %11)
  %i.bg = add i32 %i.bf, %.186
  %i.bh = call noundef i32 @_ZN4llvm13DWARFVerifier19verifyDebugInfoFormERKNS_8DWARFDieERNS_14DWARFAttributeERSt3mapImSt3setImSt4lessImESaImEES9_SaISt4pairIKmSB_EEESH_(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 1 %3)
  %i.bi = add i32 %i.bg, %i.bh                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %i.bj = call noundef nonnull align 8 dereferenceable(84) ptr @_ZN4llvm8DWARFDie18attribute_iteratorppEv(ptr noundef nonnull align 8 dereferenceable(84) %10) #27 ; 0 uses
  %i.bk = load i32, ptr %i.l, align 8, !tbaa !758
  %.not84 = icmp eq i32 %i.bk, %.sroa.3.0.copyload
  br i1 %.not84, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %_ZNK4llvm8DWARFDie11hasChildrenEv.exit
  %i.bl = call { ptr, ptr } @_ZNK4llvm8DWARFDie13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #27 ; 2 uses
  %i.bm = extractvalue { ptr, ptr } %i.bl, 0
  %i.bn = extractvalue { ptr, ptr } %i.bl, 1
  %.not.i29 = icmp ne ptr %i.bm, null
  %i.bo = icmp ne ptr %i.bn, null
  %i.bp = select i1 %.not.i29, i1 %i.bo, i1 false
  br i1 %i.bp, label %bb.e, label %_ZN4llvm13DIDumpOptionsD2Ev.exit

bb.e:                                             ; preds = %bb.d
  %i.bq = call { ptr, ptr } @_ZNK4llvm8DWARFDie13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #27
  %i.br = extractvalue { ptr, ptr } %i.bq, 1
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !155 ; 2 uses
  %.not.i30 = icmp eq ptr %i.bt, null
  br i1 %.not.i30, label %_ZNK4llvm8DWARFDie6getTagEv.exit32.thread, label %_ZNK4llvm8DWARFDie6getTagEv.exit32

_ZNK4llvm8DWARFDie6getTagEv.exit32:               ; preds = %bb.e
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  %i.bv = load i16, ptr %i.bu, align 4, !tbaa !167
  %i.bw = icmp eq i16 %i.bv, 0
  br i1 %i.bw, label %_ZNK4llvm8DWARFDie6getTagEv.exit32.thread, label %_ZN4llvm13DIDumpOptionsD2Ev.exit

_ZNK4llvm8DWARFDie6getTagEv.exit32.thread:        ; preds = %bb.e, %_ZNK4llvm8DWARFDie6getTagEv.exit32
  %i.bx = load ptr, ptr %0, align 8, !tbaa !184, !nonnull !80, !align !106
  %i.by = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm9WithColor7warningERNS_11raw_ostreamENS_9StringRefEb(ptr noundef nonnull align 8 dereferenceable(48) %i.bx, ptr nonnull @.str.136, i64 0, i1 noundef zeroext false) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !176
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !155 ; 2 uses
  %.not.i33 = icmp eq ptr %i.cb, null
  br i1 %.not.i33, label %_ZNK4llvm8DWARFDie6getTagEv.exit35, label %bb.f

bb.f:                                             ; preds = %_ZNK4llvm8DWARFDie6getTagEv.exit32.thread
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = load i16, ptr %i.cc, align 4, !tbaa !167
  %i.ce = zext i16 %i.cd to i32
  br label %_ZNK4llvm8DWARFDie6getTagEv.exit35

_ZNK4llvm8DWARFDie6getTagEv.exit35:               ; preds = %_ZNK4llvm8DWARFDie6getTagEv.exit32.thread, %bb.f
  %.0.i34 = phi i32 [ %i.ce, %bb.f ], [ 0, %_ZNK4llvm8DWARFDie6getTagEv.exit32.thread ]
  %i.cf = call { ptr, i64 } @_ZN4llvm5dwarf9TagStringEj(i32 noundef %.0.i34) #27 ; 2 uses
  %i.cg = extractvalue { ptr, i64 } %i.cf, 0
  %i.ch = extractvalue { ptr, i64 } %i.cf, 1
  store ptr @.str.6, ptr %12, align 8, !tbaa !181, !alias.scope !760
  store i64 49, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !47, !alias.scope !760
  store ptr %i.n, ptr %i.o, align 8, !tbaa !186, !alias.scope !760
  store i64 1, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !47, !alias.scope !760
  store i8 1, ptr %i.p, align 8, !tbaa !189, !alias.scope !760
  store ptr %i.cg, ptr %i.q, align 8
  store i64 %i.ch, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %i.n, align 8, !alias.scope !760
  store i64 %i.r, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !tbaa !78, !alias.scope !760
  %i.ci = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(48) %i.by, ptr noundef nonnull align 8 dereferenceable(33) %12) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  %i.cj = load ptr, ptr %0, align 8, !tbaa !184, !nonnull !80, !align !106
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ak, i8 0, i64 40, i1 false)
  store i32 -1, ptr %13, align 8, !tbaa !190
  store i32 -1, ptr %i.s, align 4, !tbaa !191
  store i32 -1, ptr %i.t, align 8, !tbaa !192
  store i16 0, ptr %i.u, align 4, !tbaa !193
  store i8 4, ptr %i.v, align 2, !tbaa !194
  store i8 1, ptr %i.w, align 1, !tbaa !195
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.x, i8 0, i64 10, i1 false)
  store ptr %i.z, ptr %i.y, align 8, !tbaa !137
  store i8 0, ptr %i.z, align 8, !tbaa !78
  store ptr %i.ab, ptr %i.aa, align 8, !tbaa !196
  store i64 0, ptr %i.af, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, i8 0, i64 40, i1 false)
  store ptr @_ZN4llvm9WithColor19defaultErrorHandlerENS_5ErrorE, ptr %i.ad, align 8, !tbaa !124
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvN4llvm5ErrorEEPS2_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvN4llvm5ErrorEEPS2_E9_M_invokeERKSt9_Any_dataOS1_>, ptr %i.ae, align 8, !tbaa !124
  store i64 0, ptr %i.ai, align 8
  store ptr @_ZN4llvm9WithColor21defaultWarningHandlerENS_5ErrorE, ptr %i.ag, align 8, !tbaa !124
  store <2 x ptr> <ptr @_ZNSt17_Function_handlerIFvN4llvm5ErrorEEPS2_E10_M_managerERSt9_Any_dataRKS5_St18_Manager_operation, ptr @_ZNSt17_Function_handlerIFvN4llvm5ErrorEEPS2_E9_M_invokeERKSt9_Any_dataOS1_>, ptr %i.ah, align 8, !tbaa !124
  call void @_ZNK4llvm8DWARFDie4dumpERNS_11raw_ostreamEjNS_13DIDumpOptionsE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(48) %i.cj, i32 noundef 0, ptr nofree noundef nonnull align 8 dereferenceable(176) %13) #27
  %i.ck = load ptr, ptr %i.ah, align 8, !tbaa !197 ; 2 uses
  %.not.i.i36 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i36, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNK4llvm8DWARFDie6getTagEv.exit35
  %i.cl = call noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %i.ag, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i32 noundef 3) #27, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.g, %_ZNK4llvm8DWARFDie6getTagEv.exit35
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !197 ; 2 uses
  %.not.i1.i = icmp eq ptr %i.cm, null
  br i1 %.not.i1.i, label %_ZNSt14_Function_baseD2Ev.exit2.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit.i
  %i.cn = call noundef zeroext i1 %i.cm(ptr noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i32 noundef 3) #27, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit2.i

_ZNSt14_Function_baseD2Ev.exit2.i:                ; preds = %bb.h, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.co = load ptr, ptr %i.aj, align 8, !tbaa !197 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.co, null
  br i1 %.not.i3.i, label %_ZNSt14_Function_baseD2Ev.exit4.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cp = call noundef zeroext i1 %i.co(ptr noundef nonnull align 8 dereferenceable(32) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i32 noundef 3) #27, !inline_history !5 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit4.i

_ZNSt14_Function_baseD2Ev.exit4.i:                ; preds = %bb.i, %_ZNSt14_Function_baseD2Ev.exit2.i
  %i.cq = load ptr, ptr %i.aa, align 8, !tbaa !196 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ab
  br i1 %i.cr, label %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit4.i
  call void @free(ptr noundef %i.cq) #27
  br label %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i

_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i:          ; preds = %bb.j, %_ZNSt14_Function_baseD2Ev.exit4.i
  %i.cs = load ptr, ptr %i.y, align 8, !tbaa !147 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, %i.z
  br i1 %i.ct, label %_ZN4llvm13DIDumpOptionsD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i
  %i.cu = load i64, ptr %i.z, align 8, !tbaa !78
  %i.cv = add i64 %i.cu, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cv) #26
  br label %_ZN4llvm13DIDumpOptionsD2Ev.exit

_ZN4llvm13DIDumpOptionsD2Ev.exit:                 ; preds = %_ZN4llvm11SmallVectorIjLj0EED2Ev.exit.i, %._crit_edge, %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNK4llvm8DWARFDie6getTagEv.exit32, %_ZNK4llvm8DWARFDie11hasChildrenEv.exit
  %i.cw = call noundef i32 @_ZN4llvm13DWARFVerifier23verifyDebugInfoCallSiteERKNS_8DWARFDieE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(16) %8)
  %i.cx = add i32 %i.ay, %i.cw
  br label %_ZNK4llvm8DWARFDie6getTagEv.exit.thread

_ZNK4llvm8DWARFDie6getTagEv.exit.thread:          ; preds = %bb.b, %_ZNK4llvm8DWARFDie6getTagEv.exit, %_ZN4llvm13DIDumpOptionsD2Ev.exit
  %.2 = phi i32 [ %i.cx, %_ZN4llvm13DIDumpOptionsD2Ev.exit ], [ %.02487, %_ZNK4llvm8DWARFDie6getTagEv.exit ], [ %.02487, %bb.b ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge91, label %bb.b, !llvm.loop !754

bb.k:                                             ; preds = %._crit_edge91
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 200
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #27
  store ptr %0, ptr %15, align 8, !tbaa !199
end_hunk_0
