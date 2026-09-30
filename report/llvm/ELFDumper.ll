Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ELFDumper?download=true
inline.NumInlined: 48625
inline.NumDeleted: 9668
loop-unroll.NumCompletelyUnrolled: 193
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 236
begin_hunk_0_@_ZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE12printMipsGOTERKNS_13MipsGOTParserIS5_EE:bb.a
  %i.a = alloca i64, align 8                      ; 14 uses
  %6 = alloca %class.anon.2543, align 8           ; 8 uses
  %7 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"struct.llvm::object::DataRegion.1459", align 8 ; 4 uses
  %10 = alloca %"class.std::optional.122", align 8 ; 3 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.llvm::FormattedNumber", align 8 ; 9 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.llvm::EnumStrings.642", align 8 ; 5 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %23 = alloca %"struct.llvm::object::DataRegion.1459", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 8, ptr %i.a, align 8, !tbaa !340
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  store ptr %0, ptr %6, align 8, !tbaa !1723
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8, !tbaa !1724
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.a, ptr %i.c, align 8, !tbaa !433
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 25 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.f = load i8, ptr %1, align 8, !tbaa !1670, !range !336, !noundef !248
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.g, ptr @.str.1015, ptr @.str.1016 ; 2 uses
  %i.i = select i1 %i.g, i64 12, i64 13           ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !371
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !372  ; 2 uses
  %i.n = ptrtoint ptr %i.k to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull %i.h, i64 noundef %i.i) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.m, ptr noundef nonnull align 1 dereferenceable(12) %i.h, i64 %i.i, i1 false)
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !372
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.i
  store ptr %i.t, ptr %i.l, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !371
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !372  ; 2 uses
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = icmp ult i64 %i.ab, 21
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.ad = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull @.str.1017, i64 noundef 21) #31
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

bb.e:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(21) %i.y, ptr noundef nonnull align 1 dereferenceable(21) @.str.1017, i64 21, i1 false)
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !372
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 21
  store ptr %i.af, ptr %i.x, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit59

_ZN4llvm11raw_ostreamlsEPKc.exit59:               ; preds = %bb.d, %bb.e
  %.0.i.i58 = phi ptr [ %i.ad, %bb.d ], [ %i.u, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %.val = load ptr, ptr %i.ag, align 8, !tbaa !1672
  %i.ah = getelementptr i8, ptr %.val, i64 16
  %.val.val = load i64, ptr %i.ah, align 1
  %i.ai = call noundef i64 @llvm.bswap.i64(i64 %.val.val)
  %i.aj = add i64 %i.ai, 32752
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !340
  %i.al = trunc i64 %i.ak to i32
  %i.am = add i32 %i.al, 8
  store i64 %i.aj, ptr %7, align 8, !tbaa !401, !alias.scope !24851
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 0, ptr %i.an, align 8, !tbaa !402, !alias.scope !24851
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.am, ptr %i.ao, align 8, !tbaa !403, !alias.scope !24851
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i8 1, ptr %i.ap, align 4, !tbaa !404, !alias.scope !24851
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 21
  store i8 0, ptr %i.aq, align 1, !tbaa !405, !alias.scope !24851
  %i.ar = getelementptr inbounds nuw i8, ptr %7, i64 22
  store i8 0, ptr %i.ar, align 2, !tbaa !406, !alias.scope !24851
  %i.as = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsERKNS_15FormattedNumberE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i58, ptr noundef nonnull align 8 dereferenceable(23) %7) #31 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !371
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !372 ; 2 uses
  %i.ax = ptrtoint ptr %i.au to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = icmp ult i64 %i.az, 2
  br i1 %i.ba, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  %i.bb = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.as, ptr noundef nonnull @.str.904, i64 noundef 2) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

bb.g:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit59
  store i16 2570, ptr %i.aw, align 1
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !372
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store ptr %i.bd, ptr %i.av, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit62

_ZN4llvm11raw_ostreamlsEPKc.exit62:               ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  %i.be = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !371
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !372 ; 2 uses
  %i.bj = ptrtoint ptr %i.bg to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = icmp ult i64 %i.bl, 19
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  %i.bn = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.be, ptr noundef nonnull @.str.1018, i64 noundef 19) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

