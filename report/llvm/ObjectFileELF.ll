Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ObjectFileELF?download=true
inline.NumInlined: 5476
inline.NumDeleted: 2563
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 26
begin_hunk_0_@_ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE:bb.a
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127: ; preds = %bb.l
  %i.cd = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 1
  %i.cf = xor i16 %i.ce, 20039
  %i.cg = getelementptr i8, ptr %i.cd, i64 2
  %i.ch = load i8, ptr %i.cg, align 1
  %i.ci = zext i8 %i.ch to i16
  %i.cj = xor i16 %i.ci, 85
  %i.ck = or i16 %i.cf, %i.cj
  %i.cl = icmp ne i16 %i.ck, 0
  %i.cm = zext i1 %i.cl to i32
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127
  switch i32 %i.ca, label %bb.ae [
    i32 1, label %bb.m
    i32 3, label %bb.y
  ]

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread
  %i.co = icmp eq i32 %i.cc, 16
  br i1 %i.co, label %bb.n, label %bb.ae

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.cp = call noundef ptr @_ZNK12lldb_private13DataExtractor6GetU32EPmPvj(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, i32 noundef 4) #23
  %.not = icmp eq ptr %i.cp, null
  br i1 %.not, label %bb.x, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cq = load i32, ptr %i.d, align 16, !tbaa !79 ; 2 uses
  switch i32 %i.cq, label %bb.v [
    i32 0, label %bb.p
    i32 1, label %bb.r
    i32 2, label %bb.t
  ]

bb.p:                                             ; preds = %bb.o
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 7) #23
  call void @_ZN4llvm6Triple9setVendorENS0_10VendorTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0) #23
  br i1 %.not122, label %.thread177, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = load i32, ptr %i.at, align 4, !tbaa !79
  %i.cs = load i32, ptr %i.au, align 8, !tbaa !79
  %i.ct = load i32, ptr %i.av, align 4, !tbaa !79
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 86, ptr nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i64 27, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i32 noundef %i.cr, i32 noundef %i.cs, i32 noundef %i.ct) #23
  br label %.thread177

bb.r:                                             ; preds = %bb.o
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0) #23
  call void @_ZN4llvm6Triple9setVendorENS0_10VendorTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0) #23
  br i1 %.not122, label %.thread177, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cu = load i32, ptr %i.at, align 4, !tbaa !79
  %i.cv = load i32, ptr %i.au, align 8, !tbaa !79
  %i.cw = load i32, ptr %i.av, align 4, !tbaa !79
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 86, ptr nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i64 27, ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i32 noundef %i.cu, i32 noundef %i.cv, i32 noundef %i.cw) #23
  br label %.thread177

bb.t:                                             ; preds = %bb.o
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 13) #23
  call void @_ZN4llvm6Triple9setVendorENS0_10VendorTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0) #23
  br i1 %.not122, label %.thread177, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = load i32, ptr %i.at, align 4, !tbaa !79
  %i.cy = load i32, ptr %i.au, align 8, !tbaa !79
  %i.cz = load i32, ptr %i.av, align 4, !tbaa !79
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 86, ptr nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i64 27, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i32 noundef %i.cx, i32 noundef %i.cy, i32 noundef %i.cz) #23
  br label %.thread177

bb.v:                                             ; preds = %bb.o
  br i1 %.not122, label %.thread177, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.da = load i32, ptr %i.at, align 4, !tbaa !79
  %i.db = load i32, ptr %i.au, align 8, !tbaa !79
  %i.dc = load i32, ptr %i.av, align 4, !tbaa !79
  call void (ptr, ptr, i64, ptr, i64, ptr, ...) @_ZN12lldb_private3Log7FormatfEN4llvm9StringRefES2_PKcz(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str.1, i64 86, ptr nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i64 27, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE, i32 noundef %i.cq, i32 noundef %i.da, i32 noundef %i.db, i32 noundef %i.dc) #23
  br label %.thread177