bb.i:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.bi, ptr noundef nonnull align 1 dereferenceable(19) @.str.1018, i64 19, i1 false)
  %i.bo = load ptr, ptr %i.bh, align 8, !tbaa !372
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 19
  store ptr %i.bp, ptr %i.bh, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit65

_ZN4llvm11raw_ostreamlsEPKc.exit65:               ; preds = %bb.h, %bb.i
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !371
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 3 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !372 ; 2 uses
  %i.bv = ptrtoint ptr %i.bs to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = icmp ult i64 %i.bx, 55
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  %i.bz = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bq, ptr noundef nonnull @.str.1263, i64 noundef 55) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit65
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.bu, ptr noundef nonnull align 1 dereferenceable(55) @.str.1263, i64 55, i1 false)
  %i.ca = load ptr, ptr %i.bt, align 8, !tbaa !372
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 55
  store ptr %i.cb, ptr %i.bt, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit68

_ZN4llvm11raw_ostreamlsEPKc.exit68:               ; preds = %bb.j, %bb.k
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  %.val44 = load i64, ptr %i.cc, align 8, !tbaa !1674
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 8 uses
  %.val45 = load ptr, ptr %i.cd, align 8
  %.not.i = icmp eq i64 %.val44, 0
  %spec.select.i = select i1 %.not.i, ptr null, ptr %.val45
  call fastcc void @_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE12printMipsGOTERKNS_13MipsGOTParserIS5_EEENKUlPKNS1_7support6detail31packed_endian_specific_integralImLS4_0ELm1ELm1EEENS1_9StringRefEE_clESG_SH_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %spec.select.i, ptr nonnull @.str.1020, i64 13)
  %.val51 = load i64, ptr %i.cc, align 8, !tbaa !1674 ; 3 uses
  %i.ce = icmp ult i64 %.val51, 2
  br i1 %i.ce, label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit, label %bb.l

bb.l:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68
  %.val52 = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %.val52, i64 8 ; 2 uses
  %.0.copyload.i.i.i.i = load i64, ptr %i.cf, align 1
  %.mask.i = and i64 %.0.copyload.i.i.i.i, 128
  %i.cg = icmp eq i64 %.mask.i, 0
  br i1 %i.cg, label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread.thread, label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread

_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread: ; preds = %bb.l
  call fastcc void @_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE12printMipsGOTERKNS_13MipsGOTParserIS5_EEENKUlPKNS1_7support6detail31packed_endian_specific_integralImLS4_0ELm1ELm1EEENS1_9StringRefEE_clESG_SH_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %i.cf, ptr nonnull @.str.1021, i64 30)
  %.val55.pr.pre = load i64, ptr %i.cc, align 8, !tbaa !1674 ; 3 uses
  %i.ch = icmp ult i64 %.val55.pr.pre, 2
  br i1 %i.ch, label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit, label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread.thread

_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread.thread: ; preds = %bb.l, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread
  %.val55.pr232 = phi i64 [ %.val55.pr.pre, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread ], [ %.val51, %bb.l ]
  %.val56 = load ptr, ptr %i.cd, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.val56, i64 8
  %.0.copyload.i.i.i.i.i = load i64, ptr %i.ci, align 1
  %.mask.i.i = and i64 %.0.copyload.i.i.i.i.i, 128
  %24 = icmp eq i64 %.mask.i.i, 0
  %.neg = select i1 %24, i64 -1, i64 -2
  br label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit

_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit68, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread.thread
  %.val55191 = phi i64 [ %.val55.pr232, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread.thread ], [ %.val55.pr.pre, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread ], [ %.val51, %_ZN4llvm11raw_ostreamlsEPKc.exit68 ]
  %.1.i.i.neg = phi i64 [ %.neg, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread.thread ], [ -1, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE19getGotModulePointerEv.exit.thread ], [ -1, %_ZN4llvm11raw_ostreamlsEPKc.exit68 ]
  %25 = sub i64 0, %.val55191
  %i.cj = icmp eq i64 %.1.i.i.neg, %25
  br i1 %i.cj, label %.loopexit198, label %bb.m