.thread177:                                       ; preds = %bb.q, %bb.p, %bb.s, %bb.r, %bb.u, %bb.t, %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ae

bb.x:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %8, ptr noundef nonnull @.str.13)
  %i.dd = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %8) #23 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.ar

bb.y:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread
  %i.de = load i64, ptr %i.ao, align 8, !tbaa !106
  %.not.i.i128 = icmp ne i64 %i.de, 0
  %i.df = icmp ult i32 %i.cc, 4
  %or.cond27.not = select i1 %.not.i.i128, i1 true, i1 %i.df
  br i1 %or.cond27.not, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = load i64, ptr %i.a, align 8, !tbaa !48
  %i.dh = zext i32 %i.cc to i64
  %i.di = load ptr, ptr %1, align 8, !tbaa !77
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef ptr %i.dk(ptr noundef nonnull align 8 dereferenceable(48) %1, i64 noundef %i.dg, i64 noundef %i.dh) #23 ; 2 uses
  %.not.not = icmp eq ptr %i.dl, null
  br i1 %.not.not, label %.thread179, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #23
  %i.dm = load i32, ptr %i.m, align 4, !tbaa !554
  store ptr %i.ap, ptr %9, align 8, !tbaa !105
  store i64 0, ptr %i.aq, align 8, !tbaa !106
  store i64 20, ptr %i.ar, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.dn = zext i32 %i.dm to i64
  call void @_ZN12lldb_private4UUIDC2EN4llvm8ArrayRefIhEE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr nonnull %i.dl, i64 %i.dn)
  %i.do = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIhEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(48) %5) ; 0 uses
  %i.dp = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.dq = icmp eq ptr %i.dp, %i.as
  br i1 %i.dq, label %_ZN12lldb_private4UUIDC2EPKvj.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.dp) #23
  br label %_ZN12lldb_private4UUIDC2EPKvj.exit

_ZN12lldb_private4UUIDC2EPKvj.exit:               ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.dr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN4llvm15SmallVectorImplIhEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef nonnull align 8 dereferenceable(48) %9) ; 0 uses
  %i.ds = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.ap
  br i1 %i.dt, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZN12lldb_private4UUIDC2EPKvj.exit
  call void @free(ptr noundef %i.ds) #23
  br label %bb.ad

.thread179:                                       ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #23
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %10, ptr noundef nonnull @.str.18)
  %i.du = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %10) #23 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %10) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  br label %bb.ar

bb.ad:                                            ; preds = %bb.ac, %_ZN12lldb_private4UUIDC2EPKvj.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.thread177, %bb.y, %bb.m, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127.thread
  %i.dv = call noundef zeroext i1 @_ZNK12lldb_private8ArchSpec6IsMIPSEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #23
  br i1 %i.dv, label %bb.af, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.af:                                            ; preds = %bb.ae
  %i.dw = load i32, ptr %i.t, align 4, !tbaa !144
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.ag, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.ag:                                            ; preds = %bb.af
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 7) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130: ; preds = %bb.l
  %i.dy = icmp eq i32 %i.cc, 4
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !67
  %bcmp.i129 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.19, i64 %i.ba)
  %i.dz = icmp eq i32 %bcmp.i129, 0
  %i.ea = select i1 %i.dz, i1 %i.cb, i1 false
  %i.eb = select i1 %i.ea, i1 %i.dy, i1 false
  %i.ec = load i32, ptr %6, align 8
  %i.ed = icmp eq i32 %i.ec, 7
  %or.cond21 = select i1 %i.eb, i1 %i.ed, i1 false
  br i1 %or.cond21, label %bb.ah, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.ah:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  %i.ee = call noundef ptr @_ZNK12lldb_private13DataExtractor6GetU32EPmPvj(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, i32 noundef 1) #23
  %.not123 = icmp eq ptr %i.ee, null
  br i1 %.not123, label %.thread184, label %bb.ai