bb.m:                                             ; preds = %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit
  %i.ck = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !371
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 32 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !372 ; 2 uses
  %i.cp = icmp eq ptr %i.cm, %i.co
  br i1 %i.cp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cq = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ck, ptr noundef nonnull @.str.72, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76

bb.o:                                             ; preds = %bb.m
  store i8 10, ptr %i.co, align 1
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !372
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store ptr %i.cs, ptr %i.cn, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit76

_ZN4llvm11raw_ostreamlsEPKc.exit76:               ; preds = %bb.n, %bb.o
  %i.ct = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !371
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 32 ; 3 uses
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !372 ; 2 uses
  %i.cy = ptrtoint ptr %i.cv to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz
  %i.db = icmp ult i64 %i.da, 16
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit76
  %i.dc = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ct, ptr noundef nonnull @.str.1022, i64 noundef 16) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit79

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit76
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.cx, ptr noundef nonnull align 1 dereferenceable(16) @.str.1022, i64 16, i1 false)
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !372
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store ptr %i.de, ptr %i.cw, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit79

_ZN4llvm11raw_ostreamlsEPKc.exit79:               ; preds = %bb.p, %bb.q
  %i.df = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !371
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 3 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !372 ; 2 uses
  %i.dk = ptrtoint ptr %i.dh to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = icmp ult i64 %i.dm, 47
  br i1 %i.dn, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit79
  %i.do = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.df, ptr noundef nonnull @.str.1264, i64 noundef 47) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

bb.s:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.dj, ptr noundef nonnull align 1 dereferenceable(47) @.str.1264, i64 47, i1 false)
  %i.dp = load ptr, ptr %i.di, align 8, !tbaa !372
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 47
  store ptr %i.dq, ptr %i.di, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit82

_ZN4llvm11raw_ostreamlsEPKc.exit82:               ; preds = %bb.r, %bb.s
  %.val53 = load i64, ptr %i.cc, align 8, !tbaa !1674 ; 3 uses
  %.val54 = load ptr, ptr %i.cd, align 8          ; 2 uses
  %i.dr = icmp ult i64 %.val53, 2
  br i1 %i.dr, label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit89, label %bb.t

bb.t:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82
  %i.ds = getelementptr inbounds nuw i8, ptr %.val54, i64 8
  %.0.copyload.i.i.i.i.i83 = load i64, ptr %i.ds, align 1
  %.mask.i.i84 = and i64 %.0.copyload.i.i.i.i.i83, 128
  %i.dt = icmp eq i64 %.mask.i.i84, 0
  %i.du = select i1 %i.dt, i64 1, i64 2
  br label %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit89

_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit89: ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit82, %bb.t
  %.1.i.i85 = phi i64 [ %i.du, %bb.t ], [ 1, %_ZN4llvm11raw_ostreamlsEPKc.exit82 ] ; 3 uses
  %i.dv = icmp eq i64 %.val53, %.1.i.i85          ; 2 uses
  %i.dw = sub i64 %.val53, %.1.i.i85
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %.val54, i64 %.1.i.i85 ; 2 uses
  %.sroa.0.0.i86 = select i1 %i.dv, ptr null, ptr %i.dx
  %.idx = shl nuw nsw i64 %i.dw, 3
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i86, i64 %.idx
  br i1 %i.dv, label %.loopexit198, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit89, %.lr.ph
  %.0200 = phi ptr [ %i.dz, %.lr.ph ], [ %i.dx, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit89 ] ; 2 uses
  call fastcc void @_ZZN12_GLOBAL__N_112GNUELFDumperIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE12printMipsGOTERKNS_13MipsGOTParserIS5_EEENKUlPKNS1_7support6detail31packed_endian_specific_integralImLS4_0ELm1ELm1EEENS1_9StringRefEE_clESG_SH_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %.0200, ptr nonnull @.str.19, i64 0)
  %i.dz = getelementptr inbounds nuw i8, ptr %.0200, i64 8 ; 2 uses
  %.not42 = icmp eq ptr %i.dz, %i.dy
  br i1 %.not42, label %.loopexit198, label %.lr.ph

.loopexit198:                                     ; preds = %.lr.ph, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit89, %_ZNK12_GLOBAL__N_113MipsGOTParserIN4llvm6object7ELFTypeILNS1_10endiannessE0ELb1EEEE15getLocalEntriesEv.exit
  %i.ea = load i8, ptr %1, align 8, !tbaa !1670, !range !336, !noundef !248
  %i.eb = trunc nuw i8 %i.ea to i1
  br i1 %i.eb, label %_ZN4llvm11raw_ostreamlsEPKc.exit155, label %bb.u

bb.u:                                             ; preds = %.loopexit198
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !1675
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ef = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !371
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 32 ; 3 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !372 ; 2 uses
  %i.ek = icmp eq ptr %i.eh, %i.ej
  br i1 %i.ek, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.el = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.ef, ptr noundef nonnull @.str.72, i64 noundef 1) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

bb.x:                                             ; preds = %bb.v
  store i8 10, ptr %i.ej, align 1
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !372
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 1
  store ptr %i.en, ptr %i.ei, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit96

_ZN4llvm11raw_ostreamlsEPKc.exit96:               ; preds = %bb.w, %bb.x
  %i.eo = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !371
  %i.er = getelementptr inbounds nuw i8, ptr %i.eo, i64 32 ; 3 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !372 ; 2 uses
  %i.et = ptrtoint ptr %i.eq to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = icmp ult i64 %i.ev, 17
  br i1 %i.ew, label %bb.y, label %bb.z

bb.y:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96
  %i.ex = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.eo, ptr noundef nonnull @.str.1024, i64 noundef 17) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

bb.z:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.es, ptr noundef nonnull align 1 dereferenceable(17) @.str.1024, i64 17, i1 false)
  %i.ey = load ptr, ptr %i.er, align 8, !tbaa !372
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 17
  store ptr %i.ez, ptr %i.er, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit99

_ZN4llvm11raw_ostreamlsEPKc.exit99:               ; preds = %bb.y, %bb.z
  %i.fa = load ptr, ptr %i.d, align 8, !tbaa !1624, !nonnull !248, !align !338 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !371
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 32 ; 3 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !372 ; 2 uses
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = ptrtoint ptr %i.fe to i64
  %i.fh = sub i64 %i.ff, %i.fg
  %i.fi = icmp ult i64 %i.fh, 63
  br i1 %i.fi, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit99
  %i.fj = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.fa, ptr noundef nonnull @.str.1265, i64 noundef 63) #31 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

bb.ab:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(63) %i.fe, ptr noundef nonnull align 1 dereferenceable(63) @.str.1265, i64 63, i1 false)
  %i.fk = load ptr, ptr %i.fd, align 8, !tbaa !372
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 63 ; 2 uses
  store ptr %i.fl, ptr %i.fd, align 8, !tbaa !372
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit102

_ZN4llvm11raw_ostreamlsEPKc.exit102:              ; preds = %bb.aa, %bb.ab
  %i.fm = phi ptr [ %.pre, %bb.aa ], [ %i.fl, %bb.ab ] ; 2 uses
  %.0.i.i101 = phi ptr [ %i.fj, %bb.aa ], [ %i.fa, %bb.ab ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.i.i101, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !371
  %i.fp = ptrtoint ptr %i.fo to i64
  %i.fq = ptrtoint ptr %i.fm to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = icmp ult i64 %i.fr, 18
  br i1 %i.fs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit102
  %i.ft = call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i101, ptr noundef nonnull @.str.1266, i64 noundef 18) #31 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit105

bb.ad:                                            ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit102
  %i.fu = getelementptr inbounds nuw i8, ptr %.0.i.i101, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.fm, ptr noundef nonnull align 1 dereferenceable(18) @.str.1266, i64 18, i1 false)
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !372
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 18
  store ptr %i.fw, ptr %i.fu, align 8, !tbaa !372
end_hunk_0