.thread184:                                       ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  call void @_ZN12lldb_private6Status15FromErrorStringEPKc(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %11, ptr noundef nonnull @.str.20)
  %i.ef = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %11) #23 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %bb.ar

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  %i.eg = load i32, ptr %i.e, align 4, !tbaa !79  ; 2 uses
  %i.eh = udiv i32 %i.eg, 100000000
  store i32 %i.eh, ptr %i.f, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #23
  %16 = insertelement <2 x i32> poison, i32 %i.eg, i64 0
  %17 = shufflevector <2 x i32> %16, <2 x i32> poison, <2 x i32> zeroinitializer
  %18 = urem <2 x i32> %17, <i32 100000000, i32 10000> ; 2 uses
  %19 = extractelement <2 x i32> %18, i64 0
  %20 = udiv i32 %19, 1000000
  store i32 %20, ptr %i.g, align 4, !tbaa !79
  %21 = bitcast <2 x i32> %18 to <4 x i16>
  %.lhs.trunc = extractelement <4 x i16> %21, i64 2
  %i.ei = udiv i16 %.lhs.trunc, 100
  %.zext = zext nneg i16 %i.ei to i32
  store i32 %.zext, ptr %i.h, align 4, !tbaa !79
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  store ptr @.str.21, ptr %13, align 8, !tbaa !166, !alias.scope !555
  store i64 17, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !48, !alias.scope !555
  store ptr %i.y, ptr %i.z, align 8, !tbaa !310, !alias.scope !555
  store i64 3, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !48, !alias.scope !555
  store i8 1, ptr %i.aa, align 8, !tbaa !313, !alias.scope !555
  store <2 x i64> %i.x, ptr %i.ab, align 8, !tbaa !315, !alias.scope !555
  store i64 %i.u, ptr %i.ad, align 8, !tbaa !315, !alias.scope !555
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %i.y, align 8, !alias.scope !555
  store i64 %i.ae, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !555
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i, align 8, !alias.scope !555
  store i64 %i.af, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !alias.scope !555
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRKjEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i, align 8, !alias.scope !555
  store i64 %i.ag, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !66, !alias.scope !555
  call void @llvm.experimental.noalias.scope.decl(metadata !556)
  store ptr %i.ah, ptr %12, align 8, !tbaa !145, !alias.scope !556
  store i64 0, ptr %i.ai, align 8, !tbaa !56, !alias.scope !556
  store i8 0, ptr %i.ah, align 8, !tbaa !66, !alias.scope !556
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23, !noalias !556
  store i32 0, ptr %i.aj, align 8, !tbaa !319, !noalias !556
  store i8 0, ptr %i.ak, align 8, !tbaa !320, !noalias !556
  store i32 1, ptr %i.al, align 4, !tbaa !321, !noalias !556
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false), !noalias !556
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4llvm18raw_string_ostreamE, i64 16), ptr %4, align 8, !tbaa !77, !noalias !556
  store ptr %12, ptr %i.an, align 8, !tbaa !322, !noalias !556
  call void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef null, i64 noundef 0, i32 noundef 0) #23
  %i.ej = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(33) %13) #23 ; 0 uses
  call void @_ZN4llvm11raw_ostreamD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !556
  %i.ek = load ptr, ptr %12, align 8, !tbaa !67
  %i.el = load i64, ptr %i.ai, align 8, !tbaa !56
  call void @_ZN4llvm6Triple9setOSNameENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(56) %2, ptr %i.ek, i64 %i.el) #23
  %i.em = load ptr, ptr %12, align 8, !tbaa !67   ; 2 uses
  %i.en = icmp eq ptr %i.em, %i.ah
  br i1 %i.en, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ai
  %i.eo = load i64, ptr %i.ah, align 8, !tbaa !66
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.em, i64 noundef %i.ep) #24
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  call void @_ZN4llvm6Triple9setVendorENS0_10VendorTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132: ; preds = %bb.l
  %.pre210 = load ptr, ptr %i.o, align 8, !tbaa !67
  %bcmp.i131 = call i32 @bcmp(ptr %.pre210, ptr nonnull @.str.22, i64 %i.ba)
  %i.eq = icmp eq i32 %bcmp.i131, 0
  %i.er = select i1 %i.eq, i1 %i.cb, i1 false
  br i1 %i.er, label %bb.aj, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.aj:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 11) #23
  call void @_ZN4llvm6Triple9setVendorENS0_10VendorTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.pre211 = load ptr, ptr %i.o, align 8, !tbaa !67 ; 3 uses
  %bcmp.i133 = call i32 @bcmp(ptr %.pre211, ptr nonnull @.str.23, i64 %i.ba)
  %i.es = icmp eq i32 %bcmp.i133, 0
  br i1 %i.es, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit136

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 12) #23
  call void @_ZN4llvm6Triple9setVendorENS0_10VendorTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 0) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit136: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134
  %i.et = load i32, ptr %.pre211, align 1
  %i.eu = xor i32 %i.et, 1919184449
  %i.ev = getelementptr i8, ptr %.pre211, i64 3
  %i.ew = load i32, ptr %i.ev, align 1
  %i.ex = xor i32 %i.ew, 1684631410
  %i.ey = or i32 %i.eu, %i.ex
  %i.ez = icmp ne i32 %i.ey, 0
  %i.fa = zext i1 %i.ez to i32
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit136.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit136.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit136
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 7) #23
  call void @_ZN4llvm6Triple14setEnvironmentENS0_15EnvironmentTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 17) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138: ; preds = %bb.l
  %.pre212 = load ptr, ptr %i.o, align 8, !tbaa !67
  %bcmp.i137 = call i32 @bcmp(ptr %.pre212, ptr nonnull @.str.25, i64 %i.ba)
  %i.fc = icmp eq i32 %bcmp.i137, 0
  br i1 %i.fc, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 7) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140: ; preds = %bb.l
  %.pre213 = load ptr, ptr %i.o, align 8, !tbaa !67
  %bcmp.i139 = call i32 @bcmp(ptr %.pre213, ptr nonnull @.str, i64 %i.ba)
  %i.fd = icmp eq i32 %bcmp.i139, 0
  %i.fe = icmp eq i32 %i.ca, 1179208773
  %or.cond30 = select i1 %i.fd, i1 %i.fe, i1 false
  br i1 %or.cond30, label %bb.ak, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.ak:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140
  %i.ff = call noundef i64 @_ZNK12lldb_private13DataExtractor10GetAddressEPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #23 ; 3 uses
  %i.fg = call noundef i64 @_ZNK12lldb_private13DataExtractor10GetAddressEPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #23 ; 0 uses
  %i.fh = mul i64 %i.ff, 3
  %i.fi = load i32, ptr %i.r, align 4, !tbaa !82
  %i.fj = zext i32 %i.fi to i64
  %i.fk = mul i64 %i.fh, %i.fj
  %i.fl = load i64, ptr %i.a, align 8, !tbaa !48
  %i.fm = add i64 %i.fk, %i.fl
  store i64 %i.fm, ptr %i.a, align 8, !tbaa !48
  %.not209 = icmp eq i64 %i.ff, 0
  br i1 %.not209, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ak, %bb.an
  %.0208 = phi i64 [ %i.fs, %bb.an ], [ 0, %bb.ak ]
  %i.fn = call noundef ptr @_ZNK12lldb_private13DataExtractor7GetCStrEPm(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.a) #23 ; 3 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %bb.aq, label %_ZN4llvm9StringRefC2EPKc.exit

_ZN4llvm9StringRefC2EPKc.exit:                    ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.fp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.fn) #23
  store ptr %i.fn, ptr %15, align 8, !tbaa !186
  store i64 %i.fp, ptr %i.s, align 8, !tbaa !187
  %i.fq = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr nonnull @.str.27, i64 21, i64 noundef 0) #23
  %.not206 = icmp eq i64 %i.fq, -1
  br i1 %.not206, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit
  %i.fr = call noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr nonnull @.str.28, i64 19, i64 noundef 0) #23
  %.not207 = icmp eq i64 %i.fr, -1
  br i1 %.not207, label %bb.an, label %bb.am

bb.am:                                            ; preds = %_ZN4llvm9StringRefC2EPKc.exit, %bb.al
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.loopexit

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.fs = add nuw i64 %.0208, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.fs, %i.ff
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !551

.loopexit:                                        ; preds = %bb.an, %bb.ak, %bb.am
  %i.ft = call noundef zeroext i1 @_ZNK12lldb_private8ArchSpec6IsMIPSEv(ptr noundef nonnull align 8 dereferenceable(96) %2) #23
  br i1 %i.ft, label %bb.ao, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.ao:                                            ; preds = %.loopexit
  %i.fu = load i32, ptr %i.t, align 4, !tbaa !144
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %bb.ap, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.ap:                                            ; preds = %bb.ao
  call void @_ZN4llvm6Triple5setOSENS0_6OSTypeE(ptr noundef nonnull align 8 dereferenceable(56) %2, i32 noundef 7) #23
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread

bb.aq:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  call void (ptr, ptr, ...) @_ZN12lldb_private6Status25FromErrorStringWithFormatEPKcz(ptr dead_on_unwind nonnull writable sret(%"class.lldb_private::Status") align 8 %14, ptr noundef nonnull @.str.26, ptr noundef nonnull @__func__._ZN13ObjectFileELF27RefineModuleDetailsFromNoteERN12lldb_private13DataExtractorERNS0_8ArchSpecERNS0_4UUIDE) #23
  %i.fw = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN12lldb_private6StatusaSEOS0_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %14) #23 ; 0 uses
  call void @_ZN12lldb_private6StatusD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %14) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ar

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit136, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit132, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit130, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit127, %bb.l, %.loopexit, %bb.ao, %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %bb.k, %bb.ag, %bb.af, %bb.ae, %bb.aj, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit136.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit138.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit134.thread
  %i.fx = load <2 x i32>, ptr %6, align 8, !tbaa !79 ; 2 uses
  %i.fy = icmp ne <2 x i32> %i.fx, zeroinitializer ; 2 uses
  %i.fz = sext <2 x i1> %i.fy to <2 x i32>
  %i.ga = add <2 x i32> %i.fx, %i.fz
  %i.gb = select <2 x i1> %i.fy, <2 x i32> splat (i32 4), <2 x i32> zeroinitializer
  %i.gc = add <2 x i32> %i.ga, %i.gb
  %i.gd = and <2 x i32> %i.gc, splat (i32 -4)     ; 2 uses
  %i.ge = extractelement <2 x i32> %i.gd, i64 0
  %i.gf = add i32 %i.ge, 12
  %i.gg = extractelement <2 x i32> %i.gd, i64 1
  %i.gh = add i32 %i.gf, %i.gg
  %i.gi = zext i32 %i.gh to i64
  %i.gj = add i64 %i.aw, %i.gi
  store i64 %i.gj, ptr %i.a, align 8, !tbaa !48
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.thread184, %.thread179, %bb.x, %.thread, %bb.d, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread
  %.8 = phi i1 [ %.0105, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread ], [ true, %.thread ], [ true, %bb.x ], [ true, %.thread179 ], [ true, %.thread184 ], [ true, %bb.aq ], [ true, %bb.d ] ; 2 uses
  %.7 = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit140.thread ], [ false, %.thread ], [ false, %bb.x ], [ false, %.thread179 ], [ false, %.thread184 ], [ false, %bb.aq ], [ false, %bb.d ]
  %i.gk = load ptr, ptr %i.o, align 8, !tbaa !67  ; 2 uses
end_hunk_0
